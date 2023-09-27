{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Ledger.Prelude hiding (compare)

open import Algebra
open import Relation.Binary
open import Relation.Nullary.Negation
open import Data.Nat using (_<_)
open import Data.Nat.Properties using (+-*-semiring; <-isStrictTotalOrder)

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

  -- inequality

  _≥ˢ_ _≤ˢ_ : Slot → Slot → Set
  _≥ˢ_ = ¬_ ∘₂ _<ˢ_
  _≤ˢ_ = flip _≥ˢ_

  _<ᵉ_ _≤ᵉ_ : Epoch → Epoch → Set
  _<ᵉ_ = _<ˢ_ on firstSlot
  _≤ᵉ_ = _≤ˢ_ on firstSlot

  open IsStrictTotalOrder Slot-STO using () renaming (_<?_ to _<ˢ?_) public

  _≤ˢ?_ : ∀ s s' → Dec (s ≤ˢ s')
  s ≤ˢ? s' = ¬? (s' <ˢ? s)

  _≤ᵉ?_ : ∀ e e' → Dec (e ≤ᵉ e')
  e ≤ᵉ? e' = firstSlot e ≤ˢ? firstSlot e'

  instance
    Dec-<ˢ : ∀ {n m} → Dec (n <ˢ m)
    Dec-<ˢ = Decidable²⇒Dec _<ˢ?_

  _ = (∀ {n m} → Dec (n ≤ˢ m)) ∋ it
  _ = (∀ {n m} → Dec (n <ᵉ m)) ∋ it
  _ = (∀ {n m} → Dec (n ≤ᵉ m)) ∋ it

  -- addition

  open Semiring Slotʳ renaming (_+_ to _+ˢ_)

  ℕtoEpoch : ℕ → Epoch
  ℕtoEpoch zero    = epoch 0#
  ℕtoEpoch (suc n) = sucᵉ (ℕtoEpoch n)

  _+ᵉ_ : ℕ → Epoch → Epoch
  zero  +ᵉ e = e
  suc n +ᵉ e = sucᵉ (n +ᵉ e)

  _+ᵉ'_ : Epoch → Epoch → Epoch
  e +ᵉ' e' = epoch (firstSlot e +ˢ firstSlot e')

  instance
    addSlot : HasAdd Slot
    addSlot ._+_ = _+ˢ_

    addEpoch : HasAdd Epoch
    addEpoch ._+_ = _+ᵉ'_

record GlobalConstants : Set₁ where
  field Network : Set; ⦃ DecEq-Netw ⦄ : DecEq Network
        SlotsPerEpochᶜ : ℕ; ⦃ NonZero-SlotsPerEpochᶜ ⦄ : NonZero SlotsPerEpochᶜ
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
