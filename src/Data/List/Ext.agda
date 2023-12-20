{-# OPTIONS --safe #-}

module Data.List.Ext where

open import Data.List
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (All)
open import Level using (Level; 0ℓ)
open import Prelude hiding (map)
open All

module _ {ℓ : Level}{A : Set ℓ} where

  _⊆_ : (l l' : List A) → Set _
  l ⊆ l' = All (_∈ l') l

  -- prepend a to every input list
  _+++_ : A → List (List A) → List (List A)
  a +++ [] = [ a ∷ [] ]
  a +++ (l ∷ ls) = (a ∷ l) ∷ (a +++ ls)

  sublists : List A → List (List A)
  sublists [] = []
  sublists (x ∷ xs) =  x +++ sublists xs  -- sublists including x
                       ++ sublists xs     -- sublists omitting x

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
  allPermutations (l ∷ ls) = permutations l ++ allPermutations ls

  -- return all permutations of every sublist of the given list
  subpermutations : List A → List (List A)
  subpermutations = allPermutations ∘ sublists
