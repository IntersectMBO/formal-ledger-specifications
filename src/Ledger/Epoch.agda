{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Ledger.Prelude hiding (compare; Rel)

open import Algebra using (Semiring)
open import Relation.Binary
open import Data.Nat.Properties using (+-*-semiring; <-isStrictTotalOrder)

record EpochStructure : Set₁ where
  infix 4 _<ˢ_
  field Slotʳ : Semiring 0ℓ 0ℓ
        Epoch : Set; ⦃ DecEq-Epoch ⦄ : DecEq Epoch

  Slot = Semiring.Carrier Slotʳ

  field epoch            : Slot → Epoch
        firstSlot        : Epoch → Slot
        _<ˢ_             : Rel Slot 0ℓ
        Slot-STO         : IsStrictTotalOrder _≡_ _<ˢ_
        StabilityWindow  : Slot
        sucᵉ             : Epoch → Epoch
        ⦃ DecEq-Slot ⦄   : DecEq Slot

  _≡ˢ?_ : (s s' : Slot) → Dec(s ≡ s')
  _ ≡ˢ? _ = it

  -- preorders and partial orders

  instance
    preoSlot : HasPreorder≡ Slot
    preoSlot = hasPreorderFromStrictTotalOrder Slot _≡_ _<ˢ_ Slot-STO

    poSlot : HasPartialOrder≡ Slot
    poSlot = hasPartialOrderFromStrictTotalOrder Slot _≡_ _<ˢ_ Slot-STO

    decpoSlot : HasDecPartialOrder≡ Slot
    decpoSlot = hasDecPartialOrderFromStrictTotalOrder Slot _≡_ _<ˢ_ Slot-STO

  _<ᵉ_ : Epoch → Epoch → Set
  e <ᵉ e' = firstSlot e < firstSlot e'

  <ᵉ-irrefl : Irreflexive _≡_ _<ᵉ_
  <ᵉ-irrefl refl x<y = HasPreorder.<-irrefl preoSlot refl x<y

  <ᵉ-resp-≡ : _<ᵉ_ Respects₂ _≡_
  <ᵉ-resp-≡ = i , ii
    where
    i : _<ᵉ_ Respectsʳ _≡_
    i refl x<y = x<y
    ii : _<ᵉ_ Respectsˡ _≡_
    ii refl y<x = y<x

  instance
    preoEpoch : HasPreorder≡ Epoch
    preoEpoch = hasPreorderFromStrictPreorder Epoch _≡_ _<ᵉ_ isEquivalence <ᵉ-irrefl <-trans <ᵉ-resp-≡

  ≤ˢ-transitive : Transitive _≤_
  ≤ˢ-transitive = IsPreorder.trans ≤-isPreorder

  ≤ˢ-isTotalOrder : IsTotalOrder _≡_ _≤_
  ≤ˢ-isTotalOrder = <-STO⇒≤-isTotalOrder Slot _≡_ _<_ Slot-STO

  ≤ˢ-total : Total _≤_
  ≤ˢ-total = IsTotalOrder.total ≤ˢ-isTotalOrder

  ≤ˢ-isDecTotalOrder : IsDecTotalOrder _≡_ _≤_
  ≤ˢ-isDecTotalOrder = record { isTotalOrder = ≤ˢ-isTotalOrder ; _≟_ = _≟_ ; _≤?_ = _≤?_ }

  _≤ᵉ_ : Epoch → Epoch → Set
  e ≤ᵉ e' = firstSlot e ≤ firstSlot e'

  ≤ᵉ-reflexive : Reflexive _≤ᵉ_
  ≤ᵉ-reflexive = IsPreorder.reflexive ≤-isPreorder refl

  ≤ᵉ-isPreorder : IsPreorder _≡_ _≤ᵉ_
  ≤ᵉ-isPreorder .IsPreorder.isEquivalence   = Ledger.Prelude.isEquivalence
  ≤ᵉ-isPreorder .IsPreorder.reflexive refl  = ≤ᵉ-reflexive
  ≤ᵉ-isPreorder .IsPreorder.trans ij jk     = ≤ˢ-transitive ij jk

  _≤ᵉ?_ : (e e' : Epoch) → Dec (e ≤ᵉ e')
  e ≤ᵉ? e' = firstSlot e ≤? firstSlot e'


  instance
    Dec-<ˢ : ∀ {n m : Slot} → Dec (n <ˢ m)
    Dec-<ˢ = Decidable²⇒Dec (IsStrictTotalOrder._<?_ Slot-STO)

  _ = ({s s' : Slot} → Dec (s < s')) ∋ it
  _ = ({s s' : Slot} → Dec (s ≤ s')) ∋ it
  _ = ({e e' : Epoch} → Dec (e < e')) ∋ it
  _ = ({e e' : Epoch} → Dec (e ≤ e')) ∋ it

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
    ._<ˢ_            → _<_
    .Slot-STO        → <-isStrictTotalOrder
    .StabilityWindow → StabilityWindowᶜ
    .sucᵉ            → suc

   where open EpochStructure

open GlobalConstants using (ℕEpochStructure) public
