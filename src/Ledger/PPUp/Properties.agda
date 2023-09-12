{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_+_; _*_); open Computational' ⦃...⦄
open import Ledger.Transaction

module Ledger.PPUp.Properties (⋯ : _) (open TransactionStructure ⋯) where

open import Ledger.PPUp ⋯

private
  -- Ring literals
  open import Agda.Builtin.FromNat
  open import Algebra; open Semiring Slotʳ hiding (refl)
  open import Algebra.Literals; open Semiring-Lit Slotʳ
  import Data.Unit.Polymorphic as Poly⊤; instance _ = Poly⊤.tt

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

instance
  _ = Decidable²⇒Dec _<ˢ?_

  Computational'-PPUP : Computational' _⊢_⇀⦇_,PPUP⦈_
  Computational'-PPUP .computeProof Γ s = λ where
    (just (pup , e)) →
      case ¿ Current-Property Γ (pup , e) ¿
        ,′ ¿ Future-Property Γ (pup , e) ¿ of λ where
        (yes (p₁ , p₂ , p₃ , p₄) , _) → just (-, PPUpdateCurrent p₁ p₂ p₃ p₄)
        (_ , yes (p₁ , p₂ , p₃ , p₄)) → just (-, PPUpdateFuture p₁ p₂ p₃ p₄)
        (no _ , no _)                 → nothing
    nothing → just (-, PPUpdateEmpty)

  Computational'-PPUP .completeness Γ _ .nothing  _     PPUpdateEmpty = refl
  Computational'-PPUP .completeness Γ _ (just up) _ p   with p
  Computational'-PPUP .completeness Γ _ (just up) _ _ | PPUpdateCurrent p₁ p₂ p₃ p₄
    with ¿ Current-Property Γ up ¿ | "bug"
  ... | yes p | _ = refl
  ... | no ¬p | _ = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄))
  Computational'-PPUP .completeness Γ _ (just up) _ _ | PPUpdateFuture p₁ p₂ p₃ p₄
    with ¿ Current-Property Γ up ¿ | ¿ Future-Property Γ up ¿ | "bug"
  ... | yes (_ , _ , q₃ , _) | _ | _ = ⊥-elim (p₃ q₃)
  ... | no _ | yes p | _ = refl
  ... | no _ | no ¬p | _ = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄))

  Computational-PPUP = fromComputational' Computational'-PPUP
