\section{Ledger State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ledger (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.PParams epochStructure

open import Ledger.Utxo txs
open import Ledger.Utxow txs
open import Ledger.PPUp txs
open import Ledger.Tally TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto

open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid)

import Data.List as L

open Tx
open TxBody
\end{code}
\begin{figure*}[h]
\begin{code}
-- Only include accounting & governance info for now
record LEnv : Set where
  constructor ⟦_,_⟧ˡᵉ
  field slot : Slot
        --txix : Ix
        pparams : PParams
        --acnt : Acnt

record LState : Set where
  constructor ⟦_,_,_⟧ˡ
  field utxoSt     : UTxOState
        tally      : TallyState
        certState  : CertState
\end{code}
\caption{Types for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt' : UTxOState
  tally' : TallyState
  certState' : CertState
  tx : Tx

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = L.map inj₁ (txvote txb) ++ L.map inj₂ (txprop txb)

record Snapshot : Set where
  field stake          : Credential ↛ Coin
        poolDelegs     : Credential ↛ KeyHash
        voteDelegs     : Credential ↛ VDeleg
        poolParameters : KeyHash ↛ PoolParams

instance
  _ = +-0-commutativeMonoid
  _ = +-0-monoid

stakeDistr : LState → Snapshot
stakeDistr ls =
  let open LState ls; open CertState certState; open DState dState; open PState pState ; open UTxOState utxoSt
      -- TODO Add rewards
      activeDelegs = {!!}
  in
  record
    { stake = aggregate₊ (utxoAda utxo , (finiteness _)) ∣ dom activeDelegs
    ; poolDelegs = poolDelegs
    ; voteDelegs = voteDelegs
    ; poolParameters = pools }

data _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  LEDGER : let open LState s; txb = body tx; open LEnv Γ in
    pparams ⊢ certState ⇀⦇ txcerts txb ,CERTS⦈ certState'
    → record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    → record { epoch = epoch slot ; LEnv Γ ; TxBody txb } ⊢ tally ⇀⦇ txgov txb ,TALLY⦈ tally'
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , tally' , certState' ⟧ˡ
\end{code}
\caption{LEDGER transition system}
\end{figure*}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Set
_⊢_⇀⦇_,LEDGERS⦈_ = SS⇒BS (λ where (Γ , _) → Γ ⊢_⇀⦇_,LEDGER⦈_)
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
