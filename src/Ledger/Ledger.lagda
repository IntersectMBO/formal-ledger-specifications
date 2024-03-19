\section{Ledger State Transition}

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

open import Ledger.Gov govStructure
open import Ledger.PPUp txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs

open Tx
\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{code}
record LEnv : Set where
  constructor ⟦_,_,_,_⟧ˡᵉ
  field slot        : Slot
        ppolicy     : Maybe ScriptHash
        pparams     : PParams
        enactState  : EnactState

record LState : Set where
  constructor ⟦_,_,_⟧ˡ
  field utxoSt     : UTxOState
        govSt      : GovState
        certState  : CertState

record LStateTemp : Set where
  constructor ⟦_,_,_⟧ˡˡ
  field utxoStTemp     : UTxOStateTemp
        govStTemp      : GovState
        certStateTemp  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₁ txvote ++ map inj₂ txprop
  where open TxBody txb
\end{code}
\caption{Types and functions for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LStateTemp
  utxoStTemp' : UTxOStateTemp
  govStTemp' : GovState
  certStateTemp' : CertState
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
  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LStateTemp → Tx → LStateTemp → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the LEDGER transition system}
\end{figure*}

\begin{figure*}[h]
\begin{code}
  LEDGER : let open LStateTemp s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  record { LEnv Γ } ⊢ utxoStTemp ⇀⦇ tx ,UTXOW⦈ utxoStTemp'
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ ⊢ certStateTemp ⇀⦇ txcerts ,CERTS⦈ certStateTemp'
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ ⊢ govStTemp ⇀⦇ txgov txb ,GOV⦈ govStTemp'
    ∙  mapˢ stake (dom txwdrls) ⊆ dom (certStateTemp' .dState .voteDelegs)
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoStTemp' , govStTemp' , certStateTemp' ⟧ˡˡ
\end{code}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
pattern LEDGER⋯ x y z w = LEDGER (x , y , z , w)
unquoteDecl LEDGER-premises = genPremises LEDGER-premises (quote LEDGER)
\end{code}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LStateTemp → List Tx → LStateTemp → Set
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
