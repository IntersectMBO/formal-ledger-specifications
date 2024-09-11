module Ledger.Foreign.HSLedger.Epoch where

open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Ledger
open import Ledger.Foreign.HSLedger.PParams
open import Ledger.Foreign.HSLedger.Ratify

open import Ledger.Epoch it it
open import Ledger.Epoch.Properties it it

instance
  HsTy-Snapshot = autoHsType Snapshot ⊣ withConstructor "MkSnapshot"
  Conv-Snapshot = autoConvert Snapshot

  HsTy-Snapshots = autoHsType Snapshots ⊣ withConstructor "MkSnapshots"
  Conv-Snapshots = autoConvert Snapshots

  HsTy-EpochState = autoHsType EpochState ⊣ withConstructor "MkEpochState"
                                          • fieldPrefix "es"
  Conv-EpochState = autoConvert EpochState

epoch-step : HsType (⊤ → EpochState → Epoch → ComputationResult ⊥ EpochState)
epoch-step = to (compute Computational-EPOCH)

{-# COMPILE GHC epoch-step as epochStep #-}
