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
  BatchObs : ScriptHash   → ScriptPurpose

rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb = λ where
  (Cert h)     → M.map (Cert    ,_) $ indexOfDCert    h txcerts
  (Rwrd h)     → M.map (Rewrd   ,_) $ indexOfRwdAddr  h txwdrls
  (Mint h)     → M.map (Mint    ,_) $ indexOfPolicyId h (policies mint)
  (Spend h)    → M.map (Spend   ,_) $ indexOfTxIn     h txins
  (Vote h)     → M.map (Vote    ,_) $ indexOfVote     h (map GovVote.voter txvote)
  (Propose h)  → M.map (Propose ,_) $ indexOfProposal h txprop
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
        subTxInfos : List TxInfo

txInfo' : Language → ScriptPurpose
                  → PParams
                  → UTxO
                  → TxBody 
                  → TxWitnesses
                  → TxInfo
txInfo' l sp pp utxo txb wits = record
  { TxBody txb
  ; TxWitnesses wits -- TODO this is wrong, we should show only some wits, but which ones? All relevant redeemers at least
  ; realizedInputs = utxo ∣ txins
  ; fee = inject txfee
  ; mint = mint
  ; vkKey = reqSigHash
  ; subTxInfos = []
  } where open TxBody txb

mkInfos : Language → ScriptPurpose
                  → PParams
                  → UTxO
                  → Tx
                  → List TxInfo
mkInfos l (BatchObs s) pp utxo tx = map (λ txb → (txInfo' l (BatchObs s) pp utxo txb wits)) subTxBodies
  where open Tx tx; open TxBody body
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
  ; subTxInfos = mkInfos l sp pp utxo tx
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

scriptOutWithHash : TxIn → TxOut → Maybe (TxOut × ScriptHash)
scriptOutWithHash _ (addr , r) =
  if isScriptAddr addr then
    (λ {p} → just ((addr , r) , getScriptHash addr p))
  else
    nothing

UTxOSH  = TxIn ⇀ (TxOut × ScriptHash)

scriptOutsWithHash : UTxO → UTxOSH
scriptOutsWithHash utxo = mapMaybeWithKeyᵐ scriptOutWithHash utxo

spendScripts : TxIn → UTxOSH → Maybe (ScriptPurpose × ScriptHash)
spendScripts txin utxo =
  if txin ∈ dom utxo then
    (λ {p} → just (Spend txin , proj₂ (lookupᵐ utxo txin)))
  else
    nothing

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

private
  scriptsNeeded : UTxO → Tx → ℙ (ScriptPurpose × ScriptHash)
  scriptsNeeded utxo tx
    = mapPartial (λ x → spendScripts x (scriptOutsWithHash utxo)) txins
    ∪ mapPartial (λ x → rwdScripts x) (dom $ txwdrls .proj₁)
    ∪ mapPartial (λ x → certScripts x) (fromList txcerts)
    ∪ mapˢ (λ x → Mint x , x) (policies mint)
    ∪ mapˢ (λ x → BatchObs x , x) (tx .Tx.body .TxBody.requireBatchObservers)
    where open Tx tx ; open TxBody body
    
valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = toData (txinfo , sp)

-- need to get map from language script ↦ cm
-- need to update costmodels to add the language map in order to check
-- (Language ↦ CostModel) ∈ costmdls ↦ (Language ↦ CostModel)


opaque

  collectPhaseTwoScriptInputs' : PParams → Tx → UTxO → (ScriptPurpose × ScriptHash)
    → Maybe (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs' pp tx utxo (sp , sh)
    with lookupScriptHash sh tx utxo
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
      

  collectPhaseTwoScriptInputs : PParams → Tx → UTxO
    → List (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs pp tx utxo
    = setToList
    $ mapPartial (collectPhaseTwoScriptInputs' pp tx utxo)
    $ scriptsNeeded utxo tx

open TxBody
open Tx

⟦_⟧,_,_,_ : P2Script → CostModel → ExUnits → List Data → Bool
⟦ s ⟧, cm , eu , d = runPLCScript cm s eu d

evalScripts : Tx → List (Script × List Data × ExUnits × CostModel) → Bool
evalScripts tx [] = true
evalScripts tx ((inj₁ tl , d , eu , cm) ∷ Γ) =
  ¿ validP1Script (reqSigHash (body tx)) (txvldt (body tx)) tl ¿ᵇ ∧ evalScripts tx Γ
evalScripts tx ((inj₂ ps , d , eu , cm) ∷ Γ) = ⟦ ps ⟧, cm , eu , d ∧ evalScripts tx Γ
