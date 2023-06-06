\section{Ledger State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ledger (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.PParams epochStructure

open import Ledger.Utxo txs
open import Ledger.Utxow txs
open import Ledger.PPUp txs
open import Ledger.Tally TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto

import Data.List as L

open Tx
open TxBody
\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{code}
record LEnv : Set where
  constructor ⟦_,_⟧ˡᵉ
  field slot     : Slot
        pparams  : PParams

record LState : Set where
  constructor ⟦_,_,_⟧ˡ
  field utxoSt     : UTxOState
        tally      : TallyState
        certState  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = L.map inj₁ (txvote txb) ++ L.map inj₂ (txprop txb)
\end{code}
\caption{Types and functions for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  tally' : TallyState
  certState' : CertState
  tx : Tx
\end{code}

\begin{figure*}[h]
\begin{code}[hide]
open RwdAddr
open DState
open CertState

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the LEDGER transition system}
\end{figure*}

\begin{figure*}[h]
\begin{code}
  LEDGER : let open LState s; txb = body tx; open LEnv Γ in
    record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    → pparams ⊢ certState ⇀⦇ txcerts txb ,CERTS⦈ certState'
    → ⟦ txid txb , epoch slot , pparams ⟧ᵗ ⊢ tally ⇀⦇ txgov txb ,TALLY⦈ tally'
    → map stake (dom (txwdrls txb ˢ)) ⊆ dom (voteDelegs (dState certState') ˢ)
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , tally' , certState' ⟧ˡ
\end{code}
\caption{LEDGER transition system}
\end{figure*}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Set
_⊢_⇀⦇_,LEDGERS⦈_ = SS⇒BS (λ where (Γ , _) → Γ ⊢_⇀⦇_,LEDGER⦈_)
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
