```
{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Transaction where

import Data.Maybe.Base as M

open import Ledger.Prelude renaming (filterᵐ to filter)

open import Ledger.Dijkstra.Crypto
open import Ledger.Dijkstra.Types.Epoch
open import Ledger.Dijkstra.Types.GovStructure
import Ledger.Dijkstra.PParams
import Ledger.Dijkstra.Script
import Ledger.Dijkstra.GovernanceActions
import Ledger.Dijkstra.Certs
import Ledger.Dijkstra.TokenAlgebra
import Ledger.Dijkstra.Address

open import Tactic.Derive.DecEq
open import Relation.Nullary.Decidable using (⌊_⌋)

data TxLvl : Type where
  TxLvlTop TxLvlSub : TxLvl 

InTopLvl : TxLvl → Type → Type
InTopLvl TxLvlTop X = X
InTopLvl TxLvlSub _ = ⊤

InSubLvl : TxLvl → Type → Type
InSubLvl TxLvlSub X = X
InSubLvl TxLvlTop _ = ⊤

unquoteDecl DecEq-TxLvl = derive-DecEq ((quote TxLvl , DecEq-TxLvl) ∷ [])

private
  variable
    txLvl : TxLvl

data Tag : TxLvl → Type where
  Spend Mint Cert Rewrd Vote Propose Observe : Tag txLvl
  SubObserve : Tag TxLvlSub

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
  open Ledger.Dijkstra.TokenAlgebra ScriptHash public
  open Ledger.Dijkstra.Address Network KeyHash ScriptHash ⦃ it ⦄ ⦃ it ⦄ ⦃ it ⦄ public

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.Dijkstra.Script crypto epochStructure public

  field scriptStructure : _
  open ScriptStructure scriptStructure public
  open Ledger.Dijkstra.PParams crypto epochStructure scriptStructure public

  field govParams : _
  open GovParams govParams public

  field tokenAlgebra : TokenAlgebra
  open TokenAlgebra tokenAlgebra public

  field txidBytes : TxId → Ser

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

  module GovernanceActions = Ledger.Dijkstra.GovernanceActions govStructure
  open GovernanceActions hiding (Vote; yes; no; abstain) public

  open import Ledger.Dijkstra.Certs govStructure

  TxIn     = TxId × Ix
  TxOut    = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe Script
  UTxO     = TxIn ⇀ TxOut
  Wdrl     = RwdAddr ⇀ Coin

  RdmrPtr : TxLvl → Type
  RdmrPtr txLvl  = Tag txLvl × Ix

  ProposedPPUpdates  = KeyHash ⇀ PParamsUpdate
  Update             = ProposedPPUpdates × Epoch

  record HasUTxO {a} (A : Type a) : Type a where
    field UTxOOf : A → UTxO
  open HasUTxO ⦃...⦄ public

  record TxBody (txLvl : TxLvl) : Type
  record TxWitnesses (txLvl : TxLvl) : Type
  record Tx (txLvl : TxLvl) : Type

  record TxBody txLvl where
    inductive
    field
      txins          : ℙ TxIn
      refInputs      : ℙ TxIn
      txouts         : Ix ⇀ TxOut
      txfee          : InTopLvl txLvl Coin -- only in top-level tx
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
      collateral     : InTopLvl txLvl (ℙ TxIn) -- only in top-level tx
      scriptIntHash  : Maybe ScriptHash

      -- new in Dijkstra
      txsubtxs             : InTopLvl txLvl (List (Tx TxLvlSub))
      txreqObservers       : ℙ Credential -- replaces reqSigHash : ℙ KeyHash
      txreqTopLvlObservers : InSubLvl txLvl (P2Script ⇀ Datum)

  record TxWitnesses txLvl where
    inductive
    field
      vkSigs   : VKey ⇀ Sig
      scripts  : ℙ Script
      txdats   : DataHash ⇀ Datum
      txrdmrs  : RdmrPtr txLvl ⇀ Redeemer × ExUnits

    scriptsP1 : ℙ P1Script
    scriptsP1 = mapPartial isInj₁ scripts

  record Tx txLvl where
    inductive
    field
      body     : TxBody txLvl
      wits     : TxWitnesses txLvl
      isValid  : InTopLvl txLvl Bool
      txAD     : Maybe AuxiliaryData

  record HasTxBody {txLvl} {a} (A : Type a) : Type a where
    field TxBodyOf : A → TxBody txLvl
  open HasTxBody  ⦃...⦄ public

  record Hastxfee {a} (A : Type a) : Type a where
    field txfeeOf : A → Coin
  open Hastxfee   ⦃...⦄ public

  record Hastxcerts {a} (A : Type a) : Type a where
    field txcertsOf : A → List DCert
  open Hastxcerts ⦃...⦄ public

  record Hastxprop {a} (A : Type a) : Type a where
    field txpropOf  : A → List GovProposal
  open Hastxprop  ⦃...⦄ public

  record Hastxid    {a} (A : Type a) : Type a where 
    field txidOf    : A → TxId
  open Hastxid    ⦃...⦄ public

  -- instance
  --   HasTxBody-Tx : HasTxBody (Tx txLvl)
  --   HasTxBody-Tx .TxBodyOf = Tx.body

  --   Hastxfee-Tx : Hastxfee (Tx txLvl)
  --   Hastxfee-Tx .txfeeOf = TxBody.txfee ∘ TxBodyOf
    
  --   Hastxcerts-Tx : Hastxcerts Tx
  --   Hastxcerts-Tx .txcertsOf = TxBody.txcerts ∘ TxBodyOf

  --   Hastxprop-Tx : Hastxprop Tx
  --   Hastxprop-Tx .txpropOf = TxBody.txprop ∘ TxBodyOf

  --   HasWdrls-TxBody : HasWdrls TxBody
  --   HasWdrls-TxBody .wdrlsOf = TxBody.txwdrls

  --   HasWdrls-Tx : HasWdrls Tx
  --   HasWdrls-Tx .wdrlsOf = wdrlsOf ∘ TxBodyOf

  --   Hastxid-Tx : Hastxid Tx
  --   Hastxid-Tx .txidOf = TxBody.txid ∘ TxBodyOf

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

  refScripts : Tx txLvl → UTxO → List Script
  refScripts tx utxo =
    mapMaybe (proj₂ ∘ proj₂ ∘ proj₂) $ setToList (range (utxo ∣ (txins ∪ refInputs)))
    where open Tx; open TxBody (tx .body)

  txscripts : Tx txLvl → UTxO → ℙ Script
  txscripts tx utxo = scripts (tx .wits) ∪ fromList (refScripts tx utxo)
    where open Tx; open TxWitnesses

  lookupScriptHash : ScriptHash → Tx txLvl → UTxO → Maybe Script
  lookupScriptHash sh tx utxo =
    if sh ∈ mapˢ proj₁ (m ˢ) then
      just (lookupᵐ m sh)
    else
      nothing
    where m = setToMap (mapˢ < hash , id > (txscripts tx utxo))

  isP2Script : Script → Type
  isP2Script = T ∘ is-just ∘ isInj₂

  isP2Script? : ∀ {s} → isP2Script s ⁇
  isP2Script? {inj₁ x} .dec = no λ ()
  isP2Script? {inj₂ y} .dec = yes tt

  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂
```
