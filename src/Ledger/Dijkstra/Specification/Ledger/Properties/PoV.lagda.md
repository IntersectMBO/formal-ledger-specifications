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
open import Ledger.Dijkstra.Specification.Utxow txs abs

open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-comm; +-assoc)

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
-- Batch accounting: the coin projection of consumedBatch ≡ producedBatch,
-- combined with mechanical UTxO tracking and deposit accounting,
-- gives us the full value preservation for the valid case.
--
BatchUtxoAccounting : Type
BatchUtxoAccounting =
  {tx : TopLevelTx} {Γ : LedgerEnv} {s : LedgerState} {utxoSt₁ : UTxOState} {certState₁ certState₂ : CertState}
  {govSt₁ : GovState} {utxoSt₂ : UTxOState}
  → let
      utxo₀ = UTxOOf (UTxOStateOf s)
      dc = calculateDepositsChange (CertStateOf s) certState₁ certState₂
      subWdrlsCoin : Coin
      subWdrlsCoin = sum (map (λ (stx : SubLevelTx) → getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))
      allWdrls = getCoin (WithdrawalsOf tx) + subWdrlsCoin
      allDirectDeps = getCoin (allDirectDeposits tx)
    in
      ⟦ LedgerEnv.slot Γ , PParamsOf Γ , TreasuryOf Γ , utxo₀ , dc
      , getAllScripts tx utxo₀
      , setToMap (mapˢ < hash , id > (getAllData tx))
      , RewardsOf (CertStateOf s) ⟧ ⊢ utxoSt₁ ⇀⦇ tx ,UTXOW⦈ utxoSt₂
      -- SUBLEDGERS step (needed to relate utxoSt₀ to utxoSt₁):
      → ∀ {subΓ : SubLedgerEnv}
      → subΓ ⊢ s ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoSt₁ , govSt₁ , certState₁ ⟧ˡ
      → getCoin (UTxOStateOf s) + allWdrls + coinFromDeposits (CertStateOf s)
        ≡ getCoin utxoSt₂ + allDirectDeps + coinFromDeposits certState₂

module _
  (tx : TopLevelTx) (let open Tx tx)

  -- Shared assumptions (same pattern as Conway)
  ( ∪ˡ-res-lookup-preserve : ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ (m ∣ ❴ c ❵ ᶜ)) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin : ∀ (m : Withdrawals) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique : ∀ (m : Withdrawals) → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )

  -- Sub-lemmas (assumptions for now) --

  -- CIP-159–specific assumption: ∪⁺ adds getCoin values
  ( applyDirectDeposits-rewardsBalance :
      (dd : DirectDeposits) (ds : DState)
      → rewardsBalance (applyDirectDeposits dd ds) ≡ rewardsBalance ds + getCoin dd )

  -- Assumption (for now) encapsulating steps 1, 3, and 4 from the outline:
  -- relates UTxO-side change to withdrawals, direct deposits, and deposit changes.
  ( batch-utxo-accounting : BatchUtxoAccounting )

  -- LEDGER-I: collateral collection preserves getCoin utxoSt
  ( utxow-pov-invalid :
      ∀ {Γ : UTxOEnv} {s s' : UTxOState}
      → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
      → IsValidFlagOf tx ≡ false
      → getCoin s ≡ getCoin s' )

  where
    open Certs-PoV ∪ˡ-res-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique
    open ≡-Reasoning


    SUBLEDGERS-certs-pov :
      ∀ {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
      → SubLedgerEnv.isTopLevelValid Γ ≡ true
      → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
      → getCoin (CertStateOf s₀)
        ≡ getCoin (CertStateOf s₁) + sum (map (λ (stx : SubLevelTx) → getCoin (WithdrawalsOf stx)) stxs)

    -- Base case: empty list, getCoin cs₀ ≡ getCoin cs₀ + 0
    SUBLEDGERS-certs-pov isV (BS-base Id-nop) = sym (+-identityʳ _)

    -- Inductive step: one SUBLEDGER step + rest
    SUBLEDGERS-certs-pov {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ} step rest) with step
    ... | SUBLEDGER-I (isI , _) = ⊥-elim (case trans (sym isV) isI of λ ())
    ... | SUBLEDGER-V {stx = stx} (isV' , subutxowStep , certsStep , govsStep) =
      let f = λ (stx : SubLevelTx) → getCoin (WithdrawalsOf stx)
      in
      begin
        getCoin (CertStateOf s₀)
          ≡⟨ sub-certs ⟩
        getCoin (CertStateOf s₁) + getCoin (WithdrawalsOf stx)
          ≡⟨ cong (_+ getCoin (WithdrawalsOf stx)) ih ⟩
        (getCoin (CertStateOf sₙ) + sum (map f sigs)) + getCoin (WithdrawalsOf stx)
          ≡⟨ +-assoc (getCoin (CertStateOf sₙ)) _ _ ⟩
        getCoin (CertStateOf sₙ) + (sum (map f sigs) + getCoin (WithdrawalsOf stx))
          ≡⟨ cong (getCoin (CertStateOf sₙ) +_) (+-comm _ (getCoin (WithdrawalsOf stx))) ⟩
        getCoin (CertStateOf sₙ) + (getCoin (WithdrawalsOf stx) + sum (map f sigs))
          ∎
      where
      extract-subutxo-netId : ∀ {Γ' s₀' s₁'} → Γ' ⊢ s₀' ⇀⦇ stx ,SUBUTXOW⦈ s₁'
            → ∀[ a ∈ dom (WithdrawalsOf stx) ] NetworkIdOf a ≡ NetworkId
      extract-subutxo-netId (SUBUTXOW (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , SUBUTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId

      wdrl-netId : ∀[ a ∈ dom (WithdrawalsOf stx) ] NetworkIdOf a ≡ NetworkId
      wdrl-netId = extract-subutxo-netId subutxowStep -- extract from subutxowStep → SUBUTXOW → SUBUTXO premise 11

      -- Sub-level CERTS-pov
      sub-certs : getCoin (CertStateOf s₀) ≡ getCoin (CertStateOf s₁) + getCoin (WithdrawalsOf stx)
      sub-certs = CERTS-pov wdrl-netId certsStep

      -- IH
      ih : getCoin (CertStateOf s₁) ≡  getCoin (CertStateOf sₙ)
                                       + sum (map (λ (stx : SubLevelTx) → getCoin (WithdrawalsOf stx)) sigs)
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
    -- LEDGER-V: equational reasoning
    LEDGER-pov {Γ} {s}
      (LEDGER-V {certState₁ = cs₁} {cs₂} {govSt₁} {govSt₂}
                {utxoState₁ = us₁} {utxoState₂ = us₂}
                (valid , subStep , certStep , govStep , utxoStep)) =
      begin
        getCoin (UTxOStateOf s) + rewardsBalance (DStateOf (CertStateOf s)) + coinFromDeposits (CertStateOf s)  ≡⟨ step-i ⟩
        getCoin (UTxOStateOf s) + rewardsBalance (DStateOf cs₂) + allWdrls + coinFromDeposits (CertStateOf s)   ≡⟨ arithmetic-1 ⟩
        getCoin (UTxOStateOf s) + allWdrls + coinFromDeposits (CertStateOf s) + rewardsBalance (DStateOf cs₂)   ≡⟨ step-iii-iv ⟩
        getCoin us₂ + allDirectDeps + coinFromDeposits cs₂ + rewardsBalance (DStateOf cs₂)                      ≡⟨ arithmetic-2 ⟩
        getCoin us₂ + (rewardsBalance (DStateOf cs₂) + allDirectDeps) + coinFromDeposits cs₂                    ≡⟨ step-ii ⟩
        getCoin us₂ + getCoin certStateFinal + coinFromDeposits cs₂                                             ∎
      where
      certStateFinal : CertState
      certStateFinal = record cs₂ { dState = applyDirectDeposits (allDirectDeposits tx) (DStateOf cs₂) }

      subWdrlsCoin : Coin
      subWdrlsCoin = sum (map (λ (stx : SubLevelTx) → getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))

      allWdrls : Coin
      allWdrls = getCoin (WithdrawalsOf tx) + subWdrlsCoin

      allDirectDeps : Coin
      allDirectDeps = getCoin (allDirectDeposits tx)

      extract-utxo-netId : ∀ {Γ' s₀' s₁'} → Γ' ⊢ s₀' ⇀⦇ tx ,UTXOW⦈ s₁'
        → ∀[ a ∈ dom (WithdrawalsOf tx) ] NetworkIdOf a ≡ NetworkId
      extract-utxo-netId (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId
      extract-utxo-netId (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId

      -- combined CERTS: rewardsBalance₀ = rewardsBalance₂ + allWdrls
      combined-certs : getCoin (CertStateOf s) ≡ getCoin cs₂ + allWdrls
      combined-certs =
        let
          sub = SUBLEDGERS-certs-pov valid subStep
          top-wdrl-netId : ∀[ a ∈ dom (WithdrawalsOf tx) ] NetworkIdOf a ≡ NetworkId
          top-wdrl-netId = extract-utxo-netId utxoStep
          top = CERTS-pov top-wdrl-netId certStep
        in begin
          getCoin (CertStateOf s)              ≡⟨ sub ⟩
          getCoin cs₁ + subWdrlsCoin           ≡⟨ cong (_+ subWdrlsCoin) top ⟩
          (getCoin cs₂ + getCoin (WithdrawalsOf tx)) + subWdrlsCoin
            ≡⟨ +-assoc (getCoin cs₂) _ subWdrlsCoin ⟩
          getCoin cs₂ + (getCoin (WithdrawalsOf tx) + subWdrlsCoin)
            ∎

      step-i : getCoin (UTxOStateOf s) + rewardsBalance (DStateOf (CertStateOf s)) + coinFromDeposits (CertStateOf s)
               ≡ getCoin (UTxOStateOf s) + rewardsBalance (DStateOf cs₂) + allWdrls + coinFromDeposits (CertStateOf s)
      step-i =
        let a  = getCoin (UTxOStateOf s)
            b  = rewardsBalance (DStateOf (CertStateOf s))
            b₂ = rewardsBalance (DStateOf cs₂)
            c  = coinFromDeposits (CertStateOf s)
        in
          begin
          a + b + c                 ≡⟨ cong (λ x → a + x + c) combined-certs ⟩
          a + (b₂ + allWdrls) + c   ≡⟨ cong (_+ c) (sym (+-assoc a b₂ allWdrls)) ⟩
          a + b₂ + allWdrls + c     ∎

      -- deposit accounting + batch UTxO combined
      step-iii-iv :  getCoin (UTxOStateOf s) + allWdrls + coinFromDeposits (CertStateOf s) + rewardsBalance (DStateOf cs₂)
                     ≡ getCoin us₂ + allDirectDeps + coinFromDeposits cs₂ + rewardsBalance (DStateOf cs₂)
      step-iii-iv = cong (_+ rewardsBalance (DStateOf cs₂)) (batch-utxo-accounting {Γ = Γ} {certState₂ = cs₂} utxoStep  subStep)

      arithmetic-1 :
        getCoin (UTxOStateOf s) + rewardsBalance (DStateOf cs₂) + allWdrls + coinFromDeposits (CertStateOf s)
        ≡ getCoin (UTxOStateOf s) + allWdrls + coinFromDeposits (CertStateOf s) + rewardsBalance (DStateOf cs₂)
      arithmetic-1 =
        let a = getCoin (UTxOStateOf s)
            b = rewardsBalance (DStateOf cs₂)
            c = allWdrls
            d = coinFromDeposits (CertStateOf s)
        in begin
          a + b + c + d         ≡⟨ cong (_+ d) (+-assoc a b c) ⟩
          a + (b + c) + d       ≡⟨ cong (λ x → a + x + d) (+-comm b c) ⟩
          a + (c + b) + d       ≡⟨ cong (_+ d) (sym (+-assoc a c b)) ⟩
          (a + c) + b + d       ≡⟨ +-assoc (a + c) b d ⟩
          (a + c) + (b + d)     ≡⟨ cong ((a + c) +_) (+-comm b d) ⟩
          (a + c) + (d + b)     ≡⟨ sym (+-assoc (a + c) d b) ⟩
          a + c + d + b         ∎

      arithmetic-2 : getCoin us₂ + allDirectDeps + coinFromDeposits cs₂ + rewardsBalance (DStateOf cs₂)
                     ≡ getCoin us₂ + (rewardsBalance (DStateOf cs₂) + allDirectDeps) + coinFromDeposits cs₂
      arithmetic-2 =
        let a = getCoin us₂
            b = allDirectDeps
            c = coinFromDeposits cs₂
            d = rewardsBalance (DStateOf cs₂)
        in
        begin
          a + b + c + d       ≡⟨ +-assoc (a + b) c d ⟩
          a + b + (c + d)     ≡⟨ cong ((a + b) +_) (+-comm c d) ⟩
          a + b + (d + c)     ≡⟨ sym (+-assoc (a + b) d c) ⟩
          a + b + d + c       ≡⟨ cong (_+ c) (+-assoc a b d) ⟩
          a + (b + d) + c     ≡⟨ cong (λ x → a + x + c) (+-comm b d) ⟩
          a + (d + b) + c     ∎

      -- applyDirectDeposits-rewardsBalance
      step-ii : getCoin us₂ + (rewardsBalance (DStateOf cs₂) + allDirectDeps) + coinFromDeposits cs₂
                ≡ getCoin us₂ + getCoin certStateFinal + coinFromDeposits cs₂
      step-ii = cong (λ x → getCoin us₂ + x + coinFromDeposits cs₂)
                     (sym (applyDirectDeposits-rewardsBalance (allDirectDeposits tx) (DStateOf cs₂)))

```
