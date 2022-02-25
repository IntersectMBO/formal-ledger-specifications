{-# OPTIONS -v tryConstrs:101 #-}
{-# OPTIONS -v assumption:101 #-}
{-# OPTIONS -v reduceDec:101 #-}
--------------------------------------------------------------------------------
-- reduceDec: looks for proofs of P to reduce ⌊ decP ⌋
--------------------------------------------------------------------------------

module Tactic.ReduceDec where

open import Agda.Builtin.Reflection using (withReconstructed; onlyReduceDefs; dontReduceDefs)
open import Reflection hiding (_≟_; name; _>>=_; _>>_; return)
open import Reflection.AST.Argument
open import Prelude.Generics
open import Prelude.Monad
open import Prelude.Functor
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

private
  variable ℓ : Agda.Primitive.Level
           A : Set ℓ

record ReduceDecOptions : Set where
  field
    onlyReduce : Maybe $ List Name
    dontReduce : Maybe $ List Name

  applyOnlyReduce : TC A → TC A
  applyOnlyReduce x = case onlyReduce of λ where
    (just r) → onlyReduceDefs r x
    nothing → x

  applyDontReduce : TC A → TC A
  applyDontReduce x = case dontReduce of λ where
    (just r) → dontReduceDefs r x
    nothing → x

  applyReduceDecOptions : TC A → TC A
  applyReduceDecOptions x = applyOnlyReduce $ applyDontReduce x

open ReduceDecOptions using (applyReduceDecOptions)

noOptions : ReduceDecOptions
noOptions = record { onlyReduce = nothing ; dontReduce = nothing }

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
findDecRWHypWith tac dec =
  helper true $ helper false $
    error "reduceDec: Could not find an equation to rewrite with!"
  where
    open Debug ("reduceDec" , 100)
    helper : Bool → TC Term → TC Term
    helper b = catchTC $ do
      hole ← newMeta unknown
      res ← case b of λ where
        false → checkType (quote fromWitnessFalse' ∙⟦ dec ∣ hole ⟧) (fromWitness'Type false dec)
        true  → checkType (quote fromWitness'      ∙⟦ dec ∣ hole ⟧) (fromWitness'Type true  dec)
      tac hole
      print ("Hypothesis is" <+> show b)
      return res

reduceDecTermWith : Tactic → ReduceDecOptions → Term → TC (Term × Term)
reduceDecTermWith tac r t = do
  print "***** reduceDec *****"
  printTerm "of term" t
  printCurrentContext
  T ← applyReduceDecOptions r (inferType t >>= normalise)
  print ("Infered type:" <+> show T)
  (dec ∷ decs) ← return $ mapMaybe extractDec $ selectSubterms isIsYes T
    where _ → error "No subterms of the form 'isYes t' found!"
  let scheme = generalizeSubterms isIsYes T
  print ("Rewrite scheme:" <+> show scheme)
  eq ← findDecRWHypWith tac dec
  printTerm "eq" eq
  return (scheme , eq)
  where open Debug ("reduceDec" , 100)

reduceDecTerm : ReduceDecOptions → Term → TC (Term × Term)
reduceDecTerm = reduceDecTermWith (tryConstrsWith' 5 assumption')

reduceDec' : ReduceDecOptions → Term → TC Term
reduceDec' r t = do
  (scheme , eq) ← reduceDecTerm r t
  return $ quote subst ∙⟦ scheme ∣ eq ∣ t ⟧

reduceDec : ReduceDecOptions → Term → Tactic
reduceDec r t goal = unify goal =<< reduceDec' r t

reduceDecInGoal : ReduceDecOptions → Term → Tactic
reduceDecInGoal r newGoal goal = do
  (scheme , eq) ← reduceDecTerm r goal
  unify goal $ quote subst ∙⟦ scheme ∣ quote sym ∙⟦ eq ⟧ ∣ newGoal ⟧

macro
  by-reduceDec : Term → Tactic
  by-reduceDec = reduceDec noOptions

  by-reduceDecInGoal : Term → Tactic
  by-reduceDecInGoal = reduceDecInGoal noOptions

  by-reduceDec' : ReduceDecOptions → Term → Tactic
  by-reduceDec' r t h = reduceDec r t h

  by-reduceDecInGoal' : ReduceDecOptions → Term → Tactic
  by-reduceDecInGoal' r t h = reduceDecInGoal r t h

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
