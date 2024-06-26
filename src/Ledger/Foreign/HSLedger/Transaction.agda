module Ledger.Foreign.HSLedger.Transaction where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.Certs
open import Ledger.Foreign.HSLedger.Gov
open import Ledger.Foreign.HSLedger.PParams

instance
  HsTy-Tag = autoHsType Tag
  Conv-Tag = autoConvert Tag

  HsTy-Timelock = autoHsType Timelock
  -- The termination checker doesn't like recursion through lists of recursive structures, or that
  -- we do all the matching in a rhs pattern lambda. Telling the termination checker to go away does
  -- work though.
  {-# TERMINATING #-}
  Conv-Timelock = autoConvert Timelock

  HsTy-TxWitnessess = autoHsType TxWitnesses
  Conv-TxWitnessess = autoConvert TxWitnesses

  HsTy-TxBody = autoHsType TxBody
  Conv-TxBody = autoConvert TxBody

  HsTy-Tx = autoHsType Tx
  Conv-Tx = autoConvert Tx
