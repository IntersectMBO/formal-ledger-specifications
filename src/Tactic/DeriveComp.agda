{-# OPTIONS -v allTactics:100 #-}
{-# OPTIONS --safe --without-K #-}
module Tactic.DeriveComp where

open import Prelude
open import Meta

import Reflection.AST.Argument.Visibility as Visibility

open import PreludeImports

import Data.List.NonEmpty as NE
open import Data.Maybe.Properties using (just-injective)

open import Relation.Nullary
open import Relation.Nullary.Negation
open import Relation.Nullary.Decidable

open import Tactic.ClauseBuilder
open import Tactic.Helpers
open import Tactic.ReduceDec

open import DecEq
open import Interface.Decidable.Instance

open import Interface.Monad.Instance
open import Interface.MonadReader.Instance
open import Interface.MonadError.Instance
open import Interface.MonadTC.Instance

open import ComputationalRelation

instance
  _ = ContextMonad-MonadTC

record STSConstr : Set where
  field
    name    : Name
    params  : List $ Abs $ Arg Type
    clauses : List Type
    context : Pattern
    state   : Pattern
    signal  : Pattern
    result  : Term

conOrVarToPattern : ℕ → Term → Maybe Pattern
conOrVarToPattern k (♯ v) = just (Pattern.var (v ∸ k))
conOrVarToPattern k (con c args) =
  Pattern.con c <$> (sequenceList $ conOrVarToPattern′ k args)
  where
    conOrVarToPattern′ : ℕ → List (Arg Term) → List (Maybe (Arg Pattern))
    conOrVarToPattern′ k [] = []
    conOrVarToPattern′ k ((arg i x) ∷ l) = arg i <$> conOrVarToPattern k x ∷ conOrVarToPattern′ k l
conOrVarToPattern _ _ = nothing

isArg : (a : Abs (Arg Term)) → Dec _
isArg a = ¬? (getVisibility (unAbs a) Visibility.≟ visible)

toSTSConstr : Name × TypeView → Maybe STSConstr
toSTSConstr (n , (cs , def f args)) with args | mapMaybe (conOrVarToPattern (length $ dropWhile isArg cs) ∘ unArg) $ take 3 args
... | _ ∷ _ ∷ _ ∷ r ∷ [] | c ∷ s ∷ sig ∷ [] =
  just record
    { name = n
    ; params = takeWhile isArg cs
    ; clauses = zipWithIndex (λ i → mapVars (_∸ i)) $ (unArg ∘ unAbs) <$> dropWhile isArg cs
    ; context = c
    ; state = s
    ; signal = sig
    ; result = mapVars (_∸ (length $ dropWhile isArg cs)) $ unArg r }
... | _ | _ = nothing
toSTSConstr _ = nothing

errorIfNothing : ∀ {a} {A : Set a} → Maybe A → String → TC A
errorIfNothing (just x) s = return x
errorIfNothing nothing s = error1 s

getSTSConstrs : Name → TC (List STSConstr)
getSTSConstrs n = inDebugPath "getSTSConstrs" do
  dataDef ← getDataDef n
  res ← errorIfNothing (traverseList toSTSConstr (DataDef.constructors dataDef)) "Error"
  debugLogᵐ (res ᵛⁿ ∷ᵈᵐ []ᵐ)
  return res

generatePred : List Term → Term
generatePred clauses = quote ¿_¿ ∙⟦ helper clauses ⟧
  where
    helper : List Term → Term
    helper [] = quoteTerm ⊤
    helper (x ∷ []) = x
    helper (x ∷ x₁ ∷ l) = quote _×_ ∙⟦ x ∣ helper (x₁ ∷ l) ⟧

curryPredProof : ℕ → Term → List (Arg Term)
curryPredProof 0 t = []
curryPredProof 1 t = [ vArg t ]
curryPredProof 2 t = quote proj₁ ∙⟦ t ⟧ ⟨∷⟩ quote proj₂ ∙⟦ t ⟧ ⟨∷⟩ []
curryPredProof (suc (suc (suc k))) t = quote proj₁ ∙⟦ t ⟧ ⟨∷⟩ curryPredProof (suc (suc k)) (quote proj₂ ∙⟦ t ⟧)

generateFunctionClause : (List Term → Term) → STSConstr → Clause
generateFunctionClause genPred c = let open STSConstr c in
  ⟦ context ∣ state ∣ signal ⦅ (λ { (abs s x) → (s , x) }) <$> params ⦆⇒
    quote if_then_else_ ∙⟦ quote ⌊_⌋ ∙⟦ genPred clauses ⟧ ∣
      quote just ◆⟦ result ⟧ ∣
      quote nothing ◆ ⟧ ⟧

generateFunction : List STSConstr → Term
generateFunction c = pat-lam (generateFunctionClause generatePred <$> c) []

rdOpts : ReductionOptions
rdOpts = onlyReduce [ quote ⌊_⌋ ]

open ClauseExprM

derive⇐ : ITactic
derive⇐ = inDebugPath "derive⇐" do
  (constrPat ∷ []) ← currentTyConstrPatterns
    where _ → error1 "TODO: Support more than one constructor!"
  expr ← singleMatchExpr constrPat $ finishMatch $ withGoalHole $ reduceDecInGoal rdOpts (quote refl ◆)
  unifyWithGoal $ clauseExprToPatLam expr

derive⇒ : Name → List STSConstr → ITactic
derive⇒ n (record { name = stsConstrName ; clauses = clauses } ∷ []) = inDebugPath "derive⇒" do
  expr ← introsExpr (from-just $ NE.fromList ("h" ⟨∷⟩ [])) $ finishMatch $
    caseMatch (mapVars (_+ 2) $ generatePred clauses) $ matchExprM
      ((multiSinglePattern [ "" ] (vArg (``no  (` 0))) , finishMatch do
        reducedHyp ← reduceDec' rdOpts $ ♯ 1
        return $ quote case_of_ ∙⟦ reducedHyp ∣ `λ∅ ⟧) ∷
       (multiSinglePattern [ "" ] (vArg (``yes (` 0))) , finishMatch do
        reducedHyp ← reduceDec' rdOpts $ ♯ 1
        ty ∙⟦ c ∣ s ∣ sig ∣ s' ⟧ ← goalTy
          where ty → error ("BUG: Unexpected type" ∷ᵈ ty ∷ᵈ [])
        return $ quote subst ∙⟦ ty ∙⟦ c ∣ s ∣ sig ⟧ ∣ quote just-injective ∙⟦ reducedHyp ⟧ ∣
                             con stsConstrName (curryPredProof (length clauses) (♯ 0)) ⟧) ∷ [])
  unifyWithGoal $ clauseExprToPatLam expr
derive⇒ _ _ = error1 "TODO: support multiple constructors"

module _ ⦃ _ : DebugOptions ⦄ where
  derive⇔ : Name → List STSConstr → Tactic
  derive⇔ n stsConstrs = initTac $ inDebugPath "derive⇔" do
    hole⇒ ← newMeta unknown
    hole⇐ ← newMeta unknown
    unifyWithGoal $ quote mk⇔ ∙⟦ hole⇒ ∣ hole⇐ ⟧
    runWithHole hole⇐ derive⇐
    runWithHole hole⇒ $ derive⇒ n stsConstrs

  deriveComp : Name → TC ⊤
  deriveComp definedType = do
    debugLog ("\nDerive computation function for: " ∷ᵈ definedType ∷ᵈ [])
    stsConstrs ← getSTSConstrs definedType
    debugLog1 (generateFunction stsConstrs)
    --return $ generateFunction stsConstrs
    unifyWithGoal (generateFunction stsConstrs)

  macro
    by-derive⇔ : Name → List STSConstr → Tactic
    by-derive⇔ = derive⇔

  deriveComputational : Name → Name → UnquoteDecl
  deriveComputational n compName =
    initUnquoteWithGoal (quoteTerm Name) $ inDebugPath "deriveComputational" do
      let goalTy = quote Computational ∙⟦ n ∙ ⟧
      debugLog1 goalTy
      declareDef (vArg compName) goalTy
      compRes ← withSafeReset $ do
        compHole ← newMeta unknown
        equivHole ← newMeta unknown
        definition ← mkRecord (quote Computational) (compHole ⟨∷⟩ equivHole ⟨∷⟩ [])
        _ ← checkType definition goalTy
        debugLog1ᵐ (compHole ᵗ)
        runWithHole compHole $ deriveComp n
        reduce compHole
      debugLog ("compRes: " ∷ᵈ compRes ∷ᵈ [])
      stsConstrs ← quoteTC =<< getSTSConstrs n
      definition ← mkRecord (quote Computational) (compRes ⟨∷⟩ quote by-derive⇔ ∙⟦ n ∙ ∣ stsConstrs ⟧ ⟨∷⟩ [])
      defineFun compName [ nonBindingClause definition ]

private
  --open import Tactic.Defaults
  open import MyDebugOptions

  module _ {A B : Set} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where
    variable c : A × B
             s s' : A
             sig : B

    data Test : A × B → A → B → A → Set where
      test : proj₁ c ≡ s
           → proj₂ c ≡ sig
           ------------------------
           → Test c s sig (proj₁ c)

    unquoteDecl Computational-Test = deriveComputational (quote Test) Computational-Test

    Computational-Test' : Computational Test
    Computational-Test' = Computational-Test

    -- Sanity checks
    testFun : A × B → A → B → Maybe A
    testFun c s sig = if ⌊ ¿ proj₁ c ≡ s × proj₂ c ≡ sig ¿ ⌋ then just (proj₁ c) else nothing

    testFunPf⇒ : testFun c s sig ≡ just s' → Test c s sig s'
    testFunPf⇒ {c} {s} {sig} h = case ¿ proj₁ c ≡ s × proj₂ c ≡ sig ¿ of λ where
      (no ¬p) → case by-reduceDec h of λ ()
      (yes p) → subst (Test c s sig) (just-injective $ by-reduceDec h) (test (proj₁ p) (proj₂ p))

    testFunPf⇐ : Test c s sig s' → testFun c s sig ≡ just s'
    testFunPf⇐ {s = s} (test x x₁) = by-reduceDecInGoal (refl {x = just s})

    Computational-Test-Manual : Computational Test
    Computational-Test-Manual = record { compute = testFun ; ≡-just⇔STS = mk⇔ testFunPf⇒ testFunPf⇐ }

    testFun≡compute : ∀ {c s sig} → testFun c s sig ≡ Computational.compute Computational-Test c s sig
    testFun≡compute = refl
