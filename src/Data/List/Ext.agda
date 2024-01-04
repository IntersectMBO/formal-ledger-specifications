{-# OPTIONS --safe #-}
module Data.List.Ext where

open import Agda.Builtin.List using (List; []; _∷_)
open import Agda.Builtin.Maybe using (Maybe; nothing; just)
open import Agda.Builtin.Nat using (Nat; zero; suc)
open import Data.List using (List; [_]; _++_; map)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (All)
open import Function using (_∘_)
open import Level using (Level)

private variable
  ℓ : Level
  A : Set ℓ

-- Looking up an index into the list; fails when out-of-bounds.
_⁉_ : ∀ {a}{A : Set a} → List A → Nat → Maybe A
[]       ⁉ _     = nothing
(x ∷ _)  ⁉ zero  = just x
(_ ∷ xs) ⁉ suc n = xs ⁉ n


-- LIST OPERATIONS --

-- all elements of one list occur in another
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
insert_allOver_ : A → List A → List (List A)
insert a allOver [] = []
insert a allOver (x ∷ []) = (a ∷ x ∷ []) ∷ (x ∷ a ∷ []) ∷ []
insert a allOver (x ∷ xs) = (a ∷ x ∷ xs) ∷ map (x ∷_) (insert a allOver xs)

-- insert a at each index of each list of the given list of lists
insert_allOverAll_ : A → List (List A) → List (List A)
insert a allOverAll [] = []
insert a allOverAll (l ∷ []) = insert a allOver l
insert a allOverAll (l ∷ ls) = (insert a allOver l) ++ (insert a allOverAll ls)

-- return all permutations of the given list
permutations : List A → List (List A)
permutations [] = []
permutations (a ∷ []) = (a ∷ []) ∷ []
permutations (a ∷ as) = insert a allOverAll (permutations as)

-- return all permutations of every list in the given list of lists
allPermutations : List (List A) → List (List A)
allPermutations [] = []
allPermutations (l ∷ ls) = permutations l ++ allPermutations ls

-- return all permutations of every sublist of the given list
subpermutations : List A → List (List A)
subpermutations = allPermutations ∘ sublists
