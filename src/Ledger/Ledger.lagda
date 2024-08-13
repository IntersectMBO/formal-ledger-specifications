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

\begin{code}

feesOK : PParams → Tx → UTxO → Bool
feesOK pp tx utxo = minfee pp utxo tx ≤ᵇ txfee
                  ∧ (not (≟-∅ᵇ (txrdmrs ˢ)) ∧ (isTopLevel ≡ true))
                  =>ᵇ ( allᵇ (λ (addr , _) → ¿ isVKeyAddr addr ¿) collateralRange
                      ∧ isAdaOnlyᵇ bal
                      ∧ (coin bal * 100) ≥ᵇ (txfee * pp .collateralPercentage)
                      ∧ not (≟-∅ᵇ collateral)
                      -- ∧ sum of specified fees in txfee fields in subTxs <= top-level txfee
                      )
  where
    open Tx tx; open TxBody body; open TxWitnesses wits; open PParams pp
    collateralRange  = range    ((mapValues txOutHash utxo) ∣ collateral)
    bal              = balance  (utxo ∣ collateral)
\end{code}

\begin{figure*}
\begin{code}[hide]
module _ (let open UTxOState; open TxBody) where
\end{code}
\begin{code}
  depositRefunds : PParams → UTxOState → TxBody → Coin
  depositRefunds pp st txb = negPart (depositsChange pp txb (st .deposits))

  newDeposits : PParams → UTxOState → TxBody → Coin
  newDeposits pp st txb = posPart (depositsChange pp txb (st .deposits))

  consumed : PParams → UTxOState → TxBody → Value
  consumed pp st txb
    =  balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)
    +  balance (st .utxo ∣ txb .corInputs)

  produced : PParams → UTxOState → TxBody → Value
  produced pp st txb
    =  balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)
\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-conway}
\end{figure*}

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
  LEDGER-V : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ 
        txs = mkTxList tx
    in
    ∙ feesOK pp tx utxo ≡ true               ∙ consumed pp s tx ≡ produced pp s tx
    ∙ txsize ≤ maxTxSize pp
    -- TODO ∙  txs is non-empty/ OK
    -- TODO all inputs and corInputs in all txs are in UTxO
    -- ∙ requiredTxs of subTxs and tx itself are in subTxs and have corresponding bodies
    -- ∙ all subTxs have no subTxs
    ∙  getAllIns tx ⊆ dom utxo
    ∙  isValid tx ≡ true
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ txs ,SWAPS⦈ utxoSt'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt' , certState' ⟧ˡ

  LEDGER-I : let open LState s; txb = tx .body; open TxBody txb; open LEnv Γ 
        txs = mkTxList tx
    in
    ∙ feesOK pp tx utxo ≡ true               ∙ consumed pp s tx ≡ produced pp s tx
    ∙ txsize ≤ maxTxSize pp
    -- TODO ∙  txs is non-empty/ OK
    -- TODO all inputs and corInputs in all txs are in UTxO
    -- ∙ requiredTxs of subTxs and tx itself are in subTxs and have corresponding bodies
    -- ∙ all subTxs have no subTxs
    ∙  getAllIns tx ⊆ dom utxo
    ∙  isValid tx ≡ false
    ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ txs ,SWAPS⦈ utxoSt'
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
