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
import Relation.Binary.PropositionalEquality as PE

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
  EPOCH-total = -, EPOCH (RATIFIES-total' .proj₂) (SNAP-total ls ss .proj₂)

  EPOCH-complete : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total ≡ eps'
  EPOCH-complete eps' (EPOCH p₁ p₂) = cong₂ (λ ss fut → record { acnt = _ ; ss = ss ; ls = _ ; es = _ ; fut = fut }) (SNAP-complete _ _ _ p₂)
    (RATIFIES-complete' (subst ty (cong Snapshots.mark (sym (SNAP-complete _ _ _ p₂))) p₁))
    where
      ty : Snapshot → Set
      ty x = record
        { stakeDistrs = mkStakeDistrs x _ _ _
        ; currentEpoch = _
        ; dreps = _
        ; ccHotKeys = _
        ; treasury = _
        } ⊢ _ ⇀⦇ _ ,RATIFIES⦈ _

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
  NEWEPOCH-total nes with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | inspect NewEpochState.ru nes
  ... | yes p | just ru | PE.[ refl ] =  ⟦ e , EPOCH-total' .proj₁ , nothing ⟧
                                      , NEWEPOCH-New (p , EPOCH-total' .proj₂)
  ... | yes p | nothing | PE.[ refl ] = ⟦ e , proj₁ EPOCH-total' , nothing ⟧
                                      , NEWEPOCH-No-Reward-Update (p , EPOCH-total' .proj₂)
  ... | no ¬p | _ | _ = -, NEWEPOCH-Not-New ¬p

  NEWEPOCH-complete : ∀ nes nes' → _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes' → proj₁ (NEWEPOCH-total nes) ≡ nes'
  -- NEWEPOCH-complete nes nes' h with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | h
  NEWEPOCH-complete nes nes' h with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | inspect NewEpochState.ru nes | h 
  ... | yes p | just ru | PE.[ refl ] | NEWEPOCH-New (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  ... | yes p | ru | PE.[ refl ] | NEWEPOCH-Not-New x = ⊥-elim $ x p
  ... | yes p | nothing | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  ... | no ¬p | ru | PE.[ refl ] | NEWEPOCH-New (x , x₁)  = ⊥-elim $ ¬p x
  ... | no ¬p | ru | PE.[ refl ] | NEWEPOCH-Not-New x = refl
  ... | no ¬p | nothing | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁) = ⊥-elim $ ¬p x

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_ ⊥
  Computational-NEWEPOCH .computeProof Γ s sig = success (NEWEPOCH-total _)
  Computational-NEWEPOCH .completeness Γ s sig s' h = cong success (NEWEPOCH-complete _ s' h)
