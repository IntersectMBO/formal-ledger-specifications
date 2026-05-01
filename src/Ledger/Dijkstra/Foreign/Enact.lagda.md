---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Enact.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Enact where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Gov.Actions
open import Ledger.Dijkstra.Specification.Enact DummyGovStructure
open import Ledger.Dijkstra.Specification.Enact.Properties.Computational DummyGovStructure

open Computational

instance
  HsTy-EnactEnv = autoHsType EnactEnv ⊣ withConstructor "MkEnactEnv"
                                       • fieldPrefix "ee"
  Conv-EnactEnv = autoConvert EnactEnv

  HsTy-EnactState = autoHsType EnactState ⊣ withConstructor "MkEnactState"
                                           • fieldPrefix "es"
  Conv-EnactState = autoConvert EnactState

enact-step : HsType (EnactEnv → EnactState → GovAction → ComputationResult String EnactState)
enact-step = to (compute Computational-ENACT)

{-# COMPILE GHC enact-step as enactStep #-}
```
