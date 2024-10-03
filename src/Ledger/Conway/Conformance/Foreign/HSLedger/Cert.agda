module Ledger.Conway.Conformance.Foreign.HSLedger.Cert where

open import Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes hiding (CertState; CertEnv; ⟦_,_,_⟧ᶜˢ; DCert)
open import Ledger.Conway.Conformance.Foreign.HSLedger.Certs

open import Ledger.Conway.Conformance.Certs.Properties govStructure
  using ( Computational-CERT
        ; Computational-CERTS
        )

open import Ledger.Conway.Conformance.Certs govStructure

instance
  -- HsTy-CertState = autoHsType' CertState (⟦_,_,_⟧ᶜˢ ↦ "MkCertState" ∷ [])
  -- Conv-CertState = autoConvert CertState

  HsTy-CertState = autoHsType CertState ⊣ withConstructor "MkCertState"
  Conv-CertState = autoConvert CertState

certs-step : HsType (CertEnv → CertState → List DCert → ComputationResult String CertState)
certs-step = to (compute Computational-CERTS)

{-# COMPILE GHC certs-step as certsStep #-}

cert-step : HsType (CertEnv →  CertState → DCert → ComputationResult String CertState)
cert-step = to (compute Computational-CERT)

{-# COMPILE GHC cert-step as certStep #-}
