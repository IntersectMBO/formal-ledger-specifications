---
source_branch: master
source_path: src/Ledger.Core.Specification.Transaction.lagda
---

# Transactions {#sec:transactions}

A transaction consists of a transaction body, a collection of witnesses
and some optional auxiliary data.

This section collects the **era-dependent** types and functions that are used to
define transactions in the Conway era.

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Core.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Specification.Transaction
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Certs govStructure
```
-->

## Transaction Types

We now describe the key components of the transaction body in the Conway era.

+  `txIns`{.AgdaField} denotes a set of transaction inputs; each input consists of a
   transaction id and an index that points to a unique output from a previous transaction.

+  `txOuts`{.AgdaField} denotes an indexed collection of transaction outputs; each output
   consists of an address and a coin value.

+  `txFee`{.AgdaField} denotes a transaction fee to be added to the fee pot.

+  `txId`{.AgdaField} denotes the hash of the serialized form of the
   transaction—the form in which the transaction is included in a block.

In addition to these, the Conway era introduces some new fields to the transaction body.

+  `txGovVotes`{.AgdaField} denotes the list of votes for governance actions.

+  `txGovProposals`{.AgdaField} denotes the list of governance proposals.

+  `txDonation`{.AgdaField} denotes the amount of `Coin`{.AgdaFunction} to donate to
   treasury, e.g., to return funds to the treasury after a governance action.

+  `currentTreasury`{.AgdaField} denotes the current value of the treasury; this serves
   as a precondition to executing Plutus scripts that access the value of the treasury.


```agda
record TxBody : Type where
  field
    txIns                : ℙ TxIn
    refInputs            : ℙ TxIn
    collateralInputs     : ℙ TxIn
    txOuts               : Ix ⇀ TxOut
    txId                 : TxId
    txCerts              : List DCert
    txFee                : Fees
    txWithdrawals        : Withdrawals
    txVldt               : Maybe Slot × Maybe Slot
    txADhash             : Maybe ADHash
    txDonation           : Donations
    txGovVotes           : List GovVote
    txGovProposals       : List GovProposal
    txNetworkId          : Maybe Network
    currentTreasury      : Maybe Treasury
    mint                 : Value
    reqSignerHashes      : ℙ KeyHash
    scriptIntegrityHash  : Maybe ScriptHash
    -- txup              : Maybe Update   -- deprecated; leave for now
```

<!--
```agda
record HasTxBody {a} (A : Type a) : Type a where
  field TxBodyOf : A → TxBody
open HasTxBody  ⦃...⦄ public

record HasDCerts {a} (A : Type a) : Type a where
  field DCertsOf : A → List DCert
open HasDCerts ⦃...⦄ public

record HasGovProposals {a} (A : Type a) : Type a where
  field GovProposalsOf  : A → List GovProposal
open HasGovProposals ⦃...⦄ public

record HasTxId {a} (A : Type a) : Type a where
  field TxIdOf    : A → TxId
open HasTxId ⦃...⦄ public

instance
  HasDonations-TxBody : HasDonations TxBody
  HasDonations-TxBody .DonationsOf = TxBody.txDonation
```
-->


```agda
record Tx : Type where
  field
    body     : TxBody
    wits     : TxWitnesses
    txsize   : ℕ
    isValid  : Bool
    txAD     : Maybe AuxiliaryData
```

<!--
```agda
instance
  HasTxBody-Tx : HasTxBody Tx
  HasTxBody-Tx .TxBodyOf = Tx.body

  HasFees-Tx : HasFees Tx
  HasFees-Tx .FeesOf = TxBody.txFee ∘ TxBodyOf

  HasDCerts-Tx : HasDCerts Tx
  HasDCerts-Tx .DCertsOf = TxBody.txCerts ∘ TxBodyOf

  HasGovProposals-Tx : HasGovProposals Tx
  HasGovProposals-Tx .GovProposalsOf = TxBody.txGovProposals ∘ TxBodyOf

  HasWithdrawals-TxBody : HasWithdrawals TxBody
  HasWithdrawals-TxBody .WithdrawalsOf = TxBody.txWithdrawals

  HasWithdrawals-Tx : HasWithdrawals Tx
  HasWithdrawals-Tx .WithdrawalsOf = WithdrawalsOf ∘ TxBodyOf

  HasTxId-Tx : HasTxId Tx
  HasTxId-Tx .TxIdOf = TxBody.txId ∘ TxBodyOf

  HasDonations-Tx : HasDonations Tx
  HasDonations-Tx .DonationsOf = DonationsOf ∘ TxBodyOf
```
-->


## Transaction Functions


```agda
refScripts : Tx → UTxO → ℙ Script
refScripts tx utxo =
  mapPartial (proj₂ ∘ proj₂ ∘ proj₂) (range (utxo ∣ (txIns ∪ refInputs)))
  where open Tx; open TxBody (tx .body)

txscripts : Tx → UTxO → ℙ Script
txscripts tx utxo = scripts (tx .wits) ∪ refScripts tx utxo
  where open Tx; open TxWitnesses

lookupScriptHash : ScriptHash → Tx → UTxO → Maybe Script
lookupScriptHash sh tx utxo = lookupᵐ? m sh
  where m = setToMap (mapˢ < hash , id > (txscripts tx utxo))
```

