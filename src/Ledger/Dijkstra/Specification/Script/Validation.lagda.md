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
```
-->

## Changes to Transaction Validity

As discussed in [Ledger.Conway.Specification.Properties][], transaction validity is
tricky, and this is as true in the Dijkstra era as it was in Conway, if not moreso.

Here are some key points about transaction validity in the Dijkstra era.

1.  Sub-transactions are not allowed to contain sub-transactions themselves.

2.  Sub-transactions are not allowed to contain collateral inputs.  Only a top-level
    transaction is allowed to (furthermore, obligated to) provide sufficient
    collateral for all scripts that are run as part of validating all transactions in
    that batch.  If any script in a batch fails, none of the transactions in the batch
    is applied; only the collateral is collected.

3.  Transactions using the new features of the Dijkstra era are not allowed to run
    PlutusV3 scripts (nor earlier Plutus version scripts).

4.  All scripts are shared across all transactions within a single batch, so
    attaching one script to either a sub- or a top-level-transaction allows other
    transactions to run it without also including it in its own scripts.  This
    includes references scripts that are sourced from the outputs to which reference
    inputs point in the UTxO.  These referenced UTxO entries could be outputs of
    preceding transactions in the batch.

    Datums (from reference inputs and from other transactions) are also shared in
    this way.  As before, only the datums fixed by the executing transaction are
    included in the `TxInfo`{.AgdaRecord} constructed for its scripts, however, now they don't
    necessarily have to be attached to that transaction.

5.  All inputs of all transactions in a single batch must be contained in the UTxO
    set before any of the batch transactions are applied.  This ensures that
    operation of scripts is not disrupted, for example, by temporarily duplicating
    thread tokens, or falsifying access to assets via flash loans.  In the future,
    this may be up for reconsideration.

6.  The batch must be balanced; i.e., preservation of value (POV) must hold.  The
    updated `produced` and `consumed` calculations sum up the appropriate quantities
    not for individual transactions, but for the entire batch, which includes the
    top-level transaction and all its sub-transactions.

7.  All transactions (sub- and top-level) may specify a non-zero fee.  The total fee
    summed up across all transactions in a batch is required to cover the minimum
    fees of all transactions.  The fees specified in all transactions are always
    collected.  Individual transactions in a batch do not need to meet the min-fee
    requirement.

8.  The total size of the top-level transaction (including all its sub-transactions)
    must be less than the `maxTxSize`{.AgdaField}.  This constraint is necessary to
    ensure efficient network operation since batches will be transmitted wholesale
    across the Cardano network.


```agda
data ScriptPurpose : Type where
  Cert     : DCert               → ScriptPurpose
  Rwrd     : RewardAddress       → ScriptPurpose
  Mint     : ScriptHash          → ScriptPurpose
  Spend    : TxIn                → ScriptPurpose
  Vote     : GovVoter            → ScriptPurpose
  Propose  : GovProposal         → ScriptPurpose
  Guard    : (TxId × ScriptHash) → ScriptPurpose
```

<!--
```agda
private variable
  ℓ : TxLevel

rdptr : (Tx ℓ) → ScriptPurpose → Maybe (RedeemerPtr ℓ)
rdptr tx = λ where
  (Cert h)              → map (Cert    ,_) $ indexOfDCert    h txCerts
  (Rwrd h)              → map (Reward  ,_) $ indexOfRwdAddr  h txWithdrawals
  (Mint h)              → map (Mint    ,_) $ indexOfPolicyId h (policies mint)
  (Spend h)             → map (Spend   ,_) $ indexOfTxIn     h txIns
  (Vote h)              → map (Vote    ,_) $ indexOfVote     h (map GovVote.voter txGovVotes)
  (Propose h)           → map (Propose ,_) $ indexOfProposal h txGovProposals
  (Guard h)             → map (Guard   ,_) $ indexOfGuard    h (getTxScripts tx)
 where open TxBody (TxBodyOf tx)
-- getSubTxScripts : TopLevelTx → ℙ (TxId × ScriptHash)

indexedRdmrs : (Tx ℓ) → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? txRedeemers x) nothing (rdptr tx sp)
  where open Tx tx; open TxWitnesses txWitnesses

getDatum : Tx ℓ → UTxO → ScriptPurpose → Maybe Datum
getDatum tx utxo (Spend txin) =
  do (_ , _ , just d , _) ← lookupᵐ? utxo txin where
                            (_ , _ , nothing , _) → nothing
     case d of λ where
       (inj₁ d) → just d
       (inj₂ h) → lookupᵐ? (setToMap (mapˢ < hash , id > (DataOf tx))) h
getDatum tx utxo _ = nothing
```
-->

```agda
record TxInfo : Type where
  field realizedInputs : UTxO
        txOuts         : Ix ⇀ TxOut
        txFee          : Maybe Fees
        mint           : Value
        txCerts        : List DCert
        txWithdrawals  : Withdrawals
        txVldt         : Maybe Slot × Maybe Slot
        vkKey          : ℙ KeyHash
        txData         : ℙ Datum
        txId           : TxId


txInfo : (ℓ : TxLevel) → UTxO → Tx ℓ → TxInfo

txInfo TxLevelTop utxo tx =
  record  { realizedInputs = utxo ∣ txIns
          ; txOuts = txOuts
          ; txFee = just txFee
          ; mint = mint
          ; txCerts = txCerts
          ; txWithdrawals = txWithdrawals
          ; txVldt = txVldt
          ; vkKey = txRequiredGuards -- ?
          ; txData = DataOf tx
          ; txId = txId
          } where open Tx tx; open TxBody txBody

txInfo TxLevelSub utxo tx =
  record  { realizedInputs = utxo ∣ txIns
          ; txOuts = txOuts
          ; txFee = nothing
          ; mint = mint
          ; txCerts = txCerts
          ; txWithdrawals = txWithdrawals
          ; txVldt = txVldt
          ; vkKey = txRequiredGuards  -- ?
          ; txData = DataOf tx
          ; txId = txId
          } where open Tx tx; open TxBody txBody
```

<!--
```agda
credsNeededMinusCollateral : {ℓ : TxLevel} → TxBody ℓ → ℙ (ScriptPurpose × Credential)
credsNeededMinusCollateral txb = a ∪ b ∪ c ∪ d ∪ e
  where
  a b c d e : ℙ (ScriptPurpose × Credential)
  a = mapˢ (λ a → (Rwrd a , CredentialOf a)) (dom ∣ WithdrawalsOf txb ∣)
  b = mapPartial (λ c → (Cert c ,_) <$> cwitness c) (fromList (DCertsOf txb))
  c = mapˢ (λ x → (Mint x , ScriptObj x)) (policies (ValueOf txb))
  d = mapPartial (λ v → if isGovVoterCredential v then (λ {c} → just (Vote v , c)) else nothing)
                 (fromList (map GovVoterOf (GovVotesOf txb)))
  e = mapPartial (λ p → if PolicyOf p then (λ {sh} → just (Propose  p , ScriptObj sh)) else nothing)
                 (fromList (GovProposalsOf txb))

credsNeeded : (ℓ : TxLevel) → UTxO → (TxBody ℓ) → ℙ (ScriptPurpose × Credential)
credsNeeded TxLevelTop utxo txb = credsNeededMinusCollateral txb
  ∪ mapˢ (λ (i , o) → (Spend  i , payCred (proj₁ o))) ((utxo ∣ (txIns ∪ collateralInputs)) ˢ)
  where open TxBody txb

credsNeeded TxLevelSub utxo txb = credsNeededMinusCollateral txb
  ∪ mapˢ (λ (i , o) → (Spend  i , payCred (proj₁ o))) ((utxo ∣ txIns) ˢ)
  where open TxBody txb

valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = toData (txinfo , sp)

txOutToDataHash : TxOut → Maybe DataHash
txOutToDataHash (_ , _ , d , _) = d >>= isInj₂

txOutToP2Script
  : UTxO → (Tx ℓ)
  → TxOut → Maybe P2Script
txOutToP2Script utxo tx (a , _) =
  do sh ← isScriptObj (payCred a)
     s  ← lookupScriptHash sh tx utxo
     toP2Script s
-- opaque
--   collectP2ScriptsWithContext
--     : PParams → (Tx ℓ) → UTxO
--     → List (P2Script × List Data × ExUnits × CostModel)
--   collectP2ScriptsWithContext pp tx utxo
--     = setToList
--     $ mapPartial (λ (sp , c) → if isScriptObj c
--                                 then (λ {sh} → toScriptInput sp sh)
--                                 else nothing)
--     $ credsNeeded utxo (TxBodyOf tx)
--     where
--       toScriptInput
--         : ScriptPurpose → ScriptHash
--         → Maybe (P2Script × List Data × ExUnits × CostModel)
--       toScriptInput sp sh =
--         do s ← lookupScriptHash sh tx utxo
--            p2s ← toP2Script s
--            (rdmr , exunits) ← indexedRdmrs tx sp
--            let data'     = maybe [_] [] (getDatum tx utxo sp) ++ rdmr ∷ [ valContext (txInfo (language p2s) pp utxo tx) sp ]
--                costModel = PParams.costmdls pp
--            just (p2s , data' , exunits , costModel)

evalP2Scripts : List (P2Script × List Data × ExUnits × CostModel) → Bool
evalP2Scripts = all (λ (s , d , eu , cm) → runPLCScript cm s eu d)
```
-->
