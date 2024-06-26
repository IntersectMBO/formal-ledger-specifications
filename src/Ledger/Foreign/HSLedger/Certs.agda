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

  HsTy-PState = autoHsType' PState (⟦_,_⟧ᵖ ↦ "MkPState" ∷ [])
  Conv-PState = autoConvert PState

  HsTy-DelegEnv = autoHsType' DelegEnv (⟦_,_⟧ᵈᵉ ↦ "MkDelegEnv" ∷ [])
  Conv-DelegEnv = autoConvert DelegEnv

  HsTy-CertEnv = autoHsType' CertEnv (⟦_,_,_,_⟧ᶜ ↦ "MkCertEnv" ∷ [])
  Conv-CertEnv = autoConvert CertEnv

  HsTy-DState = autoHsType' DState (⟦_,_,_⟧ᵈ ↦ "MkDState" ∷ [])
  Conv-DState = autoConvert DState

  HsTy-DCert = autoHsType DCert
  Conv-DCert = autoConvert DCert

  HsTy-GState = autoHsType' GState (⟦_,_⟧ᵛ ↦ "MkGState" ∷ [])
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
