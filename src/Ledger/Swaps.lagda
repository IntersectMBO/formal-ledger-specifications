\section{Swap Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Swaps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs

open Tx
\end{code}


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
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the LEDGER and SWAP transition systems}
\end{figure*}


\begin{figure*}[h]
\begin{code}[hide]
open RwdAddr
open DState
open CertState
open UTxOState
open LState

private variable
  Γ : LEnv

  u u' : UTxOState
  g g' : GovState
  c c' : CertState
  tx : Tx
  
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,SWAP⦈_ : LEnv → LState → Tx  → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the SWAP transition system}
\end{figure*}

\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  SWAP-V : let open Tx tx renaming (body to txb); open TxBody txb; open LEnv Γ renaming (slot to sl)
    in
    ∙  record { LEnv Γ } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
    ∙  ⟦ epoch sl , pparams , txvote , txwdrls , deposits u ⟧ᶜ ⊢ c ⇀⦇ txcerts ,CERTS⦈ c'
    ∙  ⟦ txid , epoch sl , pparams , ppolicy , enactState ⟧ᵍ ⊢ g ⇀⦇ txgov txb ,GOV⦈ g'
       ────────────────────────────────
       Γ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , g' , c' ⟧ˡ

  SWAP-I :     
    ∙  record { LEnv Γ } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
      ────────────────────────────────
       Γ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , g , c ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{SWAP transition system}
\end{figure*}
\begin{code}[hide]
-- pattern SWAP-V⋯ w x y z = SWAP-V (w , x , y , z)
-- pattern SWAP-I⋯ w x y z = SWAP-I (w , x , y , z)
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,SWAPS⦈_ : LEnv → LState → List Tx  → LState → Type
_⊢_⇀⦇_,SWAPS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,SWAP⦈_
\end{code}
\caption{SWAPS transition system}
\end{figure*}
\end{NoConway}
