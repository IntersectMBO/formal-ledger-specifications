---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/NewEpoch.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.NewEpoch where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Epoch
open import Ledger.Dijkstra.Foreign.Rewards
open import Ledger.Dijkstra.Specification.Epoch it DummyAbstractFunctions
open import Ledger.Dijkstra.Specification.Epoch.Properties.Computational it DummyAbstractFunctions

open Computational

instance
  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
                                                  • fieldPrefix "nes"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ NewEpochState)
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
```
