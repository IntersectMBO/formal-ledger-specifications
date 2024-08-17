\section{Transactions}
\label{sec:transactions}

\begin{code}[hide]
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
module Ledger.Transaction where

import Data.Maybe.Base as M

open import Ledger.Prelude renaming (filterᵐ to filter)

open import Ledger.Crypto
open import Ledger.Types.Epoch
open import Ledger.Types.GovStructure
import Ledger.PParams
import Ledger.Script
import Ledger.GovernanceActions
import Ledger.Certs
import Ledger.Certs.Haskell
import Ledger.TokenAlgebra
import Ledger.Address


open import Tactic.Derive.DecEq
open import MyDebugOptions
open import Relation.Nullary.Decidable using (⌊_⌋)

data Tag : Type where
  Spend Mint Cert Rewrd Vote Propose SpendOut : Tag
unquoteDecl DecEq-Tag = derive-DecEq ((quote Tag , DecEq-Tag) ∷ [])

record TransactionStructure : Type₁ where
  field
\end{code}

Transactions are defined in Figure~\ref{fig:defs:transactions}. A
transaction is made up of a transaction body, a collection of
witnesses and some optional auxiliary data.
\begin{NoConway}
Some key ingredients in the transaction body are:
\begin{itemize}
  \item A set \txins of transaction inputs, each of which identifies an output from a previous transaction.
    A transaction input consists of a transaction id and an index to uniquely identify the output.
  \item An indexed collection \txouts of transaction outputs.
    The \TxOut type is an address paired with a coin value.
  \item A transaction fee. This value will be added to the fee pot.
  \item The size \txsize and the hash \txid of the serialized form of the transaction that was included in the block.
\end{itemize}
\end{NoConway}
\begin{Conway}
Ingredients of the transaction body introduced in the Conway era are the following:
\begin{itemize}
  \item \txvote, the list of votes for goverance actions;
  \item \txprop, the list of governance proposals;
  \item \txdonation, the treasury donation amount;
  \item \curTreasury, the current value of the treasury.
  \item \txsize and \txid, the size and hash of the serialized form of the transaction that was included in the block.
\end{itemize}
\end{Conway}

\begin{figure*}[h]
\emph{Abstract types}
\begin{AgdaMultiCode}
\begin{code}
        Ix TxId AuxiliaryData : Type
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
  open Ledger.Address Network KeyHash ScriptHash ⦃ it ⦄ ⦃ it ⦄ ⦃ it ⦄ public

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.Script crypto epochStructure public

  field scriptStructure : _
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
    { TxId = TxId; DocHash = ADHash
    ; crypto = crypto
    ; epochStructure = epochStructure
    ; scriptStructure = scriptStructure
    ; govParams = govParams
    ; globalConstants = globalConstants
    }

  open Ledger.GovernanceActions govStructure hiding (Vote; yes; no; abstain) public

  open import Ledger.Certs govStructure public
  open import Ledger.Certs.Haskell govStructure public
    renaming (DState to DState'; GState to GState') using ()
\end{code}
\begin{NoConway}
\emph{Derived types}
\begin{code}
  TxIn     = TxId × Ix
  TxOut    = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe Script
  UTxO     = TxIn ⇀ TxOut
  Wdrl     = RwdAddr ⇀ Coin
  RdmrPtr  = Tag × Ix

  ProposedPPUpdates  = KeyHash ⇀ PParamsUpdate
  Update             = ProposedPPUpdates × Epoch
\end{code}
\end{NoConway}
\emph{Transaction types}
\begin{code}
  record TxBody : Type where
\end{code}
\begin{code}[hide]
    field
\end{code}
\begin{code}
      txins          : ℙ TxIn
      refInputs      : ℙ TxIn
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
      txNetworkId    : Maybe Network
      curTreasury    : Maybe Coin
      txsize         : ℕ
      txid           : TxId
      collateral     : ℙ TxIn
      reqSigHash     : ℙ KeyHash
      scriptIntHash  : Maybe ScriptHash -- TODO is this actually checked somewhere?
      -- NEW
      -- fixes all attached sub-transactions
      subTxs          : ℙ TxId 
      -- fixes what transaction bodies will be shown to plutus scripts being run by this transaction (can be in any transaction)
      requiredTxs    : ℙ TxId
      -- outputs being spent for which inputs are provided by top-level tx
      spendOuts      : List TxOut
      -- inputs corresponding to spentOuts
      corInputs      : ℙ TxIn
      -- toggles whether subTx provides ExUnits or the top-level Tx provides them
      knowsOwnUnits   : Bool
      -- units for sub-Txs if they do not provide their own
      subUnits        : TxId ⇀ (RdmrPtr  ⇀ ExUnits)
\end{code}
\begin{NoConway}
\begin{code}
  record TxWitnesses : Type where
\end{code}
\begin{code}[hide]
    field
\end{code}
\begin{code}
      vkSigs   : VKey ⇀ Sig
      scripts  : ℙ Script
      txdats   : DataHash ⇀ Datum
      txrdmrs  : RdmrPtr  ⇀ Redeemer × ExUnits

    scriptsP1 : ℙ P1Script
    scriptsP1 = mapPartial isInj₁ scripts

  record Tx : Type where
\end{code}
\begin{code}[hide]
    field
\end{code}
\begin{code}
      body     : TxBody
      wits     : TxWitnesses
      isValid  : Bool
      -- Top level transaction or not (set by builder of top level Tx)
      isTopLevel  : Bool
      txAD     : Maybe AuxiliaryData
      -- NEW
      -- map of transaction bodies and associated data (can only be attached to a top level transaction)
      -- probably need a data structure called subTxData here instead of a product?
      subTxBodies  : TxId ⇀ TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody))
      requiredTxBodies  : TxId ⇀ TxBody
\end{code}
\end{NoConway}
\end{AgdaMultiCode}
\caption{Transactions and related types}
\label{fig:defs:transactions}
\end{figure*}

\begin{NoConway}
\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}

  -- returns a list of subTxBodies paired with associated other data (sigs, etc)
  getTxData : (TxId ⇀ TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody))) → List (TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody)))
  getTxData subTxBodies = map proj₂ (setToList (proj₁ subTxBodies))

  -- returns just the txbody of a given subTx data structure 
  getBD : TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody)) → TxBody
  getBD = proj₁

  -- returns just the signature of a given subTx data structure
  getSigs : TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody)) → ( VKey ⇀ Sig )
  getSigs = proj₁ ∘ proj₂
  
  -- returns just the redeemer/exunit data of a given subTx data structure
  getRds : TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody)) → (RdmrPtr  ⇀ Redeemer × ExUnits)
  getRds t = proj₁ (proj₂ (proj₂ t))

  -- returns just the aux data of a given subTx data structure
  getAD : TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody)) → (Maybe AuxiliaryData)
  getAD t = proj₁ (proj₂ (proj₂ (proj₂ t)))
    
  -- returns requireTxBodies if ownRds are provided 
  getReqs : Bool → (TxId ⇀ TxBody) → TxBody × (( VKey ⇀ Sig ) × (RdmrPtr  ⇀ Redeemer × ExUnits) × (Maybe AuxiliaryData) ×  (TxId ⇀ TxBody)) → (TxId ⇀ TxBody)
  getReqs ownRds st t with ownRds  
  ... | false = st
  ... | true  = proj₂ (proj₂ (proj₂ (proj₂ t)))

  -- returns redeemer pointer sturucture if ownRds is true, returns redeemer pointers with redeemers from structure and exunits from txExs
  mkRds : Bool → (RdmrPtr  ⇀ Redeemer × ExUnits) → (TxId ⇀ RdmrPtr  ⇀ ExUnits) → (RdmrPtr  ⇀ Redeemer × ExUnits) 
  mkRds ownRds r txExs with ownRds  
  ... | false = r -- TODO compute the real set!!
  ... | true  = r

  getValue : TxOut → Value
  getValue (_ , v , _) = v

  TxOutʰ = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe ScriptHash

  txOutHash : TxOut → TxOutʰ
  txOutHash (a , v , d , s) = a , (v , (d , M.map hash s))

  getValueʰ : TxOutʰ → Value
  getValueʰ (_ , v , _) = v

  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom (utxo ∣^' (isVKeyAddr ∘ proj₁))

  scriptOuts : UTxO → UTxO
  scriptOuts utxo = filter (λ (_ , addr , _) → isScriptAddr addr) utxo

  txinsScript : ℙ TxIn → UTxO → ℙ TxIn
  txinsScript txins utxo = txins ∩ dom (proj₁ (scriptOuts utxo))

  refScripts : Tx → UTxO → ℙ Script
  refScripts tx utxo =
    mapPartial (proj₂ ∘ proj₂ ∘ proj₂) (range (utxo ∣ (txins ∪ refInputs)))
    where open Tx; open TxBody (tx .body)

  txscripts : Tx → UTxO → ℙ Script
  txscripts tx utxo = scripts (tx .wits) ∪ refScripts tx utxo
    where open Tx; open TxWitnesses

  lookupScriptHash : ScriptHash → Tx → UTxO → Maybe Script
  lookupScriptHash sh tx utxo =
    if sh ∈ mapˢ proj₁ (m ˢ) then
      just (lookupᵐ m sh)
    else
      nothing
    where m = setToHashMap (txscripts tx utxo)
\end{code}
\end{AgdaMultiCode}
\caption{Functions related to transactions}
\label{fig:defs:transaction-funs}
\end{figure*}
\end{NoConway}

\begin{code}[hide]
  isP2Script : Script → Bool
  isP2Script = is-just ∘ isInj₂

  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂

\end{code}
