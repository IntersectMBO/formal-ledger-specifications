---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Certs.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Certs where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Gov.Core
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Specification.Certs.Properties.Computational DummyGovStructure
  using ( Computational-DELEG
        ; Computational-POOL
        ; Computational-GOVCERT
        )

open Computational

instance
  HsTy-StakePoolParams = autoHsType StakePoolParams
  Conv-StakePoolParams = autoConvert StakePoolParams

  HsTy-DCert = autoHsType DCert
  Conv-DCert = autoConvert DCert

  HsTy-DelegEnv = autoHsType DelegEnv
    ⊣ withConstructor "MkDelegEnv"
    • fieldPrefix "de"
    • withName "DelegEnv"
  Conv-DelegEnv = autoConvert DelegEnv

  HsTy-PState = autoHsType PState
    ⊣ withConstructor "MkPState"
    • fieldPrefix "ps"
  Conv-PState = autoConvert PState

  HsTy-DState = autoHsType DState
    ⊣ withConstructor "MkDState"
    • withName "DState"
    • fieldPrefix "ds"
  Conv-DState = autoConvert DState

  HsTy-GState = autoHsType GState
    ⊣ withConstructor "MkGState"
    • fieldPrefix "gs"
  Conv-GState = autoConvert GState

-- CertEnv needs a wrapper because the votes field uses GovVote
-- which requires non-trivial conversion through GovVote'.

record CertEnv' : Type where
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote'
    wdrls     : RewardAddress ⇀ Coin
    coldCreds : ℙ Credential

instance
  HsTy-CertEnv' = autoHsType CertEnv'
    ⊣ withConstructor "MkCertEnv"
    • withName "CertEnv"
    • fieldPrefix "ce"
  Conv-CertEnv' = autoConvert CertEnv'

  mkCertEnv' : Convertible CertEnv CertEnv'
  mkCertEnv' = λ where
    .to   ce → let module ce = CertEnv ce in record { epoch = ce.epoch ; pp = ce.pp ; votes = to ce.votes ; wdrls = ce.wdrls ; coldCreds = ce.coldCreds }
    .from ce → let module ce = CertEnv' ce in record { epoch = ce.epoch ; pp = ce.pp ; votes = from ce.votes ; wdrls = ce.wdrls ; coldCreds = ce.coldCreds }

  HsTy-CertEnv = MkHsType CertEnv (HsType CertEnv')
  Conv-CertEnv = mkCertEnv' ⨾ Conv-CertEnv'

-- Computational step functions

deleg-step : HsType (DelegEnv → DState → DCert → ComputationResult String DState)
deleg-step = to (compute Computational-DELEG)

{-# COMPILE GHC deleg-step as delegStep #-}

pool-step : HsType (PParams → PState → DCert → ComputationResult String PState)
pool-step = to (compute Computational-POOL)

{-# COMPILE GHC pool-step as poolStep #-}

govcert-step : HsType (CertEnv → GState → DCert → ComputationResult String GState)
govcert-step = to (compute Computational-GOVCERT)

{-# COMPILE GHC govcert-step as govCertStep #-}
```
