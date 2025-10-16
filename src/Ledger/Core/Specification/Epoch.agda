{-# OPTIONS --safe #-}

module Ledger.Core.Specification.Epoch where

open import Ledger.Prelude hiding (compare; Rel)

open import Agda.Builtin.FromNat
open import Algebra using (Semiring)
open import Data.Nat.Properties using (+-monoˡ-≤; +-cancelˡ-<; +-*-semiring; suc-injective)
open import Data.Rational using (ℚ)
import      Data.Rational as ℚ
import      Data.Rational.Properties as ℚ
open import Data.Sum using ([_,_]′)

additionVia : ∀{A : Set} → (A → A) → ℕ → A → A
additionVia sucFun zero r = r
additionVia sucFun (suc l) r = sucFun (additionVia sucFun l r)

record EpochStructure : Type₁ where
  field Slotʳ : Semiring 0ℓ 0ℓ
        Epoch : Type; ⦃ DecEq-Epoch ⦄ : DecEq Epoch; ⦃ Show-Epoch ⦄ : Show Epoch

  Slot = Semiring.Carrier Slotʳ

  field ⦃ DecPo-Slot ⦄   : HasDecPartialOrder≡ {A = Slot}
        ⦃ DecEq-Slot ⦄   : DecEq Slot

        epoch                         : Slot → Epoch
        firstSlot                     : Epoch → Slot
        RandomnessStabilisationWindow : Slot
        StabilityWindow               : Slot
        sucᵉ                          : Epoch → Epoch

  _+ᵉ_ = additionVia sucᵉ

  field
        _+ᵉ'_           : ℕ → Epoch → Epoch
        +ᵉ≡+ᵉ'          : ∀ {a b} → a +ᵉ b ≡ a +ᵉ' b

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

  field
    e<sucᵉ : ∀ {e : Epoch} → e < sucᵉ e
    ≤-predᵉ : ∀ {e e' : Epoch} → sucᵉ e ≤ sucᵉ e' → e ≤ e'

  _ = _<_ {A = Slot}  ⁇² ∋ it
  _ = _≤_ {A = Slot}  ⁇² ∋ it
  _ = _<_ {A = Epoch} ⁇² ∋ it
  _ = _≤_ {A = Epoch} ⁇² ∋ it

  -- addition

  open Semiring Slotʳ renaming (_+_ to _+ˢ_)

  ℕtoEpoch : ℕ → Epoch
  ℕtoEpoch zero    = epoch 0#
  ℕtoEpoch (suc n) = sucᵉ (ℕtoEpoch n)

  instance
    addSlot : HasAdd Slot
    addSlot ._+_ = _+ˢ_

    addEpoch : HasAdd Epoch
    addEpoch ._+_ e e' = epoch (firstSlot e + firstSlot e')

    Number-Epoch : Number Epoch
    Number-Epoch .Number.Constraint _ = ⊤
    Number-Epoch .Number.fromNat    x = ℕtoEpoch x

record GlobalConstants : Type₁ where
  field  Network : Type; ⦃ DecEq-Netw ⦄ : DecEq Network; ⦃ Show-Network ⦄ : Show Network
         SlotsPerEpochᶜ   : ℕ; ⦃ NonZero-SlotsPerEpochᶜ ⦄ : NonZero SlotsPerEpochᶜ
         ActiveSlotCoeff  : ℚ; ⦃ Positive-ActiveSlotCoeff ⦄ : ℚ.Positive ActiveSlotCoeff
         RandomnessStabilisationWindowᶜ : ℕ
         StabilityWindowᶜ : ℕ
         MaxLovelaceSupplyᶜ : Coin
         Quorum : ℕ
         NetworkId : Network

  instance
    NonZero-ActiveSlotCoeff : ℚ.NonZero ActiveSlotCoeff
    NonZero-ActiveSlotCoeff = ℚ.>-nonZero (ℚ.positive⁻¹ ActiveSlotCoeff)

  ℕ+ᵉ≡+ᵉ' : ∀ {a b} → additionVia suc a b ≡ a + b
  ℕ+ᵉ≡+ᵉ' {zero} {b} = refl
  ℕ+ᵉ≡+ᵉ' {suc a} {b} = cong suc (ℕ+ᵉ≡+ᵉ' {a} {b})

  ℕEpochStructure : EpochStructure
  ℕEpochStructure = λ where
    .Slotʳ                         → +-*-semiring
    .DecPo-Slot                    → ℕ-hasDecPartialOrder
    .Epoch                         → ℕ
    .epoch slot                    → slot / SlotsPerEpochᶜ
    .firstSlot e                   → e * SlotsPerEpochᶜ
    .RandomnessStabilisationWindow → RandomnessStabilisationWindowᶜ
    .StabilityWindow               → StabilityWindowᶜ
    .sucᵉ                          → suc
    .e<sucᵉ                        → +-monoˡ-≤ _ (>-nonZero⁻¹ SlotsPerEpochᶜ)
    .≤-predᵉ                       → [ (λ p → inj₁ (+-cancelˡ-< _ _ _ p)) , (λ p → inj₂ (suc-injective p)) ]′
    ._+ᵉ'_                         → _+_
    .+ᵉ≡+ᵉ' {a} {b}                → ℕ+ᵉ≡+ᵉ' {a} {b}

   where open EpochStructure

open GlobalConstants using (ℕEpochStructure) public
