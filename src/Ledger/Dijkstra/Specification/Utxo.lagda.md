---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo.lagda.md
---

# The UTxO Transition System

This is a **work-in-progress** of the Dijkstra-era UTxO transition system.
Historically, this module captured the Phase 1 structural checks specific to
Dijkstra (nested transactions + guards).  It now also contains a first pass at
the *batch* semantics and the Phase 2 (Plutus) execution model for validating a
top-level transaction together with all of its subtransactions.

The primary guiding design principles are

+  **Spend-side mempool safety**.  All spending inputs across the whole batch must
   come from a pre-batch UTxO snapshot;
+  **Batch-scoped witnesses**.  Scripts and datums are collected once per batch and
   then shared for Phase 2 evaluation;
+  **Batch-consistency**. No two transactions in the batch may attempt to spend the
   same input. This is enforced explicitly below (rather than being accidentally
   masked by set unioning).

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

open import Data.List.Relation.Unary.All using () renaming (All to Allˡ)

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

###  Batch-scoped witnesses

In Dijkstra, the `UTxOEnv`{.AgdaRecord} additionally carries

+  `utxo₀`: the *pre-batch snapshot* of the UTxO (used for spend-side checks);
+  `globalScripts` / `globalData`: a *batch-wide script universe* and *datum-by-hash
   pool* computed once in the `LEDGER`{.AgdaDatatype} rule and threaded through to
   `UTXO`{.AgdaDatatype}/`UTXOS`{.AgdaDatatype}. Thus all scripts and datums are shared
   across the batch.

Following CIP-0118, scripts and datums are treated as *batch-wide witnesses*;
attaching a script or datum to a transaction in the batch makes it available for
Phase 2 validation of any transaction in the batch, independent of which
subtransaction originally supplied it. Consequently, `LEDGER` precomputes:

+  `globalScripts`: the set of all scripts available to the batch (witness scripts +
   reference scripts resolved from allowed reference inputs / batch outputs);
+  `globalData`: a datum-by-hash pool containing all datums available to the batch.

The intent is that `UTXO`{.AgdaDatatype}/`UTXOS`{.AgdaDatatype} can validate all
scripts in the batch without recomputing per-subtransaction script/data availability.


```agda
record UTxOEnv : Type where
  field
    slot             : Slot
    pparams          : PParams
    treasury         : Treasury
    utxo₀            : UTxO
    isTopLevelValid  : Bool
    globalScripts    : ℙ Script
    globalData       : DataHash ⇀ Datum
```

The `utxo₀`{.AgdaField} field is introduced in the Dijkstra era; it denotes a
*snapshot* of the UTxO before any subtransaction of a batch is applied.  This is
the canonical "mempool-safe" UTxO used for spend-side checks.

```agda
record UTxOState : Type where
  constructor ⟦_,_,_,_⟧ᵘ
  field
    utxo       : UTxO
    fees       : Fees
    deposits   : Deposits
    donations  : Donations
```

The rest of this module defines

+  common helper functions (balance, minfee, deposit accounting);
+  batch-level accounting (consumed/produced across a collection of transactions);
+  Phase 2 wiring for validating all Plutus scripts required by the batch.

<!--
```agda
record HasUTxOState {a} (A : Type a) : Type a where
  field UTxOStateOf : A → UTxOState
open HasUTxOState ⦃...⦄ public

record HasGlobalScripts {a} (A : Type a) : Type a where
  field GlobalScriptsOf : A → ℙ Script
open HasGlobalScripts ⦃...⦄ public

record HasGlobalData {a} (A : Type a) : Type a where
  field GlobalDataOf : A → DataHash ⇀ Datum
open HasGlobalData ⦃...⦄ public


instance
  HasPParams-UTxOEnv : HasPParams UTxOEnv
  HasPParams-UTxOEnv .PParamsOf = UTxOEnv.pparams

  HasUTxO-UTxOEnv : HasUTxO UTxOEnv
  HasUTxO-UTxOEnv .UTxOOf = UTxOEnv.utxo₀

  HasUTxO-UTxOState : HasUTxO UTxOState
  HasUTxO-UTxOState .UTxOOf = UTxOState.utxo

  HasFee-UTxOState : HasFees UTxOState
  HasFee-UTxOState .FeesOf = UTxOState.fees

  HasDeposits-UTxOState : HasDeposits UTxOState
  HasDeposits-UTxOState .DepositsOf = UTxOState.deposits

  HasDonations-UTxOState : HasDonations UTxOState
  HasDonations-UTxOState .DonationsOf = UTxOState.donations

  HasGlobalScripts-UTxOEnv : HasGlobalScripts UTxOEnv
  HasGlobalScripts-UTxOEnv .GlobalScriptsOf = UTxOEnv.globalScripts

  HasGlobalData-UTxOEnv : HasGlobalData UTxOEnv
  HasGlobalData-UTxOEnv .GlobalDataOf = UTxOEnv.globalData

  unquoteDecl HasCast-UTxOEnv HasCast-UTxOState = derive-HasCast
    ( (quote UTxOEnv   , HasCast-UTxOEnv  ) ∷
    [ (quote UTxOState , HasCast-UTxOState) ])
```
-->



```agda
opaque

  outs : Tx ℓ  → UTxO
  outs tx = mapKeys (TxIdOf tx ,_) (IndexedOutputsOf tx)

  balance : UTxO → Value
  balance utxo = ∑[ x ← mapValues txOutHash utxo ] getValueʰ x

  cbalance : UTxO → Coin
  cbalance utxo = coin (balance utxo)

  refScriptsSize : UTxO → Tx ℓ → ℕ
  refScriptsSize utxo tx = sum (map scriptSize (setToList (referenceScripts utxo tx)))

  minfee : PParams → UTxO → Tx ℓ → Coin
  minfee pp utxo tx =  pp .a * (SizeOf tx) + pp .b
                       + txScriptFee (pp .prices) (totExUnits tx)
                       + scriptsCost pp (refScriptsSize utxo tx)
```
<!--
```agda
instance
  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance
```
-->


```agda
certDeposit : DCert → PParams → Deposits
certDeposit (delegate c _ _ v) _   = ❴ CredentialDeposit c , v ❵
certDeposit (reg c _)          pp  = ❴ CredentialDeposit c , pp .keyDeposit ❵
certDeposit (regpool kh _)     pp  = ❴ PoolDeposit kh , pp .poolDeposit ❵
certDeposit (regdrep c v _)    _   = ❴ DRepDeposit c , v ❵
certDeposit _                  _   = ∅

certRefund : DCert → ℙ DepositPurpose
certRefund (dereg c _)      = ❴ CredentialDeposit c ❵
certRefund (deregdrep c _)  = ❴ DRepDeposit c ❵
certRefund _                = ∅

data ValidCertDeposits (pp : PParams) (deps : Deposits) : List DCert → Set
  where
  []         : ValidCertDeposits pp deps []
  delegate   : ∀ {c del kh v certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ CredentialDeposit c , v ❵) certs
             → ValidCertDeposits pp deps (delegate c del kh v ∷ certs)
  regpool    : ∀ {kh p certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ PoolDeposit kh , pp .poolDeposit ❵) certs
             → ValidCertDeposits pp deps (regpool kh p ∷ certs)
  regdrep    : ∀ {c v a certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ DRepDeposit c , v ❵) certs
             → ValidCertDeposits pp deps (regdrep c v a ∷ certs)
  reg        : ∀ {c v certs}
             → ValidCertDeposits pp (deps ∪⁺ ❴ CredentialDeposit c , pp .keyDeposit ❵) certs
             → ValidCertDeposits pp deps (reg c v ∷ certs)
  dereg      : ∀ {c md d certs}
             → (CredentialDeposit c , d) ∈ deps
             → md ≡ nothing ⊎ md ≡ just d
             → ValidCertDeposits pp (deps ∣ ❴ CredentialDeposit c ❵ ᶜ) certs
             → ValidCertDeposits pp deps (dereg c md ∷ certs)
  deregdrep  : ∀ {c d certs}
             → (DRepDeposit c , d) ∈ deps
             → ValidCertDeposits pp (deps ∣ ❴ DRepDeposit c ❵ ᶜ) certs
             → ValidCertDeposits pp deps (deregdrep c d ∷ certs)
  ccreghot   : ∀ {c v certs}
             → ValidCertDeposits pp deps certs
             → ValidCertDeposits pp deps (ccreghot c v ∷ certs)
  retirepool : ∀ {kh e certs}
             → ValidCertDeposits pp deps certs
             → ValidCertDeposits pp deps (retirepool kh e  ∷ certs)
```

<!--
```agda
private
  validCertDeposits? : ∀ {pp} deps certs → Dec (ValidCertDeposits pp deps certs)
  validCertDeposits? deps [] = yes []
  validCertDeposits? deps (delegate _ _ _ _ ∷ certs) =
    mapDec delegate (λ where (delegate p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (regpool _ _ ∷ certs) =
    mapDec regpool (λ where (regpool p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (regdrep _ _ _ ∷ certs) =
    mapDec regdrep (λ where (regdrep p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (retirepool _ _ ∷ certs) =
    mapDec retirepool (λ where (retirepool p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (ccreghot _ _ ∷ certs) =
    mapDec ccreghot (λ where (ccreghot p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (reg _ _ ∷ certs) =
    mapDec reg (λ where (reg p) → p) (validCertDeposits? _ _)
  validCertDeposits? deps (dereg c nothing ∷ certs) with ¿ CredentialDeposit c ∈ dom deps ¿
  ... | yes p = mapDec (dereg (proj₂ (Equivalence.from dom∈ p)) (inj₁ refl)) (λ { (dereg _ _ p) → p }) (validCertDeposits? _ _)
  ... | no ¬p = no λ { (dereg x _ _) → ¬p (Equivalence.to dom∈ (_ , x)) }
  validCertDeposits? deps (dereg c (just d) ∷ certs) with ¿ (CredentialDeposit c , d) ∈ deps ¿
  ... | yes p = mapDec (dereg p (inj₂ refl)) (λ { (dereg _ _ p) → p }) (validCertDeposits? _ _)
  ... | no ¬p = no λ { (dereg x (inj₂ refl) _) → ¬p x }
  validCertDeposits? deps (deregdrep c d ∷ certs) with ¿ (DRepDeposit c , d) ∈ deps ¿
  ... | yes p = mapDec (deregdrep p)  (λ where (deregdrep _ v) → v) (validCertDeposits? _ _)
  ... | no ¬p = no (λ where (deregdrep p _) → ¬p p)

instance
  Dec-ValidCertDeposits : ∀ {pp deps certs} → ValidCertDeposits pp deps certs ⁇
  Dec-ValidCertDeposits = ⁇ (validCertDeposits? _ _)
```
-->

```agda
updateCertDeposits  : PParams → List DCert → Deposits → Deposits
updateCertDeposits pp [] deposits = deposits
updateCertDeposits pp (reg c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (reg c v) pp)
updateCertDeposits pp (delegate c vd khs v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (delegate c vd khs v) pp)
updateCertDeposits pp (regpool kh p ∷ certs) deposits
  -- pool deposits are not added a second time if they are already present
  -- (reregistrations or duplicate certificates).
  = updateCertDeposits pp certs (deposits ∪ˡ certDeposit (regpool kh p) pp)
updateCertDeposits pp (regdrep c v a ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∪⁺ certDeposit (regdrep c v a) pp)
updateCertDeposits pp (dereg c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∣ certRefund (dereg c v)ᶜ)
updateCertDeposits pp (deregdrep c v ∷ certs) deposits
  = updateCertDeposits pp certs (deposits ∣ certRefund (deregdrep c v)ᶜ)
updateCertDeposits pp (_ ∷ certs) deposits
  = updateCertDeposits pp certs deposits

updateProposalDeposits : List GovProposal → TxId → Coin → Deposits → Deposits
updateProposalDeposits []        _     _      deposits  = deposits
updateProposalDeposits (_ ∷ ps)  txid  gaDep  deposits  =
  updateProposalDeposits ps txid gaDep deposits
  ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵

updateDeposits : PParams → Tx ℓ → Deposits → Deposits
updateDeposits pp tx = updateCertDeposits pp (DCertsOf tx)
                        ∘ updateProposalDeposits (ListOfGovProposalsOf tx) (TxIdOf tx) (pp .govActionDeposit)

proposalDepositsΔ : List GovProposal → PParams → Tx ℓ → Deposits
proposalDepositsΔ props pp tx = updateProposalDeposits props (TxIdOf tx) (pp .govActionDeposit) ∅

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

  HasCoin-UTxOState : HasCoin UTxOState
  HasCoin-UTxOState .getCoin s = getCoin (UTxOOf s)
                               + (FeesOf s)
                               + getCoin (DepositsOf s)
                               + DonationsOf s

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
-- batch's Phase 2 execution (top-level tx + all subtransactions).
--
-- The precise relationship between collateral, per-script execution units, and
-- fee/minfee accounting may be refined as the CIPs and ledger design stabilize.

module Accounting (pp : PParams) (txTop : TopLevelTx) (deposits₀ : Deposits) where

  updateDepositsBatch : Deposits
  updateDepositsBatch =
    foldl updateStep (updateDeposits pp txTop deposits₀) (SubTransactionsOf txTop)
    where
    updateStep : Deposits → SubLevelTx → Deposits
    updateStep deps txSub = updateDeposits pp txSub deps

  depositsChangeBatch : ℤ
  depositsChangeBatch = getCoin updateDepositsBatch - getCoin deposits₀

  depositRefundsBatch : Coin
  depositRefundsBatch = negPart depositsChangeBatch

  newDepositsBatch : Coin
  newDepositsBatch = posPart depositsChangeBatch

  consumed : UTxOEnv → Value
  consumed Γ = foldl  (λ acc tx → acc + consumedTx tx)
                      (consumedTx txTop + inject depositRefundsBatch)
                      (SubTransactionsOf txTop)
    where
    consumedTx : ∀ {ℓ} → Tx ℓ → Value
    consumedTx tx =  balance (UTxOOf Γ ∣ SpendInputsOf tx)
                     + MintedValueOf tx
                     + inject (getCoin (WithdrawalsOf tx))

  produced : Value
  produced = foldl  (λ acc tx → acc + producedTx tx)
                    (producedTx txTop + inject newDepositsBatch)
                    (SubTransactionsOf txTop)
    where
    producedTx : ∀ {ℓ} → Tx ℓ → Value
    producedTx {TxLevelTop} tx =  balance (outs tx)
                                  + inject (TxFeesOf tx)
                                  + inject (DonationsOf tx)
    producedTx {TxLevelSub} tx =  balance (outs tx)
                                  + inject (DonationsOf tx)

```

## Phase 2 (Plutus) Execution for Nested Transactions

The `LEDGER`{.AgdaDatatype} rule computes a *batch-wide script universe* and a
*datum-by-hash pool* once, which populate the `globalScripts`{.AgdaField} and
`globalData`{.AgdaField} fields of `UTxOEnv`{.AgdaRecord}.
In this module we access them via `GlobalScriptsOf Γ` and `GlobalDataOf Γ`.

Phase 2 execution in `UTXO`{.AgdaDatatype}/`UTXOS`{.AgdaDatatype} then evaluates all
Plutus scripts needed by the top-level transaction and all its subtransactions
against this shared, batch-scoped context.

We distinguish two UTxO views:

+  **Pre-batch snapshot view**. `UTxOOf`{.AgdaField} `Γ`{.AgdaBound} (or
   `utxo₀`{.AgdaField}) is used for all *spend-side* lookups (inputs, collateral, and
   datum lookup for spent outputs), preserving the mempool-safety requirement that
   every spending input must exist before any part of the batch is applied.

+  **Batch output view**.
   `utxoView`{.AgdaFunctions} `txTop`{.AgdaBound}
   = `UTxOOf`{.AgdaField} `Γ`{.AgdaBound}
   `∪ˡ`{.AgdaFunction} `batchOuts`{.AgdaFunction} `txTop`{.AgdaBound}
   is defined here mainly as a convenience for rules that need access to outputs
   created within the batch (top-level outputs plus all subtransaction outputs).
   Phase 2 script collection below stays spend-side with respect to UTxO lookups,
   and relies on `globalScripts`{.AgdaField}/`globalData`{.AgdaField} for
   batch-scoped availability.

Finally, note that `Script.Validation`{.AgdaModule} remains batch-agnostic — it does
not know about subtransactions or `utxoView`.  Instead, we pass it exactly the
ingredients it needs to assemble Plutus script inputs for each transaction, namely,

+  the spend-side snapshot `UTxOOf`{.AgdaField} `Γ`{.AgdaBound},
+  the datum-by-hash pool `extraData`{.AgdaFunction}
   = `GlobalDataOf`{.AgdaField} `Γ`{.AgdaBound},
+  the script universe `GlobalScriptsOf`{.AgdaField} `Γ`{.AgdaBound}.

This keeps batch-specific definitions in `Utxo.Phase2`{.AgdaModule}, while
`collectP2ScriptsWithContext`{.AgdaFunction} is reusable for both top-level and
sub-level transactions.

```agda
batchOuts : TopLevelTx → UTxO
batchOuts txTop = foldr (λ sub acc → outs sub ∪ˡ acc) (outs txTop) (SubTransactionsOf txTop)

-- collect all outputs created in the batch
utxoView : UTxOEnv → TopLevelTx → UTxO
utxoView Γ txTop = (UTxOOf Γ) ∪ˡ batchOuts txTop
-- TxId's are fresh, so keys shouldn't clash, but using `∪ˡ` is fine either way.

module Phase2 (Γ : UTxOEnv) (txTop : TopLevelTx) where

  extraData : DataHash ⇀ Datum
  extraData = GlobalDataOf Γ

  getP2ScriptsWithContextOf : {ℓ : TxLevel} → Tx ℓ
    → List (P2Script × List Data × ExUnits × CostModel)

  getP2ScriptsWithContextOf {ℓ} tx =
    collectP2ScriptsWithContext {ℓ = ℓ} (PParamsOf Γ) tx
      (UTxOOf Γ)           -- pre-batch snapshot
      extraData            -- batch datum-by-hash pool
      (GlobalScriptsOf Γ)  -- batch script universe

  p2ScriptsWithContext : List (P2Script × List Data × ExUnits × CostModel)
  p2ScriptsWithContext =
    getP2ScriptsWithContextOf txTop
    ++ concatMap getP2ScriptsWithContextOf (SubTransactionsOf txTop)

  -- union UTxO maps for outputs.
  batchScripts✓ : Bool
  batchScripts✓ = evalP2Scripts p2ScriptsWithContext

  -- union a list of sets
  concatMapˡ : {A B : Type} → (A → ℙ B) → List A → ℙ B
  concatMapˡ f as = proj₁ $ unions (fromList (map f as))
  -- maybe move this to agda-sets or src-lib-exts

  batchSpendInputs : ℙ TxIn
  batchSpendInputs =
    SpendInputsOf txTop ∪ concatMapˡ SpendInputsOf (SubTransactionsOf txTop)

  -- Reference inputs are validated against the "batch output view," so they may
  -- point to outputs produced in the same batch (including self-usable outputs).
  -- Spending inputs remain mempool-safe against `utxo₀`.
  batchReferenceInputs : ℙ TxIn
  batchReferenceInputs =
    ReferenceInputsOf txTop ∪ concatMapˡ ReferenceInputsOf (SubTransactionsOf txTop)

  -- No-double-spend across the batch: the collection of all spending inputs must
  -- be pairwise disjoint.  NOTE: using `batchSpendInputs` alone is insufficient,
  -- because set union would silently erase duplicates.
  PairwiseDisjoint : List (ℙ TxIn) → Type
  PairwiseDisjoint []        = ⊤
  PairwiseDisjoint (X ∷ Xs)  = Allˡ (λ Y → disjoint X Y) Xs × PairwiseDisjoint Xs

  batchSpendInputsList : List (ℙ TxIn)
  batchSpendInputsList = SpendInputsOf txTop ∷ map SpendInputsOf (SubTransactionsOf txTop)

  noOverlappingSpendInputs : Type
  noOverlappingSpendInputs = PairwiseDisjoint batchSpendInputsList

  -- Total Ada minted across the entire batch (top-level tx + all sub-txs).
  batchMintedCoin : Coin
  batchMintedCoin = foldl (λ acc txSub → acc + coin (MintedValueOf txSub))
                          (coin (MintedValueOf txTop))
                          (SubTransactionsOf txTop)
  -- To maintain the total Ada supply invariant, this must satisfy
  -- `batchMintedCoin ≡ 0`; this is the generalization of Conway's
  -- `coin mint ≡ 0`.


  -- UTxO change in case Tx.isValid ≡ true. case
  utxo✓ : UTxO → UTxO
  utxo✓ utxo = (utxo ∣ batchSpendInputs ᶜ) ∪ˡ batchOuts txTop
                  -- remove ALL batch spend inputs add ALL outputs (top + subs)

  -- Deposits change in case Tx.isValid ≡ true.
  deposits✓ : Deposits → Deposits
  deposits✓ deps = foldr  (λ sub ds → updateDeposits (PParamsOf Γ) sub ds)
                          (updateDeposits (PParamsOf Γ) txTop deps)
                          (SubTransactionsOf txTop)

  -- Donations change in case Tx.isValid ≡ true.
  donations✓ : Donations → Donations
  donations✓ dons = dons + foldl  (λ acc txSub → acc + DonationsOf txSub)
                                  (DonationsOf txTop)
                                  (SubTransactionsOf txTop)

  -- Fees change in case Tx.isValid ≡ true.
  fees✓ : Fees → Fees
  fees✓ fees = fees + TxFeesOf txTop

  -- UTxO change in case Tx.isValid ≡ false.
  utxo× : UTxO → UTxO
  utxo× = _∣ (CollateralInputsOf txTop) ᶜ

  -- Fees change in case Tx.isValid ≡ false.
  fees× : Fees → UTxO → Fees
  fees× f utxo = f + coin (balance (utxo ∣ CollateralInputsOf txTop))

  -- UTxOState change in case Tx.isValid ≡ true.
  scripts✓ : UTxOState → UTxOState
  scripts✓ s = ⟦ utxo✓ (UTxOOf s) , fees✓ (FeesOf s) , deposits✓ (DepositsOf s), donations✓ (DonationsOf s) ⟧

  -- UTxOState change in case Tx.isValid ≡ false.
  scripts× : UTxOState → UTxOState
  scripts× s = ⟦ utxo× (UTxOOf s) , fees× (FeesOf s) (UTxOOf s) , DepositsOf s , DonationsOf s ⟧
```


## The <span class="AgdaDatatype">UTXOS</span> Rule

<!--
```agda
private variable
  Γ : UTxOEnv
  s s' : UTxOState
  txTop : TopLevelTx
  txSub : SubLevelTx
```
-->

```agda
data _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXOS-scripts✓ :

    let open Phase2 Γ txTop in

    ∙ Tx.isValid txTop ≡ batchScripts✓
    ∙ batchScripts✓ ≡ true
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ scripts✓ s

  UTXOS-scripts× :

    let open Phase2 Γ txTop in

    ∙ Tx.isValid txTop ≡ batchScripts✓
    ∙ batchScripts✓ ≡ false
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ scripts× s
```

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
data _⊢_⇀⦇_,SUBUTXO⦈_ : UTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXO :

    ∙ SpendInputsOf txSub ≢ ∅
    ∙ SpendInputsOf txSub ⊆ dom (UTxOOf Γ)       -- (1) (redundant)
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txSub ,SUBUTXO⦈ s

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :

    let  open Phase2 Γ
         open Accounting (PParamsOf Γ) txTop (DepositsOf s)
    in

    ∙ SpendInputsOf txTop ≢ ∅
    ∙ SpendInputsOf txTop ⊆ dom (UTxOOf Γ)                      -- (1) (redundant)
    ∙ batchSpendInputs txTop ⊆ dom (UTxOOf Γ)                   -- (1)
    ∙ noOverlappingSpendInputs txTop                            -- (2)
    ∙ batchReferenceInputs txTop ⊆ dom (utxoView Γ txTop)       -- (3)
    ∙ requiredGuardsInTopLevel txTop (SubTransactionsOf txTop)  -- (4)
    ∙ consumed Γ ≡ produced
    ∙ batchMintedCoin txTop ≡ 0
    ∙ RedeemersOf txTop ˢ ≢ ∅ → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ)
    ∙ Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ s
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
```

