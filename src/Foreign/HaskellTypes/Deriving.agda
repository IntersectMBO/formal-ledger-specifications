-- {-# OPTIONS -v tc.unquote.def:10 -v tc.unquote.decl:10 -v tactic.hs-types:10 #-}

module Foreign.HaskellTypes.Deriving where

open import Meta hiding (TC)

open import Level using (Level; 0ℓ)
open import Agda.Builtin.Reflection using (declareData; defineData; pragmaForeign; pragmaCompile; getInstances)
open import Reflection as R hiding (showName; _>>=_; _>>_)
open import Reflection.AST hiding (showName)
open import Reflection.AST.DeBruijn
open import Data.Maybe using (Maybe; nothing; just; fromMaybe)
open import Data.Unit using (⊤)
open import Data.String using (String) renaming (_++_ to _&_)
open import Data.Product hiding (map)
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
open import Class.Monad
open import Class.Functor
open import Class.Show
open import Class.Show.Instances
open import Tactic.Derive.Show using (showName)

open import Reflection.Utils
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

NameEnv = List (Name × String)

solveInstance : Term → TC Term
solveInstance ty = do
  iTerm@(meta iMeta _) ← newMeta ty
    where _ → typeErrorFmt "Impossible"
  debugPrintFmt "tactic.hs-types" 10 "getInstances %t : %t" iTerm =<< inferType iTerm
  iSol ∷ _ ← getInstances iMeta
    where [] → typeErrorFmt "No instance found for %t" ty
  debugPrintFmt "tactic.hs-types" 10 "iSol = %t" iSol
  unify iTerm iSol
  pure iSol

solveHsTypes : ℕ → Term → TC Term
solveHsTypeArgs : ℕ → List (Arg Term) → TC (List (Arg Term))

solveHsTypes 0 ty = pure ty
solveHsTypes (suc fuel) hsTy@(def (quote HasHsType.HsType) (_ ∷ _ ∷ vArg inst@(meta x _) ∷ [])) = do
  iSol ∷ _ ← getInstances x
    where [] → typeErrorFmt "No instance found for %t" hsTy
  unify inst iSol
  hsTy ← normalise hsTy
  solveHsTypes fuel hsTy
solveHsTypes fuel hsTy@(def d args) = def d <$> solveHsTypeArgs fuel args
solveHsTypes fuel ty = pure ty

solveHsTypeArgs _ [] = pure []
solveHsTypeArgs fuel (arg i ty ∷ args) = do
  ty   ← solveHsTypes fuel ty
  args ← solveHsTypeArgs fuel args
  pure (arg i ty ∷ args)

solveHsType : Term → TC Term
solveHsType tm = do
  inst ← solveInstance (quote HasHsType ∙⟦ tm ⟧)
  solveHsTypes 100 =<< normalise (def (quote HsType) (vArg tm ∷ iArg inst ∷ []))

private
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
  isThis f (def g []) = f == g
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
    debugPrintFmt "tactic.hs-types" 10 "Making constructor %q : %q" c agdaName
    hsC  ← freshHsConName env hsName c
    cTy  ← getType c
    debugPrintFmt "tactic.hs-types" 10 "cTy = %t" cTy
    hsTy ← computeHsType agdaName hsName cTy
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
