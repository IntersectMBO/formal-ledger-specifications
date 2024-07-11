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

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs

open Tx
open GovActionState
open EnactState using (cc)
\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
record LEnv : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_,_⟧ˡᵉ
  field
\end{code}
\begin{code}
    slot        : Slot
    ppolicy     : Maybe ScriptHash
    pparams     : PParams
    enactState  : EnactState
    treasury    : Coin

record LState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ˡ
  field
\end{code}
\begin{code}
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txprop ++ map inj₁ txvote
  where open TxBody txb

allColdCreds : GovState → EnactState → ℙ Credential
allColdCreds govSt es =
  ccCreds (es .cc) ∪ concatMapˢ (λ (_ , st) → proposedCC (st .action)) (fromList govSt)
\end{code}
\end{AgdaMultiCode}
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
open UTxOState

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the LEDGER transition system}
\end{figure*}

\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  LEDGER-V : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ true
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls , deposits utxoSt , allColdCreds govSt enactState ⟧ᶜ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt' , certState' ⟧ˡ

  LEDGER-I : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ false
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt , certState ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
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
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}
