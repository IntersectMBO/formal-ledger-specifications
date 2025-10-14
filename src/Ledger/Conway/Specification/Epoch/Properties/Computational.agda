{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

open import Agda.Builtin.FromNat

module Ledger.Conway.Specification.Epoch.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.Ratify.Properties.Computational txs
open import Ledger.Conway.Specification.Rewards txs abs

open import Data.List using (filter)
import Relation.Binary.PropositionalEquality as PE

open Computational ⦃...⦄

module _ {lstate : LState} {ss : Snapshots} where
  SNAP-total : ∃[ ss' ] lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
  SNAP-total = -, SNAP

  SNAP-complete : ∀ ss' → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss' → proj₁ SNAP-total ≡ ss'
  SNAP-complete ss' SNAP = refl

  SNAP-deterministic : ∀ {ss' ss''}
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'' → ss' ≡ ss''
  SNAP-deterministic SNAP SNAP = refl

module _ {e : Epoch} (prs : PoolReapState) where
  POOLREAP-total : ∃[ prs' ] _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs'
  POOLREAP-total = -, POOLREAP

  POOLREAP-complete
    : ∀ prs' → _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs' → proj₁ POOLREAP-total ≡ prs'
  POOLREAP-complete prs' POOLREAP = refl

  POOLREAP-deterministic
    : ∀ {prs' prs''}
    → _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs'
    → _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs''
    → prs' ≡ prs''
  POOLREAP-deterministic POOLREAP POOLREAP = refl

module _ {eps : EpochState} {e : Epoch} where

  open EpochState eps hiding (es)

  u0 = EPOCHUpdates0.updates fut ls
  module u0 = EPOCH-Updates0 u0

  prs = ⟦ u0 .utxoSt' , acnt , cs .dState , cs .pState ⟧
    where
      open LState
      open CertState
      open EPOCH-Updates0
      cs = ls .certState

  EPOCH-total : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
  EPOCH-total =
    -, EPOCH
         ( SNAP-total .proj₂
         , RATIFIES-total' .proj₂
         , POOLREAP-total prs .proj₂)

  private
    EPOCH-state : Snapshots → RatifyState → PoolReapState → EpochState
    EPOCH-state ss fut' (⟦ utxoSt'' , acnt' , dState' , pState' ⟧ᵖ) =
      let
        EPOCHUpdates dState'' acnt'' =
          EPOCHUpdates.updates u0 ls dState' acnt'
        certState' = ⟦ dState'' , pState' , u0.gState' ⟧ᶜˢ
       in
          record
            { acnt = acnt''
            ; ss = ss
            ; ls = ⟦ utxoSt'' , u0.govSt' , certState' ⟧ˡ
            ; es = u0.es
            ; fut = fut'
            }

  EPOCH-deterministic : ∀ eps' eps''
                      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
                      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps''
                      → eps' ≡ eps''
  EPOCH-deterministic
      eps'
      eps''
      (EPOCH
        {utxoSt'' = utxoSt''₁}
        {acnt' = acnt'₁}
        {dState' = dState'₁}
        {pState' = pState'₁}
        (p₁ , p₂ , p₃)
      )
      (EPOCH
        {utxoSt'' = utxoSt''₂}
        {acnt' = acnt'₂}
        {dState' = dState'₂}
        {pState' = pState'₂}
        (p₁' , p₂' , p₃')
      ) =
    cong₂ _$_ (cong₂ EPOCH-state ss'≡ss'' fut'≡fut'') prs'≡prs''
    where
      ss'≡ss'' : EpochState.ss eps' ≡ EpochState.ss eps''
      ss'≡ss'' = SNAP-deterministic p₁ p₁'

      fut'≡fut'' : EpochState.fut eps' ≡ EpochState.fut eps''
      fut'≡fut'' = RATIFIES-deterministic-≡
                    (cong (λ x → record
                                   { stakeDistrs = mkStakeDistrs (Snapshots.mark x) _ _ _ (GStateOf ls) (DStateOf ls)
                                   ; currentEpoch = _
                                   ; dreps = _
                                   ; ccHotKeys = _
                                   ; treasury = _
                                   }) ss'≡ss'')
                                   refl refl p₂ p₂'

      prs'≡prs'' : ⟦ utxoSt''₁ , acnt'₁ , dState'₁ , pState'₁ ⟧ᵖ ≡
                   ⟦ utxoSt''₂ , acnt'₂ , dState'₂ , pState'₂ ⟧
      prs'≡prs'' = POOLREAP-deterministic prs p₃ p₃'

  EPOCH-complete : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total ≡ eps'
  EPOCH-complete eps' p = EPOCH-deterministic (proj₁ EPOCH-total) eps' (proj₂ EPOCH-total) p

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
  ... | yes p | just ru | PE.[ refl ] =  ⟦ e , _ , _ , EPOCH-total' .proj₁ , nothing , _ ⟧
                                      , NEWEPOCH-New (p , EPOCH-total' .proj₂)
  ... | yes p | nothing | PE.[ refl ] = ⟦ e , _ , _ , proj₁ EPOCH-total' , nothing , _ ⟧
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
