---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Rewards/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">SNAP</span>: Computational {#sec:snap-computational}

This module proves that the `SNAP`{.AgdaDatatype} transition rule is computational.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Rewards.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Rewards txs abs

open Computational ⦃...⦄

module _ {lstate : LedgerState} {ss : Snapshots} where
```
-->

```agda
  SNAP-total : ∃[ ss' ] lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
  SNAP-total = -, SNAP

  SNAP-complete : ∀ ss' → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss' → proj₁ SNAP-total ≡ ss'
  SNAP-complete ss' SNAP = refl

  SNAP-deterministic : ∀ {ss' ss''}
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'' → ss' ≡ ss''
  SNAP-deterministic SNAP SNAP = refl

instance
  Computational-SNAP : Computational _⊢_⇀⦇_,SNAP⦈_ ⊥
  Computational-SNAP .computeProof _ ss lstate = success SNAP-total
  Computational-SNAP .completeness _ ss lstate ss' h = cong success (SNAP-complete ss' h)
```
