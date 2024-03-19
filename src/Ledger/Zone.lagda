\section{Zone State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

-- open import Data.List as L
-- open import Data.List.Relation.Unary.All

open import Ledger.Transaction
open import Ledger.PParams
open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Zone
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Gov govStructure
open import Ledger.PPUp txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs
open import Ledger.Ledger txs abs

open Tx
\end{code}

The entire state transformation of the ledger state caused by a valid
zone can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{code}
-- TODO quantify over list instead of doing this
toSetTx : List Tx → ℙ Tx
toSetTx tb = foldr (λ { tx ls → ls ∪ (singleton tx) }) ∅ tb

-- get a set of TxIds containing all IDs of transaction in given list tb
getIDs : List Tx → ℙ TxId
getIDs tb = foldr (λ { tx ls → ls ∪ (singleton (tx .Tx.body .TxBody.txid)) }) ∅ tb

-- check that all IDs in all requiredTxs groups correspond to Txs in the given zone
chkRqTx : List Tx → Tx → Set
chkRqTx tb tx = ∀[ txrid ∈ tx .Tx.body .TxBody.requiredTxs ] Any (txrid ≡_) ( getIDs tb )

-- TODO THIS IS WRONG! will fix
-- this checks that when a transaction in the zone spends an output of another transaction
-- in the zone, it cannot also spend a fulfill in that zone for the same transaction
chkLinear : List Tx → Set
chkLinear tb = ∀[ tx1 ∈ toSetTx tb ] (∀[ tx2 ∈ toSetTx tb ] ((tx2 .Tx.body .TxBody.txid , _) ∈ tx1 .Tx.body .TxBody.txins
  → ¬ (tx2 .Tx.body .TxBody.txid , _) ∈ tx1 .Tx.body .TxBody.fulfills ))

\end{code}
\caption{Functions used for zone validation}
\label{fig:functions:zone}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,ZONE⦈_ : LEnv → LState → List Tx → LState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the ZONE transition system}
\end{figure*}

\begin{code}[hide]
private variable
  Γ : LEnv
  utxo utxo' : UTxO
  fees fees' : Coin
  deposits deposits' : Deposits
  donations donations' : Coin
  govSt govSt' : GovState
  certState certState' : CertState
  tb : List Tx
  tx : Tx
\end{code}

\begin{figure*}[h]
\begin{code}
  ZONE-V :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ tb ,LEDGERS⦈
      ⟦ ⟦ (utxo' , ∅) , fees' , deposits' , donations' ⟧ᵘᵘ , govSt' , certState' ⟧ˡˡ
    ∙ All (chkRqTx tb) (toSetTx tb)
    ∙ chkLinear tb
    ∙ All chkIsValid (toSetTx tb)
    -- TODO check overpaying collateral
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ tb ,ZONE⦈ ⟦ ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ , govSt' , certState' ⟧ˡ
  ZONE-N :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ [ tx ] ,LEDGERS⦈
      ⟦ ⟦ (utxo' , ∅) , fees' , deposits' , donations' ⟧ᵘᵘ , govSt' , certState' ⟧ˡˡ
    ∙ Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ tb ,LEDGERS⦈ _
    ∙ tb ≡ _ ++ [ tx ]
    -- TODO check overpaying collateral
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ tb ,ZONE⦈ ⟦ ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ , govSt' , certState' ⟧ˡ
\end{code}
\caption{ZONE transition system}
\end{figure*}
\begin{code}[hide]
-- TODO fix this
-- pattern ZONE⋯ x y z w = ZONE (x , y , z , w)
-- unquoteDecl ZONE-premises = genPremises ZONE-premises (quote ZONE)
\end{code}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,ZONES⦈_ : LEnv → LState → List (List Tx) → LState → Set
_⊢_⇀⦇_,ZONES⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,ZONE⦈_
\end{code}
\caption{ZONES transition system}
\end{figure*}
