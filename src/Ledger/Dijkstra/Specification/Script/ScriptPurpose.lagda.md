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
ScriptPurposeData Receive       = Ix × TxOut

record ScriptPurpose : Type where
  constructor ⟦_,_⟧ˢᵖ
  field
    tag   : Tag
    data′ : ScriptPurposeData tag


-- Proposal identity follows the semantic comparator used by indexOfProposal;
-- map uniqueness proofs are deliberately not compared propositionally.
scriptPurposeDataEquals : (tag : Tag) → ScriptPurposeData tag → ScriptPurposeData tag → Bool
scriptPurposeDataEquals Spend = _==_
scriptPurposeDataEquals Mint = _==_
scriptPurposeDataEquals Cert = _==_
scriptPurposeDataEquals Reward = _==_
scriptPurposeDataEquals Vote = _==_
scriptPurposeDataEquals Propose = ==-GovProposal
scriptPurposeDataEquals Guard = _==_
scriptPurposeDataEquals Receive = λ (ix , _) (ix′ , _) → ix == ix′

scriptPurposeEquals : ScriptPurpose → ScriptPurpose → Bool
scriptPurposeEquals (⟦ tag , dat ⟧ˢᵖ) (⟦ tag′ , dat′ ⟧ˢᵖ) with tag ≟ tag′
... | no _ = false
... | yes refl = scriptPurposeDataEquals tag dat dat′

```

Note that `Guard c` always indexes into *the current `tx`'s* `txGuards`:

+  if `tx : TopLevelTx`, it indexes into the top-level guard set's list-view;
+  if `tx : SubLevelTx`, it indexes into the subTx's guard set's list-view.

`Receive (ix , output)` identifies one protected script output in the current
body. The index is the original output index, and the payload contains that
resolved output for the script context. Two identical outputs at different
indices therefore have different purposes, redeemers and execution budgets.
The output map has unique keys, so Receiving identity compares the index.

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
include these fields from the start.  In Dijkstra, direct deposits are
currently ADA-only, so the pre-emptive upgrade here is about the *presence* of
these fields in the script context rather than guaranteeing that the concrete
direct-deposit representation is already the final multi-asset one.

