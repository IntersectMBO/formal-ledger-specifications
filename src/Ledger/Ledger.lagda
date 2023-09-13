\section{Ledger State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Ledger (⋯ : _) (open TransactionStructure ⋯) where

open import Ledger.Gov govStructure
open import Ledger.PPUp  ⋯
open import Ledger.Utxo  ⋯
open import Ledger.Utxow ⋯
open Tx
\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{code}
record LEnv : Set where
  constructor ⟦_,_,_⟧ˡᵉ
  field slot     : Slot
        ppolicy  : Maybe ScriptHash
        pparams  : PParams

record LState : Set where
  constructor ⟦_,_,_⟧ˡ
  field utxoSt     : UTxOState
        govSt      : GovState
        certState  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = let open TxBody txb in
  L.map inj₁ txvote ++ L.map inj₂ txprop
\end{code}
\caption{Types and functions for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  govSt' : GovState
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
  LEDGER : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    → ⟦ epoch slot , pparams , txvote ⟧ᶜ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    → ⟦ txid , epoch slot , pparams ⟧ᵗ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
    → map stake (dom (txwdrls ˢ)) ⊆ dom (certState' .dState .voteDelegs ˢ)
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt' , certState' ⟧ˡ
\end{code}
\caption{LEDGER transition system}
\end{figure*}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Set
_⊢_⇀⦇_,LEDGERS⦈_ = SS⇒BS λ (Γ , _) → Γ ⊢_⇀⦇_,LEDGER⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
