{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Ledger.Prelude hiding (compare; Rel)

open import Algebra using (Semiring)
open import Relation.Binary
open import Relation.Binary.Definitions using (Total)
open import Relation.Binary.Consequences -- using (tri⇒irr)
open import Relation.Nullary.Negation
open import Data.Nat.Properties as NatProp using (+-*-semiring; ≤-isTotalOrder; <-isStrictTotalOrder)
import Data.Nat as ℕ

record EpochStructure : Set₁ where
  infix 4 _<ˢ_
  field Slotʳ : Semiring 0ℓ 0ℓ
        Epoch : Set
        ⦃ DecEq-Epoch ⦄ : DecEq Epoch

  _≡ᵉ?_ : (e e' : Epoch) → Dec(e ≡ e')
  _ ≡ᵉ? _ = it

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
    preoSlot : HasPreorder Slot _≡_
    preoSlot = hasPreorderFromStrictTotalOrder Slot _≡_ _<ˢ_ Slot-STO

    poSlot : HasPartialOrder Slot _≡_
    poSlot = hasPartialOrderFromStrictTotalOrder Slot _≡_ _<ˢ_ Slot-STO

    decpoSlot : HasDecPartialOrder Slot _≡_
    decpoSlot = hasDecPartialOrderFromStrictTotalOrder Slot _≡_ _<ˢ_ Slot-STO

  infix 4 _≤ˢ_
  _≤ˢ_ : Rel Slot _
  _≤ˢ_ = _≤_

  ≤ˢ-antisym : Antisymmetric _≡_ _≤ˢ_
  ≤ˢ-antisym = ≤-antisym

  ≤ˢ-isPreorder : IsPreorder _≡_ _≤ˢ_
  ≤ˢ-isPreorder = ≤-isPreorder

  ≤ˢ-reflexive : Reflexive _≤ˢ_
  ≤ˢ-reflexive = IsPreorder.reflexive ≤ˢ-isPreorder refl

  ≤ˢ-transitive : Transitive _≤ˢ_
  ≤ˢ-transitive = IsPreorder.trans ≤-isPreorder

  ≤ˢ-isTotalOrder : IsTotalOrder _≡_ _≤ˢ_
  ≤ˢ-isTotalOrder = <-STO⇒≤-isTotalOrder Slot _≡_ _<ˢ_ Slot-STO

  ≤ˢ-total : Total _≤ˢ_
  ≤ˢ-total = IsTotalOrder.total ≤ˢ-isTotalOrder

  _≤ˢ?_ : (s s' : Slot) → Dec (s ≤ˢ s')
  _≤ˢ?_ = _≤?_

  ≤ˢ-isDecTotalOrder : IsDecTotalOrder _≡_ _≤ˢ_
  ≤ˢ-isDecTotalOrder = record { isTotalOrder = ≤ˢ-isTotalOrder ; _≟_ = _≡ˢ?_ ; _≤?_ = _≤ˢ?_ }

  instance
    Dec-<ˢ : ∀ {n m : Slot} → Dec (n <ˢ m)
    Dec-<ˢ = Decidable²⇒Dec (IsStrictTotalOrder._<?_ Slot-STO)

  _≤ᵉ_ : Epoch → Epoch → Set
  e ≤ᵉ e' = firstSlot e ≤ firstSlot e'

  ≤ᵉ-reflexive : Reflexive _≤ᵉ_
  ≤ᵉ-reflexive = ≤ˢ-reflexive

  ≤ᵉ-isPreorder : IsPreorder _≡_ _≤ᵉ_
  ≤ᵉ-isPreorder .IsPreorder.isEquivalence     = Ledger.Prelude.isEquivalence
  ≤ᵉ-isPreorder .IsPreorder.reflexive refl    = ≤ᵉ-reflexive
  ≤ᵉ-isPreorder .IsPreorder.trans ij jk       = ≤ˢ-transitive ij jk

  instance
    preoEpoch : HasPreorder Epoch _≡_
    preoEpoch = hasPreorderFromNonStrict Epoch _≡_ _≤ᵉ_ ≤ᵉ-isPreorder _≡ᵉ?_

  _<ᵉ_ : Rel Epoch _
  _<ᵉ_ = _<_

  _ = ({s s' : Slot} → Dec (s < s')) ∋ it
  _ = ({s s' : Slot} → Dec (s ≤ s')) ∋ it
  _ = ({e e' : Epoch} → Dec (e < e')) ∋ it
  _ = ({e e' : Epoch} → Dec (e ≤ e')) ∋ it

  _≤ᵉ?_ : ∀ e e' → Dec (e ≤ᵉ e')
  e ≤ᵉ? e' = firstSlot e ≤? firstSlot e'

  -- instance
  --   Dec-≤ᵉ : ∀ {e e' : Epoch} → Dec (e ≤ᵉ e')
  --   Dec-≤ᵉ = Decidable²⇒Dec _≤ᵉ?_



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
  field Network : Set; ⦃ DecEq-Netw ⦄ : DecEq Network
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
    ._<ˢ_            → ℕ._<_
    .Slot-STO         → <-isStrictTotalOrder
    .StabilityWindow → StabilityWindowᶜ
    .sucᵉ            → suc

   where open EpochStructure

open GlobalConstants using (ℕEpochStructure) public
