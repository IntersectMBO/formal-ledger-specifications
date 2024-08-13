{-# OPTIONS --safe #-}

import Data.Maybe as M

open import Tactic.AnyOf
open import Tactic.Assumption

open import Ledger.Prelude; open Properties
open import Ledger.Transaction
open import Ledger.Abstract
open import Ledger.Crypto

module Ledger.ScriptValidation
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs) (open indexOf indexOfImp)
  where

open import Ledger.Certs govStructure

instance
  _ = DecEq-Slot

data ScriptPurpose : Type where
  Cert     : DCert        → ScriptPurpose
  Rwrd     : RwdAddr      → ScriptPurpose
  Mint     : ScriptHash   → ScriptPurpose
  Spend    : TxIn         → ScriptPurpose
  Vote     : Voter        → ScriptPurpose
  Propose  : GovProposal  → ScriptPurpose
  SpendOut : Ix         → ScriptPurpose
  BatchObs : ScriptHash   → ScriptPurpose

rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb = λ where
  (Cert h)     → M.map (Cert    ,_) $ indexOfDCert    h txcerts
  (Rwrd h)     → M.map (Rewrd   ,_) $ indexOfRwdAddr  h txwdrls
  (Mint h)     → M.map (Mint    ,_) $ indexOfPolicyId h (policies mint)
  (Spend h)    → M.map (Spend   ,_) $ indexOfTxIn     h txins
  (Vote h)     → M.map (Vote    ,_) $ indexOfVote     h (map GovVote.voter txvote)
  (Propose h)  → M.map (Propose ,_) $ indexOfProposal h txprop
  (SpendOut h) → M.map (SpendOut ,_) $ (just h) 
  (BatchObs h)  → M.map (BatchObs ,_) $ indexOfBatchObs h requireBatchObservers
 where open TxBody txb

indexedRdmrs : Tx → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? txrdmrs x) nothing (rdptr body sp)
  where open Tx tx; open TxWitnesses wits

getDatum : Tx → UTxO → ScriptPurpose → List Datum
getDatum tx utxo (Spend txin) = let open Tx tx; open TxWitnesses wits in
  maybe
    (λ { (_ , _ , just (inj₂ h), _)  → maybe [_] [] (lookupᵐ? txdats h)
       ; (_ , _ , just (inj₁ d), _)  → [ d ]
       ; (_ , _ , nothing , _) → [] })
    []
    (lookupᵐ? utxo txin)
getDatum tx _ (SpendOut ix) = let open Tx tx; open TxWitnesses wits in
  maybe
    (λ { (_ , _ , just (inj₂ h), _)  → maybe [_] [] (lookupᵐ? txdats h)
       ; (_ , _ , just (inj₁ d), _)  → [ d ]
       ; (_ , _ , nothing , _) → [] })
    []
    (lookupᵐ? (body .TxBody.spendOuts) ix)
getDatum tx utxo _ = []

record TxInfo : Type where
  inductive
  constructor tree
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
        otherInfos : List TxInfo

txInfo' : Language → ScriptPurpose
                  → PParams
                  → UTxO
                  → Tx
                  → TxInfo
txInfo' l sp pp utxo tx = record
  { TxBody body
  ; TxWitnesses wits
  ; realizedInputs = utxo ∣ txins
  ; fee = inject txfee
  ; mint = mint
  ; vkKey = reqSigHash
  ; otherInfos = []
  } where open Tx tx; open TxBody body

mkInfos : Language → ScriptPurpose
                  → PParams
                  → UTxO
                  → List Tx
                  → List TxInfo
mkInfos l (BatchObs s) pp utxo lstx = map (λ tx → (txInfo' l (BatchObs s) pp utxo tx)) lstx
mkInfos l _ pp utxo _ = []                 


txInfo : Language → ScriptPurpose
                  → PParams
                  → UTxO
                  → Tx
                  → TxInfo
txInfo l sp pp utxo tx = record
  { TxBody body
  ; TxWitnesses wits
  ; realizedInputs = utxo ∣ txins
  ; fee = inject txfee
  ; mint = mint
  ; vkKey = reqSigHash
  ; otherInfos = mkInfos l sp pp utxo (tx .Tx.subTxs)
  } where open Tx tx; open TxBody body

data DelegateOrDeReg : DCert → Type where instance
  delegate  : ∀ {x y z w} → DelegateOrDeReg (delegate x y z w)
  dereg     : ∀ {x y} →     DelegateOrDeReg (dereg x y)
  regdrep   : ∀ {x y z} →   DelegateOrDeReg (regdrep x y z)
  deregdrep : ∀ {x y} →     DelegateOrDeReg (deregdrep x y)

instance
  Dec-DelegateOrDeReg : DelegateOrDeReg ⁇¹
  Dec-DelegateOrDeReg {dc} .dec with dc
  ... | delegate _ _ _ _ = yes it
  ... | dereg _ _        = yes it
  ... | regdrep _ _ _    = yes it
  ... | deregdrep _ _    = yes it
  ... | regpool _ _      = no λ ()
  ... | retirepool _ _   = no λ ()
  ... | ccreghot _ _     = no λ ()

UTxOSH  = TxIn ⇀ (TxOut × ScriptHash)

scriptOutWithHash : TxIn → TxOut → Maybe (TxOut × ScriptHash)
scriptOutWithHash _ (addr , r) =
  if isScriptAddr addr then
    (λ {p} → just ((addr , r) , getScriptHash addr p))
  else
    nothing

scriptOutWithHashNoIn : TxOut → Maybe ScriptHash
scriptOutWithHashNoIn (addr , r) =
  if isScriptAddr addr then
    (λ {p} → just ( getScriptHash addr p))
  else
    nothing

scriptOutsWithHash : UTxO → UTxOSH
scriptOutsWithHash utxo = mapMaybeWithKeyᵐ scriptOutWithHash utxo

spendScripts : TxIn → UTxOSH → Maybe (ScriptPurpose × ScriptHash)
spendScripts txin utxo =
  if txin ∈ dom utxo then
    (λ {p} → just (Spend txin , proj₂ (lookupᵐ utxo txin)))
  else
    nothing

spendOutScripts : (Ix × TxOut) → Maybe (ScriptPurpose × ScriptHash)
spendOutScripts (x , o) with (x , (scriptOutWithHashNoIn o))
... | (x , just jo) = just (SpendOut x , jo)
... | (x , nothing) = nothing

rwdScripts : RwdAddr → Maybe (ScriptPurpose × ScriptHash)
rwdScripts a =
  if isScriptRwdAddr a then
    (λ where {SHisScript sh} → just (Rwrd a , sh))
  else
    nothing

certScripts : DCert → Maybe (ScriptPurpose × ScriptHash)
certScripts d with ¿ DelegateOrDeReg d ¿
... | no ¬p = nothing
certScripts c@(delegate  (KeyHashObj x) _ _ _) | yes p = nothing
certScripts c@(delegate  (ScriptObj  y) _ _ _) | yes p = just (Cert c , y)
certScripts c@(dereg     (KeyHashObj x) _)     | yes p = nothing
certScripts c@(dereg     (ScriptObj  y) _)     | yes p = just (Cert c , y)
certScripts c@(regdrep   (KeyHashObj x) _ _)   | yes p = nothing
certScripts c@(regdrep   (ScriptObj  y) _ _)   | yes p = just (Cert c , y)
certScripts c@(deregdrep (KeyHashObj x) _)     | yes p = nothing
certScripts c@(deregdrep (ScriptObj  y) _)     | yes p = just (Cert c , y)

-- only return batch observer scripts if this is a full batch, and the transaction is top-level
getBOs : BatchData → Tx → ℙ ScriptHash
getBOs (BatchParent tid isV) tx with (tid ≡ᵇ (tx .Tx.body .TxBody.txid)) 
... | false = ∅ 
... | true = tx .Tx.body .TxBody.requireBatchObservers
getBOs _ tx = ∅

private
  scriptsNeeded : BatchData → UTxO → Tx → ℙ (ScriptPurpose × ScriptHash)
  scriptsNeeded bd utxo tx
    = mapPartial (λ x → spendScripts x (scriptOutsWithHash utxo)) txins
    ∪ mapPartial (λ x → rwdScripts x) (dom $ txwdrls .proj₁)
    ∪ mapPartial (λ x → certScripts x) (fromList txcerts)
    ∪ mapˢ (λ x → Mint x , x) (policies mint)
    ∪ mapˢ (λ x → BatchObs x , x) (getBOs bd tx) 
    ∪ mapPartial spendOutScripts (proj₁ spendOuts)
    where open Tx tx ; open TxBody body
    
valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = toData (txinfo , sp)

-- need to get map from language script ↦ cm
-- need to update costmodels to add the language map in order to check
-- (Language ↦ CostModel) ∈ costmdls ↦ (Language ↦ CostModel)


opaque

  collectPhaseTwoScriptInputs' : ℙ Script → BatchData → PParams → Tx → UTxO → (ScriptPurpose × ScriptHash)
    → Maybe (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs' bs bd pp tx utxo (sp , sh)
    with lookupScriptHash sh bs tx utxo
  ... | nothing = nothing
  ... | just s
    with isInj₂ s | indexedRdmrs tx sp
  ... | just p2s | just (rdmr , eu)
      = just (s ,
          ( (getDatum tx utxo sp ++ rdmr ∷ valContext (txInfo (language p2s) sp pp utxo tx) sp ∷ [])
          , eu
          , PParams.costmdls pp)
        )
  ... | x | y = nothing
      

  collectPhaseTwoScriptInputs : ℙ Script → BatchData → PParams → Tx → UTxO
    → List (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs bs bd pp tx utxo
    = setToList
    $ mapPartial (collectPhaseTwoScriptInputs' bs bd pp tx utxo)
    $ scriptsNeeded bd utxo tx

open TxBody
open Tx

⟦_⟧,_,_,_ : P2Script → CostModel → ExUnits → List Data → Bool
⟦ s ⟧, cm , eu , d = runPLCScript cm s eu d

evalScripts : Tx → List (Script × List Data × ExUnits × CostModel) → Bool
evalScripts tx [] = true
evalScripts tx ((inj₁ tl , d , eu , cm) ∷ Γ) =
  ¿ validP1Script (reqSigHash (body tx)) (txvldt (body tx)) tl ¿ᵇ ∧ evalScripts tx Γ
evalScripts tx ((inj₂ ps , d , eu , cm) ∷ Γ) = ⟦ ps ⟧, cm , eu , d ∧ evalScripts tx Γ
