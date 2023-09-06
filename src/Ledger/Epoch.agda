{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Ledger.Prelude hiding (compare ; isEquivalence ; isPartialOrder ) renaming (refl to ≡-refl ; trans to ≡-trans)

open import Data.Nat using (_<_)
open import Data.Nat.Properties using (+-*-semiring; <-isStrictTotalOrder)

open import Algebra
open import Relation.Binary
open import Relation.Nullary.Negation

import Relation.Binary.Construct.StrictToNonStrict as StrictToNonStrict

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
        instance DecEq-Epoch : DecEq Epoch

  open StrictToNonStrict _≡_ _<ˢ_

  _≤ˢ_ : Slot → Slot → Set
  x ≤ˢ y = (x <ˢ y) ⊎ (x ≡ y)

  ≤ˢ-isTotalOrder : IsTotalOrder _≡_ _≤ˢ_
  ≤ˢ-isTotalOrder = isTotalOrder Slot-STO

  ≤ˢ-isDecTotalOrder : IsDecTotalOrder _≡_ _≤ˢ_
  ≤ˢ-isDecTotalOrder = isDecTotalOrder Slot-STO

  ≤ˢ-isPartialOrder : IsPartialOrder _≡_ _≤ˢ_
  ≤ˢ-isPartialOrder = IsTotalOrder.isPartialOrder ≤ˢ-isTotalOrder

  ≤ˢ-isPreorder : IsPreorder _≡_ _≤ˢ_
  ≤ˢ-isPreorder = IsPartialOrder.isPreorder ≤ˢ-isPartialOrder

  ≤ˢ-isTransitive : Transitive _≤ˢ_
  ≤ˢ-isTransitive = IsPreorder.trans ≤ˢ-isPreorder

  ≤ˢ-isAntisymmetric : Antisymmetric _≡_ _≤ˢ_
  ≤ˢ-isAntisymmetric = IsPartialOrder.antisym ≤ˢ-isPartialOrder

  open IsStrictTotalOrder Slot-STO using () renaming (_<?_ to _<ˢ?_) public

  _≤ˢ?_ : (s s' : Slot) → Dec (s ≤ˢ s')
  _≤ˢ?_ = IsDecTotalOrder._≤?_ ≤ˢ-isDecTotalOrder

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

    rpoSlot : HasPartialOrder Slot _≡_
    rpoSlot = record { _≤_ = _≤ˢ_ ; isPartialOrder = ≤ˢ-isPartialOrder }

    rpreoEpoch : HasPreorder Epoch _≡_
    rpreoEpoch = record { _≤_ = _≤ᵉ_ ; isPreorder = rpreo }
      where
      rpreo : IsPreorder _≡_ _≤ᵉ_
      IsPreorder.isEquivalence rpreo = Ledger.Prelude.isEquivalence
      IsPreorder.reflexive rpreo ≡-refl = inj₂ ≡-refl
      IsPreorder.trans rpreo ij jk = ≤ˢ-isTransitive ij jk

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
  ℕEpochStructure .DecEq-Epoch     = DecEq-ℕ
