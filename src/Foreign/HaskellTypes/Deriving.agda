{-# OPTIONS -v tactic.hs-types:100 #-}

module Foreign.HaskellTypes.Deriving where

open import Meta hiding (TC; Monad-TC; MonadError-TC)

open import Level using (Level; 0ℓ)
open import Agda.Builtin.Reflection using (declareData; defineData; pragmaForeign; pragmaCompile;
                                           solveInstanceConstraints)
open import Reflection as R hiding (showName; _>>=_; _>>_)
open import Reflection.AST hiding (showName)
open import Reflection.AST.DeBruijn
open import Data.Maybe using (Maybe; nothing; just; fromMaybe; maybe′)
open import Data.Unit using (⊤)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Data.String using (String) renaming (_++_ to _&_)
open import Data.Product hiding (map; zip)
import Data.String as String
open import Data.Bool
open import Data.Nat
open import Data.List hiding (lookup; fromMaybe)
open import Data.Char using (toUpper)
open import Foreign.Haskell
open import Function
open import Text.Printf

import Agda.Builtin.Reflection.External using ()  -- Workaround Agda bug

open import Class.DecEq
open import Class.Functor
open import Class.Monad
open import Class.MonadError
open import Class.MonadReader
open import Class.Show
open import Class.Show.Instances
open import Class.MonadTC using (TCEnv; dontReduce; defaultTCOptions)
open import Tactic.Derive.Show using (showName)

open import Reflection.Utils
open import Reflection.Utils.TCI
open import Foreign.HaskellTypes

{-

Need to generate:
  - a data type that can be compiled to a Haskell data type
  - the corresponding Haskell type (in a FOREIGN pragma)
  - the COMPILE pragma binding them together
-}

private variable
  l : Level
  A B : Set l

-- TODO: somewhere else
`Set = agda-sort (Sort.set (quote 0ℓ ∙))

private
  NameEnv = List (Name × String)

  dummyEnv : TCEnv
  dummyEnv = record
              { normalisation = false
              ; reconstruction = false
              ; noConstraints = false
              ; reduction = dontReduce []
              ; globalContext = []
              ; localContext = []
              ; goal = inj₁ unknown
              ; options = defaultTCOptions
              }

solveHsType : Term → TC Term
solveHsType tm = do
  hsTy ← checkType (quote HsType ∙⟦ tm ⟧) `Set
  solveInstanceConstraints
  normalise hsTy >>= λ where
    (def (quote HsType) _) → typeErrorFmt "Failed to solve HsType %t" tm
    hsTy                   → return hsTy


private
  _‼_ : List A → ℕ → Maybe A
  []       ‼ i     = nothing
  (x ∷ xs) ‼ zero  = just x
  (x ∷ xs) ‼ suc i = xs ‼ i

  lookup : ⦃ DecEq A ⦄ → A → List (A × B) → Maybe B
  lookup x xs = proj₂ <$> findᵇ ((x ==_) ∘ proj₁) xs

  mapHead : (A → A) → List A → List A
  mapHead f []       = []
  mapHead f (x ∷ xs) = f x ∷ xs

  capitalize : String → String
  capitalize = String.fromList ∘ mapHead toUpper ∘ String.toList

  hsTypeName : NameEnv → Name → String
  hsTypeName env d = fromMaybe (capitalize $ showName d) (lookup d env)

  freshHsTypeName : NameEnv → Name → TC Name
  freshHsTypeName env d = freshName (hsTypeName env d)

  hsConName : NameEnv → Name → String
  hsConName env c = fromMaybe (capitalize $ showName c) (lookup c env)

  hsFieldName : NameEnv → Name → String
  hsFieldName env f = fromMaybe (showName f) (lookup f env)

  freshHsConName : NameEnv → Name → Name → TC Name
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
    rng ← extendContext x (vArg dom) $ computeHsType aThis hThis b
    pure (vΠ[ x ∶ dom ] rng)
  computeHsType aThis hThis (Π[ x ∶ a ] b) | false = do
    ty ← extendContext x a $ computeHsType aThis hThis b
    just ty′ ← pure (strengthen ty)
      where nothing → extendContext x a $ typeErrorFmt "%s free in computed HsType %t" x ty
    pure ty′
  computeHsType _ _ tm | false = do
    debugPrintFmt "tactic.hs-types" 10 "solving HsType %t" tm
    ty ← solveHsType tm
    debugPrintFmt "tactic.hs-types" 10 "HsType %t = %t" tm ty
    pure ty

  makeHsCon : NameEnv → Name → Name → Name → TC (Name × Type)
  makeHsCon env agdaName hsName c = do
    def agdaName' _ ← normalise (def agdaName [])
      where _ → typeErrorFmt "Failed to compute source type for %q" agdaName
    debugPrintFmt "tactic.hs-types" 10 "Making constructor %q : %q" c agdaName
    hsC  ← freshHsConName env hsName c
    cTy  ← getType c
    debugPrintFmt "tactic.hs-types" 10 "cTy = %t" cTy
    hsTy ← computeHsType agdaName' hsName cTy
    debugPrintFmt "tactic.hs-types" 10 "hsTy = %t" hsTy
    pure (hsC , hsTy)

  makeHsData : NameEnv → Name → ℕ → List Name → TC Name
  makeHsData env agdaName nPars constrs = do
    hsName ← freshHsTypeName env agdaName
    declareData hsName 0 `Set
    hsCons ← mapM (makeHsCon env agdaName hsName) constrs
    defineData hsName hsCons
    pure hsName

  makeHsType : NameEnv → Name → TC Name
  makeHsType env d = getDefinition d >>= λ where
      (data-type pars cs) → makeHsData env d pars cs
      (record-type c fs)  → makeHsData env d 0 (c ∷ [])
      _                   → typeErrorFmt "%q is not a data or record type" d

  joinStrings : String → List String → String
  joinStrings sep ss = foldr _&_ "" $ intersperse sep ss

  compilePragma : Name → List Name → String
  compilePragma d cs = printf "= data %s (%s)" (showName d) (joinStrings " | " (map showName cs))

  renderHsType : Term → String
  renderHsArgs : List (Arg Term) → List String

  renderHsType (def (quote List) (vArg a ∷ [])) = printf "[%s]" (renderHsType a)
  renderHsType (def d []) = showName d
  renderHsType (def d vs) = printf "(%s %s)" (showName d) (joinStrings " " (renderHsArgs vs))
  renderHsType t = printf "(TODO: renderHsType %s)" (show t)

  renderHsArgs [] = []
  renderHsArgs (vArg a ∷ as) = renderHsType a ∷ renderHsArgs as
  renderHsArgs (_ ∷ as) = renderHsArgs as

  foreignPragma : Name → List Name → TC String
  foreignPragma d cs = do
    cons ← forM cs λ c → do
            tel , _ ← viewTy <$> getType c
            let args = map unAbs tel
            pure $ printf "%s %s" (showName c) (joinStrings " " $ renderHsArgs args)
    pure $ printf "data %s = %s\n  deriving (Show, Eq, Generic)\ninstance ToExpr %s"
                  (showName d) (joinStrings " | " cons) (showName d)

  -- Record types
  foreignPragmaRec : NameEnv → Name → List Name → List Name → TC String
  foreignPragmaRec _ d [] _ = typeErrorFmt "impossible: %q is a record type with no constructors" d
  foreignPragmaRec env d (c ∷ _) fs = do
    tel , _ ← viewTy <$> withNormalisation true (getType c)
    let fNames = map (hsFieldName env) fs
    let args = map unAbs tel
        renderField f ty = printf "%s :: %s" f (renderHsType $ unArg ty)
        con = printf "%s {%s}" (showName c) (joinStrings ", " $ zipWith renderField fNames args)
    pure $ printf "data %s = %s\n  deriving (Show, Eq, Generic)\ninstance ToExpr %s"
                  (showName d) con (showName d)

  -- Take the name of a simple data type and generate the COMPILE and
  -- FOREIGN pragmas to bind to Haskell.
  bindHsType : NameEnv → Name → Name → TC ⊤
  bindHsType env agdaName hsName = getDefinition hsName >>= λ where
    (data-type pars cs) → do
      pragmaCompile "GHC" hsName $ compilePragma hsName cs
      getDefinition agdaName >>= λ where
        (data-type _ _)    → pragmaForeign "GHC" =<< foreignPragma hsName cs
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

doAutoHsType : NameEnv → Name → Term → TC Term
doAutoHsType env d hole = do
  checkType hole (quote HasHsType ∙⟦ d ∙ ⟧)
  hs ← makeHsType env d
  bindHsType env d hs
  unify hole (`λ⟦ proj (quote HasHsType.HsType) ⇒ hs ∙ ⟧)
  pure (hs ∙)

macro
  autoHsType : Name → Term → TC ⊤
  autoHsType d hole = _ <$ doAutoHsType [] d hole

  autoHsType' : Name → NameEnv → Term → TC ⊤
  autoHsType' d env hole = _ <$ doAutoHsType env d hole

  _↦_ : Name → String → Term → TC ⊤
  x ↦ s = unify (quote (Data.Product._,_) ◆⟦ lit (name x) ∣ lit (string s) ⟧)

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
