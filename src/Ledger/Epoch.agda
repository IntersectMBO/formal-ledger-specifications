{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Ledger.Prelude hiding (compare)

open import Data.Nat using (_<_)
open import Data.Nat.Properties using (+-*-semiring; <-isStrictTotalOrder)

open import Algebra
open import Relation.Binary
open import Relation.Nullary.Negation

record GlobalConstants : Set₁ where
  field Network : Set
        SlotsPerEpochᶜ : ℕ
        instance NonZero-SlotsPerEpoch : NonZero SlotsPerEpochᶜ
        StabilityWindowᶜ : ℕ
        Quorum : ℕ
        NetworkId : Network

record EpochStructure : Set₁ where
  field Slotʳ : Semiring 0ℓ 0ℓ
        Epoch : Set

  Slot = Semiring.Carrier Slotʳ

  field epoch : Slot → Epoch
        firstSlot : Epoch → Slot
        _<ˢ_ : Slot → Slot → Set
        Slot-STO : IsStrictTotalOrder _≡_ _<ˢ_
        StabilityWindow : Slot
        sucᵉ : Epoch → Epoch

  _≥ˢ_ : Slot → Slot → Set
  _≥ˢ_ = ¬_ ∘₂ _<ˢ_

  _≤ˢ_ : Slot → Slot → Set
  _≤ˢ_ = flip _≥ˢ_

  open IsStrictTotalOrder Slot-STO using () renaming (_<?_ to _<ˢ?_) public

  _≤ˢ?_ : (s s' : Slot) → Dec (s ≤ˢ s')
  s ≤ˢ? s' = ¬? (s' <ˢ? s)

module _ (gc : GlobalConstants) where
  open GlobalConstants gc
  open EpochStructure

  ℕEpochStructure : EpochStructure
  ℕEpochStructure .Slotʳ           = +-*-semiring
  ℕEpochStructure .Epoch           = ℕ
  ℕEpochStructure .epoch     slot  = slot / SlotsPerEpochᶜ
  ℕEpochStructure .firstSlot e     = e * SlotsPerEpochᶜ
  ℕEpochStructure ._<ˢ_            = _<_
  ℕEpochStructure .Slot-STO        = <-isStrictTotalOrder
  ℕEpochStructure .StabilityWindow = StabilityWindowᶜ
  ℕEpochStructure .sucᵉ            = suc
