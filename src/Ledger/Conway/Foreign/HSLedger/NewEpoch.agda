module Ledger.Conway.Foreign.HSLedger.NewEpoch where


open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Epoch
open import Ledger.Conway.Foreign.HSLedger.Rewards

open import Ledger.Conway.Conformance.Epoch it it
open import Ledger.Conway.Conformance.Epoch.Properties it it

open import Ledger.Prelude.Foreign.HSTypes hiding (ComputationResult)

open import Ledger.Prelude.Foreign.Util

instance
  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ NewEpochState)
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
