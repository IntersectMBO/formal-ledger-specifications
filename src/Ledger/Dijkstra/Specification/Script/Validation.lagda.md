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

rdptr : Tx ℓ → ScriptPurpose → Maybe (RedeemerPtr ℓ)
rdptr tx = λ where
  (Cert h)     → map (Cert     ,_) $ indexOfDCert           h (DCertsOf tx)
  (Rwrd h)     → map (Reward   ,_) $ indexOfRewardAddress   h (WithdrawalsOf tx)
  (Mint h)     → map (Mint     ,_) $ indexOfPolicyId        h (policies (MintedValueOf tx))
  (Spend h)    → map (Spend    ,_) $ indexOfTxIn            h (SpendInputsOf tx)
  (Vote h)     → map (Vote     ,_) $ indexOfVote            h (map GovVote.voter (ListOfGovVotesOf tx))
  (Propose h)  → map (Propose  ,_) $ indexOfProposal        h (ListOfGovProposalsOf tx)
  (Guard c)    → map (Guard    ,_) $ indexOfGuard           c (setToList (GuardsOf tx))

indexedRdmrs : Tx ℓ → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? (RedeemersOf tx) x) nothing (rdptr tx sp)

txDataMap : Tx ℓ → DataHash ⇀ Datum
txDataMap tx = setToMap (mapˢ < hash , id > (DataOf tx))

-- Datum lookup for spent outputs (Spend txin). Uses initial UTxO snapshot, utxoSpend₀.
getDatum : Tx ℓ → UTxO → (DataHash ⇀ Datum) → ScriptPurpose → Maybe Datum
getDatum tx utxo₀ extraData (Spend txin) with lookupᵐ? utxo₀ txin
... | just (_ , _ , just d , _) =
  case d of λ where
    (inj₁ d) → just d
    (inj₂ h) → lookupᵐ? (txDataMap tx ∪ˡ extraData) h
                        -- tx-local witness data takes precedence over batch/global pool.
... | _ = nothing
getDatum tx utxo₀ _ _ = nothing
```
-->

```agda
txInfo : (ℓ : TxLevel) → UTxO → Tx ℓ → TxInfo

txInfo TxLevelTop utxo tx =
  record  { realizedInputs  = utxo ∣ (SpendInputsOf tx)
          ; txOuts          = IndexedOutputsOf tx
          ; txFee           = FeesOf? tx
          ; mint            = MintedValueOf tx
          ; txCerts         = DCertsOf tx
          ; txWithdrawals   = WithdrawalsOf tx
          ; txVldt          = ValidIntervalOf tx
          ; vkKey           = RequiredSignerHashesOf tx
          ; txGuards        = GuardsOf tx
          ; txData          = DataOf tx
          ; txId            = TxIdOf tx
          ; txInfoSubTxs    = nothing
          }

txInfo TxLevelSub utxo tx =
  record  { realizedInputs  = utxo ∣ (TxBody.txIns txBody)
          ; txOuts          = TxBody.txOuts txBody
          ; txFee           = nothing
          ; mint            = TxBody.mint txBody
          ; txCerts         = TxBody.txCerts txBody
          ; txWithdrawals   = TxBody.txWithdrawals txBody
          ; txVldt          = TxBody.txVldt txBody
          ; vkKey           = TxBody.requiredSignerHashes txBody
          ; txGuards        = TxBody.txGuards txBody
          ; txData          = DataOf tx
          ; txId            = TxBody.txId txBody
          ; txInfoSubTxs    = nothing
          } where open Tx tx

txInfoForPurpose : {ℓ : TxLevel} → UTxO → Tx ℓ → ScriptPurpose → TxInfo

-- subtransactions: never get subTx infos (even if the ScriptPurpose is Guard).
txInfoForPurpose {TxLevelSub} utxo tx _ = txInfo TxLevelSub utxo tx

-- top-level transactions:
txInfoForPurpose {TxLevelTop} utxo tx sp with sp
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
credsNeededMinusCollateral : {ℓ : TxLevel} → Tx ℓ → ℙ (ScriptPurpose × Credential)
credsNeededMinusCollateral tx =
    mapˢ        (λ a →  (Rwrd a , CredentialOf a))        (dom ∣ WithdrawalsOf tx ∣)
  ∪ mapPartial  (λ c →  (Cert c ,_) <$> cwitness c)       (fromList (DCertsOf tx))
  ∪ mapˢ        (λ x →  (Mint x , ScriptObj x))           (policies (MintedValueOf tx))
  ∪ mapˢ        (λ v →  (Vote v , govVoterCredential v))  (fromList (map GovVoterOf (ListOfGovVotesOf tx)))
  ∪ mapPartial  (λ p →  if PolicyOf p then (λ {sh} → just (Propose  p , ScriptObj sh))
                        else nothing) (fromList (ListOfGovProposalsOf tx))
  ∪ mapˢ        (λ c →  (Guard c , c)) (GuardsOf tx) -- collectP2ScriptsWithContext should
                                                     -- include scripts with creds in txGuards.

credsNeeded : {ℓ : TxLevel} → UTxO → Tx ℓ → ℙ (ScriptPurpose × Credential)
credsNeeded {TxLevelTop} utxo tx =
  credsNeededMinusCollateral tx
    ∪ mapˢ  (λ (i , o) → (Spend  i , payCred (proj₁ o)))
            ((utxo ∣ (SpendInputsOf tx ∪ CollateralInputsOf tx)) ˢ)

credsNeeded {TxLevelSub} utxo tx = credsNeededMinusCollateral tx
  ∪ mapˢ (λ (i , o) → (Spend  i , payCred (proj₁ o))) ((utxo ∣ SpendInputsOf tx) ˢ)

txOutToDataHash : TxOut → Maybe DataHash
txOutToDataHash (_ , _ , d , _) = d >>= isInj₂

txOutToP2Script : ℙ Script → TxOut → Maybe P2Script
txOutToP2Script allScripts (a , _) =
  do sh ← isScriptObj (payCred a)
     s  ← lookupHash sh allScripts
     toP2Script s

opaque
  collectP2ScriptsWithContext : {ℓ : TxLevel} → PParams → Tx ℓ
    → UTxO → (DataHash ⇀ Datum) → ℙ Script
    → List (P2Script × List Data × ExUnits × CostModel)
  collectP2ScriptsWithContext pp tx utxo extraData allScripts
    = setToList $ mapPartial  ( λ (sp , c) →  if isScriptObj c
                                              then (λ {sh} → toScriptInput sp sh)
                                              else nothing )
                              ( credsNeeded utxo tx )
    where
      toScriptInput
        : ScriptPurpose → ScriptHash
        → Maybe (P2Script × List Data × ExUnits × CostModel)
      toScriptInput sp sh =
        do s ← lookupHash sh allScripts
           p2s ← toP2Script s
           (rdmr , exunits) ← indexedRdmrs tx sp
           let data' = maybe [_] [] (getDatum tx utxo extraData sp)
                        ++ rdmr ∷ [ valContext (txInfoForPurpose utxo tx sp) sp ]
           just (p2s , data' , exunits , PParams.costmdls pp)

evalP2Scripts : List (P2Script × List Data × ExUnits × CostModel) → Bool
evalP2Scripts = all (λ (s , d , eu , cm) → runPLCScript cm s eu d)
```
-->
