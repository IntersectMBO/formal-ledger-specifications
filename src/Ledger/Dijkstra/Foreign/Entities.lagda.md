---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Entities.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Entities where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Gov.Core
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Specification.Entities.Properties.Computational DummyGovStructure

open Computational

entities-step : HsType (CertEnv → CertState → List DCert → ComputationResult String CertState)
entities-step = to (compute Computational-ENTITIES)

{-# COMPILE GHC entities-step as entitiesStep #-}
```
