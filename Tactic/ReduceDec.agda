{-# OPTIONS -v tryConstrs:101 #-}
{-# OPTIONS -v assumption:101 #-}
--------------------------------------------------------------------------------
-- reduceDec: looks for proofs of P to reduce ⌊ decP ⌋
--------------------------------------------------------------------------------

module Tactic.ReduceDec where

open import Agda.Builtin.Reflection using (withReconstructed)
open import Reflection hiding (_≟_; name; _>>=_; _>>_; return)
open import Reflection.AST.Argument
open import Prelude.Generics
open import Prelude.Monad
open import Prelude.Show
open import Prelude.DecEq

open import Function

open import Data.Bool hiding (_≟_)
open import Data.Maybe using (Maybe; just; nothing; from-just)
open import Data.List
open import Data.Product
open import Data.String using (String; _<+>_)
open import Data.Nat hiding (_≟_)
open import Data.Empty

open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Binary.PropositionalEquality hiding ([_])

open import Tactic.Helpers
open import Tactic.Constrs
open import Tactic.Assumption

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

isIsYes : Term → Bool
isIsYes (def f _) = f == quote isYes
isIsYes _         = false

extractDec : Term → Maybe Term
extractDec (def (quote isYes) (_ ∷ _ ∷ t ⟨∷⟩ [])) = just t
extractDec t = nothing

fromWitness' : ∀ {p} {P : Set p} (Q : Dec P) → P → ⌊ Q ⌋ ≡ true
fromWitness' (yes p) h = refl
fromWitness' (no ¬p) h = ⊥-elim $ ¬p h

fromWitnessFalse' : ∀ {p} {P : Set p} (Q : Dec P) → ¬ P → ⌊ Q ⌋ ≡ false
fromWitnessFalse' (yes p) h = ⊥-elim $ h p
fromWitnessFalse' (no ¬p) h = refl

fromWitness'Type : Bool → Term → Term
fromWitness'Type true  dec = def (quote _≡_) (hArg? ∷ hArg? ∷ def (quote isYes) (hArg? ∷ hArg? ∷ dec ⟨∷⟩ []) ⟨∷⟩ quote true  ◆ ⟨∷⟩ [])
fromWitness'Type false dec = def (quote _≡_) (hArg? ∷ hArg? ∷ def (quote isYes) (hArg? ∷ hArg? ∷ dec ⟨∷⟩ []) ⟨∷⟩ quote false ◆ ⟨∷⟩ [])

findDecRWHypWith : Tactic → Term → TC Term
findDecRWHypWith tac dec = do
  tac' ← quoteTC tac
  withReconstructed $
    catchTC (checkType (quote fromWitness'      ∙⟦ dec ∣ quote by ∙⟦ tac' ⟧ ⟧) (fromWitness'Type true  dec)) $
    catchTC (checkType (quote fromWitnessFalse' ∙⟦ dec ∣ quote by ∙⟦ tac' ⟧ ⟧) (fromWitness'Type false dec)) $
    error "reduceDec: Could not find an equation to rewrite with!"

reduceDecTermWith : Tactic → Term → TC (Term × Term)
reduceDecTermWith tac t = do
  print "***** reduceDec *****"
  printCurrentContext
  T ← inferType t >>= normalise
  (dec ∷ decs) ← return $ mapMaybe extractDec $ selectSubterms isIsYes T
    where _ → error "No subterms of the form 'isYes t' found!"
  let scheme = generalizeSubterms isIsYes T
  eq ← findDecRWHypWith tac dec
  printS scheme
  printS eq
  return (scheme , eq)
  where open Debug ("reduceDec" , 100)

reduceDecTerm = reduceDecTermWith (tryConstrsWith' 5 assumption')

reduceDec : Term → Tactic
reduceDec t goal = do
  (scheme , eq) ← reduceDecTerm t
  unify goal $ quote subst ∙⟦ scheme ∣ eq ∣ t ⟧

reduceDec' : Term → TC Term
reduceDec' t = do
  hole ← newMeta unknown
  reduceDec t hole
  return hole

reduceDecInGoal : ∀ {a} {A : Set a} → A → Tactic
reduceDecInGoal new goal = do
  newGoal ← withReconstructed $ quoteTC new
  (scheme , eq) ← reduceDecTerm goal
  unify goal $ quote subst ∙⟦ scheme ∣ quote sym ∙⟦ eq ⟧ ∣ newGoal ⟧

reduceDecInGoal' : Term → Tactic
reduceDecInGoal' newGoal goal = do
  (scheme , eq) ← reduceDecTerm goal
  unify goal $ quote subst ∙⟦ scheme ∣ quote sym ∙⟦ eq ⟧ ∣ newGoal ⟧

macro
  by-reduceDec = reduceDec
  by-reduceDecInGoal = reduceDecInGoal

private
  module Test (A : Set) ⦃ _ : DecEq A ⦄ where
    variable a b : A
             X Y Z : Set

    f₁ : A → A → A
    f₁ a b = assumption

    f₂ : X → Y → Z → X
    f₂ x y z = assumption

    pf₁ : (X → ⊥) → ¬ X
    pf₁ h = assumption

    fun : A → A → Bool
    fun a b = ⌊ a ≟ b ⌋
    
    pf : a ≡ b → fun a b ≡ false → ⊥
    pf h₁ h₂ = case true ≡ false ∋ by-reduceDec h₂ of λ ()

    pf₂ : a ≡ b → fun a b ≡ true
    pf₂ h = by-reduceDecInGoal (refl {x = true})

    pf₃ : ¬ (a ≡ b) → fun a b ≡ false
    pf₃ h = by-reduceDecInGoal (refl {x = false})
