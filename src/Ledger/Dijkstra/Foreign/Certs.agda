module Ledger.Dijkstra.Foreign.Certs where

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
open import Ledger.Dijkstra.Specification.Certs.Properties.Computational DummyGovStructure
  using ( Computational-DELEG
        ; Computational-POOL
        ; Computational-GOVCERT
        )

open Computational

instance
  HsTy-StakePoolParams = autoHsType StakePoolParams
  Conv-StakePoolParams = autoConvert StakePoolParams

  HsTy-DCert = autoHsType DCert
  Conv-DCert = autoConvert DCert

  HsTy-DelegEnv = autoHsType DelegEnv
    ⊣ withConstructor "MkDelegEnv"
    • fieldPrefix "de"
    • withName "DelegEnv"
  Conv-DelegEnv = autoConvert DelegEnv

  HsTy-GovCertEnv = autoHsType GovCertEnv
    ⊣ withConstructor "MkGovCertEnv"
    • fieldPrefix "gce"
  Conv-GovCertEnv = autoConvert GovCertEnv

  HsTy-PState = autoHsType PState
    ⊣ withConstructor "MkPState"
    • fieldPrefix "ps"
  Conv-PState = autoConvert PState

  HsTy-DState = autoHsType DState
    ⊣ withConstructor "MkDState"
    • withName "DState"
    • fieldPrefix "ds"
  Conv-DState = autoConvert DState

  HsTy-GState = autoHsType GState
    ⊣ withConstructor "MkGState"
    • fieldPrefix "gs"
  Conv-GState = autoConvert GState

  HsTy-CertEnv = autoHsType CertEnv
    ⊣ withConstructor "MkCertEnv"
    • withName "CertEnv"
    • fieldPrefix "ce"
  Conv-CertEnv = autoConvert CertEnv

-- Computational step functions

deleg-step : HsType (DelegEnv → DState → DCert → ComputationResult String DState)
deleg-step = to (compute Computational-DELEG)

{-# COMPILE GHC deleg-step as delegStep #-}

pool-step : HsType (PParams → PState → DCert → ComputationResult String PState)
pool-step = to (compute Computational-POOL)

{-# COMPILE GHC pool-step as poolStep #-}

govcert-step : HsType (GovCertEnv → GState → DCert → ComputationResult String GState)
govcert-step = to (compute Computational-GOVCERT)

{-# COMPILE GHC govcert-step as govCertStep #-}
