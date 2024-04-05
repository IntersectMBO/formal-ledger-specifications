-- {-# OPTIONS -v tc.unquote.def:10 -v tc.unquote.decl:10 -v tactic.hs-types:10 #-}

module Foreign.Convertible.HaskellTypes where

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

{-

Need to generate:
  - a data type that can be compiled to a Haskell data type
  - the corresponding Haskell type (in a FOREIGN pragma)
  - the COMPILE pragma binding them together
-}

private variable
  l : Level
  A B : Set l

record HasHsType (A : Set l) : Set₁ where
  field
    theHsType : Set

open HasHsType

HsType : (A : Set l) → ⦃ HasHsType A ⦄ → Set
HsType _ ⦃ i ⦄ = i .HasHsType.theHsType

instance
  -- Could make a macro for these kind of congruence instances.

  iHasHsTypeℕ : HasHsType ℕ
  iHasHsTypeℕ .theHsType = ℕ

  iHasHsTypeList : ⦃ HasHsType A ⦄ → HasHsType (List A)
  iHasHsTypeList {A = A} .theHsType = List (HsType A)

  iHasHsTypeFun : ⦃ HasHsType A ⦄ → ⦃ HasHsType B ⦄ → HasHsType (A → B)
  iHasHsTypeFun {A = A} {B = B} .theHsType = HsType A → HsType B

NameEnv = List (Name × String)

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

  freshHsConName : NameEnv → Name → TC Name
  freshHsConName env c = freshName (hsConName env c)

  `Set = agda-sort (Sort.set (quote 0ℓ ∙))

  isThis : Name → Term → Bool
  isThis f (def g []) = f == g
  isThis _ _ = false

  computeHsTypeInst : Term → TC Term
  computeHsTypeInst tm = do
    iTerm@(meta iMeta _) ← checkType unknown (quote HasHsType ∙⟦ tm ⟧)
      where _ → typeErrorFmt "Impossible"
    iSol ∷ _ ← getInstances iMeta
      where [] → typeErrorFmt "No instance found for %t" (quote HasHsType ∙⟦ tm ⟧)
    unify iTerm iSol
    normalise $ def (quote HsType) (vArg tm ∷ iArg iSol ∷ [])

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
  computeHsType _ _ tm | false = computeHsTypeInst tm

  makeHsCon : NameEnv → Name → Name → Name → TC (Name × Type)
  makeHsCon env agdaName hsName c = do
    hsC  ← freshHsConName env c
    cTy  ← getType c
    hsTy ← computeHsType agdaName hsName cTy
    pure (hsC , hsTy)

  makeHsData : NameEnv → Name → ℕ → List Name → TC Name
  makeHsData env agdaName nPars constrs = do
    hsName ← freshHsTypeName env agdaName
    let hsPars = 0  -- TODO
    declareData hsName hsPars `Set
    hsCons ← mapM (makeHsCon env agdaName hsName) constrs
    defineData hsName hsCons
    pure hsName

  makeHsType : NameEnv → Name → TC Name
  makeHsType env d = getDefinition d >>= λ where
      (data-type pars cs) → makeHsData env d pars cs
      (record-type c fs)  → typeErrorFmt "todo record"
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

  -- Take the name of a simple data type and generate the COMPILE and
  -- FOREIGN pragmas to bind to Haskell.
  bindHsType : Name → TC ⊤
  bindHsType d = getDefinition d >>= λ where
    (data-type pars cs) → do
      pragmaCompile "GHC" d $ compilePragma d cs
      pragmaForeign "GHC" =<< foreignPragma d cs
    (record-type c fs)  → typeErrorFmt "todo record"
    _                   → typeErrorFmt "%q is not a data or record type" d

  doAutoHsType : NameEnv → Term → TC ⊤
  doAutoHsType env hole = do
    def (quote HasHsType) (_ ∷ vArg (d ∙) ∷ _) ← inferType hole
      where t → typeErrorFmt "Expected HasHsType D, got %t" t
    hs ← makeHsType env d
    bindHsType hs
    unify hole (`λ⟦ proj (quote theHsType) ⇒ hs ∙ ⟧)

macro
  autoHsType : Term → TC ⊤
  autoHsType = doAutoHsType []

  autoHsType' : NameEnv → Term → TC ⊤
  autoHsType' = doAutoHsType

  _↦_ : Name → String → Term → TC ⊤
  x ↦ s = unify (quote (Data.Product._,_) ◆⟦ lit (name x) ∣ lit (string s) ⟧)
