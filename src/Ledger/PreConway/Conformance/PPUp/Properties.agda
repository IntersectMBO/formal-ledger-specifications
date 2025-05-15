{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_*_)
open Computational ⦃...⦄; open HasDecPartialOrder ⦃...⦄
open import Ledger.Conway.Transaction

module Ledger.PreConway.Conformance.PPUp.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.PreConway.Conformance.PPUp txs

private
  -- Ring literals
  open import Agda.Builtin.FromNat
  open import Algebra; open Semiring Slotʳ using (_*_)
  open import stdlib.Algebra.Literals; open Semiring-Lit Slotʳ

  Current-Property : PPUpdateEnv → Update → Type
  Current-Property Γ (pup , e) = let open PPUpdateEnv Γ in
      dom pup ⊆ dom genDelegs
      × All (isViableUpdate pparams) (range pup)
      × slot + 2 * StabilityWindow < firstSlot (epoch slot + 1)
      × epoch slot ≡ e

  Future-Property : PPUpdateEnv → Update → Type
  Future-Property Γ (pup , e) = let open PPUpdateEnv Γ in
      dom pup ⊆ dom genDelegs
      × All (isViableUpdate pparams) (range pup)
      × firstSlot (epoch slot + 1) ≤ slot + 2 * StabilityWindow
      × epoch slot + 1 ≡ e

instance
  Computational-PPUP : Computational _⊢_⇀⦇_,PPUP⦈_ String
  Computational-PPUP .computeProof Γ s = λ where
    (just (pup , e)) →
      case ¿ Current-Property Γ (pup , e) ¿
        ,′ ¿ Future-Property Γ (pup , e) ¿ of λ where
        (yes (p₁ , p₂ , p₃ , p₄) , _) → success (-, PPUpdateCurrent p₁ p₂ p₃ p₄)
        (_ , yes (p₁ , p₂ , p₃ , p₄)) → success (-, PPUpdateFuture p₁ p₂ p₃ p₄)
        (no _ , no _)                 → failure "Failed in PPUP"
    nothing → success (-, PPUpdateEmpty)

  Computational-PPUP .completeness Γ _ .nothing  _     PPUpdateEmpty = refl
  Computational-PPUP .completeness Γ _ (just up) _ p   with p
  Computational-PPUP .completeness Γ _ (just up) _ _ | PPUpdateCurrent p₁ p₂ p₃ p₄
    rewrite dec-yes ¿ Current-Property Γ up ¿ (p₁ , p₂ , p₃ , p₄) .proj₂ = refl
  Computational-PPUP .completeness Γ _ (just up) _ _ | PPUpdateFuture p₁ p₂ p₃ p₄
    with ¿ Current-Property Γ up ¿ | ¿ Future-Property Γ up ¿
  ... | yes (_ , _ , ¬p₃ , _) | _ = ⊥-elim
                                  $ <⇒¬>⊎≈ {A = Slot} ¬p₃ (≤⇔<∨≈ .Equivalence.to p₃)
  ... | no _ | yes p = refl
  ... | no _ | no ¬p = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄))
