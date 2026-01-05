---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Script/Validation.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Script.Validation
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs) (open indexOf indexOfImp)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure

open import Ledger.Dijkstra.Specification.Abstract txs
open import Ledger.Dijkstra.Specification.Script.ScriptPurpose txs
```
-->

<!--
```agda
private variable
  ℓ : TxLevel

rdptr : (Tx ℓ) → ScriptPurpose → Maybe (RedeemerPtr ℓ)
rdptr tx = λ where
  (Cert h)     → map (Cert     ,_) $ indexOfDCert          h txCerts
  (Rwrd h)     → map (Reward   ,_) $ indexOfRewardAddress  h txWithdrawals
  (Mint h)     → map (Mint     ,_) $ indexOfPolicyId       h (policies mint)
  (Spend h)    → map (Spend    ,_) $ indexOfTxIn           h txIns
  (Vote h)     → map (Vote     ,_) $ indexOfVote           h (map GovVote.voter txGovVotes)
  (Propose h)  → map (Propose  ,_) $ indexOfProposal       h txGovProposals
  (Guard c)    → map (Guard    ,_) $ indexOfGuard          c (setToList txGuards)
    where open TxBody (TxBodyOf tx)

-- getSubTxScripts : TopLevelTx → ℙ (TxId × ScriptHash)

indexedRdmrs : (Tx ℓ) → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? txRedeemers x) nothing (rdptr tx sp)
  where open Tx tx; open TxWitnesses txWitnesses

-- Datum lookup for spent outputs (Spend txin). Uses initial UTxO snapshot, utxoSpend₀.
getDatum : Tx ℓ → UTxO → ScriptPurpose → Maybe Datum
getDatum tx utxo₀ (Spend txin) =
  do (_ , _ , just d , _) ← lookupᵐ? utxo₀ txin where
                            (_ , _ , nothing , _) → nothing
     case d of λ where
       (inj₁ d) → just d
       (inj₂ h) → lookupᵐ? (setToMap (mapˢ < hash , id > (DataOf tx))) h
getDatum tx utxo₀ _ = nothing
```
-->

```agda
txInfo : (ℓ : TxLevel) → UTxO → Tx ℓ → TxInfo

txInfo TxLevelTop utxo tx =
  record  { realizedInputs  = utxo ∣ (TxBody.txIns txBody)
          ; txOuts          = TxBody.txOuts txBody
          ; txFee           = just (TxBody.txFee txBody)
          ; mint            = TxBody.mint txBody
          ; txCerts         = TxBody.txCerts txBody
          ; txWithdrawals   = TxBody.txWithdrawals txBody
          ; txVldt          = TxBody.txVldt txBody
          ; vkKey           = TxBody.reqSignerHashes txBody
          ; txGuards        = TxBody.txGuards txBody
          ; txData          = DataOf tx
          ; txId            = TxBody.txId txBody
          ; txInfoSubTxs    = nothing
          } where open Tx tx

txInfo TxLevelSub utxo tx =
  record  { realizedInputs  = utxo ∣ (TxBody.txIns txBody)
          ; txOuts          = TxBody.txOuts txBody
          ; txFee           = nothing
          ; mint            = TxBody.mint txBody
          ; txCerts         = TxBody.txCerts txBody
          ; txWithdrawals   = TxBody.txWithdrawals txBody
          ; txVldt          = TxBody.txVldt txBody
          ; vkKey           = TxBody.reqSignerHashes txBody
          ; txGuards        = TxBody.txGuards txBody
          ; txData          = DataOf tx
          ; txId            = TxBody.txId txBody
          ; txInfoSubTxs    = nothing
          } where open Tx tx

txInfoForPurpose : (ℓ : TxLevel) → UTxO → Tx ℓ → ScriptPurpose → TxInfo

-- subtransactions: never get subTx infos (even if the ScriptPurpose is Guard).
txInfoForPurpose TxLevelSub utxo tx _ = txInfo TxLevelSub utxo tx

-- top-level transactions:
txInfoForPurpose TxLevelTop utxo tx sp with sp
   -- · guard scripts see subTx infos
... | Guard _ =  record base { txInfoSubTxs = just subInfos }
                 where
                 base : TxInfo
                 base = txInfo TxLevelTop utxo tx
                 subInfos : List SubTxInfo
                 subInfos = map (txInfo TxLevelSub utxo) (SubTransactionsOf tx)
   -- · other top-level scripts see no subTx infos
... | _ = txInfo TxLevelTop utxo tx
```

<!--
```agda
credsNeededMinusCollateral : {ℓ : TxLevel} → TxBody ℓ → ℙ (ScriptPurpose × Credential)
credsNeededMinusCollateral txb =
  mapˢ (λ a → (Rwrd a , CredentialOf a)) (dom ∣ WithdrawalsOf txb ∣)
  ∪ mapPartial (λ c → (Cert c ,_) <$> cwitness c) (fromList (DCertsOf txb))
  ∪ mapˢ (λ x → (Mint x , ScriptObj x)) (policies (MintedValueOf txb))
  ∪ mapPartial (λ v → if isGovVoterCredential v then (λ {c} → just (Vote v , c)) else nothing)
                 (fromList (map GovVoterOf (GovVotesOf txb)))
  ∪ mapPartial (λ p → if PolicyOf p then (λ {sh} → just (Propose  p , ScriptObj sh)) else nothing)
                 (fromList (GovProposalsOf txb))

credsNeeded : {ℓ : TxLevel} → UTxO → (TxBody ℓ) → ℙ (ScriptPurpose × Credential)
credsNeeded {TxLevelTop} utxo txb = credsNeededMinusCollateral txb
  ∪ mapˢ (λ (i , o) → (Spend  i , payCred (proj₁ o))) ((utxo ∣ (txIns ∪ collateralInputs)) ˢ)
  where open TxBody txb

credsNeeded {TxLevelSub} utxo txb = credsNeededMinusCollateral txb
  ∪ mapˢ (λ (i , o) → (Spend  i , payCred (proj₁ o))) ((utxo ∣ txIns) ˢ)
  where open TxBody txb

txOutToDataHash : TxOut → Maybe DataHash
txOutToDataHash (_ , _ , d , _) = d >>= isInj₂

txOutToP2Script : UTxO → UTxO → (Tx ℓ) → TxOut → Maybe P2Script
txOutToP2Script utxo₀ utxoRefView tx (a , _) =
  do sh ← isScriptObj (payCred a)
     s  ← lookupScriptHash sh tx utxo₀ utxoRefView
     toP2Script s

opaque
  collectP2ScriptsWithContext
    :  {ℓ : TxLevel} → PParams → (Tx ℓ) → UTxO → UTxO
       → List (P2Script × List Data × ExUnits × CostModel)
  collectP2ScriptsWithContext {ℓ} pp tx utxoSpend₀ utxoRefView
    = setToList  $ mapPartial ( λ (sp , c) →  if isScriptObj c
                                              then (λ {sh} → toScriptInput sp sh)
                                              else nothing )
                 $ credsNeeded utxoSpend₀ (TxBodyOf tx)
      -- use initial utxo snapshot ^^here^^ to inspect `txIns` (collateral spend side)
    where
      toScriptInput
        : ScriptPurpose → ScriptHash
        → Maybe (P2Script × List Data × ExUnits × CostModel)
      toScriptInput sp sh =
        do s ← lookupScriptHash sh tx utxoSpend₀ utxoRefView
           p2s ← toP2Script s
           (rdmr , exunits) ← indexedRdmrs tx sp
           let data'  = maybe [_] [] (getDatum tx utxoSpend₀ sp)
                        ++ rdmr ∷ [ valContext (txInfoForPurpose ℓ utxoSpend₀ tx sp) sp ]
                           --  use initial utxo snapshot ^^here^^ so spending
                           --  inputs/realized inputs don't see prefix outputs
           just (p2s , data' , exunits , PParams.costmdls pp)

evalP2Scripts : List (P2Script × List Data × ExUnits × CostModel) → Bool
evalP2Scripts = all (λ (s , d , eu , cm) → runPLCScript cm s eu d)
```
-->
