{-# OPTIONS --safe #-}

import Data.Maybe as M

open import Interface.Decidable.Instance
open import Tactic.AnyOf
open import Tactic.Assumption
open import Tactic.Defaults
open import Tactic.Helpers

open import Ledger.Prelude; open Properties
open import Ledger.Transaction
open import Ledger.Abstract
open import Ledger.Script
open import Ledger.Crypto


module Ledger.ScriptValidation
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs) (open indexOf indexOfImp)
  where

-- Because of missing macro hygiene, we have to copy&paste this. https://github.com/agda/agda/issues/3819
private macro
  ∈⇒P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ [])
  P⇒∈ = anyOfⁿᵗ (quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])
  ∈⇔P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])

data ScriptPurpose : Set where
  Cert  : DCert      → ScriptPurpose
  Rwrd  : RwdAddr    → ScriptPurpose
  Mint  : ScriptHash → ScriptPurpose
  Spend : TxIn       → ScriptPurpose

rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb = λ where
  (Cert h)  → M.map (Cert  ,_) $ indexOfDCert    h txcerts
  (Rwrd h)  → M.map (Rewrd ,_) $ indexOfRwdAddr  h txwdrls
  (Mint h)  → M.map (Mint  ,_) $ indexOfPolicyId h (policies mint)
  (Spend h) → M.map (Spend ,_) $ indexOfTxIn     h txins
 where open TxBody txb

indexedRdmrs : Tx → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? txrdmrs x ⦃ _ ∈? _ ⦄) nothing (rdptr body sp)
  where open Tx tx; open TxWitnesses wits

-- Abstract Script Validation Functions

-- epochInfoSlotToUTCTime : EpochInfo → SystemStart → Slot → -- UTCTime? Translate slot number to system time or fail

-- runPLCScript : CostModel → Scriptplc → ExUnits → Data∗ → IsValid
-- Validate a Plutus script, taking resource limits into account

-- Notation

getDatum : Tx → UTxO → ScriptPurpose → List Datum
getDatum tx utxo (Spend txin) = let open Tx tx; open TxWitnesses wits in
  maybe
    (λ { (_ , _ , just x) →
         maybe (λ x₁ → [ x₁ ]) [] (lookupᵐ? txdats x ⦃ _ ∈? _ ⦄)
       ; (_ , _ , nothing) → []
       })
    []
    (lookupᵐ? utxo txin ⦃ _ ∈? _ ⦄)
getDatum tx utxo _ = []


record TxInfo : Set where
  field realizedInputs : UTxO
        txouts  : Ix ⇀ TxOut
        fee     : Value
        mint    : Value
        txcerts : List DCert
        txwdrls : Wdrl
        txvldt  : Maybe Slot × Maybe Slot
        vkKey   : ℙ KeyHash
        txdats  : DataHash ⇀ Datum
        txid    : TxId

txInfo : Language → PParams
                  → UTxO
                  → Tx
                  → TxInfo
txInfo l pp utxo tx = record
  { TxBody body
  ; TxWitnesses wits
  ; realizedInputs = utxo ∣ txins
  ; fee = inject txfee
  ; mint = mint
  ; vkKey = reqSigHash
  } where open Tx tx; open TxBody body

DelegateOrDeReg : DCert → Set
DelegateOrDeReg (delegate x x₁ x₂ x₃) = ⊤
DelegateOrDeReg (regpool x x₁) = ⊥
DelegateOrDeReg (retirepool x x₁) = ⊥
DelegateOrDeReg (regdrep x x₁ x₂) = ⊥
DelegateOrDeReg (deregdrep x) = ⊤
DelegateOrDeReg (ccreghot x x₁) = ⊥

DelegateOrDeReg? : ∀ x → Dec (DelegateOrDeReg x)
DelegateOrDeReg? (delegate x x₁ x₂ x₃) = yes tt
DelegateOrDeReg? (regpool x x₁) = no (λ { ()})
DelegateOrDeReg? (retirepool x x₁) = no (λ { ()})
DelegateOrDeReg? (regdrep x x₁ x₂) = no (λ { ()})
DelegateOrDeReg? (deregdrep x) = yes tt
DelegateOrDeReg? (ccreghot x x₁) = no (λ { ()})

UTxOSH  = TxIn ⇀ (TxOut × ScriptHash)

scriptOutWithHash : TxIn → TxOut → Maybe (TxOut × ScriptHash)
scriptOutWithHash txin (addr , snd) with isScriptAddr? addr
... | no ¬p = nothing
... | yes p = just ((addr , snd) , (getScriptHash addr p))

scriptOutsWithHash : UTxO → UTxOSH
scriptOutsWithHash utxo = mapMaybeWithKeyᵐ scriptOutWithHash utxo

spendScripts : TxIn → UTxOSH → Maybe (ScriptPurpose × ScriptHash)
spendScripts txin utxo with txin ∈? dom (utxo ˢ)
... | no ¬p = nothing
... | yes p = just ((Spend txin) , (proj₂ (lookupMap utxo p)))

rwdScripts : RwdAddr → Maybe (ScriptPurpose × ScriptHash)
rwdScripts a with isScriptRwdAddr? a
... | no ¬p = nothing
... | yes (SHisScript sh) = just (Rwrd a , sh)

certScripts : DCert → Maybe (ScriptPurpose × ScriptHash)
certScripts d with DelegateOrDeReg? d
... | no ¬p = nothing
certScripts (delegate (inj₁ x) x₁ x₂ x₃) | yes p = nothing
certScripts (delegate (inj₂ y) x₁ x₂ x₃) | yes p = just (Cert (delegate (inj₂ y) x₁ x₂ x₃) , y)
certScripts (deregdrep (inj₁ x)) | yes p = nothing
certScripts (deregdrep (inj₂ y)) | yes p = just (Cert (deregdrep (inj₂ y)) , y)

scriptsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × ScriptHash)
scriptsNeeded utxo txb
  = mapPartial (λ x → spendScripts x (scriptOutsWithHash utxo)) txins
  ∪ mapPartial (λ x → rwdScripts x) (dom $ txwdrls .proj₁)
  ∪ mapPartial (λ x → certScripts x) (fromList txcerts)
  ∪ mapˢ (λ x → Mint x , x) (policies mint)
  where open TxBody txb


-- We need to add toData to define this
valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = toData (txinfo , sp)


scriptHashInTx : ScriptHash → Tx → Bool
scriptHashInTx sh tx = ⌊ sh ∈? mapˢ proj₁ (m ˢ) ⌋
  where m = setToHashMap $ TxWitnesses.scripts (Tx.wits tx)

-- need to get map from language script ↦ cm
-- need to update costmodels to add the language map in order to check
-- (Language ↦ CostModel) ∈ costmdls ↦ (Language ↦ CostModel)

collectPhaseTwoScriptInputs' : PParams → Tx → UTxO → (ScriptPurpose × ScriptHash)
  → Maybe (Script × List Data × ExUnits × CostModel)
collectPhaseTwoScriptInputs' pp tx utxo (sp , sh)
  with lookupScriptHash sh tx
... | nothing = nothing
... | just s
  with isInj₂ s | indexedRdmrs tx sp
... | just p2s | just (rdmr , eu)
    = just (s ,
        ( (getDatum tx utxo sp ++ rdmr ∷ valContext (txInfo (language p2s) pp utxo tx) sp ∷ [])
        , eu
        , PParams.costmdls pp)
      )
... | x | y = nothing

collectPhaseTwoScriptInputs : PParams → Tx → UTxO
  → List (Script × List Data × ExUnits × CostModel)
collectPhaseTwoScriptInputs pp tx utxo
  = setToList
  $ mapPartial (collectPhaseTwoScriptInputs' pp tx utxo)
  $ scriptsNeeded utxo (tx .Tx.body)
