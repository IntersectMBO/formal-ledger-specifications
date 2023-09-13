\section{Transactions}
\label{sec:transactions}

\begin{code}[hide]
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
module Ledger.Transaction where

open import Ledger.Prelude

open import Ledger.Crypto
open import Ledger.Epoch
open import Ledger.GovStructure
import Ledger.PParams
import Ledger.Script
import Ledger.GovernanceActions
import Ledger.Deleg
import Ledger.TokenAlgebra
import Ledger.Address

record TransactionStructure : Set₁ where
  field
\end{code}

Transactions are defined in Figure~\ref{fig:defs:utxo-shelley}. A
transaction is made up of a transaction body, a collection of
witnesses and some optional auxiliary data. Some key ingredients in
the transaction body are:

\begin{itemize}
  \item A set of transaction inputs, each of which identifies an output from a previous transaction.
    A transaction input consists of a transaction id and an index to uniquely identify the output.
  \item An indexed collection of transaction outputs.
    The \TxOut type is an address paired with a coin value.
  \item A transaction fee. This value will be added to the fee pot.
  \item The size and the hash of the serialized form of the transaction that was included in the block.
\end{itemize}

\begin{figure*}[h]
\emph{Abstract types}
\AgdaTarget{Ix, TxId, Epoch, AuxiliaryData}
\begin{code}
        Ix TxId AuxiliaryData : Set
\end{code}
\begin{code}[hide]
        ⦃ DecEq-Ix   ⦄ : DecEq Ix
        ⦃ DecEq-TxId ⦄ : DecEq TxId
        adHashingScheme : isHashableSet AuxiliaryData
  open isHashableSet adHashingScheme renaming (THash to ADHash) public

  field globalConstants : _
  open GlobalConstants globalConstants public

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.PParams epochStructure public

  field govParams : _
  open GovParams govParams public

  field crypto : _
  open Crypto crypto public -- renaming (DecEq-THash to DecEq-ScriptHash)

  field txidBytes : TxId → Ser
        networkId : Network

  open Ledger.Address Network KeyHash ScriptHash public
  open Ledger.Script  KeyHash ScriptHash Slot public
  open Ledger.TokenAlgebra ScriptHash public

  field ss           : ScriptStructure
        tokenAlgebra : TokenAlgebra
  open ScriptStructure ss        public
  open TokenAlgebra tokenAlgebra public

  govStructure : GovStructure
  govStructure = record
    -- TODO: figure out what to do with the hash
    { TxId = TxId; Network = Network; DocHash = ADHash
    ; epochStructure = epochStructure; govParams = govParams; crypto = crypto
    }
  open Ledger.GovernanceActions govStructure hiding (yes; no) public
  open Ledger.Deleg             govStructure public
\end{code}
\emph{Derived types}
\AgdaTarget{TxIn, TxOut, UTxO, Wdrl}
\begin{code}
  TxIn   = TxId × Ix
  TxOut  = Addr × Value
  UTxO   = TxIn ⇀ TxOut
  Wdrl   = RwdAddr ⇀ Coin

  ProposedPPUpdates  = KeyHash ⇀ PParamsUpdate
  Update             = ProposedPPUpdates × Epoch
\end{code}
\emph{Transaction types}
\AgdaTarget{TxBody, txins, txouts, txfee, txvldt, txwdrls, txup, txADhash, txsize, txid, TxWitnesses, vkSigs, scripts, Tx, body, wits, txAD}
\begin{AgdaSuppressSpace}
\begin{code}
  record TxBody : Set where
    field txins       : ℙ TxIn
          txouts      : Ix ⇀ TxOut
          txfee       : Coin
          mint        : Value
          txvldt      : Maybe Slot × Maybe Slot
          txcerts     : List DCert
          txwdrls     : Wdrl
          txvote      : List GovVote
          txprop      : List GovProposal
          txdonation  : ℕ
          txup        : Maybe Update
          txADhash    : Maybe ADHash
          netwrk      : Maybe Network
          txsize      : ℕ
          txid        : TxId

  record TxWitnesses : Set where
    field vkSigs   : VKey ⇀ Sig
          scripts  : ℙ Script

    scriptsP1 : ℙ P1Script
    scriptsP1 = mapPartial isInj₁ scripts

  record Tx : Set where
    field body  : TxBody
          wits  : TxWitnesses
          txAD  : Maybe AuxiliaryData
\end{code}
\end{AgdaSuppressSpace}
\caption{Definitions used in the UTxO transition system}
\label{fig:defs:utxo-shelley}
\end{figure*}

\begin{figure*}[h]
\begin{code}
  getValue : TxOut → Value
  getValue (_ , v) = v

  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom ((utxo ↾' to-sp (isVKeyAddr? ∘ proj₁)) ˢ)
\end{code}
\end{figure*}
\begin{code}[hide]
  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₂
\end{code}
