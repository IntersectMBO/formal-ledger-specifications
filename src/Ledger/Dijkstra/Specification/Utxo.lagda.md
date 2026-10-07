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
+  **Batch-scoped witnesses**.  Scripts are collected once per batch and
   then shared for phase-2 evaluation (see point 5 of the
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
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Ledger.Dijkstra.Specification.Fees using (scriptsCost)

open import Data.Maybe using (fromMaybe)
import Data.List.Relation.Unary.All as List
import Data.List.Relation.Unary.AllPairs as List
import Data.List.Relation.Unary.Any as List
import Data.Sum.Relation.Unary.All as Sum
import Data.Maybe.Relation.Unary.All as Maybe

open RewardAddress

totExUnits : ∀{ℓ} → Tx ℓ → ExUnits
totExUnits tx = ∑[ (_ , eu) ← RedeemersOf tx ] eu

totExUnitsBatch : TopLevelTx → ExUnits
totExUnitsBatch tx = ∑ˡ[ units ← (totExUnits tx ∷ map totExUnits (SubTransactionsOf tx)) ] units

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
    pools₀            : Pools
    allScripts        : ℙ Script
    legacyMode        : Bool

record SubUTxOEnv : Type where
  field
    slot             : Slot
    pparams          : PParams
    treasury         : Treasury
    utxo₀            : UTxO
    allScripts       : ℙ Script
    isTopLevelValid  : Bool
```

The `UTxOEnv`{.AgdaRecord} carries

+  `utxo₀`{.AgdaField}: *pre-batch snapshot* of the UTxO;
+  `allScripts`{.AgdaField}: *batch-wide script pool* containing all scripts available
   to the batch (witness scripts plus reference scripts resolved from allowed
   reference and spending inputs);
+  `legacyMode`{.AgdaField}: whether the top-level transaction is processed in
   *legacy mode*.  This is decided once, in the `LEDGER`{.AgdaDatatype} rule
   (via `isLegacyMode`{.AgdaFunction}, defined in the `Utxow`{.AgdaModule}
   module), and threaded through the rules via this environment field;

The pre-batch UTxO snapshot `utxo₀`{.AgdaField} is used to resolve all
*spend-side* lookups (inputs, collateral, and datum lookup for spent outputs).

The `allScripts`{.AgdaField} field of `UTxOEnv`{.AgdaRecord} capture
the *batch-wide script pool*.  This pool is used to resolve all
script lookups during validation.

Scripts are treated as *batch-wide witnesses*; attaching a script to a
transaction in the batch makes it available for phase-2 validation of
any transaction in the batch, independent of which subtransaction
originally supplied it.

If `Γ`{.AgdaBound} denotes a particular `UTxOEnv`{.AgdaRecord}, then
we often access the `allScripts`{.AgdaField} field of `Γ`{.AgdaBound}
via `ScriptPoolOf`{.AgdaField} `Γ`{.AgdaBound}.

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

record HasLegacyMode {a} (A : Type a) : Type a where
  field LegacyModeOf : A → Bool
open HasLegacyMode ⦃...⦄ public

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

  HasScriptPool-UTxOEnv : HasScriptPool UTxOEnv
  HasScriptPool-UTxOEnv .ScriptPoolOf = UTxOEnv.allScripts

  HasLegacyMode-UTxOEnv : HasLegacyMode UTxOEnv
  HasLegacyMode-UTxOEnv .LegacyModeOf = UTxOEnv.legacyMode

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

  HasUTxO-UTxOState : HasUTxO UTxOState
  HasUTxO-UTxOState .UTxOOf = UTxOState.utxo

  HasFee-UTxOState : HasFees UTxOState
  HasFee-UTxOState .FeesOf = UTxOState.fees

  HasDonations-UTxOState : HasDonations UTxOState
  HasDonations-UTxOState .DonationsOf = UTxOState.donations

  HasPools-UTxOEnv : HasPools UTxOEnv
  HasPools-UTxOEnv .PoolsOf = UTxOEnv.pools₀

  unquoteDecl HasCast-UTxOEnv
              HasCast-SubUTxOEnv
              HasCast-UTxOState = derive-HasCast
    ( (quote UTxOEnv        , HasCast-UTxOEnv  ) ∷
      (quote SubUTxOEnv     , HasCast-SubUTxOEnv  ) ∷
    [ (quote UTxOState      , HasCast-UTxOState) ])

private
  variable
    ℓ          : TxLevel
    A          : Type
    Γ          : A
    s₀         : UTxOState
    txTop      : TopLevelTx
    txSub      : SubLevelTx
```
-->

```agda
outs : Tx ℓ  → UTxO
outs tx = mapKeys (TxIdOf tx ,_) (TxOutsOf tx)

balance : UTxO → Value
balance utxo = ∑[ x ← mapValues txOutToValue utxo ] x

cbalance : UTxO → Coin
cbalance utxo = coin (balance utxo)

refScriptsSize : Tx ℓ → UTxO → ℕ
refScriptsSize tx utxo =
 ∑ˡ[ x ← setToList (referenceScripts tx utxo) ] scriptSize x

minfee : PParams → TopLevelTx → UTxO → Coin
minfee pp txTop utxo = pp .a * (SizeOf txTop) + pp .b
                       + txScriptFee (pp .prices) (totExUnitsBatch txTop)
                       + scriptsCost pp (refScriptsSize txTop utxo)
```

<!--
```agda
instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance

  HasCoin-UTxOState : HasCoin UTxOState
  HasCoin-UTxOState .getCoin s = getCoin (UTxOOf s) + FeesOf s + DonationsOf s
```
-->

```agda
data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Type where
  both   : ∀ {l r}  → l ≤ slot × slot < r  →  inInterval slot (just l   , just r)
  lower  : ∀ {l}    → l ≤ slot             →  inInterval slot (just l   , nothing)
  upper  : ∀ {r}    → slot < r             →  inInterval slot (nothing  , just r)
  none   :                                    inInterval slot (nothing  , nothing)
```

<!--
```agda
-- Note: inInterval has to be a type definition for inference to work
instance
  Dec-inInterval : inInterval ⁇²
  Dec-inInterval {slot} {just x  , just y } .dec with x ≤? slot | slot <? y
  ... | no ¬p₁ | _      = no λ where (both (h₁ , h₂)) → ¬p₁ h₁
  ... | yes p₁ | no ¬p₂ = no λ where (both (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (both (p₁ , p₂))
  Dec-inInterval {slot} {just x  , nothing} .dec with x ≤? slot
  ... | no ¬p = no  (λ where (lower h) → ¬p h)
  ... | yes p = yes (lower p)
  Dec-inInterval {slot} {nothing , just x } .dec with slot <? x
  ... | no ¬p = no  (λ where (upper h) → ¬p h)
  ... | yes p = yes (upper p)
  Dec-inInterval {slot} {nothing , nothing} .dec = yes none

coinPolicies : ℙ ScriptHash
coinPolicies = policies (inject 1)

isAdaOnly : Value → Type
isAdaOnly v = policies v ≡ᵉ coinPolicies
```
-->

### Address Protection Admission

Ordinary outputs admit protection only from protocol major version 12. This
check applies independently to top-level and child outputs. Collateral returns
remain unprotected at every protocol version.

```agda
ProtectionAdmitted : PParams → Addr → Type
ProtectionAdmitted pp a = isProtected a ≡ false ⊎ 12 ≤ proj₁ (pv pp)
```

### Collateral Check
```agda
collateralReturnOf : TopLevelTx → Maybe TxOut
collateralReturnOf = TxBody.collateralReturn ∘ TxBodyOf

totalCollateralOf : TopLevelTx → Maybe Coin
totalCollateralOf = TxBody.totalCollateral ∘ TxBodyOf

collateralReturnOuts : TopLevelTx → UTxO
collateralReturnOuts tx = maybe
  (λ o → ❴ (TxIdOf tx , nextOutputIndex (TxOutsOf tx)) , o ❵ᵐ)
  ∅ (collateralReturnOf tx)

collateralReturnValue : TopLevelTx → Value
collateralReturnValue tx = maybe txOutToValue (inject 0) (collateralReturnOf tx)

collateralReturnCoin : TopLevelTx → Coin
collateralReturnCoin tx = maybe (coin ∘ txOutToValue) 0 (collateralReturnOf tx)

collateralCollected : TopLevelTx → UTxO → Coin
collateralCollected tx utxo = cbalance (utxo ∣ CollateralInputsOf tx) ∸ collateralReturnCoin tx

ReturnOutputWellFormed : PParams → TxOut → Type
ReturnOutputWellFormed pp o = isProtected (proj₁ o) ≡ false
  × netId (proj₁ o) ≡ NetworkId
  × inject ((160 + utxoEntrySize o) * coinsPerUTxOByte pp) ≤ᵗ txOutToValue o
  × serializedSize (txOutToValue o) ≤ maxValSize pp
  × Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64) (proj₁ o)

record CollateralReturnWellFormed (pp : PParams) (ret : Maybe TxOut) : Type where
  constructor return-well-formed
  field validReturn : Maybe.All (ReturnOutputWellFormed pp) ret

instance
  Dec-CollateralReturnWellFormed : CollateralReturnWellFormed ⁇²
  Dec-CollateralReturnWellFormed {pp} {nothing} .dec = yes (return-well-formed Maybe.nothing)
  Dec-CollateralReturnWellFormed {pp} {just o} .dec with ¿ ReturnOutputWellFormed pp o ¿
  ... | yes p = yes (return-well-formed (Maybe.just p))
  ... | no ¬p = no λ { (return-well-formed (Maybe.just p)) → ¬p p }

collateralCheck : PParams → TopLevelTx → UTxO → Type
collateralCheck pp txTop utxo =
  All (λ (addr , _) → isVKeyAddr addr) (range (utxo ∣ CollateralInputsOf txTop))
  × balance (utxo ∣ CollateralInputsOf txTop)
      ≡ collateralReturnValue txTop + inject (collateralCollected txTop utxo)
  × collateralCollected txTop utxo * 100 ≥ (TxFeesOf txTop) * pp .collateralPercentage
  × collateralReturnCoin txTop ≤ cbalance (utxo ∣ CollateralInputsOf txTop)
  × totalCollateralOf txTop ~ just (collateralCollected txTop utxo)
  × (CollateralInputsOf txTop) ≢ ∅
```

### Governance Proposal Deposits

```agda
module _ (pp : PParams) where
  govProposalsDeposits : List GovProposal → Coin
  govProposalsDeposits = foldl (λ acc _ → acc + pp .govActionDeposit) 0
```

---

### Consumed and Produced

```agda

module _ (pp : PParams) where

  consumedTx : Tx ℓ → UTxO → Value
  consumedTx tx utxo = balance (utxo ∣ SpendInputsOf tx)
                       + MintedValueOf tx
                       + inject (getCoin (WithdrawalsOf tx))

  consumed : TopLevelTx → UTxO → Value
  consumed txTop utxo = consumedTx txTop utxo
                       + inject (refundCertDeposits pp (allDCerts txTop))

  consumedBatch : TopLevelTx → UTxO → Value
  consumedBatch txTop utxo = consumed txTop utxo
                             + ∑ˡ[ stx ← SubTransactionsOf txTop ] (consumedTx stx utxo)

  consumedLegacy : TopLevelTx → UTxO → Value
  consumedLegacy txTop utxo = consumedTx txTop utxo
                       + inject (refundCertDeposits pp (DCertsOf txTop))
```

Direct deposits can be made into account addresses.
In the preservation-of-value equation, direct deposits appear on the
*produced* side: `getCoin (DirectDepositsOf tx)` sums the ADA of all direct deposits in
the transaction and that amount is deposited into accounts.

```agda
  producedTx : Tx ℓ → Value
  producedTx tx = balance (outs tx)
                  + inject (DonationsOf tx)
                  + inject (getCoin (DirectDepositsOf tx))
                  + inject (govProposalsDeposits pp (ListOfGovProposalsOf tx))

  produced : Pools → TopLevelTx → Value
  produced pools txTop = producedTx txTop
                   + inject (TxFeesOf txTop)
                   + inject (newCertDeposits pp (dom pools) (allDCerts txTop))

  producedBatch : Pools → TopLevelTx → Value
  producedBatch pools txTop = produced pools txTop
                            + ∑ˡ[ stx ← SubTransactionsOf txTop ] (producedTx stx)

  producedLegacy : Pools → TopLevelTx → Value
  producedLegacy pools txTop = producedTx txTop
                   + inject (TxFeesOf txTop)
                   + inject (newCertDeposits pp pools' (DCertsOf txTop))
    where
      pools' = foldl (λ { pools (regpool kh _) → pools ∪ ❴ kh ❵
                        ; pools _              → pools
                        })
                     (dom pools) (concatMap DCertsOf (SubTransactionsOf txTop))
```

## The <span class="AgdaDatatype">UTXOS</span> Transition System

### Phase-2 Validation

Phase-2 validation is the evaluation of all Plutus scripts needed by the
top-level transaction and all its subtransactions in the shared, batch-scoped
context.

The `Script.Validation`{.AgdaModule} module is not `UTxOEnv`{.AgdaRecord}-context
aware, so in order to assemble the correct set of scripts and data
for each transaction, we must provide `Script.Validation`{.AgdaModule} with
the following components:

1.  the pre-batch spend-side snapshot `UTxOOf`{.AgdaField} `Γ`{.AgdaBound},
2.  the script pool `ScriptPoolOf`{.AgdaField} `Γ`{.AgdaBound},

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
                                    t
                                    (UTxOOf Γ)        -- (1)
                                    (ScriptPoolOf Γ)  -- (2)
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

## The <span class="AgdaDatatype">UTXO</span> Transition System

<!--
```agda
unquoteDecl UTXOS-premises = genPremises UTXOS-premises (quote UTXOS)
```
-->

## The <span class="AgdaDatatype">UTXO</span> Transition System

The [CIP][1] states:

> All inputs of all transactions in a single batch must be contained in the UTxO
  set before any of the batch transactions are applied. This ensures that
  operation of scripts is not disrupted, for example, by temporarily duplicating
  thread tokens, or falsifying access to assets via flash loans.

### The <span class="AgdaDatatype">SUBUTXO</span> Rule

1. The set of spending inputs must be nonempty. This prevents replay
   attacks.

2. The set of spending and reference inputs must exist in the UTxO _before_
   applying the transaction (or partially applying any part of it).

3. The set of spending inputs must exist in the UTXO state, which has
   been updated by other sub-transactions in the batch. This prevents
   sub/top-level transactions from spending inputs twice. In other
   words, spending inputs across all top- and sub-level transactions
   are disjoint.

```agda
data _⊢_⇀⦇_,SUBUTXO⦈_ : SubUTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXO :
    let
      UTxOOverhead = 160
      maxBootstrapAddrSize = 64
    in
    ∙ SpendInputsOf txSub ≢ ∅ -- (1)
    ∙ SpendInputsOf txSub ⊆ dom (UTxOOf Γ) -- (2)
    ∙ ReferenceInputsOf txSub ⊆ dom (UTxOOf Γ) -- (2)
    ∙ SpendInputsOf txSub ⊆ dom (UTxOOf s₀) -- (3)
    ∙ inInterval (SlotOf Γ) (ValidIntervalOf txSub)
    ∙ coin (MintedValueOf txSub) ≡ 0
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txSub ∣ ]
       (inject ((UTxOOverhead + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txSub ∣ ] (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ))
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txSub) ] (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ maxBootstrapAddrSize) a)
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txSub) ] (netId a ≡ NetworkId × ProtectionAdmitted (PParamsOf Γ) a)
    ∙ MaybeNetworkIdOf txSub ~ just NetworkId
    ∙ CurrentTreasuryOf txSub ~ just (TreasuryOf Γ)
      ────────────────────────────────
    let
       s₁ = if IsTopLevelValidFlagOf Γ
            then ⟦ (UTxOOf s₀ ∣ SpendInputsOf txSub ᶜ) ∪ˡ outs txSub , FeesOf s₀ , DonationsOf s₀ + DonationsOf txSub ⟧ else ⟦ UTxOOf s₀ , FeesOf s₀ , DonationsOf s₀ ⟧
    in
      Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXO⦈ s₁
```

<!--
```agda
unquoteDecl SUBUTXO-premises = genPremises SUBUTXO-premises (quote SUBUTXO)
```
-->

### The <span class="AgdaDatatype">UTXO</span> Rule

1. The set of spending inputs must be nonempty. This prevents replay
   attacks.

2. The set of spending, reference, and collateral inputs must exist in the
   UTxO _before_ applying the transaction (or partially applying any part of it).

3. The set of spending inputs must exist in the UTXO state, which has
   been updated by other sub-transactions in the batch. This prevents
   sub/top-level transactions from spending inputs twice. In other
   words, spending inputs across all top- and sub-level transactions
   are disjoint.

4. In Legacy Mode: The top-level transaction must be self-balancing.

```agda
data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :
    let
      UTxOOverhead = 160
      maxBootstrapAddrSize = 64
    in
    ∙ SpendInputsOf txTop ≢ ∅
    ∙ SpendInputsOf txTop ∪ CollateralInputsOf txTop ⊆ dom (UTxOOf Γ) -- (2)
    ∙ ReferenceInputsOf txTop ⊆ dom (UTxOOf Γ) -- (2)
    ∙ SpendInputsOf txTop ⊆ dom (UTxOOf s₀) -- (3)
    ∙ inInterval (SlotOf Γ) (ValidIntervalOf txTop)
    ∙ minfee (PParamsOf Γ) txTop (UTxOOf Γ) ≤ TxFeesOf txTop
    ∙ coin (MintedValueOf txTop) ≡ 0
    ∙ consumedBatch (PParamsOf Γ) txTop (UTxOOf Γ) ≡ producedBatch (PParamsOf Γ) (PoolsOf Γ) txTop
    ∙ (LegacyModeOf Γ ≡ true → consumedLegacy (PParamsOf Γ) txTop (UTxOOf Γ) ≡ producedLegacy (PParamsOf Γ) (PoolsOf Γ) txTop)  -- (4)
    ∙ (SizeOf txTop ≤ maxTxSize (PParamsOf Γ)
      × maxTxExUnits (PParamsOf Γ) ≥ᵉ totExUnitsBatch txTop)
    ∙ ∑ˡ[ x ← setToList (allReferenceScripts txTop (UTxOOf Γ)) ] scriptSize x ≤ (PParamsOf Γ) .maxRefScriptSizePerTx
    ∙ ((RedeemersOf txTop ˢ ≢ ∅) ⊎ (List.Any (λ txSub → RedeemersOf txSub ˢ ≢ ∅) (SubTransactionsOf txTop))
        → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ))
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ]
         (inject ((UTxOOverhead + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ] (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ))
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txTop) ] (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ maxBootstrapAddrSize)) a
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txTop) ] (netId a ≡ NetworkId × ProtectionAdmitted (PParamsOf Γ) a)
    ∙ MaybeNetworkIdOf txTop ~ just NetworkId
    ∙ (CurrentTreasuryOf txTop ~ just (TreasuryOf Γ)
      × CollateralReturnWellFormed (PParamsOf Γ) (collateralReturnOf txTop))
    ∙ Γ ⊢ _ ⇀⦇ txTop ,UTXOS⦈ _
      ────────────────────────────────
    let
       s₁ = if IsValidFlagOf txTop
            then ⟦ (UTxOOf s₀ ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , FeesOf s₀ + TxFeesOf txTop , DonationsOf s₀ + DonationsOf txTop ⟧ else ⟦ (UTxOOf s₀ ∣ (CollateralInputsOf txTop) ᶜ) ∪ˡ collateralReturnOuts txTop , FeesOf s₀ + collateralCollected txTop (UTxOOf s₀) , DonationsOf s₀ ⟧
    in
      Γ ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁

```
<!--
```agda
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO)
pattern UTXO-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ h
  = UTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , h)
```
-->

[1]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-0118#changes-to-transaction-validity "CIP-0118 | Changes to Transaction Validity"
[2]: https://cips.cardano.org/cip/CIP-0118 "CIP-0118 | Nested Transactions"
