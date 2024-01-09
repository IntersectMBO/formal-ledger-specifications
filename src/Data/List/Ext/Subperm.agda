{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm {a}{A : Set a} where

open import Data.List using (List; _∷_; [_]; [])
open import Data.List.Ext using (_⊆_)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.Product using (_×_)
open import Data.Sum using (_⊎_)
open import Function using (_⇔_; mk⇔; id)
open import Level using (Level; _⊔_)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Unary using (Pred)

private variable p : Level
data Subperm : Rel (List A) a where
  []    : Subperm [] []
  _∷ʳ_ : ∀ {xs ys} → ∀ y → Subperm xs ys → Subperm xs (y ∷ ys)
  _∷_ : ∀ {x xs ys} → x ∈ ys → Subperm xs ys → Subperm (x ∷ xs) ys

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

toAny : {x : A}{xs l : List A} → (x ∷ xs) ⊆ l → Any (_≡_ x) l
toAny (here refl All.∷ p) = here refl
toAny (there px All.∷ p) = there px

fromAny : {x : A}{l : List A} → Any (_≡_ x) l → [ x ] ⊆ l
fromAny p = p All.∷ All.[]
