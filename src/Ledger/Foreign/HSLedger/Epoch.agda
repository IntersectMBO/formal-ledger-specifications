module Ledger.Foreign.HSLedger.Epoch where

import Ledger.Foreign.LedgerTypes as F

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Ratify
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Ledger

open import Ledger.Epoch HSTransactionStructure HSAbstractFunctions
open import Ledger.Epoch.Properties HSTransactionStructure HSAbstractFunctions

instance
  Convertible-EpochState : Convertible EpochState F.EpochState
  Convertible-EpochState = autoConvertible

  Convertible-NewEpochEnv : Convertible NewEpochEnv F.NewEpochEnv
  Convertible-NewEpochEnv = autoConvertible

epoch-step : F.NewEpochEnv → F.EpochState → F.Epoch → F.ComputationResult F.Empty F.EpochState
epoch-step = to (compute Computational-EPOCH)

{-# COMPILE GHC epoch-step as epochStep #-}
