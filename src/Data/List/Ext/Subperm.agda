{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm where

open import Prelude

open import Data.List
open import Data.List.Relation.Unary.Any using (here; there; any?)
open import Relation.Binary.Definitions using (Decidable)
open import Data.List.Membership.Propositional using (_∈_)

module _ {A : Set} where

  open import Relation.Binary.Core using (REL)

  data Subperm : REL (List A) (List A) 0ℓ where
    []   : Subperm [] []
    _∷ₚʳ_ : ∀ {xs ys} → ∀ y → Subperm xs ys → Subperm xs (y ∷ ys)
    _∷ₚ_  : ∀ {x xs y ys} → x ∈ (y ∷ ys) → Subperm xs (y ∷ ys) → Subperm (x ∷ xs) (y ∷ ys)

  Subperm⁻¹ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ l × Subperm xs l
  Subperm⁻¹ (y ∷ₚʳ Spxxs) = (there (proj₁ (Subperm⁻¹ Spxxs))) , (y ∷ₚʳ proj₂ (Subperm⁻¹ Spxxs))
  Subperm⁻¹ (x∈yys ∷ₚ Spxsyys) = x∈yys , Spxsyys

  Subperm[] : {l : List A} → Subperm [] l
  Subperm[] {[]} = []
  Subperm[] {x ∷ _} = x ∷ₚʳ Subperm[]

  module _ ⦃ _ : DecEq A ⦄ where

    subperm? : Decidable (Subperm)
    subperm? [] _ = yes Subperm[]
    subperm? (x ∷ _) [] = no λ ()
    subperm? (x ∷ xs) (y ∷ ys) with (any? (x ≟_) (y ∷ ys)) | (subperm? xs (y ∷ ys))
    ... | yes p | yes q = yes (p ∷ₚ q)
    ... | _     | no ¬q = no (λ ☢ → ¬q $ proj₂ (Subperm⁻¹ ☢))
    ... | no ¬p | _ = no (λ ☢ → ¬p (proj₁ (Subperm⁻¹ ☢)))
