module Ledger.Foreign.HSLedger.Ledger where

import Ledger.Foreign.LedgerTypes as F
import Foreign.Haskell.Pair as F

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Cert
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Utxo
open import Ledger.Foreign.HSLedger.Gov
open import Ledger.Foreign.HSLedger.Certs

open import Ledger.Ledger HSTransactionStructure HSAbstractFunctions
open import Ledger.Ledger.Properties HSTransactionStructure HSAbstractFunctions

instance
  _ = Convertible-Refl {String}

  Convertible-LEnv : Convertible LEnv F.LEnv
  Convertible-LEnv = autoConvertible

  Convertible-LState : Convertible LState F.LState
  Convertible-LState = autoConvertible

ledger-step : F.LEnv → F.LState → F.Tx → F.ComputationResult String F.LState
ledger-step = to (compute Computational-LEDGER)

{-# COMPILE GHC ledger-step as ledgerStep #-}

ledgers-step : F.LEnv → F.LState → List F.Tx → F.ComputationResult String F.LState
ledgers-step = to (compute Computational-LEDGERS)

{-# COMPILE GHC ledgers-step as ledgersStep #-}
