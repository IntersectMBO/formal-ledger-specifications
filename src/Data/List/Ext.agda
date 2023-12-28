{-# OPTIONS --safe #-}

module Data.List.Ext where

open import Data.List
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (All)
open import Level using (Level; 0ℓ)
open import Prelude hiding (map)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Binary.Reasoning.Syntax

open All

module _ {ℓ : Level}{A : Set ℓ} where

  _⊆_ : (l l' : List A) → Set _
  l ⊆ l' = All (_∈ l') l

  -- prepend a to every input list
  _:::_ : A → List (List A) → List (List A)
  a ::: [] = [ a ∷ [] ]
  a ::: (l ∷ ls) = (a ∷ l) ∷ (a ::: ls)

  sublists : List A → List (List A)
  sublists [] = []
  sublists (x ∷ xs) =  x ::: sublists xs  -- sublists including x
                       ++ sublists xs     -- sublists omitting x
module _ {ℓ}{A : Set ℓ} where
  lemma0 : ∀{a : A}{us vs : List A}
   →       head((a ∷ us) ++ vs) ≡ head(a ∷ us)
  lemma0 = refl

module _ {ℓ}{A : Set ℓ} where

  open ≡-Reasoning

  -- insert a at every position of the given list
  _inserts_ : List A → A → List (List A)
  [] inserts a = (a ∷ []) ∷ []
  (x ∷ xs) inserts a = (a ∷ x ∷ xs) ∷ map (x ∷_) (xs inserts a)

  -- insert a at every position of every input list
  foreach_inserts_ : List (List A) → A → List (List A)
  foreach [] inserts a = [] inserts a
  foreach (l ∷ []) inserts a = l inserts a
  foreach (l ∷ ls) inserts a = (l inserts a) ++ (foreach ls inserts a)

  -- return all permutations of the given list
  permutations : List A → List (List A)
  permutations [] = []
  permutations (x ∷ xs) = foreach (permutations xs) inserts x

  -- return all permutations of every input list
  allPermutations : List (List A) → List (List A)
  allPermutations [] = []
  allPermutations ([] ∷ []) = [] ∷ []
  allPermutations (l ∷ ls) = permutations l ++ allPermutations ls

  -- return all permutations of every sublist of the given list
  subpermutations : List A → List (List A)
  subpermutations = allPermutations ∘ sublists


  -- lem : {a : A}{xs : List A} → head (a ::: sublists xs) ≡ just (a ∷ xs)
  -- lem {a} {[]} = refl
  -- lem {a} {x ∷ xs} = Goal
  --   where
  --   ξ : head (x ::: sublists xs) ≡ just (x ∷ xs)
  --   ξ = lem {x} {xs}
  --   Goal : head (a ::: ((x ::: sublists xs) ++ sublists xs)) ≡ just (a ∷ x ∷ xs)
  --   Goal = {!!}


  -- lem0 : {a : A}{xs : List A} → head (sublists (a ∷ xs)) ≡ just (a ∷ xs)
  -- lem0 {a} {[]} = refl
  -- lem0 {a} {x ∷ xs} = Goal
  --   where
  --   ξ : head (a ::: [ x ∷ xs ]) ≡ just (a ∷ (x ∷ xs))
  --   ξ = refl
  --   ξ' : ∀{u us vs} → head ((u ∷ us) ++ vs) ≡ head (u ∷ us)
  --   ξ' = refl

  --   ξ'' : ∀{u : A} {us : List (List A)} → head (a ::: ((u ::: us) ++ us)) ≡ head (a ::: (u ::: us))
  --   ξ'' {u} {[]} = refl
  --   ξ'' {u} {us ∷ us₁} = refl

  --   ζ : head (x ::: sublists xs) ≡ just (x ∷ xs)
  --   ζ = {!lem0!}
  --   γ : head (a ::: (x ::: sublists xs)) ≡ just (a ∷ x ∷ xs)
  --   γ = {!!}
  --   γ' : head (a ::: ((x ::: sublists xs) ++ sublists xs)) ≡ just (a ∷ x ∷ xs)
  --   γ' = begin
  --     head (a ::: ((x ::: sublists xs) ++ sublists xs)) ≡⟨ ξ'' ⟩
  --     head (a ::: (x ::: sublists xs)) ≡⟨ γ ⟩
  --     just (a ∷ x ∷ xs) ∎
  --   Goal : head ((a ::: ((x ::: sublists xs) ++ sublists xs)) ++
  --                (x ::: sublists xs) ++ sublists xs)
  --          ≡ just (a ∷ x ∷ xs)
  --   Goal = begin
  --           head ((a ::: ((x ::: sublists xs) ++ sublists xs)) ++
  --                (x ::: sublists xs) ++ sublists xs)  ≡⟨ {!!} ⟩
  --           head (a ::: ((x ::: sublists xs) ++ sublists xs)) ≡⟨ {!!} ⟩
  --           just (a ∷ x ∷ xs) ∎
