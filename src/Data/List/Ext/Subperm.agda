{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm where

open import Class.DecEq using (DecEq; _≟_)
open import Data.List hiding (_∷ʳ_)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.Any using (there; any?)
open import Data.Product using (_×_; _,_; proj₁; proj₂)
open import Function using (_∘_; _$_)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Definitions using (Decidable)
open import Relation.Nullary using (yes; no)

module _ {a}{A : Set a} where

  data Subperm : Rel (List A) a where
    []    : Subperm [] []
    loose : ∀ {xs ys y} → Subperm xs ys → Subperm xs (y ∷ ys)
    tight : ∀ {x xs ys} → x ∈ ys → Subperm xs ys → Subperm (x ∷ xs) ys

  Subperm⁻¹ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ l × Subperm xs l
  Subperm⁻¹ (tight x∈l xsSPl) = x∈l , xsSPl
  Subperm⁻¹ (loose sp) = there (proj₁ SP) , loose (proj₂ SP)
    where SP = Subperm⁻¹ sp

  Subperm[] : {l : List A} → Subperm [] l
  Subperm[] {[]} = []
  Subperm[] {_ ∷ _} = loose Subperm[]

  subperm? : ⦃ _ : DecEq A ⦄ → Decidable (Subperm)
  subperm? [] _ = yes Subperm[]
  subperm? (_ ∷ _) [] = no λ where (tight () _)
  subperm? (x ∷ xs) (y ∷ ys)
    with any? (x ≟_) (y ∷ ys)
  ... | no  x∉ = no (x∉ ∘ proj₁ ∘ Subperm⁻¹)
  ... | yes x∈
    with subperm? xs (y ∷ ys)
  ... | no ¬p = no (¬p ∘ proj₂ ∘ Subperm⁻¹)
  ... | yes p = yes (tight x∈ p)
