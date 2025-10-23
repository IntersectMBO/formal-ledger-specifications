---
source_branch: master
source_path: src/Ledger/Conway/Specification/Script/ScriptPurpose.lagda.md
---

# Script Purpose {#sec:script-purpose}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Script.ScriptPurpose (txs : TransactionStructure) where

open import Ledger.Prelude
open TransactionStructure txs
open import Ledger.Conway.Specification.Certs govStructure
```
-->

```agda
data ScriptPurpose : Type where
  Cert     : DCert        → ScriptPurpose
  Rwrd     : RwdAddr      → ScriptPurpose
  Mint     : ScriptHash   → ScriptPurpose
  Spend    : TxIn         → ScriptPurpose
  Vote     : GovVoter     → ScriptPurpose
  Propose  : GovProposal  → ScriptPurpose

record TxInfo : Type where
  field realizedInputs : UTxO
        txOuts         : Ix ⇀ TxOut
        fee            : Value
        mint           : Value
        txCerts        : List DCert
        txWithdrawals  : Withdrawals
        txVldt         : Maybe Slot × Maybe Slot
        vkKey          : ℙ KeyHash
        txdats         : ℙ Datum
        txId           : TxId
```
