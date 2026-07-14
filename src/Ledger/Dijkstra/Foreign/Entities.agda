module Ledger.Dijkstra.Foreign.Entities where

open import Class.Convertible
open import Tactic.Derive.Convertible
open import Class.HasHsType
open import Tactic.Derive.HsType

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Gov.Core
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Foreign.Transaction
open import Ledger.Dijkstra.Specification.Entities DummyTransactionStructure
open import Ledger.Dijkstra.Specification.Entities.Properties.Computational DummyTransactionStructure

open Computational

instance
  HsTy-EntitiesEnv = autoHsType EntitiesEnv
    ⊣ withConstructor "MkEntitiesEnv"
    • withName "EntitiesEnv"
    • fieldPrefix "ene"
  Conv-EntitiesEnv = autoConvert EntitiesEnv

  HsTy-SubEntitiesEnv = autoHsType SubEntitiesEnv
    ⊣ withConstructor "MkSubEntitiesEnv"
    • withName "SubEntitiesEnv"
    • fieldPrefix "sene"
  Conv-SubEntitiesEnv = autoConvert SubEntitiesEnv

entities-step : HsType (EntitiesEnv → CertState → Tx TxLevelTop → ComputationResult String CertState)
entities-step = to (compute Computational-ENTITIES)

{-# COMPILE GHC entities-step as entitiesStep #-}

subentities-step : HsType (SubEntitiesEnv → CertState → Tx TxLevelSub → ComputationResult String CertState)
subentities-step = to (compute Computational-SUBENTITIES)

{-# COMPILE GHC subentities-step as subentitiesStep #-}
