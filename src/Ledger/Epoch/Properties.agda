{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

open import Agda.Builtin.FromNat

module Ledger.Epoch.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Ratify.Properties txs

open import Data.List using (filter)

open Computational ⦃...⦄

module _ (lstate : LState) (ss : Snapshots) where
  SNAP-total : ∃[ ss' ] lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
  SNAP-total = -, SNAP

  SNAP-complete : ∀ ss' → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss' → proj₁ SNAP-total ≡ ss'
  SNAP-complete ss' SNAP = refl

module _ {eps : EpochState} {e : Epoch} where

  open EpochState eps hiding (es)
  open RatifyState fut using (removed) renaming (es to esW)
  open LState ls; open CertState certState; open Acnt acnt
  es         = record esW { withdrawals = ∅ }
  govSt'     = filter (λ x → ¿ ¬ proj₁ x ∈ mapˢ proj₁ removed ¿) govSt

  EPOCH-total : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
  EPOCH-total = -, EPOCH (RATIFY-total' .proj₂) (SNAP-total ls ss .proj₂)

  EPOCH-complete : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total ≡ eps'
  EPOCH-complete eps' (EPOCH p₁ p₂) = cong₂ ⟦ _ ,_, _ , _ ,_⟧ᵉ' (SNAP-complete _ _ _ p₂)
    (RATIFY-complete' (subst ty (cong Snapshots.mark (sym (SNAP-complete _ _ _ p₂))) p₁))
    where
      ty : Snapshot → Set
      ty x = record
        { stakeDistrs = mkStakeDistrs x _ _ _
        ; currentEpoch = _
        ; dreps = _
        ; ccHotKeys = _
        ; treasury = _
        } ⊢ _ ⇀⦇ _ ,RATIFY⦈ _

  abstract
    EPOCH-total' : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    EPOCH-total' = EPOCH-total

    EPOCH-complete' : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total' ≡ eps'
    EPOCH-complete' = EPOCH-complete

instance
  Computational-EPOCH : Computational _⊢_⇀⦇_,EPOCH⦈_ ⊥
  Computational-EPOCH .computeProof Γ s sig = success EPOCH-total'
  Computational-EPOCH .completeness Γ s sig s' h = cong success (EPOCH-complete' s' h)

module _ {nes : NewEpochState} {e : Epoch} where

  open NewEpochState nes

  NEWEPOCH-total : ∃[ nes' ] _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes'
  NEWEPOCH-total with e ≟ lastEpoch + 1
  ... | yes p = ⟦ e , proj₁ EPOCH-total' ⟧ⁿᵉ , NEWEPOCH-New p (EPOCH-total' .proj₂)
  ... | no ¬p = -, NEWEPOCH-Not-New ¬p

  NEWEPOCH-complete : ∀ nes' → _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes' → proj₁ NEWEPOCH-total ≡ nes'
  NEWEPOCH-complete nes' h with e ≟ lastEpoch + 1 | h
  ... | yes p | NEWEPOCH-New x x₁  rewrite EPOCH-complete' _ x₁ = refl
  ... | yes p | NEWEPOCH-Not-New x = ⊥-elim $ x p
  ... | no ¬p | NEWEPOCH-New x x₁  = ⊥-elim $ ¬p x
  ... | no ¬p | NEWEPOCH-Not-New x = refl

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_ ⊥
  Computational-NEWEPOCH .computeProof Γ s sig = success NEWEPOCH-total
  Computational-NEWEPOCH .completeness Γ s sig s' h = cong success (NEWEPOCH-complete s' h)
