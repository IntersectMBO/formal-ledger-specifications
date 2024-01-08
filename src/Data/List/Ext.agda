{-# OPTIONS --safe #-}
module Data.List.Ext where

open import Data.List using (List; [_]; _++_; map)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (All)
open import Data.Maybe using (Maybe)
open import Data.Nat using (ℕ)
open import Function using (_∘_)
open import Level using (Level)

open Maybe; open List; open ℕ

private variable
  ℓ : Level
  A : Set ℓ

-- Looking up an index into the list; fails when out-of-bounds.
_⁉_ : ∀ {a}{A : Set a} → List A → ℕ → Maybe A
[]       ⁉ _     = nothing
(x ∷ _)  ⁉ zero  = just x
(_ ∷ xs) ⁉ suc n = xs ⁉ n

-- LIST OPERATIONS --

-- every element in the first list occurs in the second list
_⊆_ : (l l' : List A) → Set _
l ⊆ l' = All (_∈ l') l

-- prepend the given element to every list in a list of lists
_+::_ : A → List (List A) → List (List A)
a +:: [] = [ a ∷ [] ]
a +:: (l ∷ ls) = (a ∷ l) ∷ (a +:: ls)

-- return the list of all sublists of a given list
sublists : List A → List (List A)
sublists [] = []
sublists (x ∷ xs) = x +:: sublists xs  -- sublists including x
                    ++ sublists xs     -- sublists omitting x

-- insert a at each index of the given list
insert_everywhereIn_ : A → List A → List (List A)
insert a everywhereIn [] = [ a ] ∷ []
-- insert a everywhereIn (x ∷ []) = (a ∷ x ∷ []) ∷ (x ∷ a ∷ []) ∷ []
insert a everywhereIn (x ∷ xs) = (a ∷ x ∷ xs) ∷ map (x ∷_) (insert a everywhereIn xs)

-- insert a at each index of each list of the given list of lists
insert_everywhereInAll_ : A → List (List A) → List (List A)
insert a everywhereInAll [] = []
insert a everywhereInAll (l ∷ []) = insert a everywhereIn l
insert a everywhereInAll (l ∷ ls) = (insert a everywhereIn l) ++ (insert a everywhereInAll ls)

-- return all permutations of the given list
permutations : List A → List (List A)
permutations [] = []
permutations (a ∷ []) = (a ∷ []) ∷ []
permutations (a ∷ as) = insert a everywhereInAll (permutations as)

-- return all permutations of every list in the given list of lists
allPermutations : List (List A) → List (List A)
allPermutations [] = []
allPermutations (l ∷ ls) = permutations l ++ allPermutations ls

-- return all permutations of every sublist of the given list
subpermutations : List A → List (List A)
subpermutations [] = [] ∷ []
subpermutations l = allPermutations (sublists l)
