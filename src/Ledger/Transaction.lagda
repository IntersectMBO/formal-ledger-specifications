\section{Transactions}
\label{sec:transactions}

\begin{code}[hide]
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
open import Ledger.Crypto
import Ledger.PParams
open import DecEq

module Ledger.Transaction where

record TransactionStructure : Set₁ where
  field
\end{code}

Transactions are defined in Figure~\ref{fig:defs:utxo-shelley}.
A transaction is made up of three pieces:

\begin{itemize}
  \item A set of transaction inputs.
    This derived type identifies an output from a previous transaction.
    It consists of a transaction id and an index to uniquely identify the output.
  \item An indexed collection of transaction outputs.
    The $\TxOut$ type is an address paired with a coin value.
  \item A transaction fee. This value will be added to the fee pot.
\end{itemize}

Finally, $\fun{txid}$ computes the transaction id of a given transaction.
This function must produce a unique id for each unique transaction body.
\textbf{We assume that} $\fun{txid}$ \textbf{is injective.}

\begin{figure*}[h]
\emph{Abstract types}
\AgdaTarget{Ix, TxId, Epoch, AuxiliaryData}
\begin{code}
        Ix TxId Epoch AuxiliaryData Network : Set
\end{code}
\begin{code}[hide]
        crypto                              : Crypto
        adHashingScheme                     : HashingScheme AuxiliaryData
        ppUpd                               : Ledger.PParams.PParamsDiff Epoch
        txidBytes                           : TxId → Crypto.Ser crypto
        instance DecEq-TxId : DecEq TxId
                 DecEq-Ix   : DecEq Ix
                 DecEq-Netw : DecEq Network
                 DecEq-UpdT : DecEq (Ledger.PParams.PParamsDiff.UpdateT ppUpd)

  open import FinSet renaming (FinSet to ℙ_)
  open import FinMap renaming (FinMap to _↛_)
  open import Prelude
  open import Ledger.PParams Epoch

  open Crypto crypto public
  open HashingScheme adHashingScheme renaming (THash to ADHash; hash to hashAD)
  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate)

  import Data.Nat
  open import Ledger.Address Network KeyHash ScriptHash public
  open import Ledger.Script KeyHash ℕ Data.Nat._≤_ Data.Nat._≤ᵇ_
\end{code}
\emph{Derived types}
\AgdaTarget{TxIn, TxOut, UTxO, Wdrl}
\begin{code}
  TxIn  = TxId × Ix
  TxOut = Addr × Coin
  UTxO  = TxIn ↛ TxOut
  Wdrl  = RwdAddr ↛ Coin

  ProposedPPUpdates = KeyHash ↛ PParamsUpdate
  Update            = ProposedPPUpdates × Epoch
\end{code}
\emph{Transaction types}
\AgdaTarget{TxBody, txins, txouts, txfee, txvldt, txwdrls, txup, txADhash, txsize, txid, TxWitnesses, vkSigs, scripts, Tx, body, wits, txAD}
\begin{code}
  record TxBody : Set where
    field txins      : ℙ TxIn
          txouts     : Ix ↛ TxOut
          --txcerts  : List DCert
          txfee      : Coin
          txvldt     : Maybe ℕ × Maybe ℕ
          txwdrls    : Wdrl
          txup       : Maybe Update
          txADhash   : Maybe ADHash
          txsize     : ℕ
          txid       : TxId

  record TxWitnesses : Set where
    field vkSigs   : VKey ↛ Sig
          scripts  : ℙ Timelock

  record Tx : Set where
    field body  : TxBody
          wits  : TxWitnesses
          txAD  : AuxiliaryData
\end{code}
\emph{Abstract functions}
\begin{code}
\end{code}
\caption{Definitions used in the UTxO transition system}
\label{fig:defs:utxo-shelley}
\end{figure*}

\begin{code}
  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom (utxo |^' (isVKeyAddr? ∘ proj₁))
\end{code}
