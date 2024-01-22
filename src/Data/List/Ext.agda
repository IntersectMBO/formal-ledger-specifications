{-# OPTIONS --safe #-}
module Data.List.Ext where

open import Data.List using (List; [_]; _++_; map; head; drop; concatMap)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (All)
-- open import Data.List.Relation.Binary.Sublist.Heterogeneous using (Sublist; _∷ʳ_)
--   renaming (minimum to minˡ) -- using (drop-Sublist)

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

-- (aka bind in some languages)
flatMap : (A → List B) → List A → List B
flatMap f [] = []
flatMap f (x ∷ xs) = f x ++ flatMap f xs


-- every element in the first list occurs in the second list
_⊆_ : (l l' : List A) → Set _
l ⊆ l' = All (_∈ l') l

-- prepend the given element to every list in a list of lists
_+∷_ : A → List (List A) → List (List A)
a +∷ [] = [ a ∷ [] ]
a +∷ (l ∷ ls) = (a ∷ l) ∷ (a +∷ ls)

-- return the list of all sublists of a given list
-- sublists : List A → List (List A)
-- sublists [] = []
-- sublists (x ∷ xs) = x +∷ sublists xs  -- sublists including x
--                     ++ sublists xs     -- sublists omitting x

sublists : List A → List (List A)
sublists [] = [ [] ]
sublists (x ∷ xs) = map (x ∷_) (sublists xs) ++ sublists xs
-- let subs = sublists xs
--                      in subs ++ map (_∷_ x) subs

-- concat : List (List A) → List A
-- concat = foldr _++_ []

-- concatMap : (A → List B) → List A → List B
-- concatMap f = concat ∘ map f

allSublists : List (List A) → List (List A)
allSublists [] = [ [] ]
allSublists (l ∷ ls) = sublists l ++ allSublists ls

insert : A → List A → List (List A)
insert x [] = (x ∷ []) ∷ []
insert x (y ∷ ys) = (x ∷ y ∷ ys) ∷ map (y ∷_) (insert x ys)

-- insert a at each index of each list of the given list of lists
insertInAll : A → List (List A) → List (List A)
insertInAll a [] = [ [] ]
insertInAll a ([] ∷ []) = [ [ a ] ]
insertInAll a (l ∷ ls) = (insert a l) ++ (insertInAll a ls)

-- flatMap : (A → List B) → List A → List B
-- flatMap f [] = []
-- flatMap f (x ∷ xs) = f x ++ flatMap f xs

-- return all permutations of the given list
permutations : List A → List (List A)
permutations [] = [] ∷ []
permutations (a ∷ as) = flatMap (insert a) (permutations as)

-- return all permutations of every list in the given list of lists
allPermutations : List (List A) → List (List A)
allPermutations [] = [ [] ]
allPermutations (l ∷ ls) = permutations l ++ allPermutations ls


subpermutations
  subperm-incl-head
  subperm-omit-head  : List A → List (List A)


subperm-incl-head [] = [] ∷ []
subperm-incl-head (x ∷ xs) = flatMap (insert x) (subpermutations xs)

subperm-omit-head [] = [] ∷ []
subperm-omit-head (x ∷ []) = [] ∷ []
subperm-omit-head (x ∷ y ∷ zs) = subpermutations (y ∷ zs)

-- return all permutations of every sublist of the given list
-- subpermutations [] = [] ∷ []
-- subpermutations (x ∷ xs) = subperm-incl-head (x ∷ xs) ++ subperm-omit-head (x ∷ xs)

subpermutations [] = [] ∷ []
subpermutations (x ∷ xs) = (flatMap (insert x) (subpermutations xs)) ++ subpermutations xs
