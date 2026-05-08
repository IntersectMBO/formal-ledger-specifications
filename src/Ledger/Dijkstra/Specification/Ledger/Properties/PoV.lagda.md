---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/PoV.lagda.md
---

# LEDGER: Preservation of Value {#sec:ledger-pov}

This module states the preservation-of-value property for the Dijkstra
`LEDGER`{.AgdaDatatype} rule, updated for CIP-159 (direct deposits and
partial withdrawals).

## Key Differences from Conway

1. **`UTxOState` has 3 fields** (no deposits) — simpler `HasCoin-UTxOState`.
2. **`LEDGER-V` applies `applyDirectDeposits`** after all sub-rules, creating
   `certStateFinal` with increased rewards.  Direct deposit value cancels
   between `producedBatch` (UTxO side) and `certStateFinal` (CertState side).
3. **Batch structure**: `SUBLEDGERS` processes sub-transactions before top-level
   `CERTS`/`GOVS`/`UTXOW`.  Individual sub-transactions do NOT independently
   preserve total value — only the batch-level `consumedBatch ≡ producedBatch` does.
4. **Partial withdrawals**: `CERTS-pov` uses the new `applyWithdrawals` semantics.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)
open import Ledger.Dijkstra.Specification.Abstract using (AbstractFunctions)

module Ledger.Dijkstra.Specification.Ledger.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude

open import Axiom.Set.Properties th

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Certs.Properties.PoV govStructure
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.PoV txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxow.Properties.PoV txs abs

open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties
  using (+-0-monoid; +-identityʳ; +-comm; +-assoc; +-cancelʳ-≡)


open RewardAddress
```
-->

## Key Lemma: `applyDirectDeposits` increases `getCoin` by deposit total

`applyDirectDeposits dd ds = record ds { rewards = RewardsOf ds ∪⁺ dd }`,
and `getCoin` for `CertState` is `rewardsBalance ∘ DStateOf = ∑[ x ← rewards ] x`


## Proof Architecture

The Dijkstra `LEDGER-pov`{.AgdaFunction} proof does NOT decompose into independent
`SUBLEDGERS-pov`{.AgdaFunction} and `UTXOW-pov`{.AgdaFunction} pieces, because:

1.  Individual `SUBUTXO` rules have no balance equation — only the
    *batch-level* `consumedBatch ≡ producedBatch` (in `UTXO`) constrains
    the total.

2.  Sub-transactions may individually transfer value between UTxO and CertState (via
    sub-withdrawals, sub-deposits, sub-direct-deposits) without local balancing.

Instead, the proof reasons about the **entire** `LEDGER-V`{.AgdaInductiveConstructor}
step at once.

### <span class="AgdaInductiveConstructor">LEDGER-V</span> Proof Outline

Given
`s  = ⟦ utxoSt₀ , govSt₀ , certState₀ ⟧`
and
`s' = ⟦ utxoSt₂ , govSt₂' , certStateFinal ⟧`,
where
`certStateFinal` has `rewards = rewards₂ ∪⁺ allDirectDeposits tx`,
we need:

`getCoin utxoSt₀ + rewardsBalance₀ + deposits₀`
`≡ getCoin utxoSt₂ + rewardsBalance_final + deposits₂`

The key equations are:

1.  `consumedBatch ≡ producedBatch`  (coin projection, from `UTXO`{.AgdaDatatype} premise).

    This gives (using `coin∘inject = id`, `coin mint = 0`):

    `Σ cbalance(utxo₀ ∣ SpendInputs_i) + Σ wdrls_i + depositRefunds`
    `= Σ cbalance(outs_i) + txFee + Σ directDeps_i + Σ donations_i + newDeposits`

    where the sums range over all transactions in the batch (top + sub).

2.  `CERTS-pov` (combined sub + top level):

    `rewardsBalance₀ = rewardsBalance₂ + Σ wdrls_i`

    This requires composing sub-level `CERTS-pov` for each subtransaction
    with top-level `CERTS-pov`.

3.  `depositsChange` property:

    `deposits₂ = deposits₀ + newDeposits - depositRefunds`

    This follows from the definition of `calculateDepositsChange` and
    the posPart/negPart identity.

4.  `applyDirectDeposits`:

    `rewardsBalance_final = rewardsBalance₂ + Σ directDeps_i`

5.  Mechanical UTxO tracking:

    `getCoin utxoSt₂ = cbalance(utxo₂) + fees₂ + donations₂`

    where `utxo₂`, `fees₂`, `donations₂` are determined by the
    `SUBLEDGERS` + `UTXO` mechanical state changes.

Combining:

From (1) and (3), adding the equations and using `+-cancelʳ-≡` to
eliminate `newDeposits + depositRefunds` from both sides:

+  `getCoin utxoSt₀ + Σ wdrls_i + coinFromDeposits(cs₀)`
   `= getCoin utxoSt₂ + Σ directDeps_i + coinFromDeposits(cs₂)`

Then:

+  `getCoin utxoSt₀ + rewardsBalance₀ + coinFromDeposits(cs₀)`
   `= getCoin utxoSt₀ + (rewardsBalance₂ + Σ wdrls_i) + coinFromDeposits(cs₀)` (by 2)
   `= getCoin utxoSt₂ + Σ directDeps_i + coinFromDeposits(cs₂) + rewardsBalance₂` (by combined 1+3)
   `= getCoin utxoSt₂ + rewardsBalance_final + coinFromDeposits(cs₂)` (by 4)
   `= getCoin utxoSt₂ + getCoin certStateFinal + coinFromDeposits(cs₂)` (since deposits unchanged by applyDirectDeposits)



### `LEDGER-I` proof outline

`certState` and `govSt` are unchanged.

`SUBLEDGERS` is a no-op (`isValid ≡ false` ⟹ each `SUBLEDGER-I` preserves state).

The UTXOW/UTXO step in the invalid case:

`utxoSt₁ = ⟦ utxo₀ ∣ collateral ᶜ , fees + cbalance(utxo₀ ∣ collateral) , deposits₀ , donations₀ ⟧`

(Actually in Dijkstra, deposits aren't in UTxOState, and the invalid case has
`depositsChange = ⟦ 0ℤ , 0ℤ ⟧`, so the UTxO changes are just collateral collection.)

`getCoin utxoSt₁ = cbalance(utxo₀ ∣ coll ᶜ) + (fees + cbalance(utxo₀ ∣ coll)) + donations₀`

`= cbalance utxo₀ + fees + donations₀`   [by split-balance]

`= getCoin utxoSt₀`

So

`getCoin s' = getCoin utxoSt₁ + getCoin certState₀ + coinFromDeposits certState₀`

`= getCoin utxoSt₀ + getCoin certState₀ + coinFromDeposits certState₀`

`= getCoin s`


<!--
```agda

module _
  (tx : TopLevelTx) (let open Tx tx)

  -- Shared assumptions (same pattern as Conway)
  ( ∪ˡ-res-lookup-preserve : ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ (m ∣ ❴ c ❵ ᶜ)) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin : ∀ (m : Withdrawals) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique : ∀ (m : Withdrawals) → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )

  ( balance-∪ : ∀ {u u' : UTxO} → disjoint (dom u) (dom u') → cbalance (u ∪ˡ u') ≡ cbalance u + cbalance u' )

  ( split-balance : ∀ (u : UTxO) (keys : ℙ TxIn) → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys) )

  -- New CIP-159 assumption (forwarded to Certs-Pov-lemmas): see PoVLemmas.
  ( indexedSumᵛ'-∪⁺ : ∀ (m m' : Rewards) → getCoin (m ∪⁺ m') ≡ getCoin m + getCoin m' )

  -- Per-step SUBUTXOW coin equation.  Assumed for now; a local proof
  -- would require, in addition to `balance-∪` and `split-balance`, a
  -- batch-wide "spend inputs preserved" invariant (the running UTxO
  -- agrees with the snapshot on every sub-tx's spend inputs) and
  -- freshness of each sub-tx's TxId relative to the running UTxO.
  -- See the follow-up PR plan.
  ( subutxow-step-coin : ∀ {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
      → IsTopLevelValidFlagOf Γ ≡ true → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
      → getCoin s₀ + cbalance (outs stx) + DonationsOf stx ≡ getCoin s₁ + cbalance (UTxOOf Γ ∣ SpendInputsOf stx) )

  -- Sub-lemmas (assumptions for now) --

  -- CIP-159–specific assumption: ∪⁺ adds getCoin values
  ( applyDirectDeposits-rewardsBalance : (dd : DirectDeposits) (ds : DState)
      → rewardsBalance (applyDirectDeposits dd ds) ≡ rewardsBalance ds + getCoin dd )

  -- Assumptions required to open `UTXOW-PoV` (Utxow-level properties):
  ( noMintTx : coin (MintedValueOf tx) ≡ 0 )
  ( noMintSubTx : noMintingSubTxs tx )
  ( outs-disjoint : ∀ {u : UTxO} → TxIdOf tx ∉ mapˢ proj₁ (dom u)
      → disjoint (dom (u ∣ SpendInputsOf tx ᶜ)) (dom (outs tx)) )

  -- Batch-wide invariants on the post-SUBLEDGERS UTxO state.  Both follow
  -- from batch-wide input disjointness and TxId freshness, which the outer
  -- UTXO rule establishes at the batch level but doesn't expose per-step.
  -- Deferred to the follow-up PR on general Dijkstra properties.
  ( utxo₁-tx-spend-eq : {subΓ : SubLedgerEnv} {s : LedgerState} {utxoSt₁ : UTxOState}
      {govSt₁ : GovState} {certState₁ : CertState}
      → SubLedgerEnv.isTopLevelValid subΓ ≡ true
      → SubLedgerEnv.utxo₀ subΓ ≡ UTxOOf (UTxOStateOf s)
      → subΓ ⊢ s ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoSt₁ , govSt₁ , certState₁ ⟧ˡ
      → cbalance (UTxOOf utxoSt₁ ∣ SpendInputsOf tx) ≡ cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf tx) )

  ( fresh-top-tx-id : {subΓ : SubLedgerEnv} {s : LedgerState} {utxoSt₁ : UTxOState}
        {govSt₁ : GovState} {certState₁ : CertState}
      → SubLedgerEnv.isTopLevelValid subΓ ≡ true
      → subΓ ⊢ s ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoSt₁ , govSt₁ , certState₁ ⟧ˡ
      → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf utxoSt₁)) )

  -- Deposit-change posPart/negPart identity.  Provable from the definition
  -- of `calculateDepositsChange` and the standard
  -- `y + posPart (x - y) ≡ x + negPart (x - y)` lemma (per-component, then
  -- composed across top and sub).  Deferred to the follow-up PR.
  ( posNeg-deposits : (cs₀ cs₁ cs₂ : CertState)
      → let dc = calculateDepositsChange cs₀ cs₁ cs₂ in
        coinFromDeposits cs₀ + posPart (DepositsChangeTopOf dc) + posPart (DepositsChangeSubOf dc)
        ≡ coinFromDeposits cs₂ + negPart (DepositsChangeTopOf dc) + negPart (DepositsChangeSubOf dc) )
  -- Aggregation identity for `allDirectDeposits`.  Provable from the
  -- definition of `allDirectDeposits` once we confirm it sums top-level
  -- and sub-level direct deposits disjointly.  Deferred.
  ( DD-split :
      getCoin (allDirectDeposits tx) ≡ getCoin (DirectDepositsOf tx)
                                       + sum (map (λ stx → getCoin (DirectDepositsOf stx)) (SubTransactionsOf tx)) )
  -- Sum distribution (standard list algebra):
  ( sum-map-+ : ∀ {A : Type} (f g : A → ℕ) (xs : List A)
      → sum (map (λ x → f x + g x) xs) ≡ sum (map f xs) + sum (map g xs) )

  where
  open Certs-PoV ∪ˡ-res-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique indexedSumᵛ'-∪⁺
  -- Import the utxow-level properties (utxow-pov-invalid, UTXOW-V-mechanical,
  -- UTXOW-batch-balance-coin) from `Utxow.Properties.PoV`.  The `λ {u}{u'} →`
  -- η-wrapper is needed for the same Agda eta-expansion reason as in
  -- `Utxow.Properties.PoV` itself.
  open UTXOW-PoV tx (λ {u} {u'} → balance-∪ {u} {u'}) split-balance noMintTx noMintSubTx (λ {u} → outs-disjoint {u})
  open ≡-Reasoning

  wdrwl : SubLevelTx → Coin
  wdrwl = getCoin ∘ WithdrawalsOf

  SUBLEDGERS-utxo-coin : ∀ {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → getCoin (UTxOStateOf s₀) + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx) stxs)
      ≡ getCoin (UTxOStateOf s₁) + sum (map (λ stx → cbalance (SubLedgerEnv.utxo₀ Γ ∣ SpendInputsOf stx)) stxs)

  -- Base case: empty list.  `Id-nop` unifies s₀ ≡ s₁, and
  -- `sum (map _ []) = 0` on both sides, giving `refl`.
  SUBLEDGERS-utxo-coin isV (BS-base Id-nop) = refl
  -- Inductive step: one SUBLEDGER step + rest.
  -- SUBLEDGER-I is ruled out by `isV : isTopLevelValid ≡ true`.
  -- In the SUBLEDGER-V case, combine the per-step SUBUTXOW balance
  -- (via `subutxow-step-coin`) with the IH using a small +-monoid shuffle.
  SUBLEDGERS-utxo-coin isV (BS-ind (SUBLEDGER-I (isI , _)) rest) = ⊥-elim (case trans (sym isV) isI of λ ())
  SUBLEDGERS-utxo-coin {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , _ , _)) rest) =
    begin
      U₀ + (p-stx + p-sum)    ≡⟨ sym (+-assoc U₀ p-stx p-sum) ⟩
      (U₀ + p-stx) + p-sum    ≡⟨ cong (_+ p-sum) step-P-C ⟩
      (U₁ + c-stx) + p-sum    ≡⟨ +-assoc U₁ c-stx p-sum ⟩
      U₁ + (c-stx + p-sum)    ≡⟨ cong (U₁ +_) (+-comm c-stx p-sum) ⟩
      U₁ + (p-sum + c-stx)    ≡⟨ sym (+-assoc U₁ p-sum c-stx) ⟩
      (U₁ + p-sum) + c-stx    ≡⟨ cong (_+ c-stx) ih ⟩
      (Uₙ + c-sum) + c-stx    ≡⟨ +-assoc Uₙ c-sum c-stx ⟩
      Uₙ + (c-sum + c-stx)    ≡⟨ cong (Uₙ +_) (+-comm c-sum c-stx) ⟩
      Uₙ + (c-stx + c-sum)    ∎
    where
    -- Abbreviations for the three utxo-state coin totals.
    U₀ U₁ Uₙ : Coin
    U₀ = getCoin (UTxOStateOf s₀)
    U₁ = getCoin (UTxOStateOf s₁)
    Uₙ = getCoin (UTxOStateOf sₙ)

    -- Per-element summands, split into "head" (stx) and "tail" (sigs).
    p-stx c-stx p-sum c-sum : Coin
    p-stx = cbalance (outs stx) + DonationsOf stx
    c-stx = cbalance (SubLedgerEnv.utxo₀ Γ ∣ SpendInputsOf stx)
    p-sum = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx) sigs)
    c-sum = sum (map (λ stx → cbalance (SubLedgerEnv.utxo₀ Γ ∣ SpendInputsOf stx)) sigs)

    -- Single-step coin equation from the SUBUTXOW step assumption.
    step-eq : U₀ + cbalance (outs stx) + DonationsOf stx ≡ U₁ + c-stx
    step-eq = subutxow-step-coin isV' subutxowStep

    step-P-C : U₀ + p-stx ≡ U₁ + c-stx
    step-P-C = trans (sym (+-assoc U₀ (cbalance (outs stx)) (DonationsOf stx))) step-eq

    -- Inductive hypothesis for the tail `sigs`.
    ih : U₁ + p-sum ≡ Uₙ + c-sum
    ih = SUBLEDGERS-utxo-coin isV rest

  SUBLEDGERS-certs-pov : ∀ {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → getCoin (CertStateOf s₀)
      ≡ getCoin (CertStateOf s₁) + sum (map wdrwl stxs)

  -- Base case: empty list, getCoin cs₀ ≡ getCoin cs₀ + 0
  SUBLEDGERS-certs-pov isV (BS-base Id-nop) = sym (+-identityʳ _)

  -- Inductive step: one SUBLEDGER step + rest
  SUBLEDGERS-certs-pov isV (BS-ind (SUBLEDGER-I (isI , _)) rest) = ⊥-elim (case trans (sym isV) isI of λ ())
  SUBLEDGERS-certs-pov {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , certsStep , govsStep)) rest) =
      begin
      getCoin (CertStateOf s₀)
        ≡⟨ sub-certs ⟩
      getCoin (CertStateOf s₁) + getCoin (WithdrawalsOf stx)
        ≡⟨ cong (_+ getCoin (WithdrawalsOf stx)) ih ⟩
      (getCoin (CertStateOf sₙ) + sum (map wdrwl sigs)) + getCoin (WithdrawalsOf stx)
        ≡⟨ +-assoc (getCoin (CertStateOf sₙ)) _ _ ⟩
      getCoin (CertStateOf sₙ) + (sum (map wdrwl sigs) + getCoin (WithdrawalsOf stx))
        ≡⟨ cong (getCoin (CertStateOf sₙ) +_) (+-comm _ (getCoin (WithdrawalsOf stx))) ⟩
      getCoin (CertStateOf sₙ) + (getCoin (WithdrawalsOf stx) + sum (map wdrwl sigs))
        ∎
    where
    extract-subutxo-netId : ∀ {Γ' s₀' s₁'}
      → Γ' ⊢ s₀' ⇀⦇ stx ,SUBUTXOW⦈ s₁'
      → ∀[ a ∈ dom (WithdrawalsOf stx) ] NetworkIdOf a ≡ NetworkId
    extract-subutxo-netId
      (SUBUTXOW ( _ , _ , _ , _ , _ , _ , _ , _ , _ , _
                , _ , _ , SUBUTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId

    wdrl-netId : ∀[ a ∈ dom (WithdrawalsOf stx) ] NetworkIdOf a ≡ NetworkId
    wdrl-netId = extract-subutxo-netId subutxowStep -- extract from premise 11

    -- Sub-level CERTS-pov
    sub-certs :  getCoin (CertStateOf s₀)
                 ≡ getCoin (CertStateOf s₁) + getCoin (WithdrawalsOf stx)
    sub-certs = CERTS-pov wdrl-netId certsStep

    -- IH
    ih :  getCoin (CertStateOf s₁) ≡ getCoin (CertStateOf sₙ) + sum (map wdrwl sigs)
    ih = SUBLEDGERS-certs-pov isV rest

```
-->


## LEDGER Preservation of Value

```agda
  LEDGER-pov : {Γ : LedgerEnv} {s s' : LedgerState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
```

### LEDGER-I case (invalid transaction)

This follows the Conway pattern with `certState' ≡ certState₀`.
`certState` and `govSt` are unchanged and `applyDirectDeposits` is not applied.
Only the `UTXOW`{.AgdaDatatype} step matters and it preserves `getCoin utxoSt`.

```agda
  LEDGER-pov {Γ} {s} (LEDGER-I (invalid , subStep , utxoStep)) =
    cong (λ u → u + getCoin (CertStateOf s) + coinFromDeposits (CertStateOf s))
         (utxow-pov-invalid utxoStep invalid)
```

### LEDGER-V (valid transaction)

The `LEDGER-V` rule produces

`s' = ⟦ utxoSt₂ , rmOrphanDRepVotes certStateFinal govState₂ , certStateFinal ⟧`

where `certStateFinal = record certState₂ { dState = applyDirectDeposits (allDirectDeposits tx) (DStateOf certState₂) }`.

```agda
  LEDGER-pov {Γ} {s}
    (LEDGER-V {certState₁ = cs₁} {cs₂} {govSt₁} {govSt₂}
              {utxoState₁ = us₁} {utxoState₂ = us₂}
              (valid , subStep , certStep , govStep , utxoStep)) =
    begin
      U₀ + R₀ + D₀                      ≡⟨ step-i ⟩
      U₀ + R₂ + allWdrls + D₀           ≡⟨ arithmetic-1 U₀ R₂ allWdrls D₀ ⟩
      U₀ + allWdrls + D₀ + R₂           ≡⟨ step-iii-iv ⟩
      U₂ + allDirectDeps + D₂ + R₂      ≡⟨ arithmetic-2 U₂ allDirectDeps D₂ R₂ ⟩
      U₂ + (R₂ + allDirectDeps) + D₂    ≡⟨ step-ii ⟩
      U₂ + getCoin certStateFinal + D₂  ∎
      where

      U₀ U₁ U₂ : Coin
      U₀ = getCoin (UTxOStateOf s)
      U₁ = getCoin us₁
      U₂ = getCoin us₂

      D₀ D₂ : Coin
      D₀ = coinFromDeposits (CertStateOf s)
      D₂ = coinFromDeposits cs₂

      R₀ R₂ : Coin
      R₀ = rewardsBalance (DStateOf (CertStateOf s))
      R₂ = rewardsBalance (DStateOf cs₂)

      certStateFinal : CertState
      certStateFinal = record cs₂ { dState = applyDirectDeposits (allDirectDeposits tx) (DStateOf cs₂) }

      allDirectDeps : Coin
      allDirectDeps = getCoin (allDirectDeposits tx)

      subWdrlsCoin : Coin
      subWdrlsCoin = sum (map wdrwl (SubTransactionsOf tx))

      allWdrls : Coin
      allWdrls = getCoin (WithdrawalsOf tx) + subWdrlsCoin

      extract-utxo-netId : ∀ {Γ' s₀' s₁'} → Γ' ⊢ s₀' ⇀⦇ tx ,UTXOW⦈ s₁'
        → ∀[ a ∈ dom (WithdrawalsOf tx) ] NetworkIdOf a ≡ NetworkId
      extract-utxo-netId
        (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId
      extract-utxo-netId
        (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId

      -- combined CERTS: rewardsBalance₀ = rewardsBalance₂ + allWdrls
      combined-certs : getCoin (CertStateOf s) ≡ getCoin cs₂ + allWdrls
      combined-certs =
        begin
        getCoin (CertStateOf s)                                    ≡⟨ SUBLEDGERS-certs-pov valid subStep ⟩
        getCoin cs₁ + subWdrlsCoin                                 ≡⟨ cong (_+ subWdrlsCoin) (CERTS-pov (extract-utxo-netId utxoStep) certStep) ⟩
        getCoin cs₂ + getCoin (WithdrawalsOf tx) + subWdrlsCoin    ≡⟨ +-assoc (getCoin cs₂) _ subWdrlsCoin ⟩
        getCoin cs₂ + (getCoin (WithdrawalsOf tx) + subWdrlsCoin)  ∎


      step-i : U₀ + R₀ + D₀ ≡ U₀ + R₂ + allWdrls + D₀
      step-i =
        begin
        U₀ + R₀ + D₀                ≡⟨ cong (λ x → U₀ + x + D₀ ) combined-certs ⟩
        U₀ + (R₂ + allWdrls) + D₀   ≡⟨ cong (_+ D₀) (sym (+-assoc U₀ R₂ allWdrls)) ⟩
        U₀ + R₂ + allWdrls + D₀     ∎


      -- applyDirectDeposits-rewardsBalance
      step-ii : getCoin us₂ + (R₂ + allDirectDeps) + D₂
                ≡ getCoin us₂ + getCoin certStateFinal + D₂
      step-ii = cong (λ x → getCoin us₂ + x + D₂)
                     (sym (applyDirectDeposits-rewardsBalance (allDirectDeposits tx) (DStateOf cs₂)))



      -- Move the rightmost summand one position left (modulo re-assoc).
      swap-right : ∀ a b c → a + b + c ≡ a + c + b
      swap-right a b c = trans (+-assoc a b c) (trans (cong (a +_) (+-comm b c)) (sym (+-assoc a c b)))

      dc : DepositsChange
      dc = calculateDepositsChange (CertStateOf s) cs₁ cs₂

      dct dcs : ℤ
      dct = DepositsChangeTopOf dc
      dcs = DepositsChangeSubOf dc

      posneg : D₀ + posPart dct + posPart dcs ≡ D₂ + negPart dct + negPart dcs
      posneg = posNeg-deposits (CertStateOf s) cs₁ cs₂

    -- (MECH) UTXOW-V-mechanical, composed with the batch-wide invariants.
      mech :  U₁ + cbalance (outs tx) + TxFeesOf tx +  DonationsOf tx
              ≡ U₂ + cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf tx)

      mech = trans (UTXOW-V-mechanical utxoStep valid (fresh-top-tx-id valid subStep))
                   (cong (U₂ +_) (utxo₁-tx-spend-eq valid refl subStep))


      arithmetic-1 : ∀ a b c d → a + b + c + d ≡ a + c + d + b
      arithmetic-1 a b c d = begin
        a + b + c + d     ≡⟨ cong (_+ d) (+-assoc a b c) ⟩
        a + (b + c) + d   ≡⟨ cong (λ x → a + x + d) (+-comm b c) ⟩
        a + (c + b) + d   ≡⟨ cong (_+ d) (sym (+-assoc a c b)) ⟩
        a + c + b + d     ≡⟨ +-assoc (a + c) b d ⟩
        a + c + (b + d)   ≡⟨ cong ((a + c) +_) (+-comm b d) ⟩
        a + c + (d + b)   ≡⟨ sym (+-assoc (a + c) d b) ⟩
        a + c + d + b     ∎

      arithmetic-2 : ∀ a b c d →  a + b + c + d ≡ a + (d + b) + c
      arithmetic-2 a b c d = begin
        a + b + c + d       ≡⟨ +-assoc (a + b) c d ⟩
        a + b + (c + d)     ≡⟨ cong (a + b +_) (+-comm c d) ⟩
        a + b + (d + c)     ≡⟨ sym (+-assoc (a + b) d c) ⟩
        a + b + d + c       ≡⟨ cong (_+ c) (+-assoc a b d) ⟩
        a + (b + d) + c     ≡⟨ cong (λ x → a + x + c) (+-comm b d) ⟩
        a + (d + b) + c     ∎


      arithmetic-3 : ∀ a b c {d}{e}{f}{g}
        → a + b + c + d + e + f + g ≡ a + e + b + (c + f + g) + d
      arithmetic-3 a b c {d}{e}{f}{g} = begin
        a + b + c + d + e + f + g  ≡⟨ cong (λ x → x + f + g) (swap-right (a + b + c) d e) ⟩
        a + b + c + e + d + f + g  ≡⟨ cong (_+ g) (swap-right (a + b + c + e) d f) ⟩
        a + b + c + e + f + d + g  ≡⟨ swap-right (a + b + c + e + f) d g ⟩
        a + b + c + e + f + g + d  ≡⟨ cong (λ x → x + f + g + d) (swap-right (a + b) c e) ⟩
        a + b + e + c + f + g + d  ≡⟨ cong (λ x → x + c + f + g + d) (swap-right a b e) ⟩
        a + e + b + c + f + g + d  ≡⟨ cong (_+ d) reassoc-middle ⟩
        (a + e) + b + (c + f + g) + d  ∎
        where
        reassoc-middle : a + e + b + c + f + g ≡ (a + e) + b + (c + f + g)
        reassoc-middle = trans (+-assoc (a + e + b + c) f g)
                               (trans (+-assoc (a + e + b) c (f + g))
                                      (cong (a + e + b +_) (sym (+-assoc c f g))))

      arithmetic-4 : ∀ a b c {d}{e}{f}{g}
        → a + b + c + (d + e + f) + g ≡ a + (g + c + b + e + f) + d
      arithmetic-4 a b c {d}{e}{f}{g} = begin
        a + b + c + (d + e + f) + g  ≡˘⟨ cong (_+ g) (+-assoc (a + b + c) (d + e) f) ⟩
        a + b + c + (d + e) + f + g  ≡˘⟨ cong (λ x → x + f + g) (+-assoc (a + b + c) d e) ⟩
        a + b + c + d + e + f + g    ≡⟨ swap-right (a + b + c + d + e) f g ⟩
        a + b + c + d + e + g + f    ≡⟨ cong (_+ f) (swap-right (a + b + c + d) e g) ⟩
        a + b + c + d + g + e + f    ≡⟨ cong (λ x → x + e + f) (swap-right (a + b + c) d g) ⟩
        a + b + c + g + d + e + f    ≡⟨ cong (λ x → x + d + e + f) (swap-right (a + b) c g) ⟩
        a + b + g + c + d + e + f    ≡⟨ cong (λ x → x + c + d + e + f) (swap-right a b g) ⟩
        a + g + b + c + d + e + f    ≡⟨ cong (λ x → x + d + e + f) (swap-right (a + g) b c) ⟩
        a + g + c + b + d + e + f    ≡⟨ cong (_+ f) (swap-right (a + g + c + b) d e) ⟩
        a + g + c + b + e + d + f    ≡⟨ swap-right (a + g + c + b + e) d f ⟩
        a + g + c + b + e + f + d    ≡⟨ cong (λ x → x + b + e + f + d) (+-assoc a g c) ⟩
        a + (g + c) + b + e + f + d  ≡⟨ cong (λ x → x + e + f + d) (+-assoc a (g + c) b) ⟩
        a + (g + c + b) + e + f + d  ≡⟨ cong (λ x → x + f + d) (+-assoc a (g + c + b) e) ⟩
        a + (g + c + b + e) + f + d  ≡⟨ cong (_+ d) (+-assoc a (g + c + b + e) f) ⟩
        a + (g + c + b + e + f) + d  ∎

      arithmetic-5 : ∀ a b c {d}{e}{f}{g}{h}{i}
        → a + (b + c + d + e + f + g + h) + i
        ≡ a +  b + c + d + e + f + g + h  + i
      arithmetic-5 a b c {d}{e}{f}{g}{h}{i} = cong (_+ i) $
        begin
        a + (b + c + d + e + f + g + h)  ≡˘⟨ +-assoc a _ h ⟩
        a + (b + c + d + e + f + g) + h  ≡˘⟨ cong (_+ h) (+-assoc a _ g) ⟩
        a + (b + c + d + e + f) + g + h  ≡˘⟨ cong (λ x → x + g + h) (+-assoc a _ f) ⟩
        a + (b + c + d + e) + f + g + h  ≡˘⟨ cong (λ x → x + f + g + h) (+-assoc a _ e) ⟩
        a + (b + c + d) + e + f + g + h  ≡˘⟨ cong (λ x → x + e + f + g + h) (+-assoc a _ d) ⟩
        a + (b + c) + d + e + f + g + h  ≡˘⟨ cong (λ x → x + d + e + f + g + h) (+-assoc a b c) ⟩
        a + b + c + d + e + f + g + h    ∎

      arithmetic-6 : ∀ a b c {d}{e}{f}{g}
        → a + b + c + d + e + f + g ≡ a + c + g + b + d + e + f
      arithmetic-6 a b c {d}{e}{f}{g} = begin
        a + b + c + d + e + f + g  ≡⟨ cong (λ x → x + d + e + f + g) (swap-right a b c) ⟩
        a + c + b + d + e + f + g  ≡⟨ swap-right (a + c + b + d + e) f g ⟩
        a + c + b + d + e + g + f  ≡⟨ cong (_+ f) (swap-right (a + c + b + d) e g) ⟩
        a + c + b + d + g + e + f  ≡⟨ cong (λ x → x + e + f) (swap-right (a + c + b) d g) ⟩
        a + c + b + g + d + e + f  ≡⟨ cong (λ x → x + d + e + f) (swap-right (a + c) b g) ⟩
        a + c + g + b + d + e + f  ∎

      arithmetic-7 : ∀ a b c {d}{e}{f}{g}
        → a + b + c + (d + e + f + g) ≡ a + b + c + d + e + f + g
      arithmetic-7 a b c {d}{e}{f}{g} = begin
        a + b + c + (d + e + f + g)  ≡˘⟨ +-assoc (a + b + c) (d + e + f) g ⟩
        a + b + c + (d + e + f) + g  ≡˘⟨ cong (_+ g) (+-assoc (a + b + c) (d + e) f) ⟩
        a + b + c + (d + e) + f + g  ≡˘⟨ cong (λ x → x + f + g) (+-assoc (a + b + c) d e) ⟩
        a + b + c + d + e + f + g    ∎

      Ctop Csub : Coin
      Ctop = cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf tx)
      Csub = sum (map (λ stx → cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf stx)) (SubTransactionsOf tx))

      Psub PsubDD : Coin
      Psub = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx) (SubTransactionsOf tx))
      PsubDD = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                        (SubTransactionsOf tx))

      -- === The additive constant =================================================
      E : Coin
      E = Ctop + Psub + posPart dct + posPart dcs

      bat' :  Ctop + allWdrls + Csub + negPart dct + negPart dcs
              ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
              + allDirectDeps + Psub + posPart dct + posPart dcs
      bat' =
        begin
          Ctop + W + Csub + negPart dct + negPart dcs
            ≡⟨⟩
          Ctop + (Wtop + Wsub) + Csub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + Csub + negPart dct + negPart dcs) (sym (+-assoc Ctop Wtop Wsub)) ⟩
          Ctop + Wtop + Wsub + Csub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs) (swap-right (Ctop + Wtop) Wsub Csub) ⟩
          Ctop + Wtop + Csub + Wsub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs) (+-assoc (Ctop + Wtop) Csub Wsub) ⟩
          Ctop + Wtop + (Csub + Wsub) + negPart dct + negPart dcs
            ≡˘⟨ cong  (λ x → Ctop + Wtop + x + negPart dct + negPart dcs)
                      (sum-map-+  (λ stx → cbalance (UTxOOf s ∣ SpendInputsOf stx))
                                  wdrwl (SubTransactionsOf tx)) ⟩
          Ctop + Wtop + CsubW + negPart dct + negPart dcs
            ≡⟨ cong (_+ negPart dcs) (swap-right (Ctop + Wtop) CsubW (negPart dct)) ⟩
          Ctop + Wtop + negPart dct + CsubW + negPart dcs
            ≡⟨ UTXOW-batch-balance-coin utxoStep ⟩
          O + F + DN + DDtop + posPart dct + PsubDD + (posPart dcs)
            ≡⟨ cong  (λ x → O + F + DN + DDtop + posPart dct + x + posPart dcs)
                     (sum-map-+ (λ stx → cbalance (outs stx) + DonationsOf stx)
                                (λ stx → getCoin (DirectDepositsOf stx)) (SubTransactionsOf tx)) ⟩
          O + F + DN + DDtop + posPart dct + (Psub + DDsub) + posPart dcs
            ≡⟨ reshuffle-to-DD ⟩
          O + F + DN + (DDtop + DDsub) + Psub + posPart dct + posPart dcs
            ≡⟨ cong (λ x → O + F + DN + x + Psub + posPart dct + posPart dcs) (sym DD-split) ⟩
          O + F + DN + DD + Psub + posPart dct + posPart dcs
            ∎
          where
          O = cbalance (outs tx)
          F = TxFeesOf tx
          DN = DonationsOf tx
          DD = allDirectDeps
          DDtop = getCoin (DirectDepositsOf tx)
          DDsub = sum (map (λ stx → getCoin (DirectDepositsOf stx)) (SubTransactionsOf tx))
          W = allWdrls
          Wtop = getCoin (WithdrawalsOf tx)
          Wsub = sum (map wdrwl (SubTransactionsOf tx))
          CsubW = sum (map (λ stx → cbalance (UTxOOf s ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))
          reshuffle-to-DD : O + F + DN + DDtop + posPart dct + (Psub + DDsub) + posPart dcs
                          ≡ O + F + DN + (DDtop + DDsub) + Psub + posPart dct + posPart dcs
          reshuffle-to-DD = begin
            O + F + DN + DDtop + (posPart dct) + (Psub + DDsub) + (posPart dcs)
              ≡⟨ cong (_+ (posPart dcs)) (sym (+-assoc (O + F + DN + DDtop + (posPart dct)) Psub DDsub)) ⟩
            O + F + DN + DDtop + (posPart dct) + Psub + DDsub + (posPart dcs)
              ≡⟨ cong (_+ (posPart dcs)) (swap-right (O + F + DN + DDtop + (posPart dct)) Psub DDsub) ⟩
            O + F + DN + DDtop + (posPart dct) + DDsub + Psub + (posPart dcs)
              ≡⟨ cong (λ x → x + Psub + (posPart dcs)) (swap-right (O + F + DN + DDtop) (posPart dct) DDsub) ⟩
            O + F + DN + DDtop + DDsub + (posPart dct) + Psub + (posPart dcs)
              ≡⟨ cong (_+ (posPart dcs)) (swap-right (O + F + DN + DDtop + DDsub) (posPart dct) Psub) ⟩
            O + F + DN + DDtop + DDsub + Psub + (posPart dct) + (posPart dcs)
              ≡⟨ cong (λ x → x + Psub + (posPart dct) + (posPart dcs)) (+-assoc (O + F + DN) DDtop DDsub) ⟩
            O + F + DN + (DDtop + DDsub) + Psub + (posPart dct) + (posPart dcs)
              ∎

      -- === Main chain ============================================================
      LHS+E≡RHS+E : (U₀ + allWdrls + D₀) + E ≡ (U₂ + allDirectDeps + D₂) + E
      LHS+E≡RHS+E = begin
        U₀ + allWdrls + D₀ + E
          ≡⟨ refl ⟩
        U₀ + allWdrls + D₀ + (Ctop + Psub + posPart dct + posPart dcs)
          ≡⟨ arithmetic-7 U₀ allWdrls D₀ ⟩
        U₀ + allWdrls + D₀ + Ctop + Psub + posPart dct + posPart dcs
          ≡⟨ arithmetic-3 U₀ allWdrls D₀ ⟩
        U₀ + Psub + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop
          ≡⟨ cong (λ x → x + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop)
                  (subst  (λ u → U₀ + Psub ≡ U₁ + sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx)) (SubTransactionsOf tx)))
                         (refl {x = UTxOOf s}) (SUBLEDGERS-utxo-coin valid subStep)) ⟩
        U₁ + Csub + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop
          ≡⟨ cong (λ x → (U₁ + Csub) + allWdrls + x + Ctop) posneg ⟩
        U₁ + Csub + allWdrls + (D₂ + negPart dct + negPart dcs) + Ctop
          ≡⟨ arithmetic-4 U₁ Csub allWdrls ⟩
        U₁ + (Ctop + allWdrls + Csub + negPart dct + negPart dcs) + D₂
          ≡⟨ cong (λ x → U₁ + x + D₂) bat' ⟩
        U₁ + (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs) + D₂
          ≡⟨ arithmetic-5 U₁ (cbalance (outs tx)) (TxFeesOf tx) ⟩
        U₁ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs + D₂
          ≡⟨ cong (λ x → x + allDirectDeps + Psub + posPart dct + posPart dcs + D₂) mech ⟩
        U₂ + Ctop + allDirectDeps + Psub + posPart dct + posPart dcs + D₂
          ≡⟨ arithmetic-6 U₂ Ctop allDirectDeps ⟩
        U₂ + allDirectDeps + D₂ + Ctop + Psub + posPart dct + posPart dcs
          ≡˘⟨ arithmetic-7 U₂ allDirectDeps D₂ ⟩
        U₂ + allDirectDeps + D₂ + E
          ∎

      -- deposit accounting + batch UTxO combined
      step-iii-iv : U₀ + allWdrls + D₀ + R₂ ≡ U₂ + allDirectDeps + D₂ + R₂
      step-iii-iv = cong  (_+ R₂)
                          (+-cancelʳ-≡ E (U₀ + allWdrls + D₀) (U₂ + allDirectDeps + D₂) LHS+E≡RHS+E)
```
