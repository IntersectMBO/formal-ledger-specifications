
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Conway.Conformance.Gov txs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Utxow txs abs
open import Ledger.Conway.Conformance.Certs govStructure

open import Ledger.Ledger txs abs public
  using (LEnv; ⟦_,_,_,_,_⟧ˡᵉ)

open Tx
open GState
open GovActionState

record LState : Type where

  constructor ⟦_,_,_⟧ˡ
  field

    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txprop ++ map inj₁ txvote
  where open TxBody txb

isUnregisteredDRep : CertState → Voter → Type
isUnregisteredDRep ⟦ _ , _ , gState ⟧ᶜˢ (r , c) = r ≡ DRep × c ∉ dom (gState .dreps)

removeOrphanDRepVotes : CertState → GovActionState → GovActionState
removeOrphanDRepVotes certState gas = record gas { votes = votes′ }
  where
    votes′ = filterKeys (¬_ ∘ isUnregisteredDRep certState) (votes gas)

_|ᵒ_ : GovState → CertState → GovState
govSt |ᵒ certState = L.map (map₂ (removeOrphanDRepVotes certState)) govSt

private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  govSt' : GovState
  certState' : CertState
  tx : Tx

open RwdAddr
open DState
open CertState
open UTxOState

data

  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type

  where

  LEDGER-V :
    let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ
        utxoSt'' = record utxoSt' { deposits = updateDeposits pparams txb (deposits utxoSt') }
     in
    ∙  isValid tx ≡ true
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState , certState' ⟧ᵍ ⊢ govSt |ᵒ certState' ⇀⦇ txgov txb ,GOV⦈ govSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt'' , govSt' , certState' ⟧ˡ


  LEDGER-I : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ false
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt , certState ⟧ˡ

pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)

_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
