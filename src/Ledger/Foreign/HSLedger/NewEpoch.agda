module Ledger.Foreign.HSLedger.NewEpoch where

import Ledger.Foreign.LedgerTypes as F

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Ratify
open import Ledger.Foreign.HSLedger.Epoch

open import Ledger.Epoch HSTransactionStructure HSAbstractFunctions
open import Ledger.Epoch.Properties HSTransactionStructure HSAbstractFunctions

instance
  Convertible-NewEpochState : Convertible NewEpochState F.NewEpochState
  Convertible-NewEpochState = autoConvertible

newepoch-step : F.NewEpochEnv → F.NewEpochState → F.Epoch → F.ComputationResult F.Empty F.NewEpochState
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
