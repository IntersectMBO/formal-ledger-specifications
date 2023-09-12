{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.PPUp.Properties (txs : TransactionStructure) where

open TransactionStructure txs
open import Ledger.Prelude hiding (_+_; _*_; Dec₁)

open import Ledger.PPUp txs

open import Algebra
open Semiring Slotʳ hiding (refl; sym)

import Data.Unit.Polymorphic
open import Data.Product.Properties
open import Interface.Decidable.Instance
open import Relation.Nullary.Decidable

-- Ring literals
open import Agda.Builtin.FromNat
open import Algebra.Literals
open Semiring-Lit Slotʳ

instance
  _ = Data.Unit.Polymorphic.tt

private
  Current-Property : PPUpdateEnv → Update → Set
  Current-Property Γ (pup , e) = let open PPUpdateEnv Γ in
      dom (pup ˢ) ⊆ dom (genDelegs ˢ)
      × All (isViableUpdate pparams) (range (pup ˢ))
      × (slot + (2 * StabilityWindow)) <ˢ firstSlot (sucᵉ (epoch slot))
      × epoch slot ≡ e

  Future-Property : PPUpdateEnv → Update → Set
  Future-Property Γ (pup , e) = let open PPUpdateEnv Γ in
      dom (pup ˢ) ⊆ dom (genDelegs ˢ)
      × All (isViableUpdate pparams) (range (pup ˢ))
      × firstSlot (sucᵉ (epoch slot)) ≤ˢ (slot + (2 * StabilityWindow))
      × sucᵉ (epoch slot) ≡ e

open Computational' ⦃...⦄

instance
  _ = Decidable²⇒Dec _<ˢ?_

  Computational'-PPUP : Computational' _⊢_⇀⦇_,PPUP⦈_
  Computational'-PPUP .computeProof Γ s (just (pup , e)) =
    case ¿ Current-Property Γ (pup , e) ¿ ,′ ¿ Future-Property Γ (pup , e) ¿ of λ where
      (yes (p₁ , p₂ , p₃ , p₄) , _) → just (_ , PPUpdateCurrent p₁ p₂ p₃ p₄)
      (_ , yes (p₁ , p₂ , p₃ , p₄)) → just (_ , PPUpdateFuture p₁ p₂ p₃ p₄)
      _ → nothing
  Computational'-PPUP .computeProof Γ s nothing = just (_ , PPUpdateEmpty)
  Computational'-PPUP .completeness Γ s (just (pup , e)) s' (PPUpdateCurrent p₁ p₂ p₃ p₄)
    with ¿ Current-Property Γ (pup , e) ¿ | "bug"
  ... | yes p | _ = refl
  ... | no ¬p | _ = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄))
  Computational'-PPUP .completeness Γ s (just (pup , e)) s' (PPUpdateFuture p₁ p₂ p₃ p₄)
    with ¿ Current-Property Γ (pup , e) ¿ | ¿ Future-Property Γ (pup , e) ¿ | "bug"
  ... | yes (q₁ , q₂ , q₃ , q₄) | _ | _ = ⊥-elim (p₃ q₃)
  ... | no _ | yes p | _ = refl
  ... | no _ | no ¬p | _ = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄))
  Computational'-PPUP .completeness Γ s nothing s' PPUpdateEmpty = refl

  Computational-PPUP = fromComputational' Computational'-PPUP
