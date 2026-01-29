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
   (called `noOverlappingSpendInputs`{.AgdaFunction} below) that is checked in the
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
import Data.Sum.Relation.Unary.All as Sum

private variable
  ℓ : TxLevel

totExUnits : Tx ℓ → ExUnits
totExUnits tx = ∑[ (_ , eu) ← RedeemersOf tx ] eu

-- utxoEntrySizeWithoutVal = 27 words (8 bytes)
utxoEntrySizeWithoutVal : MemoryEstimate
utxoEntrySizeWithoutVal = 8

utxoEntrySize : TxOutʰ → MemoryEstimate
utxoEntrySize o = utxoEntrySizeWithoutVal + size (getValueʰ o)

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

record UTxOState : Type where
  constructor ⟦_,_,_,_⟧ᵘ
  field
    utxo       : UTxO
    fees       : Fees
    donations  : Donations
```

The `UTxOEnv`{.AgdaRecord} carries

+  `utxo₀`{.AgdaField}: *pre-batch snapshot* of the UTxO;
+  `allScripts`{.AgdaField}: *batch-wide script pool* containing all scripts available
   to the batch (witness scripts plus reference scripts resolved from allowed
   reference inputs and batch outputs);
+  `allData`{.AgdaField}: *datum-by-hash pool* containing all data available to the batch.

The pre-batch UTxO snapshot `utxo₀`{.AgdaField} is used to resolve all *spend-side*
lookups (inputs, collateral, and datum lookup for spent outputs); this reflects the
the requirement that every spending input exists before any transaction in the
batch is processed.

The `allScripts`{.AgdaField} and `allData`{.AgdaField} fields of `UTxOEnv`{.AgdaRecord}
capture the *batch-wide script pool* and *datum-by-hash pool* respectively.  These pools
are used to resolve all script and datum lookups during phase-2 validation of
subtransactions in the batch.  Scripts and data are treated as *batch-wide witnesses*;
attaching a script or datum to a transaction in the batch makes it available for
phase-2 validation of any transaction in the batch, independent of which
subtransaction originally supplied it.  Thus the ledger rules can validate
all scripts in the batch without recomputing per-subtransaction script/data availability.

In the `LEDGER`{.AgdaDatatype} rule, the *batch-wide script pool* and
*datum-by-hash pool* are computed once and the results are used to populate
the `allScripts`{.AgdaField} and `allData`{.AgdaField} fields of the
`UTxOEnv`{.AgdaRecord} that appears in a few of the premises of the
`LEDGER`{.AgdaDatatype} rule.

If `Γ`{.AgdaBound} denotes a particular `UTxOEnv`{.AgdaRecord}, then
we often access the `allScripts`{.AgdaField} and
`allData`{.AgdaField} fields of `Γ`{.AgdaBound} via the
`ScriptPoolOf`{.AgdaField} `Γ`{.AgdaBound} and
`DataPoolOf`{.AgdaField} `Γ`{.AgdaBound} accessors, respectively.

Finally, we occasionally need a *batch output view* of the UTxO, denoted by
`utxoView`{.AgdaFunctions}, which includes the pre-batch UTxO (`utxo₀`{.AgdaField}) plus all
outputs created within the batch (top-level outputs plus all subtransaction outputs).
Formally,

The rest of this module defines

+  common helper functions (balance, minfee, deposit accounting);
+  batch-level accounting (consumed/produced across a collection of transactions);
+  phase-2 wiring for validating all Plutus scripts required by the batch.

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

opaque
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
  balance utxo = ∑[ x ← mapValues txOutHash utxo ] getValueʰ x

  cbalance : UTxO → Coin
  cbalance utxo = coin (balance utxo)

  refScriptsSize : Tx ℓ → UTxO → ℕ
  refScriptsSize tx utxo =
    ∑ˡ[ x ← setToList (referenceScripts tx utxo) ] scriptSize x

  -- allRefScriptsSize : TopLevelTx → UTxO → ℕ
  -- allRefScriptsSize txTop utxo =
  --   ∑ˡ[ x ← setToList (getAllReferenceScripts txTop utxo) ] scriptSize x

  minfee : PParams → Tx ℓ → UTxO → Coin
  minfee pp tx utxo =  pp .a * (SizeOf tx) + pp .b
                       + txScriptFee (pp .prices) (totExUnits tx)
                       + scriptsCost pp (refScriptsSize tx utxo)
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

-- NOTE:
-- Collateral is *top-level only* in Dijkstra.  In this first-pass model,
-- we keep Conway's collateral predicate, but interpret it as covering the entire
-- batch's phase-2 validation (top-level tx + all subtransactions).
--
-- The precise relationship between collateral, per-script execution units, and
-- fee/minfee accounting may be refined as the CIPs and ledger design stabilize.

batchOuts : TopLevelTx → UTxO
batchOuts txTop = foldr (λ sub acc → outs sub ∪ˡ acc) (outs txTop) (SubTransactionsOf txTop)

utxoView : UTxO → TopLevelTx → UTxO
utxoView utxo txTop = utxo ∪ˡ batchOuts txTop

module Accounting (pp : PParams) (txTop : TopLevelTx) (depositsChange : ℤ) where

  depositRefundsBatch : Coin
  depositRefundsBatch = negPart depositsChange

  newDepositsBatch : Coin
  newDepositsBatch = posPart depositsChange

  consumed : UTxOEnv → Value
  consumed Γ =  consumedTx txTop + inject depositRefundsBatch
                + ∑ˡ[ stx ← SubTransactionsOf txTop ] (consumedTx stx)
    where
    consumedTx : ∀ {ℓ} → Tx ℓ → Value
    consumedTx tx =  balance (UTxOOf Γ ∣ SpendInputsOf tx)
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

## Phase-2 Validation for Nested Transactions

Phase-2 validation is the evaluation of all Plutus scripts needed by the
top-level transaction and all its subtransactions in the shared, batch-scoped context.

The `Script.Validation`{.AgdaModule} module is not `UTxOEnv`{.AgdaRecord}-context
aware, so in order to assemble the correct set of scripts and data
for each transaction, we must provide `Script.Validation`{.AgdaModule} with
the following components:

+  the pre-batch spend-side snapshot `UTxOOf`{.AgdaField} `Γ`{.AgdaBound},
+  the script pool `ScriptPoolOf`{.AgdaField} `Γ`{.AgdaBound},
+  the datum-by-hash pool `DataPoolOf`{.AgdaField} `Γ`{.AgdaBound}.

```agda
-- union a list of sets
concatMapˡ : {A B : Type} → (A → ℙ B) → List A → ℙ B
concatMapˡ f as = proj₁ $ unions (fromList (map f as))
-- maybe move this to agda-sets or src-lib-exts

-- No-double-spend across the batch: the collection of all spending inputs must
-- be pairwise disjoint.  NOTE: using `batchSpendInputs` alone is insufficient,
-- because set union would silently erase duplicates.
PairwiseDisjoint : List (ℙ TxIn) → Type
PairwiseDisjoint []        = ⊤
PairwiseDisjoint (X ∷ Xs)  = List.All (λ Y → disjoint X Y) Xs × PairwiseDisjoint Xs

p2ScriptsWithContext : UTxOEnv → Tx ℓ → List (P2Script × List Data × ExUnits × CostModel)
p2ScriptsWithContext Γ t =
  collectP2ScriptsWithContext (PParamsOf Γ) t
                              (UTxOOf Γ)        -- pre-batch snapshot
                              (DataPoolOf Γ)    -- batch datum-by-hash pool
                              (ScriptPoolOf Γ)  -- batch script universe

allDCerts : TopLevelTx → List DCert
allDCerts t = DCertsOf t ++ concatMap DCertsOf (SubTransactionsOf t)

allSpendInputs : TopLevelTx → ℙ TxIn
allSpendInputs t = SpendInputsOf t ∪ concatMapˡ SpendInputsOf (SubTransactionsOf t)

-- Reference inputs are validated against the "batch output view," so they may
-- point to outputs produced in the same batch (including self-usable outputs).
allReferenceInputs : TopLevelTx → ℙ TxIn
allReferenceInputs t = ReferenceInputsOf t ∪ concatMapˡ ReferenceInputsOf (SubTransactionsOf t)

allSpendInputsList : TopLevelTx → List (ℙ TxIn)
allSpendInputsList t = SpendInputsOf t ∷ map SpendInputsOf (SubTransactionsOf t)

noOverlappingSpendInputs : TopLevelTx → Type
noOverlappingSpendInputs = PairwiseDisjoint ∘ allSpendInputsList

-- Total Ada minted across the entire batch (top-level tx + all sub-txs).
allMintedCoin : TopLevelTx → Coin
allMintedCoin txTop = foldl (λ acc txSub → acc + coin (MintedValueOf txSub))
                            (coin (MintedValueOf txTop))
                            (SubTransactionsOf txTop)
    -- To maintain the total Ada supply invariant, this must satisfy
    -- `batchMintedCoin ≡ 0`; this is the generalization of Conway's
    -- `coin mint ≡ 0`.

-- UTxO change in case Tx.isValid ≡ true. case
utxo✓ : UTxO → Tx ℓ → UTxO
utxo✓ {TxLevelSub} utxo tx = (utxo ∣ SpendInputsOf tx ᶜ) ∪ˡ outs tx
utxo✓ {TxLevelTop} utxo tx = (utxo ∣ allSpendInputs tx ᶜ) ∪ˡ batchOuts tx
                              -- ^ remove ALL spend inputs; add ALL outputs (top + subs)

-- Donations change in case Tx.isValid ≡ true.
donations✓ : Donations → Tx ℓ → Donations
donations✓ {TxLevelSub} dons tx = dons + DonationsOf tx
donations✓ {TxLevelTop} dons tx = dons + foldl  (λ acc txSub → acc + DonationsOf txSub)
                                                (DonationsOf tx) (SubTransactionsOf tx)

-- Fees change in case Tx.isValid ≡ true.
fees✓ : Fees → Tx ℓ → Fees
fees✓ {TxLevelSub} fees _ = fees
fees✓ {TxLevelTop} fees tx = fees + TxFeesOf tx

-- UTxO change in case Tx.isValid ≡ false.
utxo× : UTxO → Tx ℓ → UTxO
utxo× {TxLevelSub} utxo _ = utxo
utxo× {TxLevelTop} utxo t = utxo ∣ (CollateralInputsOf t) ᶜ

-- Fees change in case Tx.isValid ≡ false.
fees× : Fees → UTxO → Tx ℓ → Fees
fees× {TxLevelSub} fees _ _ = fees
fees× {TxLevelTop} fees utxo tx = fees + coin (balance (utxo ∣ CollateralInputsOf tx))

allP2ScriptsWithContext : UTxOEnv → TopLevelTx → List (P2Script × List Data × ExUnits × CostModel)
allP2ScriptsWithContext Γ t =
  p2ScriptsWithContext Γ t ++ concatMap (p2ScriptsWithContext Γ) (SubTransactionsOf t)

-- UTxOState change in case Tx.isValid ≡ true.
scripts✓ : UTxOState → Tx ℓ → UTxOState
scripts✓ s t = ⟦ utxo✓ (UTxOOf s) t , fees✓ (FeesOf s) t , donations✓ (DonationsOf s) t ⟧

-- UTxOState change in case Tx.isValid ≡ false.
scripts× : UTxOState → Tx ℓ → UTxOState
scripts× s t = ⟦ utxo× (UTxOOf s) t , fees× (FeesOf s) (UTxOOf s) t , DonationsOf s ⟧
```


## The <span class="AgdaDatatype">UTXOS</span> Rule

<!--
```agda
private variable
  A        : Type
  Γ        : A
  s s'     : UTxOState
  txTop    : TopLevelTx
  txSub    : SubLevelTx
```
-->

```agda
data _⊢_⇀⦇_,SUBUTXOS⦈_ : SubUTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXOS-scripts✓ :

    ∙ IsTopLevelValidFlagOf Γ ≡ true
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txSub ,SUBUTXOS⦈ scripts✓ s txSub

  SUBUTXOS-scripts× :

    ∙ IsTopLevelValidFlagOf Γ ≡ false
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txSub ,SUBUTXOS⦈ scripts× s txSub


data _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXOS-scripts✓ :

    ∙ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop
    ∙ IsValidFlagOf txTop ≡ true
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ scripts✓ s txTop

  UTXOS-scripts× :

    ∙ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop
    ∙ IsValidFlagOf txTop ≡ false
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ scripts× s txTop
```
<!--
```agda
unquoteDecl UTXOS-scripts✓-premises = genPremises UTXOS-scripts✓-premises (quote UTXOS-scripts✓)
unquoteDecl UTXOS-scripts×-premises = genPremises UTXOS-scripts×-premises (quote UTXOS-scripts×)

_⋀_ = _×_  -- synonym that improves readability of UTXO premises
```
-->

## The <span class="AgdaDatatype">UTXO</span> Rule

The CIP (TODO: add reference) states:

> All inputs of all transactions in a single batch must be contained in the UTxO
  set before any of the batch transactions are applied. This ensures that
  operation of scripts is not disrupted, for example, by temporarily duplicating
  thread tokens, or falsifying access to assets via flash loans. In the future,
  this may be up for reconsideration.

This is achieved by the following precondition in the `UTXO`.{AgdaDatatype} and
`SUBUTXO`.{AgdaDatatype} rules:

1.  The set of spending inputs must exist in the UTxO _before_ applying the
    transaction (or partially applying any part of it).

2.  To prevent double spending across a batch of transactions, all spending input
    sets (top-level and subtransactions) must be pairwise disjoint.  This is
    enforced by the `noOverlappingSpendInputs txTop` predicate, which checks
    that there are no duplicates in the *list* (not union!) of spending inputs.

3.  Reference inputs are checked against the batch output view (utxo₀ ∪ batchOuts),
    enabling reference scripts/data sourced from outputs created in the same batch
    (including a transactions own outputs).  Thus, we validate reference inputs of a
    transaction at the top level in UTXO, where the full `utxoView`{.AgdaFunction}
    is available.

4.  Every guard credential required by a subtransaction must appear in the
    top-level `txGuards`{.AgdaField} set.

```agda
data _⊢_⇀⦇_,SUBUTXO⦈_ : SubUTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXO :
    let pp = PParamsOf Γ in

    ∙ SpendInputsOf txSub ≢ ∅
    ∙ SpendInputsOf txSub ∩ ReferenceInputsOf txSub ≡ ∅
    ∙ inInterval (SlotOf Γ) (ValidIntervalOf txSub)
    ∙ refScriptsSize txSub (UTxOOf Γ) ≤ pp .maxRefScriptSizePerTx
    ∙ MaybeNetworkIdOf txSub ~ just NetworkId
    ∙ Γ ⊢ s ⇀⦇ txSub ,SUBUTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txSub ,SUBUTXO⦈ s'

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :

    let  open Accounting (PParamsOf Γ) txTop (DepositsChangeOf Γ)

         pp        = PParamsOf Γ
         utxo₀     = UTxOOf Γ
         utxo      = UTxOOf s
         overhead  = 160

         txOutsʰ : Ix ⇀ TxOutʰ
         txOutsʰ = mapValues txOutHash (TxOutsOf txTop)
    in
    ∙ SpendInputsOf txTop ≢ ∅
    ∙ SpendInputsOf txTop ∩ ReferenceInputsOf txTop ≡ ∅
    ∙ inInterval (SlotOf Γ) (ValidIntervalOf txTop)
    ∙ minfee pp txTop utxo ≤ TxFeesOf txTop
    ∙ consumed Γ ≡ produced
    ∙ SizeOf txTop ≤ maxTxSize pp
    ∙ refScriptsSize txTop utxo₀ ≤ pp .maxRefScriptSizePerTx
    ∙ allSpendInputs txTop ⊆ dom utxo₀                          -- (1)
    ∙ noOverlappingSpendInputs txTop                            -- (2)
    ∙ allReferenceInputs txTop ⊆ dom (utxoView utxo₀ txTop)     -- (3)
    ∙ requiredGuardsInTopLevel txTop (SubTransactionsOf txTop)  -- (4)
    ∙ RedeemersOf txTop ˢ ≢ ∅ → collateralCheck pp txTop utxo₀
    ∙ allMintedCoin txTop ≡ 0

    ∙ ∀[ (_ , txout) ∈ ∣ txOutsʰ ∣ ]
      (inject ((overhead + utxoEntrySize txout) * coinsPerUTxOByte pp) ≤ᵗ getValueʰ txout)
      ⋀ (serializedSize (getValueʰ txout) ≤ maxValSize pp)

    ∙ ∀[ (a , _) ∈ range txOutsʰ ]
      (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a ⋀ (netId a ≡ NetworkId)

    ∙ ∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId
    ∙ MaybeNetworkIdOf txTop ~ just NetworkId
    ∙ CurrentTreasuryOf txTop  ~ just (TreasuryOf Γ)
    ∙ Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
```

[1]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-0118#changes-to-transaction-validity "CIP-0118 | Changes to Transaction Validity"
[2]: https://cips.cardano.org/cip/CIP-0118 "CIP-0118 | Nested Transactions"
