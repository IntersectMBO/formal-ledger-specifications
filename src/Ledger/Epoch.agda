{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Ledger.Prelude

-- open import Data.Nat using () renaming (_<_ to _<ℕ_)
open import Data.Nat.Properties using (+-*-semiring; <-isStrictTotalOrder)

open import Algebra using (Semiring)
open import Relation.Binary

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

  instance
    stoSlot : HasStrictTotalOrder Slot _≡_
    stoSlot = record { _<_ = _<ˢ_ ; isStrictTotalOrder = Slot-STO }

  _>ˢ_ : Slot → Slot → Set
  _>ˢ_ = flip _<ˢ_

  _≥ˢ_ : Slot → Slot → Set
  x ≥ˢ y = (x >ˢ y) ⊎ (x ≡ y)

  _≤ˢ_ : Slot → Slot → Set
  x ≤ˢ y = (x <ˢ y) ⊎ (x ≡ y)

  tri : Trichotomous _≡_ _<ˢ_
  tri = IsStrictTotalOrder.compare Slot-STO

  ≤ˢ⇒¬>ˢ-mp : {x y : Slot} → x ≤ˢ y → Tri (x <ˢ y) (x ≡ y) (x >ˢ y) → ¬ (x >ˢ y)
  ≤ˢ⇒¬>ˢ-mp _           (tri< _     _     ¬x>y)  x>y  = ¬x>y x>y
  ≤ˢ⇒¬>ˢ-mp _           (tri≈ _     _     ¬x>y)  x>y  = ¬x>y x>y
  ≤ˢ⇒¬>ˢ-mp (inj₁ x<y)  (tri> ¬x<y  _     _)     _    = ¬x<y x<y
  ≤ˢ⇒¬>ˢ-mp (inj₂ x≡y)  (tri> _     ¬x≡y  _)     _    = ¬x≡y x≡y

  ≤ˢ⇒¬>ˢ : {x y : Slot} → x ≤ˢ y → ¬ (x >ˢ y)
  ≤ˢ⇒¬>ˢ x≤y x>y = ≤ˢ⇒¬>ˢ-mp x≤y (tri _ _) x>y

  open IsStrictTotalOrder Slot-STO using () renaming (_<?_ to _<ˢ?_) public

  open StrictToNonStrict _≡_ _<ˢ_

  ≤ˢ-isDecTotalOrder : IsDecTotalOrder _≡_ _≤ˢ_
  ≤ˢ-isDecTotalOrder = isDecTotalOrder Slot-STO

  ≤ˢ-isTotalOrder : IsTotalOrder _≡_ _≤ˢ_
  ≤ˢ-isTotalOrder = isTotalOrder Slot-STO

  ≤ˢ-isPartialOrder : IsPartialOrder _≡_ _≤ˢ_
  ≤ˢ-isPartialOrder = IsTotalOrder.isPartialOrder ≤ˢ-isTotalOrder

  instance
    poSlot : HasPartialOrder Slot _≡_
    poSlot = record { _≤_ = _≤ˢ_ ; isPartialOrder = ≤ˢ-isPartialOrder }

  ≤ˢ-isPreorder : IsPreorder _≡_ _≤ˢ_
  ≤ˢ-isPreorder = IsPartialOrder.isPreorder ≤ˢ-isPartialOrder

  ≤ˢ-isTransitive : Transitive _≤ˢ_
  ≤ˢ-isTransitive = IsPreorder.trans ≤ˢ-isPreorder

  ≤ˢ-isAntisymmetric : Antisymmetric _≡_ _≤ˢ_
  ≤ˢ-isAntisymmetric = IsPartialOrder.antisym ≤ˢ-isPartialOrder

  _≤ˢ?_ : (s s' : Slot) → Dec (s ≤ˢ s')
  _≤ˢ?_ = IsDecTotalOrder._≤?_ ≤ˢ-isDecTotalOrder

  instance
    decpoSlot : HasDecPartialOrder Slot _≡_
    decpoSlot = record { _≤_ = _≤ˢ_ ; _≤?_ = _≤ˢ?_ }

  ℕtoEpoch : ℕ → Epoch
  ℕtoEpoch zero    = epoch (Semiring.0# Slotʳ)
  ℕtoEpoch (suc n) = sucᵉ (ℕtoEpoch n)

  _<ᵉ_ : Epoch → Epoch → Set
  e <ᵉ e' = firstSlot e <ˢ firstSlot e'

  _≤ᵉ_ : Epoch → Epoch → Set
  e ≤ᵉ e' = firstSlot e ≤ˢ firstSlot e'

  _≤ᵉ?_ : (e e' : Epoch) → Dec (e ≤ᵉ e')
  e ≤ᵉ? e' = firstSlot e ≤ˢ? firstSlot e'

  ≤ᵉ-isPreorder : IsPreorder _≡_ _≤ᵉ_
  ≤ᵉ-isPreorder .IsPreorder.isEquivalence     = Ledger.Prelude.isEquivalence
  ≤ᵉ-isPreorder .IsPreorder.reflexive refl    = inj₂ Ledger.Prelude.refl
  ≤ᵉ-isPreorder .IsPreorder.trans ij jk       = ≤ˢ-isTransitive ij jk

  instance
    preoEpoch : HasPreorder Epoch _≡_
    preoEpoch = record { _≤_ = _≤ᵉ_ ; isPreorder = ≤ᵉ-isPreorder }

  open Semiring Slotʳ renaming (_+_ to _+ˢ_)

  _+ᵉ'_ : Epoch → Epoch → Epoch
  e +ᵉ' e' = epoch (firstSlot e +ˢ firstSlot e')

  instance
    addSlot : HasAdd Slot
    addSlot = record { _+_ = _+ˢ_ }

    addEpoch : HasAdd Epoch
    addEpoch = record { _+_ = _+ᵉ'_ }

  _+ᵉ_ : ℕ → Epoch → Epoch
  zero +ᵉ e = e
  suc n +ᵉ e = sucᵉ (n +ᵉ e)


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
