module Ledger.Conway.Conformance.Foreign.HSLedger.Transaction where

open import Ledger.Conway.Conformance.Foreign.HSLedger.Address
open import Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Conformance.Foreign.HSLedger.Certs
open import Ledger.Conway.Conformance.Foreign.HSLedger.Gov
open import Ledger.Conway.Conformance.Foreign.HSLedger.PParams

instance
  HsTy-Tag = autoHsType Tag
  Conv-Tag = autoConvert Tag

  HsTy-Timelock = autoHsType Timelock
  -- The termination checker doesn't like recursion through lists of recursive structures, or that
  -- we do all the matching in a rhs pattern lambda. Telling the termination checker to go away does
  -- work though.
  {-# TERMINATING #-}
  Conv-Timelock = autoConvert Timelock

  HsTy-TxWitnessess = autoHsType TxWitnesses ⊣ withConstructor "MkTxWitnesses"
  Conv-TxWitnessess = autoConvert TxWitnesses

  HsTy-TxBody = autoHsType TxBody ⊣ withConstructor "MkTxBody"
  Conv-TxBody = autoConvert TxBody

  HsTy-Tx = autoHsType Tx ⊣ withConstructor "MkTx"
  Conv-Tx = autoConvert Tx

unquoteDecl = do
  hsTypeAlias TxId
  hsTypeAlias Ix
  hsTypeAlias TxIn
  hsTypeAlias P1Script
  hsTypeAlias P2Script ⊣ withName "P2Script"
  hsTypeAlias Script
  hsTypeAlias Datum
  hsTypeAlias DataHash ⊣ withName "DataHash"
  hsTypeAlias Value
  hsTypeAlias TxOut
  hsTypeAlias RdmrPtr
  hsTypeAlias ScriptHash
  hsTypeAlias AuxiliaryData
  hsTypeAlias Wdrl
