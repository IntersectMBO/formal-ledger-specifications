{-# OPTIONS --safe #-}
module Data.List.Ext where

open import Data.List using (List; [_]; _++_; map; head; drop; concatMap)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (All)
open import Data.Maybe using (Maybe)
open import Data.Nat using (ℕ)
open import Function using (_∘_)
open import Level using (Level)

open Maybe; open List; open ℕ

private variable
  ℓ : Level
  A B : Set ℓ

-- Looking up an index into the list; fails when out-of-bounds.
_⁉_ : ∀ {a}{A : Set a} → List A → ℕ → Maybe A
[]       ⁉ _     = nothing
(x ∷ _)  ⁉ zero  = just x
(_ ∷ xs) ⁉ suc n = xs ⁉ n

-- LIST OPERATIONS --
flatMap : (A → List B) → List A → List B
flatMap f [] = []
flatMap f (x ∷ xs) = f x ++ flatMap f xs

-- every element in the first list occurs in the second list
_⊆_ : (l l' : List A) → Set _
l ⊆ l' = All (_∈ l') l

-- list of all sublists of the given list
sublists : List A → List (List A)
sublists [] = [ [] ]
sublists (x ∷ xs) = map (x ∷_) (sublists xs) ++ sublists xs

-- insert the given element in every position of the given list
insert : A → List A → List (List A)
insert x [] = (x ∷ []) ∷ []
insert x (y ∷ ys) = (x ∷ y ∷ ys) ∷ map (y ∷_) (insert x ys)

-- return all permutations of the given list
permutations : List A → List (List A)
permutations [] = [] ∷ []
permutations (a ∷ as) = flatMap (insert a) (permutations as)

-- return all permutations of every sublist of the given list
subpermutations : List A → List (List A)
subpermutations [] = [] ∷ []
subpermutations (x ∷ xs) = (flatMap (insert x) (subpermutations xs)) ++ subpermutations xs
