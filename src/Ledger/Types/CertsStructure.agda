{-# OPTIONS --safe #-}

open import Prelude using (Type)

open import Ledger.Types.GovStructure

module Ledger.Types.CertsStructure
  (gs : _) (open GovStructure gs)
  where

open import Data.List
open import Ledger.Delegation gs
open import Ledger.GovernanceActions gs
open import Ledger.Prelude

record CertsStructure : Type₁ where
  field
    CertEnv         : Type
    DelegEnv        : Type

    DState          : Type
    stakeDelegs     : DState → Credential ⇀ KeyHash
    rewards         : DState → Credential ⇀ Coin
    voteDelegs      : DState → Credential ⇀ VDeleg

    PState          : Type
    retiring       : PState → KeyHash ⇀ Epoch

    CertState       : Type
    dState          : CertState → DState
    pState          : CertState → PState
    gState          : CertState → GState

    _⊢_⇀⦇_,CERTS⦈_  : CertEnv → CertState → List DCert → CertState → Type
