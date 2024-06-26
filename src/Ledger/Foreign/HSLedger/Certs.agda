module Ledger.Foreign.HSLedger.Certs where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Gov
open import Ledger.Foreign.HSLedger.PParams

open import Ledger.Certs.Properties govStructure

instance
  HsTy-PoolParams = autoHsType PoolParams
  Conv-PoolParams = autoConvert PoolParams

  HsTy-PState = autoHsType PState ⊣ withConstructor "MkPState"
                                  • fieldPrefix "ps"
  Conv-PState = autoConvert PState

  HsTy-DelegEnv = autoHsType DelegEnv ⊣ withConstructor "MkDelegEnv"
                                      • fieldPrefix "de"
  Conv-DelegEnv = autoConvert DelegEnv

  HsTy-CertEnv = autoHsType CertEnv ⊣ withConstructor "MkCertEnv"
                                    • fieldPrefix "ce"
  Conv-CertEnv = autoConvert CertEnv

  HsTy-DState = autoHsType DState ⊣ withConstructor "MkDState"
                                  • fieldPrefix "ds"
  Conv-DState = autoConvert DState

  HsTy-DCert = autoHsType DCert
  Conv-DCert = autoConvert DCert

  HsTy-GState = autoHsType GState ⊣ withConstructor "MkGState"
                                  • fieldPrefix "gs"
  Conv-GState = autoConvert GState

deleg-step : HsType (DelegEnv → DState → DCert → ComputationResult String DState)
deleg-step = to (compute Computational-DELEG)

{-# COMPILE GHC deleg-step as delegStep #-}

pool-step : HsType (PParams → PState → DCert → ComputationResult String PState)
pool-step = to (compute Computational-POOL)

{-# COMPILE GHC pool-step as poolStep #-}

govcert-step : HsType (CertEnv → GState → DCert → ComputationResult String GState)
govcert-step = to (compute Computational-GOVCERT)

{-# COMPILE GHC govcert-step as govCertStep #-}
