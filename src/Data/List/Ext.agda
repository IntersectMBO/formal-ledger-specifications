{-# OPTIONS --safe #-}

module Data.List.Ext where

open import Data.List renaming (map to lmap)
open import Function using (_∘_)

-- prepend a to every input list
_+++_ : ∀{ℓ}{A : Set ℓ} → A → List (List A) → List (List A)
a +++ [] = [ a ∷ [] ]
a +++ (l ∷ ls) = (a ∷ l) ∷ (a +++ ls)

-- return all sublists of the given list
sublists : ∀{ℓ}{A : Set ℓ} → List A → List (List A)
sublists [] = []
sublists (x ∷ xs) =  x +++ sublists xs  -- sublists including x
                     ++ sublists xs     -- sublists omitting x

-- insert a at every position of the given list
_inserts_ : ∀{ℓ}{A : Set ℓ} → List A → A → List (List A)
[] inserts a = (a ∷ []) ∷ []
(x ∷ xs) inserts a = (a ∷ x ∷ xs) ∷ lmap (λ l → x ∷ l) (xs inserts a)

-- insert a at every position of every input list
foreach_inserts_ : ∀{ℓ}{A : Set ℓ} → List (List A) → A → List (List A)
foreach [] inserts a = [] inserts a
foreach (l ∷ []) inserts a = l inserts a
foreach (l ∷ ls) inserts a = (l inserts a) ++ (foreach ls inserts a)

-- return all permutations of the given list
permutations : ∀{ℓ}{A : Set ℓ} → List A → List (List A)
permutations [] = []
permutations (x ∷ xs) = foreach (permutations xs) inserts x

-- return all permutations of every input list
allPermutations : ∀{ℓ}{A : Set ℓ} → List (List A) → List (List A)
allPermutations [] = []
allPermutations (l ∷ ls) = permutations l ++ allPermutations ls

-- return all permutations of every sublist of the given list
subpermutations : ∀{ℓ}{A : Set ℓ} → List A → List (List A)
subpermutations = allPermutations ∘ sublists
