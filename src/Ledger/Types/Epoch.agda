{-# OPTIONS --safe #-}

module Ledger.Types.Epoch where

open import Ledger.Prelude hiding (compare; Rel)

open import Algebra using (Semiring)
open import Relation.Binary
open import Data.Nat.Properties using (+-*-semiring)

record EpochStructure : Set₁ where
  field Slotʳ : Semiring 0ℓ 0ℓ
        Epoch : Set; ⦃ DecEq-Epoch ⦄ : DecEq Epoch

  Slot = Semiring.Carrier Slotʳ

  field ⦃ DecPo-Slot ⦄   : HasDecPartialOrder≡ {A = Slot}
        ⦃ DecEq-Slot ⦄   : DecEq Slot

        epoch           : Slot → Epoch
        firstSlot       : Epoch → Slot
        StabilityWindow : Slot
        sucᵉ            : Epoch → Epoch

  -- preorders and partial orders

  instance
    preoEpoch : HasPreorder
    preoEpoch = hasPreorderFromStrictPartialOrder {_<_ = _<_ on firstSlot}
      record
        { isEquivalence = isEquivalence
        ; irrefl = λ where refl → <-irrefl {A = Slot} refl
        ; trans  = <-trans {A = Slot}
        ; <-resp-≈ = (λ where refl → id) , (λ where refl → id)
        }

  _ = _<_ {A = Slot}  ⁇² ∋ it
  _ = _≤_ {A = Slot}  ⁇² ∋ it
  _ = _<_ {A = Epoch} ⁇² ∋ it
  _ = _≤_ {A = Epoch} ⁇² ∋ it

  -- addition

  open Semiring Slotʳ renaming (_+_ to _+ˢ_)

  ℕtoEpoch : ℕ → Epoch
  ℕtoEpoch zero    = epoch 0#
  ℕtoEpoch (suc n) = sucᵉ (ℕtoEpoch n)

  _+ᵉ_ : ℕ → Epoch → Epoch
  zero  +ᵉ e = e
  suc n +ᵉ e = sucᵉ (n +ᵉ e)

  instance
    addSlot : HasAdd Slot
    addSlot ._+_ = _+ˢ_

    addEpoch : HasAdd Epoch
    addEpoch ._+_ e e' = epoch (firstSlot e + firstSlot e')

record GlobalConstants : Set₁ where
  field  Network : Set; ⦃ DecEq-Netw ⦄ : DecEq Network
         SlotsPerEpochᶜ : ℕ; ⦃ NonZero-SlotsPerEpochᶜ ⦄ : NonZero SlotsPerEpochᶜ
         StabilityWindowᶜ : ℕ
         Quorum : ℕ
         NetworkId : Network

  ℕEpochStructure : EpochStructure
  ℕEpochStructure = λ where
    .Slotʳ           → +-*-semiring
    .Epoch           → ℕ
    .epoch slot      → slot / SlotsPerEpochᶜ
    .firstSlot e     → e * SlotsPerEpochᶜ
    .StabilityWindow → StabilityWindowᶜ
    .sucᵉ            → suc

   where open EpochStructure

open GlobalConstants using (ℕEpochStructure) public
