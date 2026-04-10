---
source_branch: master
source_path: src/Ledger/Conway/Specification/PoolReap/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.PoolReap.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.PoolReap txs abs

open Computational ⦃...⦄

module _ {e : Epoch} {prs : PoolReapState} where
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

POOLREAP-deterministic-≡ : ∀ {prs' prs'' e e' prs''' prs''''}
  → prs' ≡ prs''
  → e ≡ e'
  → _ ⊢ prs'  ⇀⦇ e  ,POOLREAP⦈ prs'''
  → _ ⊢ prs'' ⇀⦇ e' ,POOLREAP⦈ prs''''
  → prs''' ≡ prs''''
POOLREAP-deterministic-≡ refl refl = POOLREAP-deterministic
```
