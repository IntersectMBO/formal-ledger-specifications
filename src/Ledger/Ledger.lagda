\section{Ledger State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ledger (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.PParams Epoch

open import Ledger.Utxo txs
open import Ledger.Utxow txs
open import Ledger.PPUp txs

open Tx
open TxBody
\end{code}
\begin{figure*}[h]
\begin{code}
-- Only include accounting & governance info for now
record LEnv : Set where
  constructor ⟦_,_,_⟧ˡᵉ
  field slot : Slot
        --txix : Ix
        pparams : PParams
        --acnt : Acnt
        genDelegs : GenesisDelegation -- part of DPState

record LState : Set where
  constructor ⟦_,_⟧ˡ
  field utxoSt : UTxOState
        ppup   : PPUpdateState
        --dpstate : DPState
\end{code}
\caption{Types for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  ppup' : PPUpdateState
  tx : Tx

data _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  LEDGER : let open LState s in
    record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    → record { LEnv Γ } ⊢ ppup ⇀⦇ txup (body tx) ,PPUP⦈ ppup'
    -- DELEGS
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , ppup' ⟧ˡ
\end{code}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
data _⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  LEDGERS-base : Γ ⊢ s ⇀⦇ [] ,LEDGERS⦈ s

  LEDGERS-ind : ∀ {txs}
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
    → Γ ⊢ s' ⇀⦇ txs ,LEDGERS⦈ s''
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ∷ txs ,LEDGERS⦈ s''
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
