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
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Ledger.Dijkstra.Specification.Fees using (scriptsCost)

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
record DepositsChange : Type where
  field
    depositsChangeTop : ℤ
    depositsChangeSub : ℤ

record UTxOEnv : Type where
  field
    slot              : Slot
    pparams           : PParams
    treasury          : Treasury
    utxo₀             : UTxO
    depositsChange    : DepositsChange
    allScripts        : ℙ Script
    accountBalances   : Rewards

record SubUTxOEnv : Type where
  field
    slot             : Slot
    pparams          : PParams
    treasury         : Treasury
    utxo₀            : UTxO
    isTopLevelValid  : Bool
    allScripts       : ℙ Script
    accountBalances  : Rewards
```

The `UTxOEnv`{.AgdaRecord} carries

+  `utxo₀`{.AgdaField}: *pre-batch snapshot* of the UTxO;
+  `allScripts`{.AgdaField}: *batch-wide script pool* containing all scripts available
   to the batch (witness scripts plus reference scripts resolved from allowed
   reference inputs and batch outputs);

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

record HasDepositsChange {a} (A : Type a) : Type a where
  field DepositsChangeOf : A → DepositsChange
open HasDepositsChange ⦃...⦄ public

record HasScriptPool {a} (A : Type a) : Type a where
  field ScriptPoolOf : A → ℙ Script
open HasScriptPool ⦃...⦄ public

record HasDataPool {a} (A : Type a) : Type a where
  field DataPoolOf : A → DataHash ⇀ Datum
open HasDataPool ⦃...⦄ public

record HasAccountBalances {a} (A : Type a) : Type a where
  field AccountBalancesOf : A → Rewards
open HasAccountBalances ⦃...⦄ public

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

  HasAccountBalances-UTxOEnv : HasAccountBalances UTxOEnv
  HasAccountBalances-UTxOEnv .AccountBalancesOf = UTxOEnv.accountBalances

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

  HasAccountBalances-SubUTxOEnv : HasAccountBalances SubUTxOEnv
  HasAccountBalances-SubUTxOEnv .AccountBalancesOf = SubUTxOEnv.accountBalances

  HasUTxO-UTxOState : HasUTxO UTxOState
  HasUTxO-UTxOState .UTxOOf = UTxOState.utxo

  HasFee-UTxOState : HasFees UTxOState
  HasFee-UTxOState .FeesOf = UTxOState.fees

  HasDonations-UTxOState : HasDonations UTxOState
  HasDonations-UTxOState .DonationsOf = UTxOState.donations

  unquoteDecl HasCast-DepositsChange
              HasCast-UTxOEnv
              HasCast-SubUTxOEnv
              HasCast-UTxOState = derive-HasCast
    ( (quote DepositsChange , HasCast-DepositsChange  ) ∷
      (quote UTxOEnv        , HasCast-UTxOEnv  ) ∷
      (quote SubUTxOEnv     , HasCast-SubUTxOEnv  ) ∷
    [ (quote UTxOState      , HasCast-UTxOState) ])


private
  variable
    ℓ          : TxLevel
    A          : Type
    Γ          : A
    legacyMode : Bool
    s₀         : UTxOState
    txTop      : TopLevelTx
    txSub      : SubLevelTx
```
-->

```agda
outs : Tx ℓ  → UTxO
outs tx = mapKeys (TxIdOf tx ,_) (TxOutsOf tx)

balance : UTxO → Value
balance utxo = ∑ˢ[ v ← valuesOfUTxO utxo ] v

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

module _ (depositsChange : DepositsChange) where

  open DepositsChange depositsChange

  depositRefundsSub : Coin
  depositRefundsSub = negPart depositsChangeSub

  newDepositsSub : Coin
  newDepositsSub = posPart depositsChangeSub

  newDepositsTop : Coin
  newDepositsTop = posPart depositsChangeTop

  depositRefundsTop : Coin
  depositRefundsTop = negPart depositsChangeTop

  consumedTx : Tx ℓ → UTxO → Value
  consumedTx tx utxo = balance (utxo ∣ SpendInputsOf tx)
                       + MintedValueOf tx
                       + inject (getCoin (WithdrawalsOf tx))

  consumed : TopLevelTx → UTxO → Value
  consumed txTop utxo = consumedTx txTop utxo
                        + inject depositRefundsTop

  consumedBatch : TopLevelTx → UTxO → Value
  consumedBatch txTop utxo = consumed txTop utxo
                             + ∑ˡ[ stx ← SubTransactionsOf txTop ] (consumedTx stx utxo)
                             + inject depositRefundsSub
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

  produced : TopLevelTx → Value
  produced txTop = producedTx txTop
                   + inject (TxFeesOf txTop)
                   + inject newDepositsTop

  producedBatch : TopLevelTx → Value
  producedBatch txTop = produced txTop
                        + ∑ˡ[ stx ← SubTransactionsOf txTop ] (producedTx stx)
                        + inject newDepositsSub
```

## CIP-159 Notes

### Preservation of Value

CIP-159 introduces two new fields to transactions: `directDeposits` and
`balanceIntervals`.  Direct deposits represent value that flows from the transaction
into account addresses.

In the preservation-of-value equation, direct deposits appear on the
*produced* side: value leaves the UTxO and enters account balances.  The
`getCoin (DirectDepositsOf tx)` term, appearing in the definition of
`producedTx`{.AgdaFunction}, sums the ADA of all direct deposits in
the transaction.

### Phantom Asset Prevention

```agda
NoPhantomWithdrawals : Rewards → TopLevelTx → Type
NoPhantomWithdrawals preBalances txTop =
  ∀[ (addr , amt) ∈ allWithdrawals txTop ˢ ]
    amt ≤ maybe id 0 (lookupᵐ? preBalances (RewardAddress.stake addr))
```

**The Problem**.  CIP-159 identifies a "phantom asset" attack when nested
transactions combine direct deposits and withdrawals to the same account within a
single batch.  If a sub-transaction deposits ADA into an account and a later
sub-transaction withdraws it, Plutus scripts may be tricked into believing native
assets were minted.

**The Solution**.  Withdrawals across the entire batch are bounded by the
**pre-batch** account balances.  The `NoPhantomWithdrawals`{.AgdaFunction} predicate
checks that the total withdrawal for each reward address (aggregated via
`allWithdrawals`{.AgdaFunction}) does not exceed the pre-batch balance of the
corresponding credential.  This mirrors the spend-side safety principle where
spending inputs must come from the pre-batch UTxO snapshot (`utxo₀`{.AgdaField}).


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
                                    txTop
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

4. Direct deposit targets must be registered accounts (their credentials
   must appear in `dom accountBalances`).

5. Each balance interval assertion must hold against the pre-batch account
   balances; this is a Phase-1 validity condition.

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
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txSub) ] (netId a ≡ NetworkId)
    ∙ ∀[ a ∈ dom (WithdrawalsOf txSub)] (NetworkIdOf a ≡ NetworkId)
    ∙ ∀[ a ∈ dom (DirectDepositsOf txSub)] (NetworkIdOf a ≡ NetworkId)
    ∙ MaybeNetworkIdOf txSub ~ just NetworkId
    ∙ CurrentTreasuryOf txSub ~ just (TreasuryOf Γ)
    ∙ mapˢ stake (dom (DirectDepositsOf txSub)) ⊆ dom (AccountBalancesOf Γ)
    ∙ dom (BalanceIntervalsOf txSub) ⊆ dom (AccountBalancesOf Γ)
    ∙ ∀[ (c , interval) ∈ BalanceIntervalsOf txSub ˢ ]
        (InBalanceInterval (maybe id 0 (lookupᵐ? (AccountBalancesOf Γ) c)) interval)
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

2. The set of spending and reference inputs must exist in the UTxO _before_
   applying the transaction (or partially applying any part of it).

3. The set of spending inputs must exist in the UTXO state, which has
   been updated by other sub-transactions in the batch. This prevents
   sub/top-level transactions from spending inputs twice. In other
   words, spending inputs across all top- and sub-level transactions
   are disjoint.

4. In Legacy Mode: The top-level transaction must be self-balancing.

```agda
data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv × Bool → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :
    let
      UTxOOverhead = 160
      maxBootstrapAddrSize = 64
    in
    ∙ SpendInputsOf txTop ≢ ∅
    ∙ SpendInputsOf txTop ⊆ dom (UTxOOf Γ) -- (2)
    ∙ ReferenceInputsOf txTop ⊆ dom (UTxOOf Γ) -- (2)
    ∙ SpendInputsOf txTop ⊆ dom (UTxOOf s₀) -- (3)
    ∙ inInterval (SlotOf Γ) (ValidIntervalOf txTop)
    ∙ minfee (PParamsOf Γ) txTop (UTxOOf Γ) ≤ TxFeesOf txTop
    ∙ coin (MintedValueOf txTop) ≡ 0
    ∙ consumedBatch (DepositsChangeOf Γ) txTop (UTxOOf Γ) ≡ producedBatch (DepositsChangeOf Γ) txTop
    ∙ (legacyMode ≡ true → consumed (DepositsChangeOf Γ) txTop (UTxOOf Γ) ≡ produced (DepositsChangeOf Γ) txTop)  -- (4)
    ∙ SizeOf txTop ≤ maxTxSize (PParamsOf Γ)
    ∙ ∑ˡ[ x ← setToList (allReferenceScripts txTop (UTxOOf Γ)) ] scriptSize x ≤ (PParamsOf Γ) .maxRefScriptSizePerTx
    ∙ ((RedeemersOf txTop ˢ ≢ ∅) ⊎ (List.Any (λ txSub → RedeemersOf txSub ˢ ≢ ∅) (SubTransactionsOf txTop))
        → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ))
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ]
         (inject ((UTxOOverhead + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
    ∙ ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ] (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ))
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txTop) ] (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ maxBootstrapAddrSize)) a
    ∙ ∀[ (a , _) ∈ range (TxOutsOf txTop) ] (netId a ≡ NetworkId)
    ∙ ∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId
    ∙ ∀[ a ∈ dom (DirectDepositsOf txTop)] (NetworkIdOf a ≡ NetworkId)
    ∙ MaybeNetworkIdOf txTop ~ just NetworkId
    ∙ CurrentTreasuryOf txTop  ~ just (TreasuryOf Γ)
    ∙ mapˢ stake (dom (DirectDepositsOf txTop)) ⊆ dom (AccountBalancesOf Γ)
    ∙ dom (BalanceIntervalsOf txTop) ⊆ dom (AccountBalancesOf Γ)
    ∙ ∀[ (c , interval) ∈ BalanceIntervalsOf txTop ˢ ]
        (InBalanceInterval (maybe id 0 (lookupᵐ? (AccountBalancesOf Γ) c)) interval)
    ∙ Γ ⊢ _ ⇀⦇ txTop ,UTXOS⦈ _
      ────────────────────────────────
    let
       s₁ = if IsValidFlagOf txTop
            then ⟦ (UTxOOf s₀ ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , FeesOf s₀ + TxFeesOf txTop , DonationsOf s₀ + DonationsOf txTop ⟧ else ⟦ UTxOOf s₀ ∣ (CollateralInputsOf txTop) ᶜ , FeesOf s₀ + cbalance (UTxOOf s₀ ∣ CollateralInputsOf txTop) , DonationsOf s₀ ⟧
    in
      (Γ , legacyMode)  ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁

```
<!--
```agda
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO)
pattern UTXO-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ p₁₈ p₁₉ p₂₀ p₂₁ p₂₂ h
  = UTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁ , p₂₂ , h)
```
-->

[1]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-0118#changes-to-transaction-validity "CIP-0118 | Changes to Transaction Validity"
[2]: https://cips.cardano.org/cip/CIP-0118 "CIP-0118 | Nested Transactions"
