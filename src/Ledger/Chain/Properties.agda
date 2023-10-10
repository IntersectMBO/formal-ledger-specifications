{-# OPTIONS --safe #-}

open import Data.Nat.Properties hiding (_≟_)

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Chain.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.Ratify txs
open import Ledger.Chain txs
open import Ledger.Ledger txs
open import Ledger.Ratify.Properties txs

open Computational ⦃...⦄

module _ {Γ : NewEpochEnv} {nes : NewEpochState} {e : Epoch} where

  open NewEpochState nes hiding (es)
  open RatifyState fut using (removed) renaming (es to esW)
  open LState ls; open CertState certState; open Acnt acnt
  es         = record esW { withdrawals = ∅ᵐ }
  govSt'     = filter (λ x → ¿ ¬ proj₁ x ∈ mapˢ proj₁ removed ¿) govSt

  NEWEPOCH-total : ∃[ nes' ] Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes'
  NEWEPOCH-total =
    let (_ , pFut) = RATIFY-total
                      {record { currentEpoch = e ; treasury = treasury
                              ; GState gState ; NewEpochEnv Γ }} {⟦ es , ∅ , false ⟧ʳ} {govSt'} in
    case e ≟ sucᵉ lastEpoch of λ where
      (no ¬p) → -, NEWEPOCH-Not-New ¬p
      (yes p) → -, NEWEPOCH-New p pFut

  NEWEPOCH-complete : ∀ nes' → Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes' → NEWEPOCH-total .proj₁ ≡ nes'
  NEWEPOCH-complete nes' _ with e ≟ sucᵉ lastEpoch
  NEWEPOCH-complete nes' (NEWEPOCH-New next _)    | no ¬next = ⊥-elim (¬next next)
  NEWEPOCH-complete nes' (NEWEPOCH-Not-New _)     | no _     = refl
  NEWEPOCH-complete nes' (NEWEPOCH-New _ h)       | yes _    = cong ⟦ _ , _ , _ , _ ,_⟧ⁿᵉ (RATIFY-complete h)
  NEWEPOCH-complete nes' (NEWEPOCH-Not-New ¬next) | yes next = ⊥-elim (¬next next)

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_
  Computational-NEWEPOCH .computeProof Γ s sig = just NEWEPOCH-total
  Computational-NEWEPOCH .completeness Γ s sig s' h = cong just (NEWEPOCH-complete s' h)
