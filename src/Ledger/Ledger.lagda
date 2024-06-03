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

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₁ txvote ++ map inj₂ txprop
  where open TxBody txb
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
  LEDGER-V : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ true
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
--@BEGIN@vecline
    ∙
--@BEGIN@vec
    ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ
--@END@vec
    ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
--@END@vecline
--@BEGIN@vecline
    ∙
--@BEGIN@vec
    ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ
--@END@vec
    ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
--@END@vecline
       ────────────────────────────────
--@BEGIN@vecline
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈
--@BEGIN@vec
       ⟦ utxoSt' , govSt' , certState' ⟧ˡ
--@END@vec
--@END@vecline

  LEDGER-I : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ in
    ∙  isValid tx ≡ false
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
       ────────────────────────────────
--@BEGIN@vecline
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈
--@BEGIN@vec
       ⟦ utxoSt' , govSt , certState ⟧ˡ
--@END@vec
--@END@vecline
\end{code}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Set
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}
