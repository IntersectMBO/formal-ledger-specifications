---
source_branch: master
source_path: src/Ledger/Conway/Foreign/Cert.lagda.md
---
```agda
module Ledger.Conway.Foreign.Cert where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Conway.Foreign.BaseTypes hiding (CertEnv; DCert) renaming (⟦_,_,_⟧ᶜˢ to ⟦_,_,_⟧ᶜˢ'; CertState to CertState')
open import Ledger.Conway.Foreign.Certs
open import Ledger.Conway.Conformance.Certs.Properties govStructure
  using ( Computational-CERT
        ; Computational-CERTS
        )
open import Ledger.Conway.Conformance.Certs govStructure

open Computational

instance
  HsTy-CertState = autoHsType CertState ⊣ withConstructor "MkCertState"
  Conv-CertState = autoConvert CertState

  Conv-CertState-CertState' : Convertible CertState CertState'
  Conv-CertState-CertState' .to ⟦ dState , pState , gState ⟧ᶜˢ    = ⟦ to dState , pState , to gState ⟧ᶜˢ'
  Conv-CertState-CertState' .from ⟦ dState , pState , gState ⟧ᶜˢ' = ⟦ from dState , pState , from gState ⟧ᶜˢ

certs-step : HsType (CertEnv → CertState → List DCert → ComputationResult String CertState)
certs-step = to (compute Computational-CERTS)

{-# COMPILE GHC certs-step as certsStep #-}

cert-step : HsType (CertEnv → CertState → DCert → ComputationResult String CertState)
cert-step = to (compute Computational-CERT)

{-# COMPILE GHC cert-step as certStep #-}
```
