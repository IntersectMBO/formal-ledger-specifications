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
open import Ledger.TokenAlgebra
import Ledger.PParams
import Ledger.Script
import Ledger.GovernanceActions

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
        Ix TxId AuxiliaryData : Set
\end{code}
\begin{code}[hide]
        epochStructure                      : EpochStructure
        globalConstants                     : GlobalConstants

  open EpochStructure epochStructure public
  open GlobalConstants globalConstants public
  field crypto                              : Crypto
        adHashingScheme                     : isHashableSet AuxiliaryData
        ppHashingScheme                     : isHashableSet (Ledger.PParams.PParams epochStructure)
        ppUpd                               : Ledger.PParams.PParamsDiff epochStructure
        txidBytes                           : TxId → Crypto.Ser crypto
        networkId                           : Network
        tokenAlgebra                        : TokenAlgebra
        instance DecEq-TxId  : DecEq TxId
                 DecEq-Ix    : DecEq Ix
                 DecEq-Netw  : DecEq Network
                 DecEq-UpdT  : DecEq (Ledger.PParams.PParamsDiff.UpdateT ppUpd)

  open Crypto crypto public
  open TokenAlgebra tokenAlgebra public
  open isHashableSet adHashingScheme renaming (THash to ADHash) public

  field ss : Ledger.Script.ScriptStructure KeyHash ScriptHash Slot

  open Ledger.Script.ScriptStructure ss public

  open import Ledger.PParams epochStructure

  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public
  -- TODO: figure out what to do with the hash
  open Ledger.GovernanceActions TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto hiding (yes; no) public

  open import Ledger.Address Network KeyHash ScriptHash public
  open import Ledger.Deleg crypto TxId Network ADHash epochStructure ppUpd ppHashingScheme public
\end{code}
\emph{Derived types}
\AgdaTarget{TxIn, TxOut, UTxO, Wdrl}
\begin{code}
  TxIn   = TxId × Ix
  TxOut  = Addr × Value
  UTxO   = TxIn ↛ TxOut
  Wdrl   = RwdAddr ↛ Coin

  ProposedPPUpdates  = KeyHash ↛ PParamsUpdate
  Update             = ProposedPPUpdates × Epoch
\end{code}
\emph{Transaction types}
\AgdaTarget{TxBody, txins, txouts, txfee, txvldt, txwdrls, txup, txADhash, txsize, txid, TxWitnesses, vkSigs, scripts, Tx, body, wits, txAD}
\begin{code}
  record TxBody : Set where
    field txins      : ℙ TxIn
          txouts     : Ix ↛ TxOut
          txcerts    : List DCert
          mint       : Value
          txfee      : Coin
          txvldt     : Maybe Slot × Maybe Slot
          txwdrls    : Wdrl
          txup       : Maybe Update
          txADhash   : Maybe ADHash
          netwrk     : Maybe Network
          txsize     : ℕ
          txid       : TxId
          txvote     : List GovVote
          txprop     : List GovProposal

  record TxWitnesses : Set where
    field vkSigs   : VKey ↛ Sig
          scripts  : ℙ Script

  record Tx : Set where
    field body  : TxBody
          wits  : TxWitnesses
          txAD  : Maybe AuxiliaryData
\end{code}
\caption{Definitions used in the UTxO transition system}
\label{fig:defs:utxo-shelley}
\end{figure*}

\begin{code}
  getValue : TxOut → Value
  getValue (fst , snd) = snd

  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom ((utxo ∣^' to-sp (isVKeyAddr? ∘ proj₁)) ˢ)

  utxoAda : UTxO → Rel Credential Coin
  utxoAda (utxo , _) = mapPartial
    (λ where
      (inj₁ record {stake = c} , v) → just (c , coin v)
      (inj₂ _ , _) → nothing)
    (range utxo)
\end{code}
\begin{code}[hide]
  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₂
\end{code}
