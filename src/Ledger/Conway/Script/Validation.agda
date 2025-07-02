{-# OPTIONS --safe #-}

open import Ledger.Conway.Transaction
open import Ledger.Conway.Abstract

module Ledger.Conway.Script.Validation
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs) (open indexOf indexOfImp)
  where

open import Ledger.Prelude
open import Ledger.Conway.Certs govStructure

instance
  _ = DecEq-Slot

data ScriptPurpose : Type where
  Cert     : DCert        → ScriptPurpose
  Rwrd     : RwdAddr      → ScriptPurpose
  Mint     : ScriptHash   → ScriptPurpose
  Spend    : TxIn         → ScriptPurpose
  Vote     : Voter        → ScriptPurpose
  Propose  : GovProposal  → ScriptPurpose

rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb = λ where
  (Cert h)     → map (Cert    ,_) $ indexOfDCert    h txcerts
  (Rwrd h)     → map (Rewrd   ,_) $ indexOfRwdAddr  h txwdrls
  (Mint h)     → map (Mint    ,_) $ indexOfPolicyId h (policies mint)
  (Spend h)    → map (Spend   ,_) $ indexOfTxIn     h txins
  (Vote h)     → map (Vote    ,_) $ indexOfVote     h (map GovVote.voter txvote)
  (Propose h)  → map (Propose ,_) $ indexOfProposal h txprop
 where open TxBody txb

indexedRdmrs : Tx → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? txrdmrs x) nothing (rdptr body sp)
  where open Tx tx; open TxWitnesses wits

getDatum : Tx → UTxO → ScriptPurpose → Maybe Datum
getDatum tx utxo (Spend txin) =
  do (_ , _ , just d , _) ← lookupᵐ? utxo txin
                          where
                            (_ , _ , nothing , _) → nothing
     case d of λ where
       (inj₁ d) → just d
       (inj₂ h) → lookupᵐ? m h
     where
       m = setToMap (mapˢ < hash , id > (TxWitnesses.txdats (Tx.wits tx)))
getDatum tx utxo _ = nothing

record TxInfo : Type where
  field realizedInputs : UTxO
        txouts  : Ix ⇀ TxOut
        fee     : Value
        mint    : Value
        txcerts : List DCert
        txwdrls : Wdrl
        txvldt  : Maybe Slot × Maybe Slot
        vkKey   : ℙ KeyHash
        txdats  : ℙ Datum
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

credsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × Credential)
credsNeeded utxo txb
  =  mapˢ (λ (i , o)  → (Spend  i , payCred (proj₁ o))) ((utxo ∣ (txins ∪ collateral)) ˢ)
  ∪  mapˢ (λ a        → (Rwrd   a , stake a)) (dom ∣ txwdrls ∣)
  ∪  mapPartial (λ c  → (Cert   c ,_) <$> cwitness c) (fromList txcerts)
  ∪  mapˢ (λ x        → (Mint   x , ScriptObj x)) (policies mint)
  ∪  mapˢ (λ v        → (Vote   v , proj₂ v)) (fromList (map voter txvote))
  ∪  mapPartial (λ p → if p .policy then (λ {sh} → just (Propose  p , ScriptObj sh)) else nothing)
                (fromList txprop)
  where
    open TxBody txb
    open GovVote
    open RwdAddr
    open GovProposal

scriptsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × ScriptHash)
scriptsNeeded = mapPartial (λ (sp , c) → if isScriptObj c then (λ {sh} → just (sp , sh)) else nothing)
                ∘₂ credsNeeded

vKeysNeeded : UTxO → TxBody → ℙ (ScriptPurpose × KeyHash)
vKeysNeeded = mapPartial (λ (sp , c) → if isKeyHashObj c then (λ {sh} → just (sp , sh)) else nothing)
              ∘₂ credsNeeded

valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = toData (txinfo , sp)

opaque

  collectPhaseTwoScriptInputs' : PParams → Tx → UTxO → (ScriptPurpose × ScriptHash)
    → Maybe (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs' pp tx utxo (sp , sh)
    with lookupScriptHash sh tx utxo
  ... | nothing = nothing
  ... | just s
    with toP2Script s | indexedRdmrs tx sp
  ... | just p2s | just (rdmr , eu)
      = just (s ,
          ( (maybe [_] [] (getDatum tx utxo sp) ++ rdmr ∷ valContext (txInfo (language p2s) pp utxo tx) sp ∷ [])
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

open TxBody
open Tx

⟦_⟧,_,_,_ : P2Script → CostModel → ExUnits → List Data → Bool
⟦ s ⟧, cm , eu , d = runPLCScript cm s eu d

evalScripts : Tx → List (Script × List Data × ExUnits × CostModel) → Bool
evalScripts tx [] = true
evalScripts tx ((inj₁ tl , d , eu , cm) ∷ Γ) =
  ¿ validP1Script (reqSigHash (body tx)) (txvldt (body tx)) tl ¿ᵇ ∧ evalScripts tx Γ
evalScripts tx ((inj₂ ps , d , eu , cm) ∷ Γ) = ⟦ ps ⟧, cm , eu , d ∧ evalScripts tx Γ
