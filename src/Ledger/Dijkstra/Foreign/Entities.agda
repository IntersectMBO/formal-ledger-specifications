module Ledger.Dijkstra.Foreign.Entities where

open import Class.Convertible
open import Tactic.Derive.Convertible
open import Class.HasHsType
open import Tactic.Derive.HsType

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Gov.Core
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Specification.Entities DummyGovStructure
open import Ledger.Dijkstra.Specification.Entities.Properties.Computational DummyGovStructure

open Computational

record EntitiesEnv' : Type where
  field
    epoch           : Epoch
    pp              : PParams
    votes           : List GovVote'
    withdrawals     : RewardAddress ⇀ Coin
    coldCredentials : ℙ Credential
    directDeposits  : DirectDeposits

instance
  HsTy-EntitiesEnv' = autoHsType EntitiesEnv'
    ⊣ withConstructor "MkEntitiesEnv"
    • withName "EntitiesEnv"
    • fieldPrefix "ce"
  Conv-EntitiesEnv' = autoConvert EntitiesEnv'

  mkEntitiesEnv' : Convertible EntitiesEnv EntitiesEnv'
  mkEntitiesEnv' = λ where
    .to   ee → let module ee = EntitiesEnv ee in record { epoch = ee.epoch ; pp = ee.pp ; votes = to ee.votes ; withdrawals = ee.withdrawals ; coldCredentials = ee.coldCredentials ; directDeposits = ee.directDeposits }
    .from ee → let module ee = EntitiesEnv' ee in record { epoch = ee.epoch ; pp = ee.pp ; votes = from ee.votes ; withdrawals = ee.withdrawals ; coldCredentials = ee.coldCredentials ; directDeposits = ee.directDeposits }

  HsTy-EntitiesEnv = mkHsType EntitiesEnv (HsType EntitiesEnv')
  Conv-EntitiesEnv = mkEntitiesEnv' ⨾ Conv-EntitiesEnv'
