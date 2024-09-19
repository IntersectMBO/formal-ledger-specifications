{-# OPTIONS --safe #-}

open import Prelude using (Type)

open import Ledger.Types.GovStructure

module Ledger.Types.CertsStructure
  (gs : _) (open GovStructure gs)
  where

open import Data.List
open import Ledger.Delegation gs

record StateStructure : Type₁ where
  field
    CertEnv         : Type
    DelegEnv        : Type
    CertState       : Type
    DState          : Type
    ⟦_,_,_,_,_⟧ᶜ    : 
    _⊢_⇀⦇_,CERTS⦈_  : CertEnv → CertState → List DCert → CertState → Type
