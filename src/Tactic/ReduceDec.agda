{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- reduceDec: looks for proofs of P to reduce ⌊ decP ⌋
--------------------------------------------------------------------------------

module Tactic.ReduceDec where

open import Prelude
open import Meta

open import PreludeImports

open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Binary.PropositionalEquality hiding ([_])

open import Tactic.Helpers
open import Tactic.Constrs
open import Tactic.Assumption

open import Interface.Monad.Instance
open import Interface.MonadError.Instance
open import Interface.MonadReader.Instance
open import Interface.MonadTC.Instance

private
  variable ℓ : Agda.Primitive.Level
           A : Set ℓ

-- find all subterms satisfying the predicate (not under binders)
selectSubterms : (Term → Bool) → Term → List Term
selectSubterms P t = if P t then [ t ] else helper t
  where
    helper : Term → List Term
    argHelper : List (Arg Term) → List Term

    helper (var x args)      = argHelper args
    helper (con c args)      = argHelper args
    helper (def f args)      = argHelper args
    helper (lam v t)         = []
    helper (pat-lam cs args) = argHelper args
    helper (pi (arg _ a) _)  = if P a then [ a ] else helper a
    helper (meta x args)     = argHelper args
    helper _                 = []

    argHelper [] = []
    argHelper (arg _ x ∷ l) = (if P x then [ x ] else helper x) ++ argHelper l

-- TODO: increment indices on each generalization subterm
-- generalize all subterms satisfying the predicate (not under binders)
generalizeSubterms : (Term → Bool) → Term → Term
generalizeSubterms P t = lambdas $ if P t then ♯ 0 else helper (mapVars suc t)
  where
    helper : Term → Term
    argHelper : List (Arg Term) → List (Arg Term)

    helper (var x args)      = var x $ argHelper args
    helper (con c args)      = con c $ argHelper args
    helper (def f args)      = def f $ argHelper args
    helper (lam v t)         = lam v t
    helper (pat-lam cs args) = pat-lam cs $ argHelper args
    helper (pi (arg i a) b)  = pi (arg i $ if P a then ♯ 0 else helper a) b
    helper (meta x args)     = meta x $ argHelper args
    helper t                 = t

    argHelper [] = []
    argHelper (arg i x ∷ l) = arg i (if P x then ♯ 0 else helper x) ∷ argHelper l

    lambdas : Term → Term
    lambdas t' = foldl (λ acc _ → `λ "g" ⇒ acc) t' (selectSubterms P t)

extractDec : Term → Maybe Term
extractDec (def (quote isYes) (_ ∷ _ ∷ t ⟨∷⟩ [])) = just t
extractDec t = nothing

isIsYes : Term → Bool
isIsYes = is-just ∘ extractDec

fromWitness' : ∀ {p} {P : Set p} (Q : Dec P) → P → ⌊ Q ⌋ ≡ true
fromWitness' (yes p) h = refl
fromWitness' (no ¬p) h = ⊥-elim $ ¬p h

fromWitnessFalse' : ∀ {p} {P : Set p} (Q : Dec P) → ¬ P → ⌊ Q ⌋ ≡ false
fromWitnessFalse' (yes p) h = ⊥-elim $ h p
fromWitnessFalse' (no ¬p) h = refl

fromWitness'Type : Bool → Term → Term
fromWitness'Type true  dec = def (quote _≡_) (hArg? ∷ hArg? ∷ def (quote isYes) (hArg? ∷ hArg? ∷ dec ⟨∷⟩ []) ⟨∷⟩ quote true  ◆ ⟨∷⟩ [])
fromWitness'Type false dec = def (quote _≡_) (hArg? ∷ hArg? ∷ def (quote isYes) (hArg? ∷ hArg? ∷ dec ⟨∷⟩ []) ⟨∷⟩ quote false ◆ ⟨∷⟩ [])

findDecRWHypWith : ITactic → Term → TC Term
findDecRWHypWith tac dec =
  helper true $ helper false $
    error1 "reduceDec: Could not find an equation to rewrite with!"
  where
    helper : Bool → TC Term → TC Term
    helper b x = runSpeculativeMaybe (do
      hole ← newMeta unknown
      res ← case b of λ where
        false → checkType (quote fromWitnessFalse' ∙⟦ dec ∣ hole ⟧) (fromWitness'Type false dec)
        true  → checkType (quote fromWitness'      ∙⟦ dec ∣ hole ⟧) (fromWitness'Type true  dec)
      catch (do
        runWithHole hole tac
        debugLogᵐ ("Hypothesis is " ∷ᵈᵐ b ᵛⁿ ∷ᵈᵐ []ᵐ)
        return $ just res) (λ _ → return nothing)) x

reduceDecTermWith : ITactic → ReductionOptions → Term → TC (Term × Term)
reduceDecTermWith tac r t = inDebugPath "reduceDec" do
  T ← local (λ env → record env { reduction = r }) (inferType t >>= normalise)
  debugLog ("Reduce dec in " ∷ᵈ t ∷ᵈ " : " ∷ᵈ T ∷ᵈ [])
  (dec ∷ decs) ← return $ mapMaybe extractDec $ selectSubterms isIsYes T
    where _ → error1 "No subterms of the form 'isYes t' found!"
  let scheme = generalizeSubterms isIsYes T
  debugLog ("Rewrite scheme: " ∷ᵈ scheme ∷ᵈ [])
  debugLog ("`isYes` to reduce: " ∷ᵈ dec ∷ᵈ [])
  eq ← findDecRWHypWith tac dec
  eqT ← inferType eq
  debugLog ("Eq: " ∷ᵈ eq ∷ᵈ " : " ∷ᵈ eqT ∷ᵈ [])
  return (scheme , eq)

reduceDecTerm : ReductionOptions → Term → TC (Term × Term)
reduceDecTerm = reduceDecTermWith (tryConstrsWith' 5 assumption')

reduceDec' : ReductionOptions → Term → TC Term
reduceDec' r t = do
  (scheme , eq) ← reduceDecTerm r t
  return $ quote subst ∙⟦ scheme ∣ eq ∣ t ⟧

reduceDec : ReductionOptions → Term → ITactic
reduceDec r t = unifyWithGoal =<< reduceDec' r t

reduceDecInGoal : ReductionOptions → Term → ITactic
reduceDecInGoal r newGoal = do
  inj₁ goal ← reader TCEnv.goal
    where _ → error1 "Goal is not a hole!"
  (scheme , eq) ← reduceDecTerm r goal
  unifyWithGoal $ quote subst ∙⟦ scheme ∣ quote sym ∙⟦ eq ⟧ ∣ newGoal ⟧

module _ ⦃ _ : DebugOptions ⦄ where
  macro
    by-reduceDec : Term → Tactic
    by-reduceDec t = initTac $ reduceDec reduceAll t

    by-reduceDecInGoal : Term → Tactic
    by-reduceDecInGoal t = initTac $ reduceDecInGoal reduceAll t

    by-reduceDec' : ReductionOptions → Term → Tactic
    by-reduceDec' r t = initTac $ reduceDec r t

    by-reduceDecInGoal' : ReductionOptions → Term → Tactic
    by-reduceDecInGoal' r t = initTac $ reduceDecInGoal r t

private
  open import Interface.DecEq

  module Test (A : Set) ⦃ _ : DecEq A ⦄ where
    open import Tactic.Defaults

    variable a b : A
             X Y Z : Set

    startDebug : ⊤
    startDebug = byTC (debugLog1 "\n\n\n\nTesting 'reduceDec'\n")

    fun : A → A → Bool
    fun a b = ⌊ a ≟ b ⌋

    pf : a ≡ b → fun a b ≡ false → ⊥
    pf h₁ h₂ = case true ≡ false ∋ by-reduceDec h₂ of λ ()

    pf₂ : a ≡ b → fun a b ≡ true
    pf₂ h = by-reduceDecInGoal (refl {x = true})

    pf₃ : ¬ (a ≡ b) → fun a b ≡ false
    pf₃ h = by-reduceDecInGoal (refl {x = false})
