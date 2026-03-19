---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/Enact.lagda.md
---
```agda
module Ledger.Conway.Foreign.HSLedger.Enact where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Gov.Actions

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Enact.Properties.Computational govStructure

open Computational

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
```
