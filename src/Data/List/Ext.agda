{-# OPTIONS --safe #-}
module Data.List.Ext where

open import Data.List using (List; [_]; _++_; map; head; drop; concatMap; filter)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁻; ∈-filter⁺; map-∈↔; ∈-map⁻; ∈-map⁺)
open import Data.List.Relation.Unary.All using (All)
open import Data.List.Relation.Unary.Any using (Any; here; there)
open import Data.Maybe using (Maybe)
open import Data.Nat using (ℕ ; _+_)
open import Data.Product using (∃-syntax; _×_; _,_; proj₁; proj₂)
open import Function using (_∘_)
open import Function.Bundles using (_⇔_; mk⇔; Equivalence)
open import Level using (Level)
open import Relation.Binary.PropositionalEquality using (_≡_)
open import Relation.Unary using (Decidable)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_; ↭-sym)
open Maybe; open List; open ℕ
private variable
  ℓ : Level
  A B : Set ℓ

-- Looking up an index into the list; fails when out-of-bounds.
_⁉_ : List A → ℕ → Maybe A
[]       ⁉ _     = nothing
(x ∷ _)  ⁉ zero  = just x
(_ ∷ xs) ⁉ suc n = xs ⁉ n

-- sublists of the given list
sublists : List A → List (List A)
sublists []       = [] ∷ []
sublists (x ∷ xs) = map (x ∷_) (sublists xs) ++ sublists xs

-- insert the given element in every position of the given list
insert : A → List A → List (List A)
insert x [] = (x ∷ []) ∷ []
insert x (y ∷ ys) = (x ∷ y ∷ ys) ∷ map (y ∷_) (insert x ys)

-- permutations of all sublists of the given list
subpermutations : List A → List (List A)
subpermutations [] = [] ∷ []
subpermutations (x ∷ xs) = concatMap (insert x) (subpermutations xs) ++ subpermutations xs

∈-map : {f : A → B} {b : B} {l : List A} → (∃[ a ] (a ∈ l × b ≡ f a)) ⇔ b ∈ map f l
∈-map {f = f}{b}{l} = mk⇔ ⇒ (∈-map⁻ f)
  where
  ⇒ : ∃[ a ](a ∈ l × b ≡ f a) → b ∈ map f l
  ⇒ (a , a∈l , _≡_.refl) = ∈-map⁺ f a∈l

module _ {f : A → B} {l : List A} {b} {P : A → Set} {P? : Decidable P} where
  ∈ˡ-map-filter⁻ : b ∈ map f (filter P? l) → (∃[ a ] b ≡ f a × a ∈ l × P a)
  ∈ˡ-map-filter⁻ h with ∈-map⁻ f h
  ... | a , a∈X , b≡fa = a , (b≡fa , ∈-filter⁻ P? a∈X)

  ∈ˡ-map-filter⁺ : (∃[ a ] b ≡ f a × a ∈ l × P a) → b ∈ map f (filter P? l)
  ∈ˡ-map-filter⁺ (a , _≡_.refl , a∈l , Pa) = ∈-map⁺ f (∈-filter⁺ P? a∈l Pa)
