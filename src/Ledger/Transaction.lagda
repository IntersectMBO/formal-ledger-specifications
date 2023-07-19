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

open import Tactic.Derive.DecEq
open import MyDebugOptions

data Tag : Set where
  Spend Mint Cert Rewrd : Tag
unquoteDecl DecEq-Tag = derive-DecEq ((quote Tag , DecEq-Tag) ∷ [])

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
    The $\TxOut$ type is an address paired with a coin value.
  \item A transaction fee. This value will be added to the fee pot.
  \item The size and the hash of the serialized form of the transaction that was included in the block.
\end{itemize}

\begin{figure*}[h]
\emph{Abstract types}
\AgdaTarget{Ix, TxId, Epoch, AuxilaryData}
\begin{code}
        Ix TxId AuxiliaryData : Set
\end{code}
\begin{code}[hide]
        epochStructure                      : EpochStructure
        globalConstants                     : GlobalConstants

  open EpochStructure epochStructure public
  open GlobalConstants globalConstants public
  field crypto                              : Crypto

  open Crypto crypto public

  field ss                                  : Ledger.Script.ScriptStructure crypto epochStructure
        adHashingScheme                     : isHashableSet AuxiliaryData
        ppHashingScheme                     : isHashableSet (Ledger.PParams.PParams crypto epochStructure ss)
        ppUpd                               : Ledger.PParams.PParamsDiff crypto epochStructure ss
        txidBytes                           : TxId → Crypto.Ser crypto
        networkId                           : Network
        tokenAlgebra                        : TokenAlgebra
        instance DecEq-TxId  : DecEq TxId
                 DecEq-Ix    : DecEq Ix
                 DecEq-Netw  : DecEq Network
                 DecEq-UpdT  : DecEq (Ledger.PParams.PParamsDiff.UpdateT ppUpd)

  open TokenAlgebra tokenAlgebra public
  open isHashableSet adHashingScheme renaming (THash to ADHash) public

  open Ledger.Script.ScriptStructure ss public

  open import Ledger.PParams crypto epochStructure ss

  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public
  -- TODO: figure out what to do with the hash
  open Ledger.GovernanceActions TxId Network ADHash crypto epochStructure ss ppUpd ppHashingScheme hiding (yes; no) public

  open import Ledger.Address Network KeyHash ScriptHash public
  open import Ledger.Deleg crypto TxId Network ADHash epochStructure ss ppUpd ppHashingScheme public

\end{code}
\emph{Derived types}
\AgdaTarget{TxIn, TxOut, UTxO, Wdrl}
\begin{code}
  TxIn  = TxId × Ix
  TxOut = Addr × Value × Maybe DataHash
  UTxO  = TxIn ⇀ TxOut
  Wdrl  = RwdAddr ⇀ Coin

  Index = Ix

  RdmrPtr : Set
  RdmrPtr = Tag × Ix

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
          collateral     : ℙ TxIn
          reqSigHash     : ℙ KeyHash --a set of key hashes that must sign ...
          scriptIntHash  : Maybe ScriptHash

  record TxWitnesses : Set where
    field vkSigs   : VKey ⇀ Sig
          scripts  : ℙ Script
          txdats   : (DataHash ⇀ Datum)
          txrdmrs  : (RdmrPtr  ⇀ (Redeemer × ExUnits))

  record Tx : Set where
    field body    : TxBody
          wits    : TxWitnesses
          isValid : Bool
          txAD    : Maybe AuxiliaryData
\end{code}
\emph{Abstract functions}
\begin{code}
--  record Abstract : Set where
--    field txscriptfee : Prices → ExUnits → Coin
\end{code}
\end{AgdaSuppressSpace}
\caption{Definitions used in the UTxO transition system}
\label{fig:defs:utxo-shelley}
\end{figure*}

\begin{figure*}[h]
\begin{code}
  getValue : TxOut → Value
  getValue (l , v , h) = v

  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom ((utxo ↾' to-sp (isVKeyAddr? ∘ proj₁)) ˢ)
\end{code}
\end{figure*}
\begin{code}[hide]
  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂
\end{code}
