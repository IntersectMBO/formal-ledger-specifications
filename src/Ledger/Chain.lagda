\section{Blockchain layer}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Chain (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.PParams Epoch
open import Ledger.NewPP txs
open import Ledger.Ledger txs
open import Ledger.PPUp txs

\end{code}
\begin{figure*}[h]
\begin{code}
record NewEpochState : Set where
  constructor ⟦_,_,_,_⟧ⁿᵉ
  field lastEpoch : Epoch
        ls        : LState
        prevPP    : PParams
        pparams   : PParams

record ChainState : Set where
  field newEpochState : NewEpochState
        genDelegs     : GenesisDelegation

record Block : Set where
  field ts   : List Tx
        slot : Slot
\end{code}
\caption{Definitions for the NEWEPOCH and CHAIN transition systems}
\end{figure*}
\begin{code}[hide]
private variable
  s : ChainState
  b : Block
  ls' : LState
  pparams' : PParams
  ppup' : PPUpdateState
  nes : NewEpochState
  e : Epoch

open NewEpochState

data _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWEPOCH-New : let ppup = LState.ppup (ls nes); pup = PPUpdateState.pup ppup in
    e ≡ sucᵉ (lastEpoch nes)
    → _ ⊢ ⟦ pparams nes , ppup ⟧ⁿᵖ ⇀⦇ votedValue pup (pparams nes) Quorum ,NEWPP⦈
          ⟦ pparams' , ppup' ⟧ⁿᵖ
    ────────────────────────────────
    _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈
        ⟦ e , record (ls nes) { ppup = ppup' } , pparams nes , pparams' ⟧ⁿᵉ

  NEWEPOCH-Not-New :
    e ≢ sucᵉ (lastEpoch nes)
    ────────────────────────────────
    _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes
\end{code}
\caption{NEWEPOCH transition system}
\end{figure*}

\begin{code}[hide]
data _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  CHAIN : let open ChainState s; open Block b in
    _ ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    → ⟦ slot , pparams nes , genDelegs ⟧ˡᵉ ⊢ ls nes ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈ record s { newEpochState = record nes { ls = ls' } }
\end{code}
\caption{CHAIN transition system}
\end{figure*}
