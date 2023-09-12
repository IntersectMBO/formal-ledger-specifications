{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Algebra
open import Relation.Binary
open import Relation.Nullary.Negation
open import Data.Nat using (_<_)
open import Data.Nat.Properties using (+-*-semiring; <-isStrictTotalOrder)

open import Interface.Decidable.Instance

open import Ledger.Prelude hiding (compare)

record EpochStructure : Set₁ where
  field Slotʳ : Semiring 0ℓ 0ℓ
        Epoch : Set; ⦃ DecEq-Epoch ⦄ : DecEq Epoch

  Slot = Semiring.Carrier Slotʳ

  field epoch           : Slot → Epoch
        firstSlot       : Epoch → Slot
        _<ˢ_            : Slot → Slot → Set
        Slot-STO        : IsStrictTotalOrder _≡_ _<ˢ_
        StabilityWindow : Slot
        sucᵉ            : Epoch → Epoch

  _≥ˢ_ : Slot → Slot → Set
  _≥ˢ_ = ¬_ ∘₂ _<ˢ_

  _≤ˢ_ : Slot → Slot → Set
  _≤ˢ_ = flip _≥ˢ_

  open IsStrictTotalOrder Slot-STO using () renaming (_<?_ to _<ˢ?_) public

  _≤ˢ?_ : (s s' : Slot) → Dec (s ≤ˢ s')
  s ≤ˢ? s' = ¬? (s' <ˢ? s)

  ℕtoEpoch : ℕ → Epoch
  ℕtoEpoch zero    = epoch (Semiring.0# Slotʳ)
  ℕtoEpoch (suc n) = sucᵉ (ℕtoEpoch n)

  _+ᵉ_ : ℕ → Epoch → Epoch
  zero +ᵉ e = e
  suc n +ᵉ e = sucᵉ (n +ᵉ e)

  open Semiring Slotʳ renaming (_+_ to _+ˢ_)
  _+ᵉ'_ : Epoch → Epoch → Epoch
  e +ᵉ' e' = epoch (firstSlot e +ˢ firstSlot e')

  _<ᵉ_ : Epoch → Epoch → Set
  e <ᵉ e' = firstSlot e <ˢ firstSlot e'

  _≤ᵉ_ : Epoch → Epoch → Set
  e ≤ᵉ e' = firstSlot e ≤ˢ firstSlot e'

  _≤ᵉ?_ : (e e' : Epoch) → Dec (e ≤ᵉ e')
  e ≤ᵉ? e' = firstSlot e ≤ˢ? firstSlot e'

  instance
    addSlot : HasAdd Slot
    addSlot = record { _+_ = _+ˢ_ }

    addEpoch : HasAdd Epoch
    addEpoch = record { _+_ = _+ᵉ'_ }

    Dec-≤ᵉ : ∀ {n m} → Dec (n ≤ᵉ m)
    Dec-≤ᵉ = Decidable²⇒Dec _≤ᵉ?_

record GlobalConstants : Set₁ where
  field Network : Set; ⦃ DecEq-Netw ⦄ : DecEq Network
        SlotsPerEpochᶜ : ℕ
        ⦃ NonZero-SlotsPerEpoch ⦄ : NonZero SlotsPerEpochᶜ
        StabilityWindowᶜ : ℕ
        Quorum : ℕ
        NetworkId : Network

  ℕEpochStructure : EpochStructure
  ℕEpochStructure = λ where
    .Slotʳ           → +-*-semiring
    .Epoch           → ℕ
    .epoch     slot  → slot / SlotsPerEpochᶜ
    .firstSlot e     → e * SlotsPerEpochᶜ
    ._<ˢ_            → _<_
    .Slot-STO        → <-isStrictTotalOrder
    .StabilityWindow → StabilityWindowᶜ
    .sucᵉ            → suc
    .DecEq-Epoch     → DecEq-ℕ
   where open EpochStructure

open GlobalConstants using (ℕEpochStructure) public
