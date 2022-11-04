\section{Transactions}
\label{sec:transactions}

\begin{code}[hide]
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
module Ledger.Transaction where

open import Ledger.Prelude

open import Ledger.Epoch
open import Ledger.Crypto
import Ledger.PParams
import Ledger.Script

import Data.Nat as N

-- We need a tag for scripts
data Tag : Set where
  Spend Mint Cert Rewrd : Tag

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
        ppUpd                               : Ledger.PParams.PParamsDiff Epoch
        txidBytes                           : TxId → Crypto.Ser crypto
        instance DecEq-TxId  : DecEq TxId
                 DecEq-Epoch : DecEq Epoch
                 DecEq-Ix    : DecEq Ix
                 DecEq-Netw  : DecEq Network
                 DecEq-UpdT  : DecEq (Ledger.PParams.PParamsDiff.UpdateT ppUpd)

  open Crypto crypto public
  open isHashableSet adHashingScheme renaming (THash to ADHash) public

  field ss : Ledger.Script.ScriptStructure KeyHash ScriptHash Slot
        instance DecEq-ADHash : DecEq ADHash

  open Ledger.Script.ScriptStructure ss public

  open import Ledger.PParams Epoch

  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public

  open import Ledger.Address Network KeyHash ScriptHash public


  -- multiAsset
  -----------------------------------------------------
  AssetName : Set
  AssetName = String --is normally bytestring

  PolicyID : Set
  PolicyID = ScriptHash

  AssetID : Set
  AssetID = PolicyID × AssetName

  open import Data.Integer

  Quantity : Set
  Quantity = ℤ

  -- what does the 0 in ↦₀ mean?
    -- Whenever we need to get the quantity of a currency in a 'Value' where there
    -- is no explicit quantity of that currency in the 'Value', then the quantity is
    -- taken to be zero.

  -- take token algebra, turn it into record, field for specifying a token algebra, in transaction

  Value : Set
  Value = AssetID ↛ Quantity

  {- Value Types
  Wdrl = P.StakingCredential × Integer
  PolicyID = P.CurrencySymbol
  AssetName = P.TokenName
  Coin = Integer
  Quantity = Integer
  -}

  -- Functions over value
  ---------------------------

  -- how do I writ this function?
  --
  --coin v = v AdaID
  --inject c = AdaID ↦₀ c
  --policies v= {pid|(pid, _) ∈ supp v}

  coin : Value → Coin
  coin v = {!!}


  ---------------------------

  -- Pointwise operations on Value
  --------------------------

  --v + w = { aid ↦ v aid + w aid | aid ∈ dom v ∪ dom w }

  --v ≤ w ⇔ ∀ aid ∈ AssetID, v aid ≤ w aid

  --------------------------

  -----------------------------------------------------

\end{code}
\emph{Derived types}
\AgdaTarget{TxIn, TxOut, UTxO, Wdrl}
\begin{code}
  TxIn  = TxId × Ix
  TxOut = Addr × Value × Maybe DataHash
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
          collateral : ℙ TxIn -- new
          txouts     : Ix ↛ TxOut
          --txcerts  : List DCert
          mint       : Value -- new
          txfee      : Coin
          txvldt     : Maybe Slot × Maybe Slot
          txwdrls    : Wdrl
          txup       : Maybe Update
          reqSignerHashes : ℙ KeyHash -- new
          scriptIntegrityHash : Maybe ScriptHash -- new
          txADhash   : Maybe ADHash
          netwrk    : Maybe Network
          txsize     : ℕ
          txid       : TxId -- does this need to change to tx network id

  record TxWitnesses : Set where
    field vkSigs   : VKey ↛ Sig
          scripts  : ScriptHash ↛ Script -- new OLD: ℙ Script
          -- txdats : (DataHash ↦ Datum)
          -- txrdmrs : (RdmrPtr ↦ Redeemer × ExUnits)

  record Tx : Set where
    field body  : TxBody
          wits  : TxWitnesses
          IsValid : Tag -- new
          txAD  : Maybe AuxiliaryData
\end{code}
\emph{Abstract functions}
\begin{code}
\end{code}
\caption{Definitions used in the UTxO transition system}
\label{fig:defs:utxo-shelley}
\end{figure*}

\begin{code}
  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom ((utxo ∣^' to-sp (isVKeyAddr? ∘ proj₁)) ˢ)
\end{code}
\begin{code}[hide]
  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = proj₂
\end{code}
