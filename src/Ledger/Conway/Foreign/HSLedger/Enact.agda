open import Data.Rational using (ℚ)
module Ledger.Conway.Foreign.HSLedger.Enact where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Gov.Actions

open import Ledger.Conway.Enact govStructure
open import Ledger.Conway.Gov.Actions.Properties govStructure

instance
  HsTy-EnactState = autoHsType EnactState ⊣ withConstructor "MkEnactState"
                                          • fieldPrefix "es"
  Conv-EnactState = autoConvert EnactState

  HsTy-EnactEnv = autoHsType EnactEnv ⊣ withConstructor "MkEnactEnv"
                                      • fieldPrefix "ee"
  Conv-EnactEnv = autoConvert EnactEnv

enact-step : HsType (EnactEnv → EnactState → GovAction → ComputationResult String EnactState)
enact-step = to (compute Computational-ENACT)

{-# COMPILE GHC enact-step as enactStep #-}
