---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledgers.lagda.md
---

# Ledgers {#sec:ledgers}

This module defines the ledgers transition system where a list of
valid transactions transform the ledger state.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)

module Ledger.Dijkstra.Specification.Ledgers
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
```
-->

## Auxiliary Types

Dijkstra era introduces a new STS,
`LEDGERSWithLimits`{.AgdaDatatype}. This STS enforces limits on the
size of reference scripts and execution units while applying
`LEDGER`{.AgdaDatatype} to individual transactions.

```agda
record LedgersEnv : Type where
  field
    ledgerEnv           : LedgerEnv
    refScriptsSizeLimit : ℕ
    exUnitsLimit        : ExUnits

record LedgersWithLimitsState : Type where
  field
    ledgerState       : LedgerState
    refScriptsSizeAcc : ℕ
    exUnitsAcc        : ExUnits
```

<!--
```agda
private
  variable
    Γ : LedgerEnv
    Γs : LedgersEnv
    s : LedgersWithLimitsState
    ls ls' ls'' : LedgerState
    topTx : TopLevelTx
    topTxs : List TopLevelTx
    accRefScriptSize accRefScriptSize' refScriptsSizeLimit : ℕ
    accExUnits accExUnits' exUnitsLimit : ExUnits

open PParams using (maxRefScriptSizePerBlock; maxBlockExUnits)

unquoteDecl HasCast-LedgersEnv HasCast-LedgersWithLimitsState = derive-HasCast
  ( (quote LedgersEnv , HasCast-LedgersEnv)
  ∷ (quote LedgersWithLimitsState , HasCast-LedgersWithLimitsState)
  ∷ [])
```
-->

## <span class="AgdaDatatype">LEDGERSWithLimits</span> Transition System

```agda
data _⊢_⇀⦇_,LEDGERSWithLimits⦈_ : LedgersEnv → LedgersWithLimitsState → List TopLevelTx → LedgersWithLimitsState → Type where
  LEDGERSWithLimits-[] : Γs ⊢ s ⇀⦇ [] ,LEDGERSWithLimits⦈ s
  LEDGERSWithLimits-∷  :
    let
      refScriptsSize = totalRefScriptsSize (UTxOOf ls) topTx
      exUnits        = totalExUnits topTx 
    in
    ∙ Γ ⊢ ls ⇀⦇ topTx  ,LEDGER⦈ ls'
    ∙ accRefScriptSize + refScriptsSize ≤ refScriptsSizeLimit
    ∙ accExUnits + exUnits ≤ᵉᵘ exUnitsLimit
    ∙ ⟦ Γ , refScriptsSizeLimit , exUnitsLimit ⟧ ⊢ ⟦ ls' , accRefScriptSize + refScriptsSize , accExUnits + exUnits ⟧ ⇀⦇ topTxs ,LEDGERSWithLimits⦈ ⟦ ls'' , accRefScriptSize' , accExUnits' ⟧
    ────────────────────────────────
    ⟦ Γ , refScriptsSizeLimit , exUnitsLimit ⟧ ⊢ ⟦ ls , accRefScriptSize , accExUnits ⟧ ⇀⦇ topTx ∷ topTxs ,LEDGERSWithLimits⦈ ⟦ ls'' , accRefScriptSize' , accExUnits' ⟧
```

## <span class="AgdaDatatype">LEDGERS</span> Transition System

```agda
_⊢_⇀⦇_,LEDGERS⦈_ : LedgersEnv → LedgerState → List TopLevelTx → LedgerState → Type
Γ ⊢ ls ⇀⦇ topTxs ,LEDGERS⦈ ls' =
  ∃₂ λ (accRefScriptSize : ℕ) (accExUnits : ExUnits) → Γ ⊢ ⟦ ls , 0 , 0ᵉᵘ ⟧ ⇀⦇ topTxs ,LEDGERSWithLimits⦈ ⟦ ls' , accRefScriptSize , accExUnits ⟧
```
