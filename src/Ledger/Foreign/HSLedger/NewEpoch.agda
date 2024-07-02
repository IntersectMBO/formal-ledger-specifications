module Ledger.Foreign.HSLedger.NewEpoch where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Ratify
open import Ledger.Foreign.HSLedger.Epoch

open import Ledger.Epoch it it
open import Ledger.Epoch.Properties it it

instance
  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ NewEpochState)
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
