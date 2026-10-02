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
    rewards₁          : Rewards

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
+  `rewards₁`{.AgdaField}: the account balances *after* the whole batch's
   withdrawals and direct deposits (the post-`ENTITIES`{.AgdaDatatype} rewards).
   The `UTXO`{.AgdaDatatype} rule checks deposit locks against these balances,
   once per batch;

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

The state records, next to the UTxO, the deposit of every live new-style
output (`outDeposits`{.AgdaField}).  The *deposit store* is not a separate
field: its balance is, by definition, the sum of the store-backed entries of
this map (`storeBalance`{.AgdaFunction} below), so the store holds exactly what
it owes.

```agda
record UTxOState : Type where
  constructor ⟦_,_,_,_⟧ᵘ
  field
    utxo         : UTxO
    fees         : Fees
    donations    : Donations
    outDeposits  : OutputDeposits
```

<!--
```agda
record HasUTxOState {a} (A : Type a) : Type a where
  field UTxOStateOf : A → UTxOState
open HasUTxOState ⦃...⦄ public

record HasIsTopLevelValidFlag {a} (A : Type a) : Type a where
  field IsTopLevelValidFlagOf : A → Bool
open HasIsTopLevelValidFlag ⦃...⦄ public

record HasOutDeposits {a} (A : Type a) : Type a where
  field OutDepositsOf : A → OutputDeposits
open HasOutDeposits ⦃...⦄ public

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

  HasOutDeposits-UTxOState : HasOutDeposits UTxOState
  HasOutDeposits-UTxOState .OutDepositsOf = UTxOState.outDeposits

  HasRewards-UTxOEnv : HasRewards UTxOEnv
  HasRewards-UTxOEnv .RewardsOf = UTxOEnv.rewards₁

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

### Output Deposits

The deposit of a new-style output is computed by the same formula as today's
minimum ada, at the parameters current when the output is created.  It is
recorded then, and never recomputed.

```agda
utxoOverhead : ℕ
utxoOverhead = 160

outputDeposit : PParams → TxOut → Coin
outputDeposit pp o = (utxoOverhead + utxoEntrySize o) * coinsPerUTxOByte pp
```

`newOutputDeposits`{.AgdaFunction} records a deposit for each new-style output
of a transaction, keyed by the output's `TxIn`{.AgdaFunction}.
`applyOutputDeposits`{.AgdaFunction} is the effect of a valid transaction on the
recorded deposits: entries for spent inputs are removed (releasing or unlocking
them), and entries for the transaction's new-style outputs are added.

```agda
newOutputDeposits : PParams → Tx ℓ → OutputDeposits
newOutputDeposits pp tx = mapKeys (TxIdOf tx ,_) (mapMaybeWithKeyᵐ record? (OutBackingOf tx))
  where
    record? : Ix → DepositBacker → Maybe OutputDeposit
    record? ix b = (λ o → outputDeposit pp o , b) <$> lookupᵐ? (TxOutsOf tx) ix

applyOutputDeposits : PParams → Tx ℓ → OutputDeposits → OutputDeposits
applyOutputDeposits pp tx deps = (deps ∣ SpendInputsOf tx ᶜ) ∪ˡ newOutputDeposits pp tx
```

The deposit store holds the store-backed deposits.  An account's *locked*
amount is the sum of the deposits it backs.  Neither is stored separately; both
are read off the recorded deposits, so they cannot drift from what live outputs
are owed.

```agda
storeAmount : OutputDeposit → Coin
storeAmount (d , backedByStore)      = d
storeAmount (_ , backedByAccount _)  = 0

lockAmount : Credential → OutputDeposit → Coin
lockAmount c (_ , backedByStore)       = 0
lockAmount c (d , backedByAccount c') with c ≟ c'
... | yes _ = d
... | no  _ = 0

storeBalance : OutputDeposits → Coin
storeBalance deps = ∑[ d ← deps ] storeAmount d

lockedBy : Credential → OutputDeposits → Coin
lockedBy c deps = ∑[ d ← deps ] lockAmount c d
```

What a transaction pays into the store and receives from it:

```agda
storeDepositOf : PParams → Tx ℓ → Coin
storeDepositOf pp tx = storeBalance (newOutputDeposits pp tx)

storeReleaseOf : OutputDeposits → Tx ℓ → Coin
storeReleaseOf deps tx = storeBalance (deps ∣ SpendInputsOf tx)
```

The credentials whose deposit locks a transaction can tighten: those it names
as backers, and those it withdraws from.  Nothing else can raise an account's
locked amount or lower its balance; spending a backed output and making a
direct deposit only relax the lock.

```agda
backersOf : Tx ℓ → ℙ Credential
backersOf tx = mapPartial isAccount (range (OutBackingOf tx))
  where
    isAccount : DepositBacker → Maybe Credential
    isAccount backedByStore        = nothing
    isAccount (backedByAccount c)  = just c

lockTightenedBy : Tx ℓ → ℙ Credential
lockTightenedBy tx = backersOf tx ∪ mapˢ RewardAddress.stake (dom (WithdrawalsOf tx))

batchLockTightenedBy : TopLevelTx → ℙ Credential
batchLockTightenedBy txTop =
  foldl (λ acc txSub → acc ∪ lockTightenedBy txSub) (lockTightenedBy txTop) (SubTransactionsOf txTop)
```

For the preservation-of-value argument it is convenient to name the ada that a
transaction moves between the UTxO side (outputs and store) and its inputs:

```agda
outCoin : Tx ℓ → Coin
outCoin tx = cbalance (outs tx) + StoreDepositOf tx

inCoin : UTxO → Tx ℓ → Coin
inCoin utxo tx = cbalance (utxo ∣ SpendInputsOf tx) + StoreReleaseOf tx
```

<!--
```agda
instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance

  HasCoin-UTxOState : HasCoin UTxOState
  HasCoin-UTxOState .getCoin s = getCoin (UTxOOf s) + FeesOf s + DonationsOf s
                                 + storeBalance (OutDepositsOf s)
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
                       + inject (StoreReleaseOf tx)

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

Output deposits are treated the same way, per transaction: the declared store
deposit is on the *produced* side and the declared store release on the
*consumed* side.  Deposits backed by an account move no ada and so do not
appear here.  Since the batch, not each transaction, must balance, any
transaction in the batch may fund another's deposit or absorb its release.

```agda
  producedTx : Tx ℓ → Value
  producedTx tx = balance (outs tx)
                  + inject (DonationsOf tx)
                  + inject (getCoin (DirectDepositsOf tx))
                  + inject (govProposalsDeposits pp (ListOfGovProposalsOf tx))
                  + inject (StoreDepositOf tx)

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

### Output Deposit Checks

Both rules check the following of every transaction in the batch:

1. Only the transaction's own outputs can be marked new-style.
2. Every account named as a backer is a guard of the transaction, so its
   credential must witness it.
3. The declared store deposit equals the store-backed deposits recorded for the
   transaction's new-style outputs.
4. The declared store release equals the store-backed deposits recorded for the
   inputs it spends.  Inputs whose deposit is account-backed release nothing;
   spending them only unlocks the account.

```agda
OutputDepositsOK : PParams → OutputDeposits → Tx ℓ → Type
OutputDepositsOK pp deps tx =
    dom (OutBackingOf tx) ⊆ dom (TxOutsOf tx)            -- (1)
  × backersOf tx ⊆ GuardsOf tx                           -- (2)
  × StoreDepositOf tx ≡ storeDepositOf pp tx             -- (3)
  × StoreReleaseOf tx ≡ storeReleaseOf deps tx           -- (4)
```

A new-style output is exempt from the minimum-ada check, since its deposit is
held elsewhere.  Every other output must still carry its own minimum ada.

**OPEN**: whether a new-style output may be empty, or must satisfy some
smaller minimum, is not yet decided; no such check is made here.

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
    ∙ OutputDepositsOK (PParamsOf Γ) (OutDepositsOf s₀) txSub
    ∙ ∀[ (ix , o) ∈ ∣ TxOutsOf txSub ∣ ] (ix ∉ dom (OutBackingOf txSub) →
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
                 , applyOutputDeposits (PParamsOf Γ) txSub (OutDepositsOf s₀) ⟧
            else ⟦ UTxOOf s₀ , FeesOf s₀ , DonationsOf s₀ , OutDepositsOf s₀ ⟧
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

5. Collateral inputs must be ordinary (self-backed) outputs.  A failed batch
   applies only the collateral, so a collateral input's recorded deposit would
   otherwise be neither released nor unlocked.

6. In Legacy Mode: the top-level transaction may neither create nor spend
   new-style outputs, since scripts older than Plutus V4 cannot see where their
   deposits are held.  Its store deposit and release are therefore zero, and
   the legacy balance equation is unchanged.

7. Every account whose lock the batch may tighten (see
   `batchLockTightenedBy`{.AgdaFunction}) must, *after the whole batch*, have a
   balance at least its locked amount.  An unregistered account has balance zero,
   so it can back nothing; and an account cannot be deregistered while it backs a
   live output.  The check is made once, at the end of the batch, so the order of
   withdrawals and new backing within the batch does not matter.

```agda
data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :
    let
      UTxOOverhead = 160
      maxBootstrapAddrSize = 64
      deps₁ = applyOutputDeposits (PParamsOf Γ) txTop (OutDepositsOf s₀)
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
    ∙ OutputDepositsOK (PParamsOf Γ) (OutDepositsOf s₀) txTop
    ∙ ∀[ i ∈ CollateralInputsOf txTop ] i ∉ dom (OutDepositsOf s₀) -- (5)
    ∙ (LegacyModeOf Γ ≡ true → dom (OutBackingOf txTop) ≡ᵉ ∅
                              × ∀[ i ∈ SpendInputsOf txTop ] i ∉ dom (OutDepositsOf s₀)) -- (6)
    ∙ (IsValidFlagOf txTop ≡ true →
         ∀[ c ∈ batchLockTightenedBy txTop ] lockedBy c deps₁ ≤ maybe id 0 (lookupᵐ? (RewardsOf Γ) c)) -- (7)
    ∙ ∀[ (ix , o) ∈ ∣ TxOutsOf txTop ∣ ] (ix ∉ dom (OutBackingOf txTop) →
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
            then ⟦ (UTxOOf s₀ ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , FeesOf s₀ + TxFeesOf txTop , DonationsOf s₀ + DonationsOf txTop , deps₁ ⟧
            else ⟦ UTxOOf s₀ ∣ (CollateralInputsOf txTop) ᶜ , FeesOf s₀ + cbalance (UTxOOf s₀ ∣ CollateralInputsOf txTop) , DonationsOf s₀ , OutDepositsOf s₀ ⟧
    in
      Γ ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁

```
<!--
```agda
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO)
pattern UTXO-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ p₁₈ p₁₉ p₂₀ p₂₁ h
  = UTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁ , h)
```
-->

[1]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-0118#changes-to-transaction-validity "CIP-0118 | Changes to Transaction Validity"
[2]: https://cips.cardano.org/cip/CIP-0118 "CIP-0118 | Nested Transactions"
