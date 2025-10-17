{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.ScriptPurpose (txs : TransactionStructure) where

open TransactionStructure txs
open import Ledger.Conway.Specification.Certs govStructure

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

