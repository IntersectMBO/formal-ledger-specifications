---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Script/ScriptPurpose.lagda.md
---

# Script Purpose {#sec:script-purpose}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Script.ScriptPurpose (txs : TransactionStructure) where

open import Ledger.Prelude
open TransactionStructure txs
open import Ledger.Dijkstra.Specification.Certs govStructure
```
-->

```agda
data ScriptPurpose : Type where
  Cert     : DCert          → ScriptPurpose
  Rwrd     : RewardAddress  → ScriptPurpose
  Mint     : ScriptHash     → ScriptPurpose
  Spend    : TxIn           → ScriptPurpose
  Vote     : GovVoter       → ScriptPurpose
  Propose  : GovProposal    → ScriptPurpose
  Guard    : Credential     → ScriptPurpose
```

Note that `Guard c` always indexes into *the current `tx`'s* `txGuards`:

+  if `tx : TopLevelTx`, it indexes into the top-level guard set's list-view;
+  if `tx : SubLevelTx`, it indexes into the subTx's guard set's list-view.

```agda
mutual
  record TxInfo : Type where
    inductive
    field
      realizedInputs : UTxO
      txOuts         : Ix ⇀ TxOut
      txFee          : Maybe Fees
      mint           : Value
      txCerts        : List DCert
      txWithdrawals  : Withdrawals
      txVldt         : Maybe Slot × Maybe Slot
      vkKey          : ℙ KeyHash     -- native/phase-1/timelock signers
      txGuards       : ℙ Credential  -- CIP-0112/0118 guards (required by tx body)
      txData         : ℙ Datum
      txId           : TxId
      txInfoSubTxs   : Maybe (List SubTxInfo)

  SubTxInfo : Type
  SubTxInfo = TxInfo

```
