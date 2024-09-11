module Ledger.Foreign.HSLedger.Cert where

open import Ledger.Foreign.HSLedger.BaseTypes hiding (CertState; CertEnv; ⟦_,_,_⟧ᶜˢ)
open import Ledger.Foreign.HSLedger.Certs

open import Ledger.Certs.Haskell.Properties govStructure
  renaming ( Computational-CERT  to Computational-CERT'
           ; Computational-CERTS to Computational-CERTS' )

open import Ledger.Certs.Haskell govStructure

instance
  -- HsTy-CertState = autoHsType' CertState (⟦_,_,_⟧ᶜˢ ↦ "MkCertState" ∷ [])
  -- Conv-CertState = autoConvert CertState

  HsTy-CertState = autoHsType CertState ⊣ withConstructor "MkCertState"
  Conv-CertState = autoConvert CertState

certs-step' : HsType (CertEnv → CertState → List DCert → ComputationResult String CertState)
certs-step' = to (compute Computational-CERTS')

{-# COMPILE GHC certs-step' as certsStep' #-}

cert-step' : HsType (CertEnv →  CertState → DCert → ComputationResult String CertState)
cert-step' = to (compute Computational-CERT')

{-# COMPILE GHC cert-step' as certStep' #-}
