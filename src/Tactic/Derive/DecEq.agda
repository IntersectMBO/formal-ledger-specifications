{-# OPTIONS -v allTactics:100 #-}
{-# OPTIONS --safe #-}
open import Meta

module Tactic.Derive.DecEq where

open import Prelude

open import Reflection.AST.Term using (_≟-Pattern_)
open import Reflection.AST.Name using () renaming (_≟_ to _≟-Name_)
open import Agda.Builtin.Reflection using (primShowQName)

open import PreludeImports

import Data.List
import Data.List.NonEmpty as NE

open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Nullary.Product

open import Tactic.ClauseBuilder
open import Tactic.Helpers

open import Interface.DecEq

open import Interface.Monad.Instance
open import Interface.MonadReader.Instance
open import Interface.MonadTC.Instance hiding (Monad-TC)

instance
  _ = ContextMonad-MonadTC

open ClauseExprM

`yes `no : Term → Term
`yes x = quote _because_ ◆⟦ quote true  ◆ ∣ quote ofʸ ◆⟦ x ⟧ ⟧
`no  x = quote _because_ ◆⟦ quote false ◆ ∣ quote ofⁿ ◆⟦ x ⟧ ⟧

module _ (transName : Name → Maybe Name) where

  eqFromTerm : Term → Term → Term → Term
  eqFromTerm (def n _) t t' with transName n
  ... | just n'     = def (quote _≟_) (iArg (n' ∙) ∷ vArg t ∷ vArg t' ∷ [])
  ... | nothing     = quote _≟_ ∙⟦ t ∣ t' ⟧
  eqFromTerm _ t t' = quote _≟_ ∙⟦ t ∣ t' ⟧

  toDecEqName : SinglePattern → List (Term → Term → Term)
  toDecEqName (l , _) = Data.List.map (λ where (_ , arg _ t) → eqFromTerm t) l

  -- on the diagonal we have one pattern, outside we don't care
  -- assume that the types in the pattern are properly normalized
  mapDiag : Maybe SinglePattern → TC Term
  mapDiag nothing          = return $ `no `λ⦅ [ ("" , vArg?) ] ⦆∅
  mapDiag (just p@(l , _)) = let k = length l in inDebugPath "mapDiag" do
    typeList ← traverseList inferType (applyDownFrom ♯ (length l))
    debugLog (typeList ᵈ)
    return $ quote map ∙⟦ genEquiv k ∣ genPf k (Data.List.map eqFromTerm typeList) ⟧
    where
      genPf : ℕ → List (Term → Term → Term) → Term
      genPf k []      = `yes (quote tt ◆)
      genPf k (n ∷ l) = quote _×-dec_ ∙⟦ genPf k l ∣ n (♯ (length l)) (♯ (length l + k)) ⟧

      -- c x1 .. xn ≡ c y1 .. yn ⇔ x1 ≡ y1 .. xn ≡ yn
      genEquiv : ℕ → Term
      genEquiv n = quote mk⇔ ∙⟦ `λ⟦ reflPattern n ⇒ quote refl ◆ ⟧ ∣ `λ⟦ quote refl ◇ ⇒ reflTerm n ⟧ ⟧
        where
          reflPattern : ℕ → Pattern
          reflPattern 0       = quote tt ◇
          reflPattern (suc n) = quote _,_ ◇⟦ reflPattern n ∣ quote refl ◇ ⟧

          reflTerm : ℕ → Term
          reflTerm 0       = quote tt ◆
          reflTerm (suc n) = quote _,_ ◆⟦ reflTerm n ∣ quote refl ◆ ⟧

  toMapDiag : SinglePattern → SinglePattern → NE.List⁺ SinglePattern × TC (ClauseExpr ⊎ Maybe Term)
  toMapDiag p@(_ , arg _ p₁) p'@(_ , arg _ p₂) =
    let p'' = (Data.List.map (λ where (s , (arg i t)) → (s , arg i unknown)) (proj₁ p) , proj₂ p)
    in (p NE.∷ [ p' ] , finishMatch (if ⌊ p₁ ≟-Pattern p₂ ⌋ then mapDiag (just p) else mapDiag nothing))

adjustParams : List (Abs (Arg Type)) → TC (List ((Abs (Arg Type)) × Bool))
adjustParams [] = return []
adjustParams (abs x (arg _ t) ∷ l) = do
  a ← (λ { true → [ (abs "" (iArg (quote DecEq ∙⟦ ♯ 0 ⟧)) , false) ] ; false → [] }) <$> isSort t
  ps ← extendContext (hArg t) (adjustParams l)
  return (((abs x (hArg t) , true) ∷ a) ++ ps)

trueIndices : {A : Set} → List (A × Bool) → List ℕ
trueIndices [] = []
trueIndices (x ∷ l) = if proj₂ x then length l ∷ trueIndices l else trueIndices l

modifyClassType : Maybe Name → TypeView → Type
modifyClassType nothing  (tel , ty) = tyView (tel , quote DecEq ∙⟦ ty ⟧)
modifyClassType (just n) (tel , ty) = tyView (tel , quote DecEq ∙⟦ n ∙⟦ ty ⟧ ⟧)

genClassType : Name → Maybe Name → TC Type
genClassType dName wName = do
  params ← getParams dName
  adjParams ← adjustParams params
  debugLog1 "AdjustedParams: "
  logTelescope (Data.List.map ((λ where (abs s x) → just s , x) ∘ proj₁) adjParams)
  ty ← applyWithVisibility dName (Data.List.map ♯ (trueIndices adjParams))
  return $ modifyClassType wName (Data.List.map proj₁ adjParams , ty)

lookupName : List (Name × Name) → Name → Maybe Name
lookupName [] n = nothing
lookupName ((k , v) ∷ l) n = if ⌊ k ≟-Name n ⌋ then just v else lookupName l n

deriveSingle : List (Name × Name) → Maybe Name → Name → Name → TC (Arg Name × Type × List Clause)
deriveSingle transName wName dName iName = inDebugPath "DeriveEq" do
  goalTy ← genClassType dName wName
  ps ← constructorPatterns' (maybe id dName wName ∙)
  debugLogᵐ ("Constrs: " ∷ᵈᵐ ps ᵛⁿ ∷ᵈᵐ []ᵐ)
  cs ← clauseExprToClauses <$> (local (λ c → record c { goal = inj₂ goalTy }) $
    singleMatchExpr ([] , iArg (Pattern.proj (quote _≟_))) $
      contMatch $ multiMatchExprM $ cartesianProductWith (toMapDiag (lookupName transName)) ps ps)
  let defName = maybe (λ n → maybe vArg (iArg iName) $ lookupName transName n) (iArg iName) wName
  return (defName , goalTy , cs)

deriveMulti : Name × Name × List Name → TC (List (Arg Name × Type × List Clause))
deriveMulti (dName , iName , hClasses) = do
  hClassNames ← traverseList (λ cn → freshName ("DecEq-" <+> primShowQName cn <+> primShowQName dName)) hClasses
  let transName = Data.List.zip hClasses hClassNames
  traverseList (λ cn → deriveSingle transName cn dName iName) (nothing ∷ Data.List.map just hClasses)

module _ ⦃ _ : DebugOptions ⦄ where
  derive-DecEqᵐ : List (Name × Name × List Name) → UnquoteDecl
  derive-DecEqᵐ l = initUnquoteWithGoal (quote DecEq ∙) do
    ds ← concat <$> traverseList deriveMulti l
    debugLog ("Test: " ∷ᵈ Data.List.concatMap (λ where (arg _ n , ty , cls) → n ∷ᵈ " : " ∷ᵈ ty ∷ᵈ " = " ∷ᵈ cls ∷ᵈ []) ds)
    traverseList (λ where (n , t , _) → declareDef n t) ds
    traverseList ((λ where (arg _ n , _ , cs) → defineFun n cs)) ds
    return _

  derive-DecEq : List (Name × Name) → UnquoteDecl
  derive-DecEq l = initUnquoteWithGoal (quote DecEq ∙) do
    ds ← traverseList (uncurry (deriveSingle [] nothing)) l
    traverseList (λ where (n , t , _) → declareDef n t) ds
    debugLog ("Test: " ∷ᵈ Data.List.concatMap (λ where (arg _ n , ty , cls) → n ∷ᵈ " : " ∷ᵈ ty ∷ᵈ " = " ∷ᵈ cls ∷ᵈ []) ds)
    traverseList ((λ where (arg _ n , _ , cs) → defineFun n cs)) ds
    return _

private
  open import Tactic.Derive.TestTypes
  open import MyDebugOptions

  unquoteDecl DecEq-E3 = derive-DecEqᵐ ((quote E3 , DecEq-E3 , [ quote List ]) ∷ [])

  unquoteDecl DecEq-M₁ DecEq-M₂ = derive-DecEq $ (quote M₁ , DecEq-M₁) ∷ (quote M₂ , DecEq-M₂) ∷ []

  unquoteDecl DecEq-E1 = derive-DecEq [ (quote E1 , DecEq-E1) ]
  unquoteDecl DecEq-E2 = derive-DecEq [ (quote E2 , DecEq-E2) ]
  --unquoteDecl DecEq-List' DecEq-E3 = derive-DecEq ((quote List' , DecEq-List') ∷ (quote E3 , DecEq-E3) ∷ [])

  unquoteDecl DecEq-R1 = derive-DecEq [ (quote R1 , DecEq-R1) ]
  unquoteDecl DecEq-R2 = derive-DecEq [ (quote R2 , DecEq-R2) ]
