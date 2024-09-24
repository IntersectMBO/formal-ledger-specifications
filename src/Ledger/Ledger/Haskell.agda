{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Haskell
  (txs : _) (open TransactionStructure txs using (govStructure; Tx; TxBody; epoch))
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs
open import Ledger.Gov txs
open import Ledger.Certs.Haskell govStructure
open import Ledger.Ledger txs abs
  using (LEnv; txgov)
open import Ledger.Types.Epoch

record LState : Type where
  constructor ⟦_,_,_⟧ˡ
  field
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  govSt' : GovState
  certState' : CertState
  tx : Tx

open Tx

data
  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type
  where
  LEDGER-V : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ true
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt' , certState' ⟧ˡ

  LEDGER-I : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ false
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt , certState ⟧ˡ

pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)

_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
