module Ledger.Foreign.HSLedger.Cert where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Gov
open import Ledger.Foreign.HSLedger.Certs
open import Ledger.Foreign.HSLedger.Enact

open import Ledger.Certs.Properties govStructure

instance
  HsTy-CertState = autoHsType CertState ⊣ withConstructor "MkCertState"
  Conv-CertState = autoConvert CertState

certs-step : HsType (CertEnv → CertState → List DCert → ComputationResult String CertState)
certs-step = to (compute Computational-CERTS)

{-# COMPILE GHC certs-step as certsStep #-}

cert-step : HsType (CertEnv →  CertState → DCert → ComputationResult String CertState)
cert-step = to (compute Computational-CERT)

{-# COMPILE GHC cert-step as certStep #-}
