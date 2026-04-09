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
ScriptPurposeData : Tag → Type
ScriptPurposeData Spend         = TxIn
ScriptPurposeData Mint          = ScriptHash
ScriptPurposeData Cert          = DCert
ScriptPurposeData Reward        = RewardAddress
ScriptPurposeData Vote          = GovVoter
ScriptPurposeData Propose       = GovProposal
ScriptPurposeData Guard         = Credential

record ScriptPurpose : Type where
  constructor ⟦_,_⟧ˢᵖ
  field
    tag   : Tag
    data′ : ScriptPurposeData tag
```

Note that `Guard c` always indexes into *the current `tx`'s* `txGuards`:

+  if `tx : TopLevelTx`, it indexes into the top-level guard set's list-view;
+  if `tx : SubLevelTx`, it indexes into the subTx's guard set's list-view.

```agda
mutual
  record TxInfo : Type where
    inductive
    field
      realizedInputs      : UTxO
      txOuts              : Ix ⇀ TxOut
      txFee               : Maybe Fees
      mint                : Value
      txCerts             : List DCert
      txWithdrawals       : Withdrawals
      txVldt              : Maybe Slot × Maybe Slot
      vkKey               : ℙ KeyHash     -- native/phase-1/timelock signers
      txGuards            : ℙ Credential  -- CIP-0112/0118 guards (required by tx body)
      txData              : ℙ Datum
      txId                : TxId
      txInfoSubTxs        : Maybe (List SubTxInfo)
      txDirectDeposits    : DirectDeposits
      txBalanceIntervals  : AccountBalanceIntervals

  SubTxInfo : Type
  SubTxInfo = TxInfo
```

The `txDirectDeposits`{.AgdaField} and `txBalanceIntervals`{.AgdaField} fields
expose the CIP-159 transaction fields to Plutus scripts via the script context.
CIP-159 specifies that the Plutus script context is "pre-emptively upgraded" to
include these fields from the start, even though only ADA direct deposits are
supported in Dijkstra.  This ensures scripts written for Dijkstra do not need
recompilation when multi-asset support is added in a future era.

