---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Epoch/Properties/Computational.lagda.md
---

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
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.Ratify.Properties.Computational txs
open import Ledger.Dijkstra.Specification.Rewards.Properties.Computational txs abs

open Computational ⦃...⦄

open import Data.List using (filter)
import Relation.Binary.PropositionalEquality as PE

open Computational ⦃...⦄

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
    with e ≟ NewEpochState.lastEpoch nes + 1 | NewEpochState.ru nes | inspect NewEpochState.ru nes | h
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

```
