---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/PoolReap/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">POOLREAP</span>: Computational {#sec:poolreap-computational}

This module proves that the `POOLREAP`{.AgdaDatatype} transition rule is computational.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.PoolReap.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.PoolReap txs abs

open Computational ⦃...⦄

module _ {e : Epoch} {prs : PoolReapState} where
```
-->

```agda
  POOLREAP-total : ∃[ prs' ] _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs'
  POOLREAP-total = -, POOLREAP

  POOLREAP-complete : ∀ prs' → _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs' → proj₁ POOLREAP-total ≡ prs'
  POOLREAP-complete prs' POOLREAP = refl

  POOLREAP-deterministic : ∀ {prs' prs''}
    → _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs'
    → _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ prs''
    → prs' ≡ prs''
  POOLREAP-deterministic POOLREAP POOLREAP = refl

POOLREAP-deterministic-≡ : ∀ {prs' prs'' e e' prs''' prs''''}
  → prs' ≡ prs'' → e ≡ e'
  → _ ⊢ prs'  ⇀⦇ e  ,POOLREAP⦈ prs'''
  → _ ⊢ prs'' ⇀⦇ e' ,POOLREAP⦈ prs''''
  → prs''' ≡ prs''''
POOLREAP-deterministic-≡ refl refl = POOLREAP-deterministic

instance
  Computational-POOLREAP : Computational _⊢_⇀⦇_,POOLREAP⦈_ ⊥
  Computational-POOLREAP .computeProof _ prs e = success POOLREAP-total
  Computational-POOLREAP .completeness _ prs e prs' h =
    cong success (POOLREAP-complete prs' h)
```
