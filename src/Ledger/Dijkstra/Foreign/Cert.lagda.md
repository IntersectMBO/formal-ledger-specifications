---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Cert.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Cert where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Certs public
open import Ledger.Dijkstra.Specification.Certs.Properties.Computational DummyGovStructure
  using ( Computational-CERT
        ; Computational-CERTS
        )

open Computational

instance
  HsTy-CertState = autoHsType CertState ⊣ withConstructor "MkCertState"
  Conv-CertState = autoConvert CertState

cert-step : HsType (CertEnv → CertState → DCert → ComputationResult String CertState)
cert-step = to (compute Computational-CERT)

{-# COMPILE GHC cert-step as certStep #-}

certs-step : HsType (CertEnv → CertState → List DCert → ComputationResult String CertState)
certs-step = to (compute Computational-CERTS)

{-# COMPILE GHC certs-step as certsStep #-}
```
