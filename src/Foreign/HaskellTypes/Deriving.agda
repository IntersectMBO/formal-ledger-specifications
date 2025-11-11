
module Foreign.HaskellTypes.Deriving where

open import Meta.Init hiding (TC; Monad-TC; MonadError-TC)

open import Level using (Level; 0ℓ)
open import Agda.Builtin.Reflection using (declareData; defineData; pragmaForeign; pragmaCompile;
                                           solveInstanceConstraints)
open import Reflection as R hiding (showName; _>>=_; _>>_)
open import Reflection.AST hiding (showName)
open import Reflection.AST.DeBruijn
open import Data.Maybe using (Maybe; nothing; just; fromMaybe; maybe′; _<∣>_)
open import Data.Unit using (⊤; tt)
open import Data.Integer.Base using (ℤ)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Data.String using (String) renaming (_++_ to _&_)
open import Data.Product hiding (map; zip; zipWith)
import Data.String as String
open import Data.Bool
open import Data.Nat
open import Data.List hiding (lookup; fromMaybe)
open import Data.Char using (toUpper; toLower)
open import Foreign.Haskell
open import Function
open import Text.Printf

open import Class.DecEq
open import Class.Functor
open import Class.Monad
open import Class.MonadError
open import Class.MonadReader
open import Class.Show
open import Class.Show.Instances
open import Tactic.Derive.Show using (showName)

open import Reflection.Utils
open import Reflection.Utils.TCI
open import Foreign.HaskellTypes
open import Foreign.Haskell.Pair using (Pair)

{-
Need to generate:
  - a data type that can be compiled to a Haskell data type
  - the corresponding Haskell type (in a FOREIGN pragma)
  - the COMPILE pragma binding them together
-}

private variable
  l : Level
  A B : Set l

private
  mapHead : (A → A) → List A → List A
  mapHead f []       = []
  mapHead f (x ∷ xs) = f x ∷ xs

  capitalize : String → String
  capitalize = String.fromList ∘ mapHead toUpper ∘ String.toList

  uncapitalize : String → String
  uncapitalize = String.fromList ∘ mapHead toLower ∘ String.toList

  joinStrings : String → List String → String
  joinStrings sep ss = foldr _&_ "" $ intersperse sep ss

  _‼_ : List A → ℕ → Maybe A
  []       ‼ i     = nothing
  (x ∷ xs) ‼ zero  = just x
  (x ∷ xs) ‼ suc i = xs ‼ i

  lookup : ⦃ DecEq A ⦄ → A → List (A × B) → Maybe B
  lookup x xs = proj₂ <$> findᵇ ((x ==_) ∘ proj₁) xs

-- * Controlling the names of the generated types

record Env : Set where
  field
    customNames : List (Name × String)
    tName       : Name → Maybe String
    cName       : Name → Maybe String
    fName       : Name → Maybe String
    typeclassDeriving : List String → List String

private
  lookupEnv : (Env → Name → Maybe String) → Env → Name → Maybe String
  lookupEnv fn env x = lookup x (Env.customNames env) <∣> fn env x

  lookupTypeName  = lookupEnv Env.tName
  lookupConName   = lookupEnv Env.cName
  lookupFieldName = lookupEnv Env.fName

  emptyEnv : Env
  emptyEnv = record{ customNames = []
                   ; tName = const nothing
                   ; cName = const nothing
                   ; fName = const nothing
                   ; typeclassDeriving = id }

  customName : Name → String → Env
  customName x s = record emptyEnv { customNames = (x , s) ∷ [] }

onTypes : (String → String) → Env
onTypes f = record emptyEnv { tName = just ∘ f ∘ showName }

onConstructors : (String → String) → Env
onConstructors f = record emptyEnv { cName = just ∘ f ∘ showName }

withName : String → Env
withName t = onTypes (const t)

-- Only use for single constructor types obviously
withConstructor : String → Env
withConstructor c = onConstructors (const c)

onFields : (String → String) → Env
onFields f = record emptyEnv { fName = just ∘ f ∘ showName }


fieldPrefix : String → Env
fieldPrefix pre = onFields $ (pre String.++_) ∘ capitalize

deriving : List String → Env
deriving xs = record emptyEnv { typeclassDeriving = const xs }

withDefaultDeriving : Env
withDefaultDeriving = deriving ("Show" ∷ "Eq" ∷ "Generic" ∷ [])

infixr 5 _•_
_•_ : Env → Env → Env
env • env₁ = record
  { customNames = env.customNames ++ env₁.customNames
  ; tName       = λ x → env.tName x <∣> env₁.tName x
  ; cName       = λ x → env.cName x <∣> env₁.cName x
  ; fName       = λ x → env.fName x <∣> env₁.fName x
  ; typeclassDeriving = env₁.typeclassDeriving ∘ env.typeclassDeriving
  }
  where
    module env  = Env env
    module env₁ = Env env₁


-- * The inner workings

solveHsType : Term → TC Term
solveHsType tm = do
  hsTy ← checkType (quote HsType ∙⟦ tm ⟧) `Set
  solveInstanceConstraints
  normalise hsTy >>= λ where
    (def (quote HsType) _) → typeErrorFmt "Failed to solve HsType %t" tm
    hsTy                   → return hsTy

private
  debug = debugPrintFmt "tactic.hs-types"

  specialHsTypes : List (Name × String)
  specialHsTypes = (quote ⊤      , "()")
                 ∷ (quote ℕ      , "Integer")
                 ∷ (quote ℤ      , "Integer")
                 ∷ (quote Bool   , "Bool")
                 ∷ (quote List   , "[]")
                 ∷ (quote Pair   , "(,)")
                 ∷ (quote Maybe  , "Maybe")
                 ∷ (quote Either , "Either")
                 ∷ (quote String , "Data.Text.Text")
                 ∷ []

  hsTypeName : Env → Name → String
  hsTypeName env d = fromMaybe (capitalize $ showName d) (lookupTypeName env d)

  freshHsTypeName : Env → Name → TC Name
  freshHsTypeName env d = freshName (hsTypeName env d)

  hsConName : Env → Name → String
  hsConName env c = fromMaybe (capitalize $ showName c) (lookupConName env c)

  hsFieldName : Env → Name → String
  hsFieldName env f = fromMaybe (uncapitalize $ showName f) (lookupFieldName env f)

  freshHsConName : Env → Name → Name → TC Name
  freshHsConName env tyName c =
    if showName c == "constructor"
    then freshName (hsConName env tyName) -- Unnamed record constructor: use type name
    else freshName (hsConName env c)

  isThis : Name → Term → Bool
  isThis f (def g _) = f == g
  isThis _ _ = false

  computeHsType : Name → Name → Term → TC Term
  computeHsType aThis hThis tm with isThis aThis tm
  ... | true = pure (hThis ∙)
  computeHsType aThis hThis (Π[ x ∶ arg (arg-info visible _) a ] b) | false = do
    dom ← computeHsType aThis hThis a
    rng ← extendContext x (vArg a) $ computeHsType aThis hThis b
    pure (vΠ[ x ∶ dom ] rng)
  computeHsType aThis hThis (Π[ x ∶ a ] b) | false = do
    ty ← extendContext x a $ computeHsType aThis hThis b
    just ty′ ← pure (strengthen ty)
      where nothing → extendContext x a $ typeErrorFmt "%s free in computed HsType %t" x ty
    pure ty′
  -- Hack to get recursive occurrences under lists to work
  computeHsType aThis hThis (def (quote List) (_ ∷ vArg a ∷ [])) | false = do
    ty ← computeHsType aThis hThis a
    pure (quote List ∙⟦ ty ⟧)
  computeHsType _ _ tm | false = do
    debug 10 "solving HsType %t" tm
    ty ← solveHsType tm
    debug 10 "HsType %t = %t" tm ty
    pure ty

  makeHsCon : Env → Name → Name → Name → TC (Name × Agda.Builtin.Reflection.Quantity × Type)
  makeHsCon env agdaName hsName c = do
    debug 10 "Making constructor %q : %q" c agdaName
    def agdaName' _ ← normalise (def agdaName [])
      where _ → typeErrorFmt "Failed to compute source type for %q" agdaName
    hsC  ← freshHsConName env hsName c
    cTy  ← getType c
    debug 10 "cTy = %t" cTy
    hsTy ← computeHsType agdaName' hsName cTy
    debug 10 "hsTy = %t" hsTy
    pure (hsC , quantity-ω , hsTy)

  makeHsData : Env → Name → ℕ → List Name → TC Name
  makeHsData env agdaName nPars constrs = do
    hsName ← freshHsTypeName env agdaName
    declareData hsName 0 `Set
    hsCons ← mapM (makeHsCon env agdaName hsName) constrs
    defineData hsName hsCons
    pure hsName

  makeHsType : Env → Name → TC Name
  makeHsType env d = getDefinition d >>= λ where
      (data-type pars cs) → makeHsData env d pars cs
      (record-type c fs)  → makeHsData env d 0 (c ∷ [])
      _                   → typeErrorFmt "%q is not a data or record type" d

  compilePragma : Name → List Name → String
  compilePragma d cs = printf "= data %s (%s)" (showName d) (joinStrings " | " (map showName cs))

  renderHsTypeName : Name → String
  renderHsTypeName d = fromMaybe ("MAlonzo.Code." String.++ R.showName d) (lookup d specialHsTypes)

  renderHsType : Term → String
  renderHsArgs : List (Arg Term) → List String

  renderHsType (def (quote List) (_ ∷ vArg a ∷ [])) = printf "[%s]" (renderHsType a)
  renderHsType (def (quote Pair) (_ ∷ _ ∷ vArg a ∷ vArg b ∷ [])) = printf "(%s, %s)" (renderHsType a) (renderHsType b)
  renderHsType (def d []) = renderHsTypeName d
  renderHsType (def d vs) = printf "(%s %s)" (renderHsTypeName d) (joinStrings " " (renderHsArgs vs))
  renderHsType t = printf "(TODO: renderHsType %s)" (show t)

  renderHsArgs [] = []
  renderHsArgs (vArg a ∷ as) = renderHsType a ∷ renderHsArgs as
  renderHsArgs (_ ∷ as) = renderHsArgs as

  renderTypeclassDeriving : List String → String
  renderTypeclassDeriving [] = ""
  renderTypeclassDeriving xs = printf "deriving (%s)" (joinStrings ", " xs)

  foreignPragma : Env → Name → List Name → TC String
  foreignPragma env d cs = do
    cons ← forM cs λ c → do
            tel , _ ← viewTy <$> getType c
            let args = map unAbs tel
            pure $ printf "%s %s" (showName c) (joinStrings " " $ renderHsArgs args)
    pure $ printf "data %s = %s\n  %s"
                  (showName d) (joinStrings " | " cons) (renderTypeclassDeriving (Env.typeclassDeriving env []))

  -- Record types
  foreignPragmaRec : Env → Name → List Name → List Name → TC String
  foreignPragmaRec _ d [] _ = typeErrorFmt "impossible: %q is a record type with no constructors" d
  foreignPragmaRec env d (c ∷ _) fs = do
    tel , _ ← viewTy <$> withNormalisation true (getType c)
    let fNames = map (hsFieldName env) fs
    let args = map unAbs tel
        renderField f ty = printf "%s :: %s" f (renderHsType $ unArg ty)
        con = printf "%s {%s}" (showName c) (joinStrings ", " $ zipWith renderField fNames args)
    pure $ printf "data %s = %s\n %s"
                  (showName d) con (renderTypeclassDeriving (Env.typeclassDeriving env []))

  hsImports : String
  hsImports = "import GHC.Generics (Generic)"

  -- Take the name of a simple data type and generate the COMPILE and
  -- FOREIGN pragmas to bind to Haskell.
  bindHsType : Env → Name → Name → TC ⊤
  bindHsType env agdaName hsName = getDefinition hsName >>= λ where
    (data-type pars cs) → do
      pragmaForeign "GHC" hsImports
      pragmaCompile "GHC" hsName $ compilePragma hsName cs
      getDefinition agdaName >>= λ where
        (data-type _ _)    → pragmaForeign "GHC" =<< foreignPragma env hsName cs
        (record-type _ fs) → pragmaForeign "GHC" =<< foreignPragmaRec env hsName cs (map unArg fs)
        _ → typeErrorFmt "%q is not a data or record type" agdaName
    _ → typeErrorFmt "%q is not a data type (impossible)" hsName

  computeProjections : ℕ → Name → TC (List Term)
  computeProjections npars c = do
    argTys , _ ← viewTy <$> getType c
    let is  = downFrom (length argTys)
        tel = map (λ where (abs x ty) → x , ty) argTys
        lhs = vArg (con c (map (λ where (i , abs x (arg info _)) → arg info (var i))
                               (drop npars (zip is argTys)))) ∷ []
    return $ map (λ i → pat-lam (clause tel lhs (var i []) ∷ []) []) (drop npars is)

  makeTypeAlias : Name → Env → Term → TC ⊤
  makeTypeAlias agdaName env hole = do
    hsTy ← solveHsType (def agdaName [])
    pragmaForeign "GHC" $ printf "type %s = %s" (hsTypeName env agdaName) (renderHsType hsTy)
    unify hole (quote return ∙⟦ con (quote tt) [] ⟧)

-- * Exported macros

doAutoHsType : Env → Name → Term → TC Term
doAutoHsType env d hole = do
  checkType hole (quote HasHsType ∙⟦ d ∙ ⟧)
  hs ← makeHsType env d
  debug 50 "  HsType %q = %q" d hs
  bindHsType env d hs
  unify hole (`λ⟦ proj (quote HasHsType.HsType) ⇒ hs ∙ ⟧)
  pure (hs ∙)

macro
  autoHsType : Name → Term → TC ⊤
  autoHsType d hole = _ <$ doAutoHsType withDefaultDeriving d hole

  infix 0 autoHsType_⊣_
  autoHsType_⊣_ : Name → Env → Term → TC ⊤
  autoHsType_⊣_ d env hole = _ <$ doAutoHsType (withDefaultDeriving • env) d hole

  infix 9 _↦_
  _↦_ : Name → String → Term → TC ⊤
  x ↦ s = unify (quote customName ∙⟦ lit (name x) ∣ lit (string s) ⟧)

  -- Generate a Haskell type synonym for the HsType of the given type
  -- Usage `unquoteDecl = do hsTypeSynonym Foo; hsTypeSynonym Bar`
  hsTypeAlias : Name → Term → TC ⊤
  hsTypeAlias agdaName = makeTypeAlias agdaName emptyEnv

  -- The only Env that's useful here is `withName`.
  hsTypeAlias_⊣_ : Name → Env → Term → TC ⊤
  hsTypeAlias agdaName ⊣ env = makeTypeAlias agdaName env

  -- * Macros for constructing and deconstructing generated types

  hsCon : Term → ℕ → Term → TC ⊤
  hsCon agdaTy i hole = do
    hsTy@(def hsName _) ← solveHsType agdaTy
      where _ → typeErrorFmt "Failed to compute HsType of %t" agdaTy
    cs ← getDefinition hsName >>= λ where
      (data-type _ cs)  → return cs
      _ → typeErrorFmt "Expected HsType %t to be a data type, but got %t" agdaTy hsTy
    c ← maybe′ return  (typeErrorFmt "%q has only %u constructors" hsName (length cs)) (cs ‼ i)
    unify hole (con c [])

  hsProj : Term → ℕ → Term → TC ⊤
  hsProj agdaTy i hole = do
    hsTy@(def hsName _) ← solveHsType agdaTy
      where _ → typeErrorFmt "Failed to compute HsType of %t" agdaTy
    prjs ← getDefinition hsName >>= λ where
      (data-type npars (c ∷ [])) → computeProjections npars c
      _ → typeErrorFmt "Expected HsType %t to be a single constructor data type, but got %t" agdaTy hsTy
    prj ← maybe′ return (typeErrorFmt "%q has only %u fields" hsName (length prjs)) (prjs ‼ i)
    target ← newMeta `Set
    checkType hole (pi (vArg hsTy) (abs "_" target))
    unify hole prj

  hsTyName : Term → Term → TC ⊤
  hsTyName agdaTy hole = do
    hsTy@(def hsName _) ← solveHsType agdaTy
      where _ → typeErrorFmt "Failed to compute HsType of %t" agdaTy
    unify hole (lit (name hsName))
