module Ledger.Foreign.HSLedger.Certs where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Gov

import Ledger.Foreign.LedgerTypes as F
import Foreign.Haskell.Pair as F

open import Ledger.Certs.Properties HSGovStructure
open import Ledger.Certs.Haskell.Properties HSGovStructure

instance
  _ = Convertible-Refl {String}

  Convertible-PState : ConvertibleType PState F.PState
  Convertible-PState = autoConvertible

  Convertible-DelegEnv : Convertible DelegEnv F.DelegEnv
  Convertible-DelegEnv = autoConvertible

  Convertible-DelegEnv' : Convertible DelegEnv' F.DelegEnv'
  Convertible-DelegEnv' = autoConvertible

  Convertible-CertEnv : ConvertibleType CertEnv F.CertEnv
  Convertible-CertEnv = autoConvertible

  Convertible-CertEnv' : ConvertibleType CertEnv' F.CertEnv'
  Convertible-CertEnv' = autoConvertible

deleg-step : F.DelegEnv → F.DState → F.TxCert → F.ComputationResult String F.DState
deleg-step = to (compute Computational-DELEG)

{-# COMPILE GHC deleg-step as delegStep #-}

pool-step : F.PParams → F.PState → F.TxCert → F.ComputationResult String F.PState
pool-step = to (compute Computational-POOL)

{-# COMPILE GHC pool-step as poolStep #-}

govcert-step : F.CertEnv → F.GState → F.TxCert → F.ComputationResult String F.GState
govcert-step = to (compute Computational-GOVCERT)

{-# COMPILE GHC govcert-step as govCertStep #-}

deleg-step' : F.DelegEnv' → F.DState' → F.TxCert → F.ComputationResult String F.DState'
deleg-step' = to (compute Computational-DELEG')
{-# COMPILE GHC deleg-step' as delegStep' #-}

govcert-step' : F.CertEnv' → F.GState' → F.TxCert → F.ComputationResult String F.GState'
govcert-step' = to (compute Computational-GOVCERT')
{-# COMPILE GHC govcert-step' as govCertStep' #-}
