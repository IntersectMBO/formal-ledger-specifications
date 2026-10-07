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

open RewardAddress

totExUnits : ∀{ℓ} → Tx ℓ → ExUnits
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
   reference inputs and batch outputs);
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

The state has two new components:

+  `depositStore`{.AgdaField}: the *deposit store*, the ledger pot holding the ada
   that backs store-backed outputs;
+  `storeBacking`{.AgdaField}: the exact backing assigned to each live store-backed
   output when it was created, keyed by its `TxIn`{.AgdaFunction}.

The store should hold exactly what it owes, that is, `depositStore`{.AgdaField}
should equal the sum of `storeBacking`{.AgdaField}.  This invariant is preserved
by the `LEDGER`{.AgdaDatatype} rule (see `Ledger.Properties.DepositStore`{.AgdaModule}).

```agda
record UTxOState : Type where
  constructor ⟦_,_,_,_,_⟧ᵘ
  field
    utxo          : UTxO
    fees          : Fees
    donations     : Donations
    depositStore  : Coin
    storeBacking  : StoreBacking
```

<!--
```agda
record HasUTxOState {a} (A : Type a) : Type a where
  field UTxOStateOf : A → UTxOState
open HasUTxOState ⦃...⦄ public

record HasIsTopLevelValidFlag {a} (A : Type a) : Type a where
  field IsTopLevelValidFlagOf : A → Bool
open HasIsTopLevelValidFlag ⦃...⦄ public

record HasDepositStore {a} (A : Type a) : Type a where
  field DepositStoreOf : A → Coin
open HasDepositStore ⦃...⦄ public

record HasStoreBacking {a} (A : Type a) : Type a where
  field StoreBackingOf : A → StoreBacking
open HasStoreBacking ⦃...⦄ public

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

  HasDepositStore-UTxOState : HasDepositStore UTxOState
  HasDepositStore-UTxOState .DepositStoreOf = UTxOState.depositStore

  HasStoreBacking-UTxOState : HasStoreBacking UTxOState
  HasStoreBacking-UTxOState .StoreBackingOf = UTxOState.storeBacking

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
                       + txScriptFee (pp .prices) (totExUnits txTop)
                       + scriptsCost pp (refScriptsSize txTop utxo)
```

### Store Backing

The backing of a store-backed output is computed by the same formula as an
implicit-deposit output's minimum ada, over the output's full serialized size
(address, application assets, datum, script and encoding overhead), at the
parameters current when the output is created.  The backing is not part of the
output, so it does not change the size it is computed from.  It is recorded at
creation and never recomputed.

**Note**.  The minimum-ada check on implicit-deposit outputs below still uses the
older `utxoEntrySize`{.AgdaFunction} measure (the size of the output's value only).

```agda
utxoOverhead : ℕ
utxoOverhead = 160

backingFor : PParams → TxOut → Coin
backingFor pp o = (utxoOverhead + serializedTxOutSize o) * coinsPerUTxOByte pp
```

`newBacking`{.AgdaFunction} records the backing of each store-backed output of a
transaction, keyed by the output's `TxIn`{.AgdaFunction}.
`applyBacking`{.AgdaFunction} is the effect of a valid transaction on the recorded
backing: entries for spent inputs are removed (their backing is released), and
entries for the transaction's store-backed outputs are added.

```agda
newBacking : PParams → Tx ℓ → StoreBacking
newBacking pp tx =
  mapKeys (TxIdOf tx ,_) (mapValues (backingFor pp) (TxOutsOf tx ∣ StoreBackedOutputsOf tx))

applyBacking : PParams → Tx ℓ → StoreBacking → StoreBacking
applyBacking pp tx bk = (bk ∣ SpendInputsOf tx ᶜ) ∪ˡ newBacking pp tx

totalBacking : StoreBacking → Coin
totalBacking bk = ∑[ b ← bk ] b

createdBacking : PParams → Tx ℓ → Coin
createdBacking pp tx = totalBacking (newBacking pp tx)

releasedBacking : StoreBacking → Tx ℓ → Coin
releasedBacking bk tx = totalBacking (bk ∣ SpendInputsOf tx)
```

### Declared Store Changes

The amounts a transaction declares (see `txDepositStoreChange`{.AgdaField}).  A
subtransaction's deposit is the same amount whether it funds it itself or asks
the top-level transaction to fund it.

```agda
topStoreDeposit topStoreWithdrawal : TopLevelTx → Coin
topStoreDeposit tx with TopStoreChangeOf tx
... | just (DepositToStore c) = c
... | _                       = 0
topStoreWithdrawal tx with TopStoreChangeOf tx
... | just (WithdrawFromStore c _) = c
... | _                            = 0

subStoreDeposit subStoreWithdrawal : SubLevelTx → Coin
subStoreDeposit tx with SubStoreChangeOf tx
... | just (SubTxDepositToStore c)           = c
... | just (SubTxRequestDepositFromTopTx c)  = c
... | _                                      = 0
subStoreWithdrawal tx with SubStoreChangeOf tx
... | just (SubTxWithdrawFromStore c _) = c
... | _                                 = 0

subsStoreDeposit subsStoreWithdrawal : TopLevelTx → Coin
subsStoreDeposit    txTop = sum (map subStoreDeposit    (SubTransactionsOf txTop))
subsStoreWithdrawal txTop = sum (map subStoreWithdrawal (SubTransactionsOf txTop))
```

A withdrawal settled in one of the transaction's own outputs names that output,
whose coin must already include the withdrawn amount.  The *shortfall* is how far
the named output falls short of the withdrawn amount (zero if no output is named).

```agda
coinAt : Tx ℓ → Ix → Coin
coinAt tx ix = maybe (coin ∘ txOutToValue) 0 (lookupᵐ? (TxOutsOf tx) ix)

topTargetShortfall : TopLevelTx → Coin
topTargetShortfall tx with TopStoreChangeOf tx
... | just (WithdrawFromStore c ix) = c ∸ coinAt tx ix
... | _                             = 0

subTargetShortfall : SubLevelTx → Coin
subTargetShortfall tx with SubStoreChangeOf tx
... | just (SubTxWithdrawFromStore c (SubTxOutput ix)) = c ∸ coinAt tx ix
... | _                                                = 0
```

For the preservation-of-value argument it is convenient to name the ada that the
top-level transaction moves between the UTxO side (its outputs and the store) and
its inputs:

```agda
outCoin : TopLevelTx → Coin
outCoin tx = cbalance (outs tx) + topStoreDeposit tx

inCoin : UTxO → TopLevelTx → Coin
inCoin utxo tx = cbalance (utxo ∣ SpendInputsOf tx) + topStoreWithdrawal tx
```

<!--
```agda
instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance

  HasCoin-UTxOState : HasCoin UTxOState
  HasCoin-UTxOState .getCoin s = getCoin (UTxOOf s) + FeesOf s + DonationsOf s
                                 + DepositStoreOf s
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

### Collateral Check
```agda
collateralCheck : PParams → TopLevelTx → UTxO → Type
collateralCheck pp txTop utxo =
  All (λ (addr , _) → isVKeyAddr addr) (range (utxo ∣ CollateralInputsOf txTop))
  × isAdaOnly (balance (utxo ∣ CollateralInputsOf txTop))
  × coin (balance (utxo ∣ CollateralInputsOf txTop)) * 100 ≥ (TxFeesOf txTop) * pp .collateralPercentage
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
                       + inject (topStoreWithdrawal txTop)

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

The deposit store is treated the same way, once per batch: the top-level
transaction's declared deposit (the batch's net addition to the store) is on the
*produced* side, and its declared withdrawal (the batch's net release) on the
*consumed* side.  Subtransactions' declarations are checked (see below) but do
not appear here, since the top-level declaration already includes them.

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
                   + inject (topStoreDeposit txTop)

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

### Store Checks

Every subtransaction is checked against its own outputs and inputs:

1. Only the transaction's own outputs can be marked store-backed.
2. Its declared change is exact: the backing it creates, minus the backing its
   spent inputs release, is the amount it declares.  Declaring more or less is
   rejected.
3. A withdrawal settled in one of its outputs names an output holding at least
   the withdrawn amount.

```agda
SubStoreOK : PParams → StoreBacking → SubLevelTx → Type
SubStoreOK pp bk tx =
    StoreBackedOutputsOf tx ⊆ dom (TxOutsOf tx)                    -- (1)
  × createdBacking pp tx + subStoreWithdrawal tx
    ≡ releasedBacking bk tx + subStoreDeposit tx                    -- (2)
  × subTargetShortfall tx ≡ 0                                       -- (3)
```

The top-level transaction declares the net change of the whole batch, so its
check reconciles that amount with the subtransactions' declarations:

1. As above.
2. The batch net, minus what the subtransactions declared, is the change in
   backing that the top-level transaction itself causes.  Together with the
   subtransactions' own checks, this makes the declared net exactly the batch's
   change in backing.
3. As above, for `WithdrawFromStore`{.AgdaInductiveConstructor}.
4. The store stays solvent: it never pays out more than it holds.  (This follows
   from the invariant that the store equals the total recorded backing; checking
   it keeps the rule well-defined on any state.)

```agda
TopStoreOK : PParams → StoreBacking → Coin → TopLevelTx → Type
TopStoreOK pp bk store tx =
    StoreBackedOutputsOf tx ⊆ dom (TxOutsOf tx)                    -- (1)
  × createdBacking pp tx + topStoreWithdrawal tx + subsStoreDeposit tx
    ≡ releasedBacking bk tx + topStoreDeposit tx + subsStoreWithdrawal tx  -- (2)
  × topTargetShortfall tx ≡ 0                                       -- (3)
  × topStoreWithdrawal tx ≤ store + topStoreDeposit tx              -- (4)
```

A store-backed output is exempt from the minimum-ada check, since its backing is
held in the store.  Every implicit-deposit output must still carry its own
minimum ada.

**OPEN**.

+  *Local settlement.*  A subtransaction's withdrawal settled in its own output
   (`SubTxOutput`{.AgdaInductiveConstructor}) is meant to be accounted for within
   that subtransaction, not merely bounded as in (3).  Since subtransactions may be
   unbalanced and only the batch balances, this is not yet expressible; likewise,
   a subtransaction that funds its own deposit and one that asks the top-level
   transaction to fund it are treated the same here.
+  *Empty outputs.*  Whether a store-backed output may be empty, or must satisfy
   some smaller minimum, is not decided; no such check is made.

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
    ∙ SubStoreOK (PParamsOf Γ) (StoreBackingOf s₀) txSub
    ∙ ∀[ (ix , o) ∈ ∣ TxOutsOf txSub ∣ ] (ix ∉ StoreBackedOutputsOf txSub →
       inject ((UTxOOverhead + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txSub ∣ ] (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ))
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txSub) ] (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ maxBootstrapAddrSize) a)
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txSub) ] (netId a ≡ NetworkId)
    ∙ MaybeNetworkIdOf txSub ~ just NetworkId
    ∙ CurrentTreasuryOf txSub ~ just (TreasuryOf Γ)
      ────────────────────────────────
    let
       s₁ = if IsTopLevelValidFlagOf Γ
            then ⟦ (UTxOOf s₀ ∣ SpendInputsOf txSub ᶜ) ∪ˡ outs txSub , FeesOf s₀ , DonationsOf s₀ + DonationsOf txSub
                 , DepositStoreOf s₀ , applyBacking (PParamsOf Γ) txSub (StoreBackingOf s₀) ⟧
            else ⟦ UTxOOf s₀ , FeesOf s₀ , DonationsOf s₀ , DepositStoreOf s₀ , StoreBackingOf s₀ ⟧
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

5. **PROVISIONAL**.  Collateral inputs must be implicit-deposit outputs.  A
   failed batch applies only the collateral, so a collateral input's recorded
   backing would otherwise stay in the store with no output to release it to.

6. **PROVISIONAL**.  In Legacy Mode: the top-level transaction may neither create
   nor spend store-backed outputs, since scripts older than Plutus V4 cannot see
   the store.  Its own share of the batch's store change is therefore zero, and the
   legacy balance equation (4) is unchanged; the batch's net store change, funded
   by the subtransactions, enters only the batch balance.

The deposit store is updated once, by the top-level transaction, with the batch's
declared net change.  Subtransactions update only the recorded backing.

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
    ∙ SizeOf txTop ≤ maxTxSize (PParamsOf Γ)
    ∙ ∑ˡ[ x ← setToList (allReferenceScripts txTop (UTxOOf Γ)) ] scriptSize x ≤ (PParamsOf Γ) .maxRefScriptSizePerTx
    ∙ ((RedeemersOf txTop ˢ ≢ ∅) ⊎ (List.Any (λ txSub → RedeemersOf txSub ˢ ≢ ∅) (SubTransactionsOf txTop))
        → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ))
    ∙ TopStoreOK (PParamsOf Γ) (StoreBackingOf s₀) (DepositStoreOf s₀) txTop
    ∙ ∀[ i ∈ CollateralInputsOf txTop ] i ∉ dom (StoreBackingOf s₀) -- (5)
    ∙ (LegacyModeOf Γ ≡ true → StoreBackedOutputsOf txTop ≡ᵉ ∅
                              × ∀[ i ∈ SpendInputsOf txTop ] i ∉ dom (StoreBackingOf s₀)) -- (6)
    ∙ ∀[ (ix , o) ∈ ∣ TxOutsOf txTop ∣ ] (ix ∉ StoreBackedOutputsOf txTop →
         inject ((UTxOOverhead + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ] (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ))
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txTop) ] (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ maxBootstrapAddrSize)) a
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txTop) ] (netId a ≡ NetworkId)
    ∙ MaybeNetworkIdOf txTop ~ just NetworkId
    ∙ CurrentTreasuryOf txTop  ~ just (TreasuryOf Γ)
    ∙ Γ ⊢ _ ⇀⦇ txTop ,UTXOS⦈ _
      ────────────────────────────────
    let
       s₁ = if IsValidFlagOf txTop
            then ⟦ (UTxOOf s₀ ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , FeesOf s₀ + TxFeesOf txTop , DonationsOf s₀ + DonationsOf txTop
                 , DepositStoreOf s₀ + topStoreDeposit txTop ∸ topStoreWithdrawal txTop
                 , applyBacking (PParamsOf Γ) txTop (StoreBackingOf s₀) ⟧
            else ⟦ UTxOOf s₀ ∣ (CollateralInputsOf txTop) ᶜ , FeesOf s₀ + cbalance (UTxOOf s₀ ∣ CollateralInputsOf txTop) , DonationsOf s₀
                 , DepositStoreOf s₀ , StoreBackingOf s₀ ⟧
    in
      Γ ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁

```
<!--
```agda
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO)
pattern UTXO-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ p₁₈ p₁₉ p₂₀ h
  = UTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , h)
```
-->

[1]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-0118#changes-to-transaction-validity "CIP-0118 | Changes to Transaction Validity"
[2]: https://cips.cardano.org/cip/CIP-0118 "CIP-0118 | Nested Transactions"
