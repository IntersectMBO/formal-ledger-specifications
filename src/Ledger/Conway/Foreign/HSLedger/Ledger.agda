module Ledger.Conway.Foreign.HSLedger.Ledger where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Certs
open import Ledger.Conway.Foreign.HSLedger.Enact
open import Ledger.Conway.Foreign.HSLedger.Gov
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Transaction
open import Ledger.Conway.Foreign.HSLedger.Utxo
open import Ledger.Conway.Foreign.HSLedger.Cert

open import Ledger.Conway.Conformance.Ledger it it
open import Ledger.Conway.Conformance.Ledger.Properties it it

instance
  HsTy-LEnv = autoHsType LEnv ⊣ withConstructor "MkLEnv"
                              • fieldPrefix "le"
  Conv-LEnv = autoConvert LEnv

  HsTy-LState = autoHsType LState ⊣ withConstructor "MkLState"
  Conv-LState = autoConvert LState

ledger-step : HsType (LEnv → LState → Tx → ComputationResult String LState)
ledger-step = to (compute Computational-LEDGER)

{-# COMPILE GHC ledger-step as ledgerStep #-}

ledgers-step : HsType (LEnv → LState → List Tx → ComputationResult String LState)
ledgers-step = to (compute Computational-LEDGERS)

{-# COMPILE GHC ledgers-step as ledgersStep #-}
