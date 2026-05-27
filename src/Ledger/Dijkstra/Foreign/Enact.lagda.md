---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Enact.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Enact where

open import Class.Convertible
open import Class.Convertible.Foreign
open import Tactic.Derive.Convertible
open import Class.HasHsType
open import Class.HasHsType.Foreign
open import Tactic.Derive.HsType

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
