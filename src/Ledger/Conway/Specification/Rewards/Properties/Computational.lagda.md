---
source_branch: master
source_path: src/Ledger/Conway/Specification/Rewards/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Specification.Rewards.Properties.Computational
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Prelude

open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Rewards txs abs

module _ {lstate : LState} {ss : Snapshots} where
  SNAP-total : ∃[ ss' ] lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
  SNAP-total = -, SNAP

  SNAP-complete : ∀ ss' → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss' → proj₁ SNAP-total ≡ ss'
  SNAP-complete ss' SNAP = refl

  SNAP-deterministic : ∀ {ss' ss''}
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
                     → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'' → ss' ≡ ss''
  SNAP-deterministic SNAP SNAP = refl
```
