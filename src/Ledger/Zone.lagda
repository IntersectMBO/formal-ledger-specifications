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

-- TODO write this
isDepUTxO : Tx → Tx → List Tx → Set
isDepUTxO tx1 tx2 [] = tx2 .Tx.body .TxBody.txid ∉ map proj (tx1 .Tx.body .TxBody.txins) ∧
  (∀ [ t ∈ tb ] t .Tx.body .TxBody.txid ∉ map proj (tx1 .Tx.body .TxBody.txins) → )
isDepUTxO tx1 tx2 t :: ls = tx2 .Tx.body .TxBody.txid ∉ map proj (tx1 .Tx.body .TxBody.txins) ∧
  (∀ [ t ∈ tb ] t .Tx.body .TxBody.txid ∉ map proj (tx1 .Tx.body .TxBody.txins) → )

-- TODO write this
isDepFRxO : Tx → Tx → ℙ Tx → Set
isDepFRxO tx1 tx2 tb = tb

-- check for duplicates in two sets
noDups : ℙ Tx → ℙ Tx → Set
noDups tb tb' = ∀[ tx ∈ tb ] ∀[ tx' ∈ tb' ] ¬ tx ≡ tx'

-- TODO THIS IS WRONG! will fix
-- this checks that when a transaction in the zone spends an output of another transaction
-- in the zone, it cannot also spend a fulfill in that zone for the same transaction
chkLinear : ℙ Tx → Set
chkLinear tb = ∀[ tx1 ∈ tb ] (∀[ tx2 ∈ tb ] ¬ ( (isDepUTxO tx1 tx2 tb) ∧ (isDepFRxO tx1 tx2 tb)) )
  -- (tx2 .Tx.body .TxBody.txid ∈ map proj (tx1 .Tx.body .TxBody.txins)
--   → ¬ tx2 .Tx.body .TxBody.txid ∈ map proj (tx1 .Tx.body .TxBody.fulfills) ))

-- sum up the fees (adjusted by collateralPercentage) of transactions in a list
sumCol : List Tx → ℕ → Coin
sumCol tb cp = foldr (λ { tx c → c + tx .Tx.body .TxBody.txfee * cp }) 0 tb

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
  tb lsV : List Tx
  tx : Tx
\end{code}

\begin{figure*}[h]
\begin{code}
  ZONE-V :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ tb ,LEDGERS⦈
      ⟦ ⟦ (utxo' , ∅) , fees' , deposits' , donations' ⟧ᵘᵘ , govSt' , certState' ⟧ˡˡ
    ∙ All (chkRqTx tb) (toSetTx tb)
    ∙ chkLinear (toSetTx tb)
    ∙ All chkIsValid (toSetTx tb)
    ∙ ((coin (balance  (utxo ∣ tx .Tx.body .TxBody.collateral)) * 100)
      ≥ᵇ sumCol (lsV ++ [ tx ]) (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ tb ,ZONE⦈ ⟦ ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ , govSt' , certState' ⟧ˡ
  ZONE-N :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ (lsV ++ [ tx ]) ,LEDGERS⦈ _
    ∙ tx .Tx.isValid ≡ false
    ∙ All chkIsValid (toSetTx lsV)
    ∙ ((coin (balance  (utxo ∣ tx .Tx.body .TxBody.collateral)) * 100)
      ≥ᵇ sumCol (lsV ++ [ tx ]) (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ tb ,ZONE⦈
            ⟦ ⟦ utxo ∣ (tx .Tx.body .TxBody.collateral) ᶜ
            , fees + cbalance (utxo ∣ tx .Tx.body .TxBody.collateral)
            , deposits , donations ⟧ᵘ
            , govSt
            , certState ⟧ˡ
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
