module Ledger.Foreign.HSLedger.Ratify where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Gov

open import Ledger.Ratify it
open import Ledger.Ratify.Properties it

instance
  HsTy-StakeDistrs = autoHsType StakeDistrs
  Conv-StakeDistrs = autoConvert StakeDistrs

  HsTy-RatifyEnv = autoHsType RatifyEnv
  Conv-RatifyEnv = autoConvert RatifyEnv

  HsTy-RatifyState = autoHsType RatifyState ⊣ withConstructor "MkRatifyState"
  Conv-RatifyState = autoConvert RatifyState

ratify-step : HsType (RatifyEnv → RatifyState → List (GovActionID × GovActionState) → ComputationResult ⊥ RatifyState)
ratify-step = to (compute Computational-RATIFY)

{-# COMPILE GHC ratify-step as ratifyStep #-}
