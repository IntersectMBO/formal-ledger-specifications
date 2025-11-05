{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Conformance.Rewards
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Prelude

open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Conway.Conformance.Utxo txs abs

open import Ledger.Conway.Specification.Rewards txs abs
  hiding (_⊢_⇀⦇_,SNAP⦈_) public

private variable
  lstate : LState
  mark set go : Snapshot
  feeSS : Coin

data _⊢_⇀⦇_,SNAP⦈_ : LState → Snapshots → ⊤ → Snapshots → Type where
  SNAP : let open LState lstate
             open UTxOState utxoSt
             open CertState certState
             stake = stakeDistr utxo (record { DState dState }) pState
    in
    lstate ⊢ ⟦ mark , set , go , feeSS ⟧ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , fees ⟧
