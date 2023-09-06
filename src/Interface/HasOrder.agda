{-# OPTIONS --safe #-}

module Interface.HasOrder where

open import Level using (_⊔_ ; suc)
open import Relation.Binary using (Rel)
open import Relation.Binary.Structures using (IsPreorder ; IsPartialOrder)

record HasPreorder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ) : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
  infix 4 _≤_
  field
    _≤_ : Rel A ℓ₂
    isPreorder : IsPreorder {A = A} _≈_ _≤_

open HasPreorder ⦃ ... ⦄ public

record HasPartialOrder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ) : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
  infix 4 _≤_
  field
    _≤_ : Rel A ℓ₂
    isPartialOrder  : IsPartialOrder {A = A} _≈_ _≤_

open HasPartialOrder ⦃ ... ⦄ public
