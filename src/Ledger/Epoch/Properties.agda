{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Epoch.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Ratify.Properties txs

open Computational ⦃...⦄

module _ {Γ : NewEpochEnv} {nes : NewEpochState} {e : Epoch} where

  open NewEpochState nes hiding (es)
  open RatifyState fut using (removed) renaming (es to esW)
  open LState ls; open CertState certState; open Acnt acnt
  es         = record esW { withdrawals = ∅ }
  govSt'     = filter (λ x → ¿ ¬ proj₁ x ∈ mapˢ proj₁ removed ¿) govSt

  NEWEPOCH-total : ∃[ nes' ] Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes'
  NEWEPOCH-total =
    case e ≟ sucᵉ lastEpoch of λ where
      (no ¬p) → -, NEWEPOCH-Not-New ¬p
      (yes p) → -, NEWEPOCH-New p (pFut .proj₂)
    where pFut = RATIFY-total {record { currentEpoch = e ; treasury = treasury
                                      ; GState gState ; NewEpochEnv Γ }}
                              {⟦ es , ∅ , false ⟧ʳ} {govSt'}

  NEWEPOCH-complete : ∀ nes' → Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes' → NEWEPOCH-total .proj₁ ≡ nes'
  NEWEPOCH-complete nes' h with h | e ≟ sucᵉ lastEpoch
  ... | NEWEPOCH-New next _    | no ¬next = ⊥-elim (¬next next)
  ... | NEWEPOCH-Not-New _     | no _     = refl
  ... | NEWEPOCH-New _ h       | yes _    = cong ⟦ _ , _ , _ , _ ,_⟧ⁿᵉ (RATIFY-complete h)
  ... | NEWEPOCH-Not-New ¬next | yes next = ⊥-elim (¬next next)

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_
  Computational-NEWEPOCH .computeProof Γ s sig = just NEWEPOCH-total
  Computational-NEWEPOCH .completeness Γ s sig s' h = cong just (NEWEPOCH-complete s' h)
