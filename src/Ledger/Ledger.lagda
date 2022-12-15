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
open import Ledger.Tally TxId Epoch Network ADHash PParamsUpdate crypto

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
        tally  : TallyState
        --ppup   : PPUpdateState
        --dpstate : DPState
\end{code}
\caption{Types for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  tally' : TallyState
  tx : Tx

data _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  LEDGER : let open LState s; txb = body tx in
    record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    → record { txid = txid txb ; epoch = epoch (LEnv.slot Γ) } ⊢ tally ⇀⦇ txgov txb ,TALLY⦈ tally'
    -- DELEGS
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , tally' ⟧ˡ
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
