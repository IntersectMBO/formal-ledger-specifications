---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Epoch/Properties/Computational.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction
module Ledger.Dijkstra.Specification.Epoch.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Agda.Builtin.FromNat
import Relation.Binary.PropositionalEquality as PE

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Certs.Properties.Computational govStructure
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.PoolReap txs abs
open import Ledger.Dijkstra.Specification.PoolReap.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.Ratify.Properties.Computational txs
-- SNAP and REWARDS are reused from Conway (they don't touch deposits)
open import Ledger.Dijkstra.Specification.Rewards txs abs
-- open import Ledger.Dijkstra.Specification.Rewards.Properties.Computational txs abs

open Computational ⦃...⦄
```
-->


```agda
-- {-# OPTIONS --safe #-}

-- open import Ledger.Prelude
-- open import Ledger.Conway.Specification.Transaction
-- open import Ledger.Conway.Specification.Abstract

-- open import Agda.Builtin.FromNat

-- module Ledger.Conway.Conformance.Epoch.Properties
--   (txs : _) (open TransactionStructure txs)
--   (abs : AbstractFunctions txs) (open AbstractFunctions abs)
--   where

-- open import Ledger.Conway.Conformance.Epoch txs abs
-- open import Ledger.Conway.Conformance.Ledger txs abs
-- open import Ledger.Conway.Specification.Ratify govStructure
-- open import Ledger.Conway.Specification.Ratify.Properties.Computational txs
-- open import Ledger.Conway.Conformance.Certs govStructure
-- open import Ledger.Conway.Conformance.Rewards txs abs

open import Data.List using (filter)
import Relation.Binary.PropositionalEquality as PE

open Computational ⦃...⦄

module _ {lstate : LedgerState} {ss : Snapshots} where
  SNAP-total : ∃[ ss' ] lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
  SNAP-total = -, SNAP

  SNAP-complete : ∀ ss' → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss' → proj₁ SNAP-total ≡ ss'
  SNAP-complete ss' SNAP = refl

  SNAP-deterministic : ∀ {ss' ss''}
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'' → ss' ≡ ss''
  SNAP-deterministic SNAP SNAP = refl


module _ {eps : EpochState} {e : Epoch} where

  open EpochState eps hiding (es)
  open RatifyState fut using (removed) renaming (es to esW)
  open LedgerState ls; open CertState certState; open Acnt acnt
  es         = record esW { withdrawals = ∅ }
  govSt'     = filter (λ x → ¿ ¬ proj₁ x ∈ mapˢ proj₁ removed ¿) govSt

  EPOCH-total : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
  EPOCH-total = -, EPOCH (RATIFIES-total' .proj₂ , SNAP-total .proj₂)


  EPOCH-deterministic : ∀ eps' eps'' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
                                      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'' → eps' ≡ eps''
  EPOCH-deterministic eps' eps''
    (EPOCH {ss' = ss'₁} {fut' = fut'₁} (rat₁ , snap₁))
    (EPOCH {ss' = ss'₂} {fut' = fut'₂} (rat₂ , snap₂))
    rewrite SNAP-deterministic snap₁ snap₂
          | RATIFIES-deterministic-≡ refl refl refl rat₁ rat₂ = refl


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
  NEWEPOCH-total nes = ?
  -- with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | inspect NewEpochState.ru nes
  -- ... | yes p | just ru | PE.[ refl ] =  ⟦ e , _ , _ , EPOCH-total' .proj₁ , nothing , _ ⟧
  --                                     , NEWEPOCH-New (p , EPOCH-total' .proj₂)
  -- ... | yes p | nothing | PE.[ refl ] = ⟦ e , _ , _ , proj₁ EPOCH-total' , nothing , _ ⟧
  --                                     , NEWEPOCH-No-Reward-Update (p , EPOCH-total' .proj₂)
  -- ... | no ¬p | _ | _ = -, NEWEPOCH-Not-New ¬p

  NEWEPOCH-complete : ∀ nes nes' → _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes' → proj₁ (NEWEPOCH-total nes) ≡ nes'
  -- NEWEPOCH-complete nes nes' h with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | h
  NEWEPOCH-complete nes nes' h = ?
  -- with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | inspect NewEpochState.ru nes | h
  -- ... | yes p | just ru | PE.[ refl ] | NEWEPOCH-New (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  -- ... | yes p | ru | PE.[ refl ] | NEWEPOCH-Not-New x = ⊥-elim $ x p
  -- ... | yes p | nothing | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁) rewrite EPOCH-complete' _ x₁ = refl
  -- ... | no ¬p | ru | PE.[ refl ] | NEWEPOCH-New (x , x₁)  = ⊥-elim $ ¬p x
  -- ... | no ¬p | ru | PE.[ refl ] | NEWEPOCH-Not-New x = refl
  -- ... | no ¬p | nothing | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁) = ⊥-elim $ ¬p x

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_ ⊥
  Computational-NEWEPOCH .computeProof Γ s sig = success (NEWEPOCH-total _)
  Computational-NEWEPOCH .completeness Γ s sig s' h = cong success (NEWEPOCH-complete _ s' h)

```



```agda
{--

module _ {eps : EpochState} {e : Epoch} where
  EPOCH-total : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
  EPOCH-total = -, EPOCH (RATIFIES-total' .proj₂ , SNAP-total .proj₂)

  EPOCH-deterministic : ∀ eps' eps'' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
                                      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'' → eps' ≡ eps''
  EPOCH-deterministic eps' eps''
    (EPOCH {ss' = ss'₁} {fut' = fut'₁} (rat₁ , snap₁))
    (EPOCH {ss' = ss'₂} {fut' = fut'₂} (rat₂ , snap₂))
    rewrite SNAP-deterministic snap₁ snap₂
          | RATIFIES-deterministic-≡ refl refl refl rat₁ rat₂ = refl

  EPOCH-complete : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total ≡ eps'
  EPOCH-complete eps' p = EPOCH-deterministic _ eps' (proj₂ EPOCH-total) p

  abstract
    EPOCH-total'    : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    EPOCH-total'    = EPOCH-total
    EPOCH-complete' : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total' ≡ eps'
    EPOCH-complete' = EPOCH-complete

instance
  Computational-EPOCH : Computational _⊢_⇀⦇_,EPOCH⦈_ ⊥
  Computational-EPOCH .computeProof _ _ _ = success EPOCH-total'
  Computational-EPOCH .completeness _ _ _ s' h = cong success (EPOCH-complete' s' h)

module _ {e : Epoch} where
  NEWEPOCH-total : ∀ nes → ∃[ nes' ] _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes'
  NEWEPOCH-total nes
    with e ≟ NewEpochState.lastEpoch nes + 1
       | NewEpochState.ru nes
       | inspect NewEpochState.ru nes
  ... | yes p | just ru | PE.[ refl ] =
        ⟦ e , _ , _ , EPOCH-total' .proj₁ , nothing , _ ⟧
        , NEWEPOCH-New (p , EPOCH-total' .proj₂)
  ... | yes p | nothing | PE.[ refl ] =
        ⟦ e , _ , _ , proj₁ EPOCH-total' , nothing , _ ⟧
        , NEWEPOCH-No-Reward-Update (p , EPOCH-total' .proj₂)
  ... | no ¬p | _ | _ = -, NEWEPOCH-Not-New ¬p

  NEWEPOCH-complete : ∀ nes nes' → _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes'
                                 → proj₁ (NEWEPOCH-total nes) ≡ nes'
  NEWEPOCH-complete nes nes' h
    with e ≟ NewEpochState.lastEpoch nes + 1
       | NewEpochState.ru nes
       | inspect NewEpochState.ru nes
       | h
  ... | yes p | just ru  | PE.[ refl ] | NEWEPOCH-New (x , x₁)
      rewrite EPOCH-complete' _ x₁ = refl
  ... | yes p | ru        | PE.[ refl ] | NEWEPOCH-Not-New x    = ⊥-elim (x p)
  ... | yes p | nothing  | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁)
      rewrite EPOCH-complete' _ x₁ = refl
  ... | no ¬p | ru        | PE.[ refl ] | NEWEPOCH-New (x , _)   = ⊥-elim (¬p x)
  ... | no ¬p | ru        | PE.[ refl ] | NEWEPOCH-Not-New x      = refl
  ... | no ¬p | nothing  | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , _)
      = ⊥-elim (¬p x)

instance
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_ ⊥
  Computational-NEWEPOCH .computeProof _ s _ = success (NEWEPOCH-total _)
  Computational-NEWEPOCH .completeness _ s _ s' h =
    cong success (NEWEPOCH-complete _ s' h)
--}

```
