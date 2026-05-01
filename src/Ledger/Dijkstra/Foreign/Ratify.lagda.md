---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Ratify.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Ratify where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Foreign.Enact
open import Ledger.Dijkstra.Foreign.Gov.Core
open import Ledger.Dijkstra.Foreign.Gov
open import Ledger.Dijkstra.Specification.Ratify DummyGovStructure
open import Ledger.Dijkstra.Specification.Ratify.Properties.Computational it

open Computational

instance
  HsTy-StakeDistrs = autoHsType StakeDistrs ⊣ withConstructor "MkStakeDistrs"
                                              • fieldPrefix "sd"
  Conv-StakeDistrs = autoConvert StakeDistrs

  HsTy-RatifyEnv = autoHsType RatifyEnv ⊣ withConstructor "MkRatifyEnv"
                                          • fieldPrefix "re"
  Conv-RatifyEnv = autoConvert RatifyEnv

  HsTy-RatifyState = autoHsType RatifyState ⊣ withConstructor "MkRatifyState"
                                              • fieldPrefix "rs"
  Conv-RatifyState = autoConvert RatifyState

ratify-step : HsType (RatifyEnv → RatifyState → GovActionID × GovActionState → ComputationResult ⊥ RatifyState)
ratify-step = to (compute Computational-RATIFY)

{-# COMPILE GHC ratify-step as ratifyStep #-}

ratifies-step : HsType (RatifyEnv → RatifyState → List (GovActionID × GovActionState) → ComputationResult ⊥ RatifyState)
ratifies-step = to (compute Computational-RATIFIES)

{-# COMPILE GHC ratifies-step as ratifiesStep #-}
```
