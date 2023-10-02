{-# OPTIONS --safe #-}

module Ledger.Epoch where

open import Ledger.Prelude hiding (compare; Rel)

open import Algebra using (Semiring)
open import Relation.Binary
open import Relation.Binary.Definitions using (Total)
open import Relation.Binary.Consequences using (tri⇒irr)
open import Relation.Nullary.Negation
open import Data.Nat.Properties using (+-*-semiring; ≤-isTotalOrder)

import Data.Nat as ℕ

record EpochStructure : Set₁ where
  infix 4 _≤ˢ_ _<ˢ_
  field Slotʳ : Semiring 0ℓ 0ℓ
        Epoch : Set; ⦃ DecEq-Epoch ⦄ : DecEq Epoch

  Slot = Semiring.Carrier Slotʳ

  field epoch           : Slot → Epoch
        firstSlot       : Epoch → Slot
        _≤ˢ_            : Rel Slot 0ℓ
        Slot-TO         : IsTotalOrder _≡_ _≤ˢ_
        StabilityWindow : Slot
        sucᵉ            : Epoch → Epoch
        ⦃ DecEq-Slot ⦄  : DecEq Slot

  _≡ˢ?_ : (s s' : Slot) → Dec(s ≡ s')
  _ ≡ˢ? _ = it

  _<ˢ_ : Rel Slot _
  s <ˢ s' = s ≤ˢ s' × ¬ (s ≡ s')

  -- partial order

  ≤ˢ-isPartialOrder : IsPartialOrder _≡_ _≤ˢ_
  ≤ˢ-isPartialOrder = IsTotalOrder.isPartialOrder Slot-TO

  ≤ˢ-isPreorder : IsPreorder _≡_ _≤ˢ_
  ≤ˢ-isPreorder = IsPartialOrder.isPreorder ≤ˢ-isPartialOrder

  ≤ˢ-isAntisymmetric : Antisymmetric _≡_ _≤ˢ_
  ≤ˢ-isAntisymmetric = IsPartialOrder.antisym ≤ˢ-isPartialOrder

  ≤ˢ-isTransitive : Transitive _≤ˢ_
  ≤ˢ-isTransitive = IsPreorder.trans ≤ˢ-isPreorder

  ≤ˢ-isTotal : Total _≤ˢ_
  ≤ˢ-isTotal = IsTotalOrder.total Slot-TO

  instance
    preoSlot : HasPreorder Slot _≡_
    preoSlot = record { _≤_ = _≤ˢ_ ; isPreorder = ≤ˢ-isPreorder }

    poSlot : HasPartialOrder Slot _≡_
    poSlot = record { hasPreorder = preoSlot ; antisym = ≤ˢ-isAntisymmetric }

  Dec≡⋀TotAntisym≤⇒Dec≤ : Decidable _≡_ → Antisymmetric _≡_ _≤ˢ_ → Total _≤ˢ_ → Decidable _≤ˢ_
  Dec≡⋀TotAntisym≤⇒Dec≤ dec≡ antisym≤ tot≤ x y with dec≡ x y | tot≤ x y
  ... | yes refl | _ = true because ofʸ (IsPartialOrder.reflexive ≤ˢ-isPartialOrder refl)
  ... | no ¬p | inj₁ x≤y = true because ofʸ x≤y
  ... | no ¬p | inj₂ y≤x = false because (ofⁿ (λ x≤y → ¬p (antisym≤ x≤y y≤x)))


  _≤ˢ?_ : (s s' : Slot) → Dec (s ≤ˢ s')
  _≤ˢ?_ = Dec≡⋀TotAntisym≤⇒Dec≤ _≡ˢ?_ ≤ˢ-isAntisymmetric ≤ˢ-isTotal

  ≤ˢ-isDecTotalOrder : IsDecTotalOrder _≡_ _≤ˢ_
  ≤ˢ-isDecTotalOrder = record { isTotalOrder = Slot-TO ; _≟_ = _≡ˢ?_ ; _≤?_ = _≤ˢ?_ }

  instance
    Dec-≤ˢ : ∀ {n m} → Dec (n ≤ˢ m)
    Dec-≤ˢ = Decidable²⇒Dec _≤ˢ?_

    decpoSlot : HasDecPartialOrder Slot _≡_
    decpoSlot = record { hasPartialOrder = poSlot ; _≤?_ = _≤ˢ?_ }

  _≤ᵉ_ : Epoch → Epoch → Set
  e ≤ᵉ e' = firstSlot e ≤ˢ firstSlot e'

  ≤ᵉ-isReflexive : Reflexive _≤ᵉ_
  ≤ᵉ-isReflexive = IsPreorder.reflexive ≤ˢ-isPreorder refl

  _≤ᵉ?_ : ∀ e e' → Dec (e ≤ᵉ e')
  e ≤ᵉ? e' = firstSlot e ≤ˢ? firstSlot e'

  ≤ᵉ-isPreorder : IsPreorder _≡_ _≤ᵉ_
  ≤ᵉ-isPreorder .IsPreorder.isEquivalence     = Ledger.Prelude.isEquivalence
  ≤ᵉ-isPreorder .IsPreorder.reflexive refl    = ≤ᵉ-isReflexive
  ≤ᵉ-isPreorder .IsPreorder.trans ij jk       = ≤ˢ-isTransitive ij jk

  _ = (∀ {n m} → Dec (n <ˢ m)) ∋ it
  _ = (∀ {n m} → Dec (n ≤ˢ m)) ∋ it
  _ = (∀ {n m} → Dec (n ≤ᵉ m)) ∋ it

  instance
    preoEpoch : HasPreorder Epoch _≡_
    preoEpoch = record { _≤_ = _≤ᵉ_ ; isPreorder = ≤ᵉ-isPreorder }

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
    addEpoch ._+_ e e' = epoch (firstSlot e +ˢ firstSlot e')

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
    ._≤ˢ_            → ℕ._≤_
    .Slot-TO         → ≤-isTotalOrder
    .StabilityWindow → StabilityWindowᶜ
    .sucᵉ            → suc

   where open EpochStructure

open GlobalConstants using (ℕEpochStructure) public
