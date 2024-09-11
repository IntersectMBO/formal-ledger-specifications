module Ledger.Foreign.HSLedger.Certs where

open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.BaseTypes hiding (DState; CertEnv; GState)
open import Ledger.Foreign.HSLedger.Gov
open import Ledger.Foreign.HSLedger.PParams

open import Ledger.Certs.Properties govStructure
open import Ledger.Certs.Haskell govStructure using (⟦_,_,_,_⟧ᵈ; DState; GState)

open import Ledger.Certs.Haskell.Properties govStructure
  renaming ( Computational-DELEG   to Computational-DELEG'
           ; Computational-GOVCERT to Computational-GOVCERT' )
  hiding   ( Computational-POOL )

open import Ledger.Certs.Haskell govStructure
  renaming ( DelegEnv to DelegEnv')
  using (⟦_,_⟧ᵈᵉ; CertEnv; ⟦_,_,_,_⟧ᶜ; ⟦_,_,_⟧ᵛ)

instance
  HsTy-PoolParams = autoHsType PoolParams
  Conv-PoolParams = autoConvert PoolParams

  HsTy-DepositPurpose = autoHsType DepositPurpose
  Conv-DepositPurpose = autoConvert DepositPurpose

  HsTy-DelegEnv' = autoHsType DelegEnv' ⊣ withConstructor "MkDelegEnv'"
  Conv-DelegEnv' = autoConvert DelegEnv'

  -- HsTy-CertEnv = autoHsType' CertEnv (⟦_,_,_,_,_⟧ᶜ ↦ "MkCertEnv" ∷ [])
  -- Conv-CertEnv = autoConvert CertEnv

  -- HsTy-DState = autoHsType' DState (⟦_,_,_⟧ᵈ ↦ "MkDState" ∷ [])
  -- Conv-DState = autoConvert DState

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

  -- HsTy-GState = autoHsType' GState (⟦_,_⟧ᵛ ↦ "MkGState" ∷ [])
  -- Conv-GState = autoConvert GState

  HsTy-GState = autoHsType GState ⊣ withConstructor "MkGState"
                                  • fieldPrefix "gs"
  Conv-GState = autoConvert GState

-- deleg-step : HsType (DelegEnv → DState → DCert → ComputationResult String DState)
-- deleg-step = to (compute Computational-DELEG)

-- {-# COMPILE GHC deleg-step as delegStep #-}

deleg-step' : HsType (DelegEnv' → DState' → DCert → ComputationResult String DState')
deleg-step' = to (compute Computational-DELEG')

{-# COMPILE GHC deleg-step' as delegStep' #-}

pool-step : HsType (PParams → PState → DCert → ComputationResult String PState)
pool-step = to (compute Computational-POOL)

{-# COMPILE GHC pool-step as poolStep #-}

-- govcert-step : HsType (CertEnv → GState → DCert → ComputationResult String GState)
-- govcert-step = to (compute Computational-GOVCERT)

-- {-# COMPILE GHC govcert-step as govCertStep #-}

govcert-step' : HsType (CertEnv → GState → DCert → ComputationResult String GState)
govcert-step' = to (compute Computational-GOVCERT')

{-# COMPILE GHC govcert-step' as govCertStep' #-}
