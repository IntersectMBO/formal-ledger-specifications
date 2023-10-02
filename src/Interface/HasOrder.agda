{-# OPTIONS --safe #-}

module Interface.HasOrder where

open import Level using (_⊔_; suc)
open import Relation.Binary using (Rel)
open import Relation.Binary.Definitions using (Decidable; Antisymmetric)
open import Relation.Binary.Structures using (IsPreorder; IsPartialOrder)

module _ {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ) where

  record HasPreorder : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
    infix 4 _≤_
    field
      _≤_    : Rel A ℓ₂
      isPreorder : IsPreorder _≈_ _≤_

  record HasPartialOrder : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
    open HasPreorder
    field
      hasPreorder  : HasPreorder
      antisym      : Antisymmetric _≈_ (_≤_ hasPreorder)

  record HasDecPartialOrder : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
    infix 4 _≤?_
    field
      hasPartialOrder : HasPartialOrder
      _≤?_  : Decidable (HasPreorder._≤_ (HasPartialOrder.hasPreorder hasPartialOrder))

open HasPreorder ⦃...⦄ public
-- open HasPartialOrder ⦃...⦄ public
-- open HasDecPartialOrder ⦃...⦄ public
