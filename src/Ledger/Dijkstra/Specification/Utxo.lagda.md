---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo.lagda.md
---

# UTxO

(Dijkstra skeleton)

This is a **minimal skeleton** of the Dijkstra-era UTxO transition system.

It exists primarily to host **phase-1 structural checks** that are specific to
Dijkstra (CIP-0118 / CIP-0112), without yet committing to the full batch semantics
(issue #1007) or phase-2 execution model (issue #1006).

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
```
-->

## Environments and states

(copied shape from Conway; semantics TBD)

```agda
record UTxOEnv : Type where
  field
    slot      : Slot
    pparams   : PParams
    treasury  : Treasury
    utxo₀     : UTxO

record UTxOState : Type where
  field
    utxo       : UTxO
    fees       : Fees
    deposits   : Deposits
    donations  : Donations
```

<!--
```agda
instance
  unquoteDecl HasCast-UTxOEnv HasCast-UTxOState = derive-HasCast
    ( (quote UTxOEnv   , HasCast-UTxOEnv  ) ∷
    [ (quote UTxOState , HasCast-UTxOState) ])
```
-->

<!--
```agda
private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : TopLevelTx
  stx : SubLevelTx
```
-->

## UTXOS

(skeleton/stub)

`UTXOS` will eventually process the batch (top-level tx + its subTxs) and handle
phase-2 success/failure behavior.  For now it is merely a hook point.

```agda
data _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where
  UTXOS-stub :
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s
```

## The <span class="AgdaDatatype">UTXO</span> Transition System {#sec:the-utxo-transition-system}

### New in Dijkstra

1. The set of spending inputs must exist in the UTxO _before_ applying the
transaction (or partially applying any part of it). TODO: Add link to CIP once its finalized.


```agda
data _⊢_⇀⦇_,SUBUTXO⦈_ : UTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXO :
    let txb    = Tx.txBody tx
        subTxs = TxBody.txSubTransactions txb
    in
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ stx ,SUBUTXO⦈ s'

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :
    let txb    = Tx.txBody tx
        subTxs = TxBody.txSubTransactions txb
        utxo₀  = Γ .utxo₀
        utxo   = s .utxo
    in
    ∙ txIns ≢ ∅
    ∙ txIns ⊆ dom utxo₀ -- (1)
    ∙ refInputs ⊆ dom utxo

    ∙ requiredTopLevelGuardsSatisfied tx subTxs

    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
```

**Note.** The premise `requiredTopLevelGuardsSatisfied tx subTxs`
is explicitly a **phase-1** condition (CIP-0118): every guard credential requested by
subTx bodies must appear in the top-level `txGuards` set.

A couple of details to notice:

- `txb` is computed via `Tx.txBody tx` (no reliance on `TxBodyOf` instances).
- `UTXOS-stub` returns the **same** state (so we can typecheck
  everything without inventing semantics prematurely).
