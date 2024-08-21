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

instance
  _ = DecEq-Slot

data ScriptPurpose : Type where
  Cert     : DCert        → ScriptPurpose
  Rwrd     : RwdAddr      → ScriptPurpose
  Mint     : ScriptHash   → ScriptPurpose
  Spend    : TxIn         → ScriptPurpose
  Vote     : Voter        → ScriptPurpose
  Propose  : GovProposal  → ScriptPurpose
  SpendOut : TxIn         → ScriptPurpose
  -- TODO new script purpose

rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb = λ where
  (Cert h)     → M.map (Cert    ,_) $ indexOfDCert    h txcerts
  (Rwrd h)     → M.map (Rewrd   ,_) $ indexOfRwdAddr  h txwdrls
  (Mint h)     → M.map (Mint    ,_) $ indexOfPolicyId h (policies mint)
  (Spend h)    → M.map (Spend   ,_) $ indexOfTxIn     h txins
  (Vote h)     → M.map (Vote    ,_) $ indexOfVote     h (map GovVote.voter txvote)
  (Propose h)  → M.map (Propose ,_) $ indexOfProposal h txprop
  (SpendOut h) → M.map (SpendOut ,_) $ indexOfSpendOut h corInputs
  -- TODO new type of pointer 
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

-- TODO what is going on here??
txInfo : Language → PParams
                  → UTxO
                  → TxBody × TxWitnesses
                  → TxInfo
txInfo l pp utxo (txb , wits) = 
  record
  { realizedInputs = utxo ∣ txins
    ; txouts  = txouts
    ; fee     = inject txfee
    ; mint    = mint
    ; txcerts = txcerts
    ; txwdrls = txwdrls
    ; txvldt  = txvldt
    ; vkKey = reqSigHash
    ; txdats  = wits .TxWitnesses.txdats
    ; txid    = txid
  } where open TxBody txb

-- TODO have to add (some of?) these to new Plutus TxInfo and parametrize txInfo by language property
      -- isTopLevel  : Bool
      -- -- fixes all attached sub-transactions
      -- subTxs          : ℙ TxId 
      -- -- fixes what transaction bodies will be shown to plutus scripts being run by this transaction (can be in any transaction)
      -- requiredTxs    : ℙ TxId
      -- -- outputs being spent for which inputs are provided by top-level tx
      -- spendOuts      : List TxOut
      -- -- inputs corresponding to spentOuts
      -- corInputs      : ℙ TxIn
      -- -- toggles whether subTx provides ExUnits or the top-level Tx provides them
      -- knowsOwnUnits   : Bool
      -- -- units for sub-Txs if they do not provide their own
      -- subUnits        : TxId ⇀ (RdmrPtr  ⇀ ExUnits)

data DelegateOrDeReg : DCert → Type where instance
  delegate  : ∀ {x y z w} → DelegateOrDeReg (delegate x y z w)
  dereg     : ∀ {x y} →     DelegateOrDeReg (dereg x y)
  regdrep   : ∀ {x y z} →   DelegateOrDeReg (regdrep x y z)
  deregdrep : ∀ {x} →       DelegateOrDeReg (deregdrep x)

instance
  Dec-DelegateOrDeReg : DelegateOrDeReg ⁇¹
  Dec-DelegateOrDeReg {dc} .dec with dc
  ... | delegate _ _ _ _ = yes it
  ... | dereg _ _        = yes it
  ... | regdrep _ _ _    = yes it
  ... | deregdrep _      = yes it
  ... | regpool _ _      = no λ ()
  ... | retirepool _ _   = no λ ()
  ... | ccreghot _ _     = no λ ()

UTxOSH  = TxIn ⇀ (TxOut × ScriptHash)

scriptOutWithHash : TxIn → TxOut → Maybe (TxOut × ScriptHash)
scriptOutWithHash txin (addr , r) =
  if isScriptAddr addr then
    (λ {p} → just ((addr , r) , getScriptHash addr p))
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

spendOutScripts : TxIn → UTxOSH → Maybe (ScriptPurpose × ScriptHash)
spendOutScripts txin utxo =
  if txin ∈ dom utxo then
    (λ {p} → just (SpendOut txin , proj₂ (lookupᵐ utxo txin)))
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
certScripts c@(deregdrep (KeyHashObj x))       | yes p = nothing
certScripts c@(deregdrep (ScriptObj  y))       | yes p = just (Cert c , y)

private
  scriptsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × ScriptHash)
  scriptsNeeded utxo txb
    = mapPartial (λ x → spendScripts x (scriptOutsWithHash utxo)) txins
    ∪ mapPartial (λ x → rwdScripts x) (dom $ txwdrls .proj₁)
    ∪ mapPartial (λ x → certScripts x) (fromList txcerts)
    ∪ mapˢ (λ x → Mint x , x) (policies mint)
    ∪ mapPartial (λ x → spendOutScripts x (scriptOutsWithHash utxo)) corInputs
    where open TxBody txb

valContext : List TxInfo → ScriptPurpose → Data
valContext lti sp = toData (lti , sp)

-- need to get map from language script ↦ cm
-- need to update costmodels to add the language map in order to check
-- (Language ↦ CostModel) ∈ costmdls ↦ (Language ↦ CostModel)


opaque

  collectPhaseTwoScriptInputs' : PParams → Tx → List TxBody → UTxO → (ScriptPurpose × ScriptHash)
    → Maybe (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs' pp tx ltx utxo (sp , sh)
    with lookupScriptHash sh tx utxo
  ... | nothing = nothing
  ... | just s
    with isInj₂ s | indexedRdmrs tx sp
  ... | just p2s | just (rdmr , eu)
      = just (s ,
          ( (getDatum tx utxo sp ++ rdmr ∷ valContext (map (λ tx → txInfo (language p2s) pp utxo tx) ((tx .Tx.body , (tx .Tx.wits)) ∷ (map (λ tb → (tb , tx .Tx.wits )) ltx))) sp ∷ [])
          , eu
          , PParams.costmdls pp)
        )
  ... | x | y = nothing
      

  collectPhaseTwoScriptInputs : PParams → Tx → List TxBody → UTxO
    → List (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs pp tx ltx utxo
    = setToList
    $ mapPartial (collectPhaseTwoScriptInputs' pp tx ltx utxo)
    $ scriptsNeeded utxo (tx .Tx.body)

open TxBody
open Tx

⟦_⟧,_,_,_ : P2Script → CostModel → ExUnits → List Data → Bool
⟦ s ⟧, cm , eu , d = runPLCScript cm s eu d

evalScripts : Tx → List (Script × List Data × ExUnits × CostModel) → Bool
evalScripts tx [] = true
evalScripts tx ((inj₁ tl , d , eu , cm) ∷ Γ) =
  ¿ evalTimelock (reqSigHash (body tx)) (txvldt (body tx)) tl ¿ᵇ ∧ evalScripts tx Γ
evalScripts tx ((inj₂ ps , d , eu , cm) ∷ Γ) = ⟦ ps ⟧, cm , eu , d ∧ evalScripts tx Γ
