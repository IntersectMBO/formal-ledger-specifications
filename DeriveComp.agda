{-# OPTIONS -v Test:101 #-}
{-# OPTIONS -v case:101 #-}
{-# OPTIONS -v assumption:101 #-}
{-# OPTIONS -v reduceDec:101 #-}
open import Agda.Builtin.Reflection using (withReconstructed; onlyReduceDefs)
open import Reflection hiding (_≟_; name; _>>=_; _>>_; return)
open import Reflection.AST hiding (name)
open import Reflection.AST.Argument using (unArg; _⟨∷⟩_)
open import Reflection.AST.Abstraction using (unAbs)
open import Prelude.Generics
open import Prelude.Traversable
open import Prelude.Functor
open import Prelude.Foldable
open import Prelude.Monad
open import Prelude.Show
open import Prelude.Decidable
open import Prelude.General hiding (_⇔_)
open import Prelude.DecEq

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

open import Relation.Nullary
open import Relation.Nullary.Negation
open import Relation.Nullary.Decidable
open import Relation.Binary.PropositionalEquality hiding ([_])
open Debug ("Test" , 100)

open import Tactic.ReduceDec using (reduceDec; reduceDec'; reduceDecInGoal; by-reduceDec; by-reduceDecInGoal; ReduceDecOptions)
open import Tactic.Helpers
open import Tactic.Constrs
open import Tactic.Case
open import Tactic.ClauseBuilder

module DeriveComp where

record STSConstr : Set where
  field
    name    : Name
    params  : List $ Abs $ Arg Type
    clauses : List Type
    context : Pattern
    state   : Pattern
    signal  : Pattern
    result  : Term

instance
  Show-STSConstr : Show STSConstr
  Show-STSConstr .show c = let open STSConstr c in
    "STSConstr" <+>
    "{ params =" <+> show params <+>
    "; clauses =" <+> show clauses <+>
    "; context =" <+> show context <+>
    "; state =" <+> show state <+>
    "; signal =" <+> show signal <+>
    "; result =" <+> show result <+>
    "}"

{-# TERMINATING #-}
conOrVarToPattern : ℕ → Term → Maybe Pattern
conOrVarToPattern k (♯ v) = just (Pattern.var (v ∸ k))
conOrVarToPattern k (con c args) =
  Pattern.con c <$> traverseM (λ { (arg i x) → arg i <$> conOrVarToPattern k x }) args
conOrVarToPattern _ _ = nothing

getVisibility : ∀ {a} {A : Set a} → Arg A → Agda.Builtin.Reflection.Visibility
getVisibility (arg (arg-info v _) _) = v

isArg : (a : Abs (Arg Term)) → Dec _
isArg a = ¬? (getVisibility (unAbs a) ≟ visible)

toSTSConstr : Name × TypeView → Maybe STSConstr
toSTSConstr (n , (cs , def f args)) with args | mapMaybe (conOrVarToPattern (length $ dropWhile isArg cs) ∘ unArg) $ take 3 args
... | _ ∷ _ ∷ _ ∷ r ∷ [] | c ∷ s ∷ sig ∷ [] =
  just record
    { name = n
    ; params = takeWhile isArg cs
    ; clauses = zipWithIndex (λ i → mapVars (_∸ i)) $ unArg ∘ unAbs <$> dropWhile isArg cs
    ; context = c
    ; state = s
    ; signal = sig
    ; result = mapVars (_∸ (length $ dropWhile isArg cs)) $ unArg r }
... | _ | _ = nothing
toSTSConstr _ = nothing

infix 0 _────────────────────────────────_
_────────────────────────────────_ : Set → Set → Set
A ──────────────────────────────── B = A → B

errorIfNothing : ∀ {a} {A : Set a} → Maybe A → String → TC A
errorIfNothing (just x) s = return x
errorIfNothing nothing s = error s

getSTSConstrs : Name → TC (List STSConstr)
getSTSConstrs n = do
  dataDef ← getDataDef n 2
  errorIfNothing (traverseM toSTSConstr (DataDef.constructors dataDef)) "Error"

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
  ⟦ context ∣ state ∣ signal ⦅ fmap (λ { (abs s x) → (s , x) }) params ⦆⇒
    quote if_then_else_ ∙⟦ quote ⌊_⌋ ∙⟦ genPred clauses ⟧ ∣
      quote just ◆⟦ result ⟧ ∣
      quote nothing ◆ ⟧ ⟧

generateFunction : List STSConstr → Term
generateFunction c = pat-lam (generateFunctionClause generatePred <$> c) []

instance _ = Monad-TB

rdOpts : ReduceDecOptions
rdOpts = record { onlyReduce = just [ quote ⌊_⌋ ] ; dontReduce = nothing }

derive⇐ : Tactic
derive⇐ hole = runTBinHole hole $ clauseExprToPatLam <$> do
  (constrPat ∷ []) ← currentTyConstrPatterns
    where _ → lift-TB $ error "TODO: Support more than one constructor!"
  singleMatchExpr constrPat $ finishMatch $ withGoalHole $ reduceDecInGoal rdOpts (quote refl ◆)
  where open ClauseExprM {TB} ⦃ Monad-TB ⦄ ⦃ ContextMonad-TB ⦄

derive⇒ : Name → Tactic
derive⇒ n hole = do
  record { name = stsConstrName ; clauses = clauses } ∷ [] ← getSTSConstrs n
    where _ → error "TODO: support multiple constructors"
  
  runTBinHole hole $ clauseExprToPatLam <$> do
    introsExpr (from-just $ NE.fromList ("h" ⟨∷⟩ [])) $ finishMatch $
      caseMatch (mapVars (_+ 1) $ generatePred clauses) $ matchExprM
        ((multiSinglePattern [ "" ] (vArg (``no  (` 0))) , finishMatch do
          reducedHyp ← lift-TB $ reduceDec' rdOpts $ ♯ 1
          return $ quote case_of_ ∙⟦ reducedHyp ∣ `λ∅ ⟧) ∷
         (multiSinglePattern [ "" ] (vArg (``yes (` 0))) , finishMatch do
          reducedHyp ← lift-TB $ reduceDec' rdOpts $ ♯ 1
          ty ∙⟦ c ∣ s ∣ sig ∣ s' ⟧ ← ask
            where ty → lift-TB $ error $ "BUG: Unexpected type:" <+> show ty
          return $ quote subst ∙⟦ ty ∙⟦ c ∣ s ∣ sig ⟧ ∣ quote just-injective ∙⟦ reducedHyp ⟧ ∣
                               con stsConstrName (curryPredProof (length clauses) (♯ 0)) ⟧) ∷ [])
  where open ClauseExprM {TB} ⦃ Monad-TB ⦄ ⦃ ContextMonad-TB ⦄

derive⇔ : Name → Tactic
derive⇔ n hole = do
  hole⇒ ← newMeta unknown
  hole⇐ ← newMeta unknown
  unify hole $ quote mk⇔ ∙⟦ hole⇒ ∣ hole⇐ ⟧
  printTerm "hole⇐" hole⇐
  derive⇐ hole⇐
  printTerm "hole⇒" hole⇒
  derive⇒ n hole⇒

deriveComp : Name → Tactic
deriveComp definedType hole = do
  print ("Derive computation function for" <+> show definedType)
  stsConstrs ← getSTSConstrs definedType
  unify hole (generateFunction stsConstrs)

macro
  by-derive⇔ : Name → Tactic
  by-derive⇔ = derive⇔

record Computational {C S Sig : Set} (P : C → S → Sig → S → Set) : Set where
  constructor MkComputational
  field
    compute : C → S → Sig → Maybe S
    pf : ∀ {c s sig s'} → (compute c s sig ≡ just s') ⇔ P c s sig s'

deriveComputational : Name → Name → TC ⊤
deriveComputational n compName = do
  let goalTy = quote Computational ∙⟦ n ∙ ⟧
  declareDef (vArg compName) goalTy
  compRes ← runAndReset $ do
    compHole ← newMeta unknown
    equivHole ← newMeta unknown
    definition ← mkRecord (quote Computational) (compHole ⟨∷⟩ equivHole ⟨∷⟩ [])
    _ ← checkType definition goalTy
    deriveComp n compHole
    reduce compHole
  printTerm "compRes" compRes
  definition ← mkRecord (quote Computational) (compRes ⟨∷⟩ quote by-derive⇔ ∙⟦ n ∙ ⟧ ⟨∷⟩ [])
  defineFun compName [ nonBindingClause definition ]

private
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
    Computational-Test-Manual = record { compute = testFun ; pf = mk⇔ testFunPf⇒ testFunPf⇐ }

    testFun≡compute : ∀ {c s sig} → testFun c s sig ≡ Computational.compute Computational-Test c s sig
    testFun≡compute = refl
