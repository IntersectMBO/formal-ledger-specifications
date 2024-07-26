module Ledger.Foreign.HSLedger.Ratify where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Gov

open import Ledger.Ratify HSTransactionStructure
open import Ledger.Ratify.Properties HSTransactionStructure

import Ledger.Foreign.LedgerTypes as F
import Foreign.Haskell.Pair as F

instance
  _ = Convertible-Refl {Bool}

  Convertible-StakeDistrs : Convertible StakeDistrs F.StakeDistrs
  Convertible-StakeDistrs = autoConvertible

  Convertible-RatifyEnv : Convertible RatifyEnv F.RatifyEnv
  Convertible-RatifyEnv = autoConvertible

  Convertible-RatifyState : Convertible RatifyState F.RatifyState
  Convertible-RatifyState = autoConvertible

ratify-step : F.RatifyEnv → F.RatifyState → List (F.Pair F.GovActionID F.GovActionState) → F.ComputationResult F.Empty F.RatifyState
ratify-step = to (compute Computational-RATIFY)

{-# COMPILE GHC ratify-step as ratifyStep #-}
