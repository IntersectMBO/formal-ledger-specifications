module Ledger.Foreign.HSLedger.Enact where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.PParams

open import Ledger.Types.GovStructure

open import Ledger.Enact govStructure
open import Ledger.GovernanceActions.Properties govStructure

instance
  HsTy-EnactState = autoHsType EnactState ⊣ withConstructor "MkEnactState"
                                          • fieldPrefix "es"
  Conv-EnactState = autoConvert EnactState

  HsTy-EnactEnv = autoHsType EnactEnv ⊣ withConstructor "MkEnactEnv"
                                      • fieldPrefix "ee"
  Conv-EnactEnv = autoConvert EnactEnv

  HsTy-GovAction = autoHsType GovAction
  Conv-GovAction = autoConvert GovAction

enact-step : HsType (EnactEnv → EnactState → GovAction → ComputationResult String EnactState)
enact-step = to (compute Computational-ENACT)

{-# COMPILE GHC enact-step as enactStep #-}
