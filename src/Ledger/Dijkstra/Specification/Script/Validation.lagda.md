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

open import Data.List using (fromMaybe)
```
-->

<!--
```agda
private variable
  ℓ : TxLevel
```
-->

```agda
rdptr : Tx ℓ → ScriptPurpose → Maybe RedeemerPtr
rdptr tx = λ where
  ⟦ Cert          , h ⟧ˢᵖ → map (Cert           ,_) $ indexOfDCert          h (DCertsOf tx)
  ⟦ Reward        , h ⟧ˢᵖ → map (Reward         ,_) $ indexOfRewardAddress  h (WithdrawalsOf tx)
  ⟦ Mint          , h ⟧ˢᵖ → map (Mint           ,_) $ indexOfPolicyId       h (policies (MintedValueOf tx))
  ⟦ Spend         , h ⟧ˢᵖ → map (Spend          ,_) $ indexOfTxIn           h (SpendInputsOf tx)
  ⟦ Vote          , h ⟧ˢᵖ → map (Vote           ,_) $ indexOfVote           h (map GovVote.voter (ListOfGovVotesOf tx))
  ⟦ Propose       , h ⟧ˢᵖ → map (Propose        ,_) $ indexOfProposal       h (ListOfGovProposalsOf tx)
  ⟦ Guard         , h ⟧ˢᵖ → map (Guard          ,_) $ indexOfGuard          h (setToList (GuardsOf tx))

indexedRdmrs : Tx ℓ → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? (RedeemersOf tx) x) nothing (rdptr tx sp)
```

The function `getDatumSpend`{.AgdaFunction} (formerly `getDatum`{.AgdaFunction})
retrieves the datum required by a phase-2 script associated to a spending input.
Note that, even though this function formally returns an element of type `Maybe
Datum`{.AgdaDatatype}, the preconditions of the `UTXOW`{.AgdaDatatype} rule
ensure that the datum is always present (otherwise, it is a phase-1 validation
failure).

```agda
getDatumSpend
  : Tx ℓ
  → UTxO
  → TxIn
  → Maybe Datum
getDatumSpend tx utxo₀ txin
  with lookupᵐ? utxo₀ txin
... | just (_ , _ , just d , _) =
  case d of λ where
    (inj₁ d) → just d
    (inj₂ h) → lookupHash h (DataOf tx)
... | _ = nothing
```

```agda
txInfo : (ℓ : TxLevel) → UTxO → Tx ℓ → TxInfo

txInfo TxLevelTop utxo tx =
  record  { realizedInputs      = utxo ∣ (SpendInputsOf tx)
          ; txOuts              = TxOutsOf tx
          ; txFee               = FeesOf? tx
          ; mint                = MintedValueOf tx
          ; txCerts             = DCertsOf tx
          ; txWithdrawals       = WithdrawalsOf tx
          ; txVldt              = ValidIntervalOf tx
          ; vkKey               = RequiredSignerHashesOf tx
          ; txGuards            = GuardsOf tx
          ; txData              = DataOf tx
          ; txId                = TxIdOf tx
          ; txInfoSubTxs        = nothing
          ; txDirectDeposits    = DirectDepositsOf tx
          ; txBalanceIntervals  = BalanceIntervalsOf tx
          }

txInfo TxLevelSub utxo tx =
  record  { realizedInputs      = utxo ∣ (TxBody.txIns txBody)
          ; txOuts              = TxBody.txOuts txBody
          ; txFee               = nothing
          ; mint                = TxBody.mint txBody
          ; txCerts             = TxBody.txCerts txBody
          ; txWithdrawals       = TxBody.txWithdrawals txBody
          ; txVldt              = TxBody.txVldt txBody
          ; vkKey               = TxBody.requiredSignerHashes txBody
          ; txGuards            = TxBody.txGuards txBody
          ; txData              = DataOf tx
          ; txId                = TxBody.txId txBody
          ; txInfoSubTxs        = nothing
          ; txDirectDeposits    = DirectDepositsOf tx
          ; txBalanceIntervals  = BalanceIntervalsOf tx
          } where open Tx tx

txInfoForPurpose : {ℓ : TxLevel} → UTxO → Tx ℓ → ScriptPurpose → TxInfo

-- subtransactions: never get subTx infos (even if the ScriptPurpose is Guard).
txInfoForPurpose {TxLevelSub} utxo tx _ = txInfo TxLevelSub utxo tx

-- top-level transactions:
txInfoForPurpose {TxLevelTop} utxo tx sp with sp
   -- · guard scripts see subTx infos
... | ⟦ Guard , _ ⟧ˢᵖ =  record base { txInfoSubTxs = just subInfos }
                 where
                 base : TxInfo
                 base = txInfo TxLevelTop utxo tx
                 subInfos : List SubTxInfo
                 subInfos = map (txInfo TxLevelSub utxo) (SubTransactionsOf tx)
   -- · other top-level scripts see no subTx infos
... | _ = txInfo TxLevelTop utxo tx

txOutToDataHash : TxOut → Maybe DataHash
txOutToDataHash (_ , _ , d , _) = d >>= isInj₂

credentialToP2Script
  : Credential → ℙ Script → Maybe P2Script
credentialToP2Script c scripts =
  do sh ← isScriptObj c
     s  ← lookupHash sh scripts
     toP2Script s
```

```agda
credsNeeded : UTxO → Tx ℓ → ℙ (ScriptPurpose × Credential)
credsNeeded utxo tx =
    mapˢ        (λ (i , o) → (⟦ Spend  , i ⟧ˢᵖ , payCred (proj₁ o)))     ((utxo ∣ (SpendInputsOf tx ∪ collateralInputs tx)) ˢ)
  ∪ mapˢ        (λ a       → (⟦ Reward , a ⟧ˢᵖ , CredentialOf a))        (dom ∣ WithdrawalsOf tx ∣)
  ∪ mapPartial  (λ c       → ((⟦ Cert  , c ⟧ˢᵖ ,_) <$> cwitness c))      (fromList (DCertsOf tx))
  ∪ mapˢ        (λ x       → (⟦ Mint   , x ⟧ˢᵖ , ScriptObj x))           (policies (MintedValueOf tx))
  ∪ mapˢ        (λ v       → (⟦ Vote   , v ⟧ˢᵖ , govVoterCredential v))  (fromList (map GovVoterOf (ListOfGovVotesOf tx)))
  ∪ mapPartial  (λ p       →  if PolicyOf p
                                 then (λ {sh} → just (⟦ Propose , p ⟧ˢᵖ , ScriptObj sh))
                                 else nothing)                           (fromList (ListOfGovProposalsOf tx))
  ∪ mapˢ        (λ c       → (⟦ Guard , c ⟧ˢᵖ , c))                      (GuardsOf tx)

  where
    collateralInputs : Tx ℓ → ℙ TxIn
    collateralInputs {TxLevelTop} tx = CollateralInputsOf tx
    collateralInputs {TxLevelSub} tx = ∅
```

**CIP-159 and `credsNeeded`**.
CIP-159 does not introduce new `ScriptPurpose`{.AgdaDatatype} values for direct
deposits or balance intervals, so `credsNeeded`{.AgdaFunction} requires no changes.
Direct deposits do not require a witness from the receiving credential.
Balance intervals are Phase-1 validity conditions that do not trigger script execution.
The existing `Reward` case already handles partial withdrawals; it generates a
`Reward` script purpose for each entry in `txWithdrawals`, regardless of whether the
withdrawal is full or partial.

<!--
```agda
opaque
```
-->

The function `collectP2ScriptsWithContext`.{AgdaFunction} builds a list of
phase-2 scripts paired with their contexts for phase-2 validation. The scripts
that are needed for validation are retrieved from the transaction using the
function `credsNeeded`{.AgdaFunction}.

In Dijkstra, the execution of a guard script can require several (including
none) data. The function `assembleData` accounts for this situation by returning
a list of lists of data (a list of data is part of the context of a script).

```agda
  collectP2ScriptsWithContext
    : PParams
    → Tx ℓ
    → UTxO
    → ℙ Script
    → List (P2Script × List Data × ExUnits × CostModel)
  collectP2ScriptsWithContext pp tx utxo allScripts
    = concat (setToList (mapˢ toScript (credsNeeded utxo tx)))
    where
      context : ScriptPurpose → Data
      context sp = valContext (txInfoForPurpose utxo tx sp) sp

      getScript : Credential → ScriptPurpose → Maybe (P2Script × Redeemer × ExUnits × CostModel)
      getScript c sp = do
             script               ← isScriptObj c >>= λ sh → lookupHash sh allScripts >>= toP2Script
             (reedemer , exUnits) ← indexedRdmrs tx sp
             costModel            ← lookupᵐ? (PParams.costmdls pp) (language script)
             return (script , reedemer , exUnits , costModel)

      assembleData : Redeemer → ScriptPurpose → List (List Data)
      assembleData redeemer sp@(⟦ Spend , txin ⟧ˢᵖ)
        = [ fromMaybe (getDatumSpend tx utxo txin) ++ (redeemer ∷ [ context sp ]) ]
      assembleData redeemer sp           = [ redeemer ∷ [ context sp ] ]

      toScript
        : ScriptPurpose × Credential
        → List (P2Script × List Data × ExUnits × CostModel)
      toScript (sp , c) =
        do (script , reedemer , exUnits , costModel) ← fromMaybe (getScript c sp)
           data′ ← assembleData reedemer sp
           [ (script , data′ , exUnits , costModel) ]

evalP2Scripts : List (P2Script × List Data × ExUnits × CostModel) → Bool
evalP2Scripts = all (λ (s , d , eu , cm) → ¿ validP2Script cm d eu s ¿ᵇ)
```
-->
