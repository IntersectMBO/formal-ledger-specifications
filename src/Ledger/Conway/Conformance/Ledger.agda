
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
open import Ledger.Conway.Conformance.Gov txs abs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Utxow txs abs
open import Ledger.Conway.Conformance.Certs govStructure

open import Ledger.Ledger txs abs public
  using (LEnv; To-LEnv; allColdCreds; rmOrphanDRepVotes; txgov)

open Tx

record LState : Type where
  constructor ⟦_,_,_⟧ˡ
  field
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

instance
  unquoteDecl To-LState = derive-To
    [ (quote LState , To-LState) ]

private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  govSt' : GovState
  certState' certState'' : CertState
  tx : Tx

open UTxOState

data

  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type

  where

  LEDGER-V :
    let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ
        utxoSt'' = record utxoSt' { deposits = updateDeposits pparams txb (deposits utxoSt') }
        wdrlCreds   = mapˢ RwdAddr.stake (dom txwdrls)
        voteDelegs = certState .CertState.dState .DState.voteDelegs
        rewards = certState .CertState.dState .DState.rewards
        rewards' = constMap wdrlCreds 0 ∪ˡ rewards
        dState = certState .CertState.dState
        dState' = record dState { rewards = rewards' }
        certState' = record certState { dState = dState' }
     in
    ∙  isValid tx ≡ true
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls , allColdCreds govSt enactState ⟧ ⊢ certState' ⇀⦇ txcerts ,CERTS⦈ certState''
    ∙  filterˢ isKeyHash wdrlCreds ⊆ dom voteDelegs
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState ,  certState'' , dom rewards' ⟧ ⊢ govSt ⇀⦇ txgov txb ,GOVS⦈ govSt'
    ∙  mapˢ (map₁ RwdAddr.stake) (txwdrls ˢ) ⊆ rewards ˢ
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt'' , govSt' , certState'' ⟧


  LEDGER-I : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ false
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt , certState ⟧

pattern LEDGER-V⋯ w x y z t u = LEDGER-V (w , x , y , z , t , u)
pattern LEDGER-I⋯ y z         = LEDGER-I (y , z)

_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,LEDGER⦈_}
