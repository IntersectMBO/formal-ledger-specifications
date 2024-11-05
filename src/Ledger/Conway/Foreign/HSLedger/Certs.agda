module Ledger.Conway.Foreign.HSLedger.Certs where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes hiding (DState; CertEnv; GState)
open import Ledger.Conway.Foreign.HSLedger.Gov.Core
open import Ledger.Conway.Foreign.HSLedger.PParams

open import Ledger.Conway.Conformance.Certs govStructure using (⟦_,_,_,_⟧ᵈ; DState; GState)

open import Ledger.Conway.Conformance.Certs.Properties govStructure
  using ( Computational-DELEG
        ; Computational-GOVCERT
        ; Computational-POOL
        )

open import Ledger.Conway.Conformance.Certs govStructure
  using (⟦_,_⟧ᵈᵉ; CertEnv; ⟦_,_,_,_⟧ᶜ; ⟦_,_,_⟧ᵛ)

instance
  HsTy-PoolParams = autoHsType PoolParams
  Conv-PoolParams = autoConvert PoolParams

  HsTy-DepositPurpose = autoHsType DepositPurpose
  Conv-DepositPurpose = autoConvert DepositPurpose

  HsTy-DelegEnv = autoHsType DelegEnv
    ⊣ withConstructor "MkDelegEnv"
    • withName "DelegEnv"
  Conv-DelegEnv = autoConvert DelegEnv

  HsTy-PState = autoHsType PState
    ⊣ withConstructor "MkPState"
    • fieldPrefix "ps"
  Conv-PState = autoConvert PState

  HsTy-CertEnv = autoHsType CertEnv
    ⊣ withConstructor "MkCertEnv"
    • fieldPrefix "ce"
  Conv-CertEnv = autoConvert CertEnv

  HsTy-DState = autoHsType DState
    ⊣ withConstructor "MkDState"
    • withName "DState"
    • fieldPrefix "ds"
  Conv-DState = autoConvert DState

  HsTy-DCert = autoHsType DCert
  Conv-DCert = autoConvert DCert

  HsTy-GState = autoHsType GState
    ⊣ withConstructor "MkGState"
    • fieldPrefix "gs"
  Conv-GState = autoConvert GState

-- deleg-step : HsType (DelegEnv → DState → DCert → ComputationResult String DState)
-- deleg-step = to (compute Computational-DELEG)

-- {-# COMPILE GHC deleg-step as delegStep #-}

deleg-step : HsType (DelegEnv → DState → DCert → ComputationResult String DState)
deleg-step = to (compute Computational-DELEG)

{-# COMPILE GHC deleg-step as delegStep #-}

pool-step : HsType (PParams → PState → DCert → ComputationResult String PState)
pool-step = to (compute Computational-POOL)

{-# COMPILE GHC pool-step as poolStep #-}

-- govcert-step : HsType (CertEnv → GState → DCert → ComputationResult String GState)
-- govcert-step = to (compute Computational-GOVCERT)

-- {-# COMPILE GHC govcert-step as govCertStep #-}

govcert-step : HsType (CertEnv → GState → DCert → ComputationResult String GState)
govcert-step = to (compute Computational-GOVCERT)

{-# COMPILE GHC govcert-step as govCertStep #-}
