{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm {a}{A : Set a} where

open import Data.List using (List; _∷_; [])
open import Data.List.Membership.Propositional using (_∈_)
open import Data.Product using (_×_)
open import Data.Sum using (_⊎_)
open import Function using (_⇔_; mk⇔; id)
open import Level using (Level; _⊔_)
open import Relation.Binary.Core using (Rel)
open import Relation.Unary using (Pred)

private variable p : Level
data Subperm : Rel (List A) a where
  []    : Subperm [] []
  _∷ʳ_ : ∀ {xs ys} → ∀ y → Subperm xs ys → Subperm xs (y ∷ ys)
  _∷_ : ∀ {x xs ys} → x ∈ ys → Subperm xs ys → Subperm (x ∷ xs) ys

-- counterexample to third constructor:
-- Let xs = ys = 1 ∷ [] and let x = 1.
-- Then x ∈ ys (i.e., 1 ∈ 1 ∷ []) and Subperm xs ys ought to hold (i.e., Subperm (1 ∷ []) (1 ∷ [])
-- Subperm (x ∷ xs) ys = Subperm (1 ∷ 1 ∷ []) (1 ∷ []) ought not hold.
--
-- However, we do have (1 ∷ 1 ∷ []) ⊆ (1 ∷ []), so we should think of Subperm less strictly.
--
-- The problem is we want x ∈ ys → xs ∈ subpermutations ys → (x ∷ xs) ∈ subpermutations ys, but that
-- won't hold in general.


Subperms : List A → Pred (List A) a
Subperms l = λ x → Subperm x l

-- x ∈ Subperms l iff Subperm x l
∈-Subperms : {l : List A}{xss : List (List A)}{x : List A} → Subperms l x ⇔ Subperm x l
∈-Subperms = mk⇔ id id

-- AnySubermOf asserts that at least one list in a list of lists satisfies the given predicate
-- *and* is a subpermutation of the given list.  It is similar to the Any type for lists.
data AnySubpermOf (P : Pred (List A) p) (l : List A) : Pred (List(List A)) (a ⊔ p) where
  here  : ∀ {xs xss} → P xs → Subperm xs l → AnySubpermOf P l (xs ∷ xss)
  there : ∀ {xs xss} → Subperm xs l → AnySubpermOf P l xss → AnySubpermOf P l (xs ∷ xss)

anySubpermOf : (P : Pred (List A) a) (l : List A) → Pred (List(List A)) _
anySubpermOf P l [] = P []
anySubpermOf P l (xs ∷ xss) = (P xs × Subperm xs l) ⊎ anySubpermOf P l xss

