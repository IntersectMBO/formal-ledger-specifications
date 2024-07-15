module Ledger.Foreign.HSLedger.Cert where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Certs
open import Ledger.Foreign.HSLedger.Enact

import Ledger.Foreign.LedgerTypes as F
import Foreign.Haskell.Pair as F

open import Ledger.Certs.Properties HSGovStructure

instance
  _ = Convertible-Refl {String}

  Convertible-CertState : ConvertibleType CertState F.CertState
  Convertible-CertState = autoConvertible

certs-step : F.CertEnv → F.CertState → List F.TxCert → F.ComputationResult String F.CertState
certs-step = to (compute Computational-CERTS)

{-# COMPILE GHC certs-step as certsStep #-}

cert-step : F.CertEnv →  F.CertState → F.TxCert → F.ComputationResult String F.CertState
cert-step = to (compute Computational-CERT)

{-# COMPILE GHC cert-step as certStep #-}
