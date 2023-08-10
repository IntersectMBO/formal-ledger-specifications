{-# OPTIONS --safe #-}

module Interface.HasStrictTotalOrder where

open import Level                       using (_⊔_ ; suc)
open import Relation.Binary             using (Rel)
open import Relation.Binary.Structures  using (IsStrictTotalOrder) public

record HasStrictTotalOrder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ)  : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
  infix 4 _<_
  field
    _<_ : Rel A ℓ₂
    isStrictTotalOrder : IsStrictTotalOrder {A = A} _≈_ _<_

open HasStrictTotalOrder ⦃ ... ⦄ public
