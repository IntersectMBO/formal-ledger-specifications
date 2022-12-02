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
open import Ledger.Utxo txs

\end{code}
\begin{figure*}[h]
\begin{code}
record Acnt : Set where
  field treasury  : Coin
        reserves  : Coin

record NewEpochState : Set where
  constructor ⟦_,_,_,_,_⟧ⁿᵉ
  field lastEpoch  : Epoch
        acnt       : Acnt
        ls         : LState
        prevPP     : PParams
        pparams    : PParams

record ChainState : Set where
  field newEpochState  : NewEpochState
        genDelegs      : GenesisDelegation

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

data _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWEPOCH-New : let
      open NewEpochState nes
      open LState ls
      pup = PPUpdateState.pup ppup
      acnt' = record acnt { treasury = Acnt.treasury acnt + UTxOState.fees utxoSt }
      ls' = record ls { ppup = ppup' ; utxoSt = record utxoSt { fees = 0 } }
    in
    e ≡ sucᵉ lastEpoch
    → _ ⊢ ⟦ pparams , ppup ⟧ⁿᵖ ⇀⦇ votedValue pup pparams Quorum ,NEWPP⦈ ⟦ pparams' , ppup' ⟧ⁿᵖ
    ────────────────────────────────
    _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , acnt' , ls' , pparams , pparams' ⟧ⁿᵉ

  NEWEPOCH-Not-New : let open NewEpochState nes in
    e ≢ sucᵉ lastEpoch
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
  CHAIN : let open ChainState s; open Block b; open NewEpochState in
    _ ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    → ⟦ slot , pparams nes , genDelegs ⟧ˡᵉ ⊢ ls nes ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈ record s { newEpochState = record nes { ls = ls' } }
\end{code}
\caption{CHAIN transition system}
\end{figure*}
