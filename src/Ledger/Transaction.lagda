\section{Transactions}
\label{sec:transactions}

\begin{code}[hide]
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
module Ledger.Transaction where

import Data.Maybe.Base as M

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


open import Tactic.Derive.DecEq
open import MyDebugOptions
open import Relation.Nullary.Decidable using (⌊_⌋)

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

  field crypto : _
  open Crypto crypto public
  open Ledger.TokenAlgebra ScriptHash public
  open Ledger.Address Network KeyHash ScriptHash public

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.Script crypto epochStructure public

  field scriptStructure : ScriptStructure
  open ScriptStructure scriptStructure public
  open Ledger.PParams crypto epochStructure scriptStructure public

  field govParams : _
  open GovParams govParams public

  field tokenAlgebra : TokenAlgebra
  open TokenAlgebra tokenAlgebra public

  field txidBytes : TxId → Ser
        networkId : Network

  govStructure : GovStructure
  govStructure = record
    -- TODO: figure out what to do with the hash
    { TxId = TxId; Network = Network; DocHash = ADHash
    ; crypto = crypto
    ; epochStructure = epochStructure
    ; scriptStructure = scriptStructure
    ; govParams = govParams
    }

  open Ledger.GovernanceActions govStructure hiding (yes; no) public
  open Ledger.Deleg             govStructure public
\end{code}
\emph{Derived types}
\AgdaTarget{TxIn, TxOut, UTxO, Wdrl}
\begin{code}
  TxIn  = TxId × Ix
  TxOut = Addr × Value × Maybe DataHash
  UTxO  = TxIn ⇀ TxOut
  Wdrl  = RwdAddr ⇀ Coin

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
    field txins          : ℙ TxIn
          txouts         : Ix ⇀ TxOut
          txfee          : Coin
          mint           : Value
          txvldt         : Maybe Slot × Maybe Slot
          txcerts        : List DCert
          txwdrls        : Wdrl
          txvote         : List GovVote
          txprop         : List GovProposal
          txdonation     : Coin
          txup           : Maybe Update
          txADhash       : Maybe ADHash
          netwrk         : Maybe Network
          txsize         : ℕ
          txid           : TxId
          collateral     : ℙ TxIn
          reqSigHash     : ℙ KeyHash
          scriptIntHash  : Maybe ScriptHash

  record TxWitnesses : Set where
    field vkSigs   : VKey ⇀ Sig
          scripts  : ℙ Script
          txdats   : DataHash ⇀ Datum
          txrdmrs  : RdmrPtr  ⇀ Redeemer × ExUnits

    scriptsP1 : ℙ P1Script
    scriptsP1 = mapPartial isInj₁ scripts

  record Tx : Set where
    field body     : TxBody
          wits     : TxWitnesses
          -- isValid  : Bool
          txAD     : Maybe AuxiliaryData

\end{code}
\emph{Abstract functions}
\begin{code}
\end{code}
\end{AgdaSuppressSpace}
\caption{Definitions used in the UTxO transition system}
\label{fig:defs:utxo-shelley}
\end{figure*}

\begin{figure*}[h]
\begin{code}
  getValue : TxOut → Value
  getValue (_ , v , _) = v

  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom (utxo ↾' to-sp (isVKeyAddr? ∘ proj₁))

  scriptOuts : UTxO → UTxO
  scriptOuts utxo = filterᵐ (sp-∘ (to-sp isScriptAddr?)
                             λ { (_ , addr , _) → addr}) utxo

  txinsScript : ℙ TxIn → UTxO → ℙ TxIn
  txinsScript txins utxo = txins ∩ dom (proj₁ (scriptOuts utxo))

  lookupScriptHash : ScriptHash → Tx → Maybe Script
  lookupScriptHash sh tx = case sh ∈? mapˢ proj₁ (m ˢ) of λ where
      (no _)  → nothing
      (yes _) → just $ lookupᵐ m sh
    where m = setToHashMap $ tx .Tx.wits .TxWitnesses.scripts

  isP2Script : Script → Bool
  isP2Script = is-just ∘ isInj₂
\end{code}
\end{figure*}
\begin{code}[hide]
  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂
\end{code}
