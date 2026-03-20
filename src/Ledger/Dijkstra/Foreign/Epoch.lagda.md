---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Epoch.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Epoch where

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
open import Ledger.Dijkstra.Foreign.Gov
open import Ledger.Dijkstra.Foreign.Ratify
open import Ledger.Dijkstra.Foreign.Rewards
open import Ledger.Dijkstra.Foreign.Utxo
open import Ledger.Dijkstra.Foreign.Ledger
open import Ledger.Dijkstra.Specification.Epoch it DummyAbstractFunctions
open import Ledger.Dijkstra.Specification.Epoch.Properties.Computational it DummyAbstractFunctions

open Computational

instance
  HsTy-EpochState = autoHsType EpochState ⊣ withConstructor "MkEpochState"
                                            • fieldPrefix "eps"
  Conv-EpochState = autoConvert EpochState

epoch-step : HsType (⊤ → EpochState → Epoch → ComputationResult ⊥ EpochState)
epoch-step = to (compute Computational-EPOCH)

{-# COMPILE GHC epoch-step as epochStep #-}
```
