---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo.lagda.md
---

# The UTxO Transition System

This is a **work-in-progress** of the Dijkstra-era UTxO transition system.
Historically, this module captured the phase-1 structural checks specific to
Dijkstra (nested transactions + guards).  It now also contains a first pass at
the *batch* semantics and the phase-2 (Plutus) execution model for validating a
top-level transaction together with all of its subtransactions.

The primary guiding design principles are

+  **Spend-side safety**.  All spending inputs across the whole batch must
   come from a pre-batch UTxO snapshot (see point 6 of the
   [Changes to Transaction Validity][1] section of CIP-0118);
+  **Batch-scoped witnesses**.  Scripts and datums are collected once per batch and
   then shared for phase-2 evaluation; CIP-0118 explicitly states that reference
   scripts, and by implication reference-input-resolved UTxO entries, could be
   outputs of preceding transactions in the batch (see point 5 of the
   [Changes to Transaction Validity][1] section of CIP-0118);
+  **Batch-consistency**. No two transactions in the batch may spend the
   same input.  This is enforced explicitly at the top level by a predicate
   (called `NoOverlappingSpendInputs`{.AgdaFunction} below) that is checked in the
   `UTXO`{.AgdaDatatype} rule.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Ledger.Dijkstra.Specification.Fees using (scriptsCost)

import Data.List.Relation.Unary.All as List
import Data.List.Relation.Unary.AllPairs as List
import Data.Sum.Relation.Unary.All as Sum

private variable
  ℓ : TxLevel

totExUnits : Tx ℓ → ExUnits
totExUnits tx = ∑[ (_ , eu) ← RedeemersOf tx ] eu

-- utxoEntrySizeWithoutVal = 27 words (8 bytes)
utxoEntrySizeWithoutVal : MemoryEstimate
utxoEntrySizeWithoutVal = 8

utxoEntrySize : TxOut → MemoryEstimate
utxoEntrySize (_ , v , _ , _) = utxoEntrySizeWithoutVal + size v

open PParams
```
-->

## Functions and Types of the UTxO Transition System

The UTxO rules are parameterised by an environment `UTxOEnv`{.AgdaRecord} and an
evolving state `UTxOState`{.AgdaRecord}.

```agda
record UTxOEnv : Type where
  field
    slot              : Slot
    pparams           : PParams
    treasury          : Treasury
    utxo₀             : UTxO
    depositsChange    : ℤ
    allScripts        : ℙ Script
    allData           : DataHash ⇀ Datum

record SubUTxOEnv : Type where
  field
    slot             : Slot
    pparams          : PParams
    treasury         : Treasury
    utxo₀            : UTxO
    isTopLevelValid  : Bool
    allScripts       : ℙ Script
    allData          : DataHash ⇀ Datum
```

The `UTxOEnv`{.AgdaRecord} carries

+  `utxo₀`{.AgdaField}: *pre-batch snapshot* of the UTxO;
+  `allScripts`{.AgdaField}: *batch-wide script pool* containing all scripts available
   to the batch (witness scripts plus reference scripts resolved from allowed
   reference inputs and batch outputs);
+  `allData`{.AgdaField}: *datum-by-hash pool* containing all data available to the batch.

The pre-batch UTxO snapshot `utxo₀`{.AgdaField} is used to resolve all
*spend-side* lookups (inputs, collateral, and datum lookup for spent outputs).

The `allScripts`{.AgdaField} and `allData`{.AgdaField} fields of `UTxOEnv`{.AgdaRecord}
capture the *batch-wide script pool* and *datum-by-hash pool* respectively.  These pools
are used to resolve all script and datum lookups during phase-2 validation of
subtransactions in the batch.  Scripts and data are treated as *batch-wide witnesses*;
attaching a script or datum to a transaction in the batch makes it available for
phase-2 validation of any transaction in the batch, independent of which
subtransaction originally supplied it.

If `Γ`{.AgdaBound} denotes a particular `UTxOEnv`{.AgdaRecord}, then we often
access the `allScripts`{.AgdaField} and `allData`{.AgdaField} fields of
`Γ`{.AgdaBound} via the `ScriptPoolOf`{.AgdaField} `Γ`{.AgdaBound} and
`DataPoolOf`{.AgdaField} `Γ`{.AgdaBound} accessors, respectively.

```agda
record UTxOState : Type where
  constructor ⟦_,_,_⟧ᵘ
  field
    utxo       : UTxO
    fees       : Fees
    donations  : Donations
```

<!--
```agda
record HasUTxOState {a} (A : Type a) : Type a where
  field UTxOStateOf : A → UTxOState
open HasUTxOState ⦃...⦄ public

record HasIsTopLevelValidFlag {a} (A : Type a) : Type a where
  field IsTopLevelValidFlagOf : A → Bool
open HasIsTopLevelValidFlag ⦃...⦄ public

record HasDepositsChange {a} (A : Type a) : Type a where
  field DepositsChangeOf : A → ℤ
open HasDepositsChange ⦃...⦄ public

record HasScriptPool {a} (A : Type a) : Type a where
  field ScriptPoolOf : A → ℙ Script
open HasScriptPool ⦃...⦄ public

record HasDataPool {a} (A : Type a) : Type a where
  field DataPoolOf : A → DataHash ⇀ Datum
open HasDataPool ⦃...⦄ public

record HasSlot {a} (A : Type a) : Type a where
  field SlotOf : A → Slot
open HasSlot ⦃...⦄ public

instance
  HasSlot-UTxOEnv : HasSlot UTxOEnv
  HasSlot-UTxOEnv .SlotOf = UTxOEnv.slot

  HasPParams-UTxOEnv : HasPParams UTxOEnv
  HasPParams-UTxOEnv .PParamsOf = UTxOEnv.pparams

  HasTreasury-UTxOEnv : HasTreasury UTxOEnv
  HasTreasury-UTxOEnv .TreasuryOf = UTxOEnv.treasury

  HasUTxO-UTxOEnv : HasUTxO UTxOEnv
  HasUTxO-UTxOEnv .UTxOOf = UTxOEnv.utxo₀

  HasDepositsChange-UTxOEnv : HasDepositsChange UTxOEnv
  HasDepositsChange-UTxOEnv .DepositsChangeOf = UTxOEnv.depositsChange

  HasScriptPool-UTxOEnv : HasScriptPool UTxOEnv
  HasScriptPool-UTxOEnv .ScriptPoolOf = UTxOEnv.allScripts

  HasDataPool-UTxOEnv : HasDataPool UTxOEnv
  HasDataPool-UTxOEnv .DataPoolOf = UTxOEnv.allData

  HasSlot-SubUTxOEnv : HasSlot SubUTxOEnv
  HasSlot-SubUTxOEnv .SlotOf = SubUTxOEnv.slot

  HasPParams-SubUTxOEnv : HasPParams SubUTxOEnv
  HasPParams-SubUTxOEnv .PParamsOf = SubUTxOEnv.pparams

  HasTreasury-SubUTxOEnv : HasTreasury SubUTxOEnv
  HasTreasury-SubUTxOEnv .TreasuryOf = SubUTxOEnv.treasury

  HasUTxO-SubUTxOEnv : HasUTxO SubUTxOEnv
  HasUTxO-SubUTxOEnv .UTxOOf = SubUTxOEnv.utxo₀

  HasIsTopLevelValidFlag-SubUTxOEnv : HasIsTopLevelValidFlag SubUTxOEnv
  HasIsTopLevelValidFlag-SubUTxOEnv .IsTopLevelValidFlagOf = SubUTxOEnv.isTopLevelValid

  HasScriptPool-SubUTxOEnv : HasScriptPool SubUTxOEnv
  HasScriptPool-SubUTxOEnv .ScriptPoolOf = SubUTxOEnv.allScripts

  HasDataPool-SubUTxOEnv : HasDataPool SubUTxOEnv
  HasDataPool-SubUTxOEnv .DataPoolOf = SubUTxOEnv.allData

  HasUTxO-UTxOState : HasUTxO UTxOState
  HasUTxO-UTxOState .UTxOOf = UTxOState.utxo

  HasFee-UTxOState : HasFees UTxOState
  HasFee-UTxOState .FeesOf = UTxOState.fees

  HasDonations-UTxOState : HasDonations UTxOState
  HasDonations-UTxOState .DonationsOf = UTxOState.donations

  unquoteDecl HasCast-UTxOEnv HasCast-SubUTxOEnv HasCast-UTxOState = derive-HasCast
    ( (quote UTxOEnv    , HasCast-UTxOEnv  ) ∷
      (quote SubUTxOEnv , HasCast-SubUTxOEnv  ) ∷
    [ (quote UTxOState  , HasCast-UTxOState) ])
```
-->

```agda
outs : Tx ℓ  → UTxO
outs tx = mapKeys (TxIdOf tx ,_) (TxOutsOf tx)

balance : UTxO → Value
balance utxo = ∑ˢ[ v ← valuesOfUTxO utxo ] v

cbalance : UTxO → Coin
cbalance utxo = coin (balance utxo)

refScriptsSize : TopLevelTx → UTxO → ℕ
refScriptsSize txTop utxo =
 ∑ˡ[ x ← setToList (allReferenceScripts txTop utxo) ] scriptSize x

minfee : PParams → TopLevelTx → UTxO → Coin
minfee pp txTop utxo = pp .a * (SizeOf txTop) + pp .b
                       + txScriptFee (pp .prices) (totExUnits txTop)
                       + scriptsCost pp (refScriptsSize txTop utxo)
```

<!--
```agda
instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance
```
-->

```agda
data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Type where
  both   : ∀ {l r}  → l ≤ slot × slot ≤ r  →  inInterval slot (just l   , just r)
  lower  : ∀ {l}    → l ≤ slot             →  inInterval slot (just l   , nothing)
  upper  : ∀ {r}    → slot ≤ r             →  inInterval slot (nothing  , just r)
  none   :                                    inInterval slot (nothing  , nothing)
```

<!--
```agda
-- Note: inInterval has to be a type definition for inference to work
instance
  Dec-inInterval : inInterval ⁇²
  Dec-inInterval {slot} {just x  , just y } .dec with x ≤? slot | slot ≤? y
  ... | no ¬p₁ | _      = no λ where (both (h₁ , h₂)) → ¬p₁ h₁
  ... | yes p₁ | no ¬p₂ = no λ where (both (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (both (p₁ , p₂))
  Dec-inInterval {slot} {just x  , nothing} .dec with x ≤? slot
  ... | no ¬p = no  (λ where (lower h) → ¬p h)
  ... | yes p = yes (lower p)
  Dec-inInterval {slot} {nothing , just x } .dec with slot ≤? x
  ... | no ¬p = no  (λ where (upper h) → ¬p h)
  ... | yes p = yes (upper p)
  Dec-inInterval {slot} {nothing , nothing} .dec = yes none

coinPolicies : ℙ ScriptHash
coinPolicies = policies (inject 1)

isAdaOnly : Value → Type
isAdaOnly v = policies v ≡ᵉ coinPolicies
```
-->

```agda
collateralCheck : PParams → TopLevelTx → UTxO → Type
collateralCheck pp txTop utxo =
  All (λ (addr , _) → isVKeyAddr addr) (range (utxo ∣ CollateralInputsOf txTop))
  × isAdaOnly (balance (utxo ∣ CollateralInputsOf txTop))
  × coin (balance (utxo ∣ CollateralInputsOf txTop)) * 100 ≥ (TxFeesOf txTop) * pp .collateralPercentage
  × (CollateralInputsOf txTop) ≢ ∅
```

```agda
module _ (txTop : TopLevelTx) (depositsChange : ℤ) where

  depositRefundsBatch : Coin
  depositRefundsBatch = negPart depositsChange

  newDepositsBatch : Coin
  newDepositsBatch = posPart depositsChange

  consumed : UTxO → Value
  consumed utxo =  consumedTx txTop + inject depositRefundsBatch
                + ∑ˡ[ stx ← SubTransactionsOf txTop ] (consumedTx stx)
    where
    consumedTx : Tx ℓ → Value
    consumedTx tx =  balance (utxo ∣ SpendInputsOf tx)
                     + MintedValueOf tx
                     + inject (getCoin (WithdrawalsOf tx))

  produced : Value
  produced =  producedTx txTop + inject newDepositsBatch
              + ∑ˡ[ stx ← SubTransactionsOf txTop ] (producedTx stx)
    where
    producedTx : ∀ {ℓ} → Tx ℓ → Value
    producedTx {TxLevelSub} tx =  balance (outs tx) + inject (DonationsOf tx)
    producedTx {TxLevelTop} tx =
      balance (outs tx) + inject (TxFeesOf tx) + inject (DonationsOf tx)
```


## The <span class="AgdaDatatype">UTXOS</span> Transition System

<!--
```agda
private
  variable
    A        : Type
    Γ        : A
    s s'     : UTxOState
    txTop    : TopLevelTx
    txSub    : SubLevelTx
```
-->

### Phase-2 Validation

Phase-2 validation is the evaluation of all Plutus scripts needed by the
top-level transaction and all its subtransactions in the shared, batch-scoped
context.

The `Script.Validation`{.AgdaModule} module is not `UTxOEnv`{.AgdaRecord}-context
aware, so in order to assemble the correct set of scripts and data
for each transaction, we must provide `Script.Validation`{.AgdaModule} with
the following components:

1.  the pre-batch spend-side snapshot `UTxOOf`{.AgdaField} `Γ`{.AgdaBound},
2.  the datum-by-hash pool `DataPoolOf`{.AgdaField} `Γ`{.AgdaBound}.
3.  the script pool `ScriptPoolOf`{.AgdaField} `Γ`{.AgdaBound},

Phase-2 scripts together with their context are collected by the function
`allP2ScriptsWithContext`{.AgdaFunction}:

```agda
allP2ScriptsWithContext : UTxOEnv → TopLevelTx → List (P2Script × List Data × ExUnits × CostModel)
allP2ScriptsWithContext Γ txTop =
  p2ScriptsWithContext txTop ++ concatMap p2ScriptsWithContext (SubTransactionsOf txTop)
    where
      p2ScriptsWithContext : Tx ℓ → List (P2Script × List Data × ExUnits × CostModel)
      p2ScriptsWithContext t =
        collectP2ScriptsWithContext (PParamsOf Γ)
                                    txTop
                                    (UTxOOf Γ)        -- (1)
                                    (DataPoolOf Γ)    -- (2)
                                    (ScriptPoolOf Γ)  -- (3)
```

### New in Dijkstra

In Dijkstra, the state-modifying logic, which before was part to
`UTXOS`{.AgdaDatatype} (cf,. Conway specification), now belongs to the
`UTXO`{.AgdaDatatype} rule.

The `UTXOS`{.AgdaDatatype} rule validates the correspondence between evaluating
phase-2 scripts and the `isValid` flag in the top-level transaction.

Phase-2 validation occurs after (successful) phase-1 validation. In Dijkstra,
the evaluation of scripts, from the sub- and top-level transactions, is defered
to the `UTXOS`{.AgdaDatatype} rule. This enforces that sub-transactions and
other aspects of the top-level transaction are phase-1 valid.

```agda
data _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → ⊤ → TopLevelTx → ⊤ → Type where

  UTXOS :
    ∙ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop
      ────────────────────────────────
      Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈ tt
```

## The UTXO Transition System

<!--
```agda
private
  variable
    utxo : UTxO
    fees : Fees
    donations : Donations
```
-->

### The <span class="AgdaDatatype">SUBUTXO</span> Rule

```agda
data _⊢_⇀⦇_,SUBUTXO⦈_ : SubUTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXO :

    ∙ SpendInputsOf txSub ≢ ∅
    ∙ inInterval (SlotOf Γ) (ValidIntervalOf txSub)
    ∙ MaybeNetworkIdOf txSub ~ just NetworkId
      ────────────────────────────────
    let
         s₁ = if IsTopLevelValidFlagOf Γ
              then ⟦ (utxo ∣ SpendInputsOf txSub ᶜ) ∪ˡ outs txSub , fees , donations + DonationsOf txSub ⟧ else ⟦ utxo , fees , donations ⟧
    in
      Γ ⊢ ⟦ utxo , fees , donations ⟧ ⇀⦇ txSub ,SUBUTXO⦈ s₁
```

<!--
```agda
unquoteDecl SUBUTXO-premises = genPremises SUBUTXO-premises (quote SUBUTXO)
```
-->

### The <span class="AgdaDatatype">UTXO</span> Rule

The [CIP]([1]) states:

> All inputs of all transactions in a single batch must be contained in the UTxO
  set before any of the batch transactions are applied. This ensures that
  operation of scripts is not disrupted, for example, by temporarily duplicating
  thread tokens, or falsifying access to assets via flash loans.

This is achieved by the following precondition in the `UTXO`{.AgdaDatatype} rule:

1.  The set of spending and reference inputs must exist in the UTxO _before_
    applying the transaction (or partially applying any part of it).

In addition, the `UTXO`{.AgdaDatatype} rule enforces:

2.  No double spending: To prevent double spending across a batch of
    transactions, all spending input sets (top-level and subtransactions) must
    be pairwise disjoint.  This is enforced by the `NoOverlappingSpendInputs
    txTop` precondition.

3.  Every guard credential required by a subtransaction must appear in the
    top-level `txGuards`{.AgdaField} set.


```agda
data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :

    let
         pp        = PParamsOf Γ
         utxo₀     = UTxOOf Γ
         overhead  = 160
    in
    ∙ SpendInputsOf txTop ≢ ∅
    ∙ inInterval (SlotOf Γ) (ValidIntervalOf txTop)
    ∙ minfee pp txTop utxo ≤ TxFeesOf txTop
    ∙ consumed txTop (DepositsChangeOf Γ) utxo₀ ≡ produced txTop (DepositsChangeOf Γ)
    ∙ SizeOf txTop ≤ maxTxSize pp
    ∙ refScriptsSize txTop utxo₀ ≤ pp .maxRefScriptSizePerTx
    ∙ allSpendInputs txTop ⊆ dom utxo₀                          -- (1)
    ∙ allReferenceInputs txTop ⊆ dom utxo₀                      -- (1)
    ∙ NoOverlappingSpendInputs txTop                            -- (2)
    ∙ requiredGuardsInTopLevel txTop (SubTransactionsOf txTop)  -- (3)
    ∙ RedeemersOf txTop ˢ ≢ ∅ → collateralCheck pp txTop utxo₀
    ∙ allMintedCoin txTop ≡ 0

    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ]
      (inject ((overhead + utxoEntrySize o) * coinsPerUTxOByte pp) ≤ᵗ txOutToValue o)
      × (serializedSize (txOutToValue o) ≤ maxValSize pp)

    ∙ ∀[ (a , _) ∈ range (TxOutsOf txTop) ]
      (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a × (netId a ≡ NetworkId)

    ∙ ∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId
    ∙ MaybeNetworkIdOf txTop ~ just NetworkId
    ∙ CurrentTreasuryOf txTop  ~ just (TreasuryOf Γ)
    ∙ Γ ⊢ _ ⇀⦇ txTop ,UTXOS⦈ _
      ────────────────────────────────
    let
         s₁ = if IsValidFlagOf txTop then ⟦ (utxo ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , fees + TxFeesOf txTop , donations + DonationsOf txTop ⟧ else ⟦ utxo ∣ (CollateralInputsOf txTop) ᶜ , fees + cbalance (utxo ∣ CollateralInputsOf txTop) , donations ⟧
    in
      Γ ⊢ ⟦ utxo , fees , donations ⟧ ⇀⦇ txTop ,UTXO⦈ s₁
```

[1]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-0118#changes-to-transaction-validity "CIP-0118 | Changes to Transaction Validity"
[2]: https://cips.cardano.org/cip/CIP-0118 "CIP-0118 | Nested Transactions"
