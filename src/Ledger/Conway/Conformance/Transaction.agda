
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
module Ledger.Conway.Conformance.Transaction where

import Data.Maybe.Base as M

open import Ledger.Prelude renaming (filterᵐ to filter)

open import Ledger.Crypto
open import Ledger.Types.Epoch
open import Ledger.Conway.Conformance.Types.GovStructure
import Ledger.PParams
import Ledger.Script
import Ledger.Conway.Conformance.GovernanceActions
import Ledger.Conway.Conformance.Certs
import Ledger.TokenAlgebra
import Ledger.Address

open import Tactic.Derive.DecEq
open import MyDebugOptions
open import Relation.Nullary.Decidable using (⌊_⌋)

data Tag : Type where
  Spend Mint Cert Rewrd Vote Propose : Tag
unquoteDecl DecEq-Tag = derive-DecEq ((quote Tag , DecEq-Tag) ∷ [])

record TransactionStructure : Type₁ where
  field

        Ix TxId AuxiliaryData : Type

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

  module GovernanceActions = Ledger.Conway.Conformance.GovernanceActions govStructure
  open GovernanceActions hiding (Vote; yes; no; abstain) public

  open import Ledger.Conway.Conformance.Certs govStructure public

  TxIn     = TxId × Ix
  TxOut    = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe Script
  UTxO     = TxIn ⇀ TxOut
  Wdrl     = RwdAddr ⇀ Coin
  RdmrPtr  = Tag × Ix

  ProposedPPUpdates  = KeyHash ⇀ PParamsUpdate
  Update             = ProposedPPUpdates × Epoch

  record TxBody : Type where

    field

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
      scriptIntHash  : Maybe ScriptHash

  record TxWitnesses : Type where

    field

      vkSigs   : VKey ⇀ Sig
      scripts  : ℙ Script
      txdats   : DataHash ⇀ Datum
      txrdmrs  : RdmrPtr  ⇀ Redeemer × ExUnits

    scriptsP1 : ℙ P1Script
    scriptsP1 = mapPartial isInj₁ scripts

  record Tx : Type where

    field

      body     : TxBody
      wits     : TxWitnesses
      isValid  : Bool
      txAD     : Maybe AuxiliaryData

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

  isP2Script : Script → Bool
  isP2Script = is-just ∘ isInj₂

  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂

