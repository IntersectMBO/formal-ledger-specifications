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


```agda
record UTxOEnv : Type where
  field
    slot      : Slot
    pparams   : PParams
    treasury  : Treasury
    utxo₀     : UTxO
```

The `utxo₀`{.AgdaField} field of `UTxOEnv`{.AgdaRecord} is introduced in the Dijkstra
era; it denotes a *snapshot* of the UTxO before any subtransactions of a batch are applied.

```agda
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
  HasUTxO-UTxOEnv : HasUTxO UTxOEnv
  HasUTxO-UTxOEnv .UTxOOf = UTxOEnv.utxo₀

  HasUTxO-UTxOState : HasUTxO UTxOState
  HasUTxO-UTxOState .UTxOOf = UTxOState.utxo

  unquoteDecl HasCast-UTxOEnv HasCast-UTxOState = derive-HasCast
    ((quote UTxOEnv , HasCast-UTxOEnv  ) ∷ (quote UTxOState , HasCast-UTxOState) ∷ [])
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

      ────────────────────────────────
      Γ ⊢ s ⇀⦇ stx ,SUBUTXO⦈ s'

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :

    ∙ SpendInputsOf tx ≢ ∅
    ∙ SpendInputsOf tx ⊆ dom (UTxOOf Γ)                           -- (1)
    ∙ ReferenceInputsOf tx ⊆ dom (UTxOOf s)
    ∙ requiredTopLevelGuardsSatisfied tx (SubTransactionsOf tx)   -- (2)
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
```

**Notes**.

1.  The set of spending inputs must exist in the UTxO *before* applying the
    transaction (or partially applying any part of it).

2.  The premise `requiredTopLevelGuardsSatisfied tx subTxs` is explicitly a
    phase-1 condition (CIP-0118): every guard credential requested by subtransaction
    bodies must appear in the top-level `txGuards` set.
