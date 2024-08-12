module Ledger.Foreign.HSLedger.Enact where

open import Ledger.Foreign.HSLedger.BaseTypes

import Ledger.Foreign.LedgerTypes as F

open import Ledger.Types.GovStructure

HSGovStructure : GovStructure
HSGovStructure = TransactionStructure.govStructure HSTransactionStructure
instance _ = HSGovStructure

open GovStructure HSGovStructure public

open import Ledger.Enact HSGovStructure
open import Ledger.GovernanceActions.Properties HSGovStructure

instance
  _ = Convertible-Refl {String}

  Convertible-EnactState : Convertible EnactState F.EnactState
  Convertible-EnactState = autoConvertible

  Convertible-EnactEnv : Convertible EnactEnv F.EnactEnv
  Convertible-EnactEnv = autoConvertible

  Convertible-GovAction : Convertible GovAction F.GovAction
  Convertible-GovAction = autoConvertible

enact-step : F.EnactEnv → F.EnactState → F.GovAction → F.ComputationResult String F.EnactState
enact-step = to (compute Computational-ENACT)

{-# COMPILE GHC enact-step as enactStep #-}
