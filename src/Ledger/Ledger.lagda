\section{Ledger State Transition}
\label{sec:ledger-state-transition}
\modulenote{\LedgerModule{Ledger}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs
open import Ledger.Certs govStructure

open Tx
open GState
open GovActionState
open EnactState using (cc)
\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record LEnv : Type where
  field
    slot        : Slot
    ppolicy     : Maybe ScriptHash
    pparams     : PParams
    enactState  : EnactState
    treasury    : Coin

record LState : Type where
  constructor ⟦_,_,_⟧ˡ
  field
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txprop ++ map inj₁ txvote
  where open TxBody txb

ifDRepIsRegistered : CertState → Voter → Type
ifDRepIsRegistered certState (r , c) = r ≡ DRep → c ∈ dom (gState .dreps)
  where open CertState certState

removeOrphanDRepVotes : CertState → GovActionState → GovActionState
removeOrphanDRepVotes certState gas = record gas { votes = votes′ }
  where
    votes′ = filterKeys (ifDRepIsRegistered certState) (votes gas)

_|ᵒ_ : GovState → CertState → GovState
govSt |ᵒ certState = L.map (map₂ (removeOrphanDRepVotes certState)) govSt
allColdCreds : GovState → EnactState → ℙ Credential
allColdCreds govSt es =
  ccCreds (es .cc) ∪ concatMapˢ (λ (_ , st) → proposedCC (st .action)) (fromList govSt)
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
instance
  unquoteDecl To-LEnv To-LState = derive-To
    ((quote LEnv , To-LEnv) ∷ (quote LState , To-LState) ∷ [])

private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt utxoSt' : UTxOState
  govSt govSt' : GovState
  certState certState' : CertState
  tx : Tx

open LEnv
open CertState
open DState
\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
data _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type where

  LEDGER-V :
    let  txb         = tx .body
\end{code}
\begin{code}[hide]
         open TxBody txb
\end{code}
\begin{code}
         pp          = Γ .pparams
         slot        = Γ .slot
         ppolicy     = Γ .ppolicy
         enactState  = Γ .enactState
         rewards     = certState .dState .rewards
    in
    ∙ isValid tx ≡ true
    ∙ ⟦ slot , pp , Γ .treasury ⟧  ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    ∙ ⟦ epoch slot , pp , txvote , txwdrls , allColdCreds govSt enactState ⟧ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙ ⟦ txid , epoch slot , pp , ppolicy , enactState , certState' , dom rewards ⟧ ⊢ govSt |ᵒ certState' ⇀⦇ txgov txb ,GOVS⦈ govSt'
      ────────────────────────────────
      Γ ⊢ ⟦ utxoSt , govSt , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt' , certState' ⟧

  LEDGER-I :
    let txb = tx .body
\end{code}
\begin{code}[hide]
        open TxBody txb
\end{code}
\begin{code}
    in
    ∙ isValid tx ≡ false
    ∙ record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
      ────────────────────────────────
      Γ ⊢ ⟦ utxoSt , govSt , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt , certState ⟧
\end{code}
\end{AgdaMultiCode}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,LEDGER⦈_}
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}
