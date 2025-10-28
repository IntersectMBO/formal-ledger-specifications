---
source_branch: master
source_path: src/Ledger/Conway/Specification/Script/Validation.lagda.md
---

# Script Validation {#sec:script-validation}

<!-- TODO: Document this section. -->

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Script.Validation
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs) (open indexOf indexOfImp)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Certs govStructure
```
-->

```agda
data ScriptPurpose : Type where
  Cert     : DCert        → ScriptPurpose
  Rwrd     : RwdAddr      → ScriptPurpose
  Mint     : ScriptHash   → ScriptPurpose
  Spend    : TxIn         → ScriptPurpose
  Vote     : GovVoter     → ScriptPurpose
  Propose  : GovProposal  → ScriptPurpose
```

<!--
```agda
rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb = λ where
  (Cert h)     → map (Cert    ,_) $ indexOfDCert    h txCerts
  (Rwrd h)     → map (Rewrd   ,_) $ indexOfRwdAddr  h txWithdrawals
  (Mint h)     → map (Mint    ,_) $ indexOfPolicyId h (policies mint)
  (Spend h)    → map (Spend   ,_) $ indexOfTxIn     h txIns
  (Vote h)     → map (Vote    ,_) $ indexOfVote     h (map GovVote.voter txGovVotes)
  (Propose h)  → map (Propose ,_) $ indexOfProposal h txGovProposals
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
```
-->

```agda
record TxInfo : Type where
  field realizedInputs : UTxO
        txOuts         : Ix ⇀ TxOut
        fee            : Value
        mint           : Value
        txCerts        : List DCert
        txWithdrawals  : Withdrawals
        txVldt         : Maybe Slot × Maybe Slot
        vkKey          : ℙ KeyHash
        txdats         : ℙ Datum
        txId           : TxId

txInfo : Language → PParams
                  → UTxO
                  → Tx
                  → TxInfo
txInfo l pp utxo tx = record
  { TxBody body
  ; TxWitnesses wits
  ; realizedInputs = utxo ∣ txIns
  ; fee = inject txFee
  ; mint = mint
  ; vkKey = reqSignerHashes
  } where open Tx tx; open TxBody body

credsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × Credential)
credsNeeded utxo txb
  =  mapˢ (λ (i , o)  → (Spend  i , payCred (proj₁ o))) ((utxo ∣ (txIns ∪ collateralInputs)) ˢ)
  ∪  mapˢ (λ a        → (Rwrd   a , stake a)) (dom ∣ txWithdrawals ∣)
  ∪  mapPartial (λ c  → (Cert   c ,_) <$> cwitness c) (fromList txCerts)
  ∪  mapˢ (λ x        → (Mint   x , ScriptObj x)) (policies mint)
  ∪  mapPartial (λ v → if isGovVoterCredential v then (λ {c} → just (Vote v , c)) else nothing)
                (fromList (map voter txGovVotes))
  ∪  mapPartial (λ p → if p .policy then (λ {sh} → just (Propose  p , ScriptObj sh)) else nothing)
                (fromList txGovProposals)
```

<!--
```agda
  where open TxBody txb; open GovVote; open RwdAddr; open GovProposal

valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = toData (txinfo , sp)

txOutToDataHash : TxOut → Maybe DataHash
txOutToDataHash (_ , _ , d , _) = d >>= isInj₂

txOutToP2Script
  : UTxO → Tx
  → TxOut → Maybe P2Script
txOutToP2Script utxo tx (a , _) =
  do sh ← isScriptObj (payCred a)
     s  ← lookupScriptHash sh tx utxo
     toP2Script s

opaque
  collectP2ScriptsWithContext
    : PParams → Tx → UTxO
    → List (P2Script × List Data × ExUnits × CostModel)
  collectP2ScriptsWithContext pp tx utxo
    = setToList
    $ mapPartial (λ (sp , c) → if isScriptObj c
                                then (λ {sh} → toScriptInput sp sh)
                                else nothing)
    $ credsNeeded utxo (tx .Tx.body)
    where
      toScriptInput
        : ScriptPurpose → ScriptHash
        → Maybe (P2Script × List Data × ExUnits × CostModel)
      toScriptInput sp sh =
        do s ← lookupScriptHash sh tx utxo
           p2s ← toP2Script s
           (rdmr , exunits) ← indexedRdmrs tx sp
           let data'     = maybe [_] [] (getDatum tx utxo sp) ++ rdmr ∷ [ valContext (txInfo (language p2s) pp utxo tx) sp ]
               costModel = PParams.costmdls pp
           just (p2s , data' , exunits , costModel)

evalP2Scripts : List (P2Script × List Data × ExUnits × CostModel) → Bool
evalP2Scripts = all (λ (s , d , eu , cm) → runPLCScript cm s eu d)
```
-->
