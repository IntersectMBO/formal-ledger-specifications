open import Agda.Builtin.Reflection using (withReconstructed; onlyReduceDefs)
open import Reflection.AST hiding (name)
open import Reflection.AST.Argument using (unArg; _⟨∷⟩_)
open import Reflection.AST.Abstraction using (unAbs)
import Reflection.AST.Argument.Visibility

open import Function

open import Data.Unit hiding (_≟_)
open import Data.Bool hiding (_≟_)
open import Data.Maybe using (Maybe; just; nothing; from-just)
open import Data.Maybe.Properties using (just-injective)
open import Data.List
import Data.List.NonEmpty as NE
open import Data.Product
open import Data.String using (String; _<+>_)
open import Data.Nat hiding (_≟_)
open import Data.Sum using (inj₁; inj₂)

open import PreludeImports
open DecEq

open import Relation.Nullary
open import Relation.Nullary.Negation
open import Relation.Nullary.Decidable
open import Relation.Binary.PropositionalEquality hiding ([_])

open import Tactic.ReduceDec using (reduceDec; reduceDec'; reduceDecInGoal; by-reduceDec; by-reduceDecInGoal)
open import Tactic.Helpers
open import Tactic.Constrs
open import Tactic.ClauseBuilder

open import ComputationalRelation

module DeriveComp where

open import Interface.Monad
open import Interface.MonadError hiding (MonadError-TC)
open import Interface.MonadTC hiding (Monad-TC)
open import Interface.MonadReader
open import Reflection.TCI

open Monad ⦃...⦄
open MonadTC ⦃...⦄
open MonadError ⦃...⦄
open MonadReader ⦃...⦄

instance
  _ = Monad-TC
  _ = MonadTC-TCI
  _ = MonadReader-TC
  _ = MonadError-TC
  _ = ContextMonad-MonadTC

  Monad-Maybe : Monad Maybe
  Monad-Maybe .return = just
  Monad-Maybe ._>>=_  = Data.Maybe._>>=_

record STSConstr : Set where
  field
    name    : Name
    params  : List $ Abs $ Arg Type
    clauses : List Type
    context : Pattern
    state   : Pattern
    signal  : Pattern
    result  : Term

{-# TERMINATING #-}
conOrVarToPattern : ℕ → Term → Maybe Pattern
conOrVarToPattern k (♯ v) = just (Pattern.var (v ∸ k))
conOrVarToPattern k (con c args) =
  Pattern.con c <$> (traverseList (λ { (arg i x) → Data.Maybe.map (arg i) $ conOrVarToPattern k x }) args)
conOrVarToPattern _ _ = nothing

getVisibility : ∀ {a} {A : Set a} → Arg A → Agda.Builtin.Reflection.Visibility
getVisibility (arg (arg-info v _) _) = v

isArg : (a : Abs (Arg Term)) → Dec _
isArg a = ¬? (getVisibility (unAbs a) Reflection.AST.Argument.Visibility.≟ visible)

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
  debugLogValueNorm res
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
  ⟦ context ∣ state ∣ signal ⦅ Data.List.map (λ { (abs s x) → (s , x) }) params ⦆⇒
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
  debugLog1 "Constructor pattern:"
  debugLogValueNorm constrPat
  expr ← singleMatchExpr constrPat $ finishMatch $ withGoalHole $ reduceDecInGoal rdOpts (quote refl ◆)
  unifyWithGoal $ clauseExprToPatLam expr

derive⇒ : Name → List STSConstr → ITactic
derive⇒ n (record { name = stsConstrName ; clauses = clauses } ∷ []) = do
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
    debugLog1 "hole⇐"
    debugLogTerm hole⇐
    runWithHole hole⇐ derive⇐
    debugLog ("hole⇒ " ∷ᵈ hole⇒ ∷ᵈ [])
    runWithHole hole⇒ $ derive⇒ n stsConstrs

  deriveComp : Name → ITactic
  deriveComp definedType = do
    debugLog ("\nDerive computation function for: " ∷ᵈ definedType ∷ᵈ [])
    stsConstrs ← getSTSConstrs definedType
    unifyWithGoal (generateFunction stsConstrs)

  macro
    by-derive⇔ : Name → List STSConstr → Tactic
    by-derive⇔ = derive⇔

  deriveComputational : Name → Name → UnquoteDecl
  deriveComputational n compName =
    initUnquoteWithGoal (quoteTerm Name) $ inDebugPath "deriveComputational" do
      let goalTy = quote Computational ∙⟦ n ∙ ⟧
      debugLog (goalTy ∷ᵈ [])
      declareDef (vArg compName) goalTy
      compRes ← runAndReset $ do
        compHole ← newMeta unknown
        equivHole ← newMeta unknown
        definition ← mkRecord (quote Computational) (compHole ⟨∷⟩ equivHole ⟨∷⟩ [])
        _ ← checkType definition goalTy
        debugLogTerm compHole
        runWithHole compHole $ deriveComp n
        reduce compHole
      debugLog ("compRes: " ∷ᵈ compRes ∷ᵈ [])
      stsConstrs ← quoteTC =<< getSTSConstrs n
      definition ← mkRecord (quote Computational) (compRes ⟨∷⟩ quote by-derive⇔ ∙⟦ n ∙ ∣ stsConstrs ⟧ ⟨∷⟩ [])
      defineFun compName [ nonBindingClause definition ]

private
  open import Tactic.Defaults

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
