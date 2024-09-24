{-# OPTIONS --safe #-}

open import Prelude

open import Ledger.Types.GovStructure
open import Ledger.Types.CertsStructure

open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Types.LedgerStructure
  (txs : _) (open TransactionStructure txs hiding (CertState))
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Utxo txs abs
open import Ledger.Gov txs
open import Ledger.Delegation govStructure

record LedgerStructure : Type₁ where
  field
    certsStructure : CertsStructure govStructure
  open CertsStructure certsStructure
  field
    LState : Type
    utxoSt : LState → UTxOState
    certSt : LState → CertState
    govSt : LState → GovState
    applyRUpdLState : RewardUpdate → LState → LState
    updateLState : LState → LState
