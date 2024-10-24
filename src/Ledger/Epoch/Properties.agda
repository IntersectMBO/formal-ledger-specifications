{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

open import Agda.Builtin.FromNat

module Ledger.Epoch.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Certs govStructure
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

module _ {e : Epoch} where

  NEWEPOCH-total : ∀ nes'' → ∃[ nes' ] _ ⊢ nes'' ⇀⦇ e ,NEWEPOCH⦈ nes'
  NEWEPOCH-total ⟦ lastEpoch , _ , ru ⟧ⁿᵉ with e ≟ lastEpoch + 1 | ru
  ... | yes p | just ru = ⟦ e , proj₁ EPOCH-total' , nothing ⟧ⁿᵉ
                        , NEWEPOCH-New (p , EPOCH-total' .proj₂)
  ... | yes p | nothing = ⟦ e , proj₁ EPOCH-total' , nothing ⟧ⁿᵉ
                        , NEWEPOCH-No-Reward-Update (p , EPOCH-total' .proj₂)
  ... | no ¬p | _ = -, NEWEPOCH-Not-New ¬p

  NEWEPOCH-complete : ∀ nes nes' → _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes' → proj₁ (NEWEPOCH-total nes) ≡ nes'
  NEWEPOCH-complete ⟦ lastEpoch , _ , ru ⟧ⁿᵉ nes' h with e ≟ lastEpoch + 1 | ru | h
  ... | yes p | just ru | NEWEPOCH-New (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  ... | yes p | ru | NEWEPOCH-Not-New x = ⊥-elim $ x p
  ... | yes p | nothing | NEWEPOCH-No-Reward-Update (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  ... | no ¬p | ru | NEWEPOCH-New (x , x₁)  = ⊥-elim $ ¬p x
  ... | no ¬p | ru | NEWEPOCH-Not-New x = refl
  ... | no ¬p | nothing | NEWEPOCH-No-Reward-Update (x , x₁) = ⊥-elim $ ¬p x

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_ ⊥
  Computational-NEWEPOCH .computeProof Γ s sig = success (NEWEPOCH-total _)
  Computational-NEWEPOCH .completeness Γ s sig s' h = cong success (NEWEPOCH-complete _ s' h)
