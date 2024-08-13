\section{Swap Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Swap
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
\begin{code}[hide]
open RwdAddr
open DState
open CertState
open UTxOState

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,SWAP⦈_ : LEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the SWAP transition system}
\end{figure*}

\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  SWAP-V : let open LState s; open TxBody txb; open LEnv Γ 
    in
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls , deposits utxoSt ⟧ᶜ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,SWAP⦈ ⟦ utxoSt' , govSt' , certState' ⟧ˡ

  SWAP-I : let open LState s; open TxBody txb; open LEnv Γ 
    in
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,SWAP⦈ ⟦ utxoSt' , govSt' , certState' ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{SWAP transition system}
\end{figure*}
\begin{code}[hide]
pattern SWAP-V⋯ w x y z = SWAP-V (w , x , y , z)
pattern SWAP-I⋯ w x y z = SWAP-I (w , x , y , z)
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,SWAPS⦈_ : LEnv → UTxOState → List Tx  → UTxOState → Type
_⊢_⇀⦇_,SWAPS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,SWAP⦈_
\end{code}
\caption{SWAPS transition system}
\end{figure*}
\end{NoConway}
