---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow.lagda.md
---

# UTxOW (Dijkstra skeleton)

This is a **minimal skeleton** of the Dijkstra-era witnessing layer.

It currently acts as a wrapper around `UTXO`, mirroring Conway's shape, but without
committing to full witnessing checks yet.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Utxo txs abs

private variable
  Γ  : UTxOEnv
  s s' : UTxOState
  tx : TopLevelTx
  stx : SubLevelTx
```
-->

```agda
data _⊢_⇀⦇_,SUBUTXOW⦈_ : UTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXOW :
    ∙ Γ ⊢ s ⇀⦇ stx ,SUBUTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ stx ,SUBUTXOW⦈ s'

data _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXOW :
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
```

This file intentionally contains **no** additional premises yet.  As Dijkstra witnessing
evolves, this is where signature / script / datum / language constraints can be added.
