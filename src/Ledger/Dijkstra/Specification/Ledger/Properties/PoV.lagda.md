---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/PoV.lagda.md
---

# LEDGER: Preservation of Value {#sec:ledger-pov}

This module states the preservation-of-value property for the Dijkstra
`LEDGER`{.AgdaDatatype} rule, updated for CIP-159 (direct deposits and
partial withdrawals).

## Key Differences from Conway

1. **`UTxOState` has 3 fields** (no deposits).
2. **Direct deposits are applied inside `CERTS`**, not at the LEDGER level.
   The LEDGER-V final state is `⟦ utxoSt₂ , rmOrphanDRepVotes cs₂ govSt₂ , cs₂ ⟧`.
   Direct-deposit value cancels between `producedBatch` (UTxO side,
   `UTXOW-batch-balance-coin`) and `cs₂` (CertState side, the symmetric `CERTS-pov`).
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
open import Data.Nat.Properties using (+-comm; +-assoc; +-cancelʳ-≡)


open RewardAddress
```
-->

## Proof Architecture

The Dijkstra `LEDGER-pov`{.AgdaFunction} proof does not decompose into independent
`SUBLEDGERS-pov`{.AgdaFunction} and `UTXOW-pov`{.AgdaFunction} pieces, because

1.  individual `SUBUTXO` rules have no balance equation — only the batch-wide
    `consumedBatch ≡ producedBatch` (in `UTXO`) constrains the total;

2.  sub-transactions may individually transfer value between UTxO and CertState
    (via sub-withdrawals, sub-deposits, sub-direct-deposits) without local balancing.

Instead, the proof reasons about the entire `LEDGER-V`{.AgdaInductiveConstructor}
step at once.

### <span class="AgdaInductiveConstructor">LEDGER-V</span> Proof Outline

Given `s  = ⟦ utxoSt₀ , govSt₀ , certState₀ ⟧` and
`s' = ⟦ utxoSt₂ , rmOrphanDRepVotes certState₂ govState₂ , certState₂ ⟧`, we need:

    getCoin utxoSt₀ + rewardsBalance₀ + coinFromDeposits(cs₀)
    ≡ getCoin utxoSt₂ + rewardsBalance₂ + coinFromDeposits(cs₂)

The four key equations are:

1.  **Batch UTxO balance** (`UTXOW-batch-balance-coin`, coin projection of
    `consumedBatch ≡ producedBatch`):

        Σ cbalance(utxo₀ ∣ SpendInputs_i) + Σ wdrls_i + depositRefunds
        ≡ Σ cbalance(outs_i) + txFee + Σ donations_i + Σ directDeps_i + newDeposits

    where the sums range over all transactions in the batch (top + sub), and
    `posPart`/`negPart` of `DepositsChangeTopOf`/`DepositsChangeSubOf` play
    the roles of `newDeposits`/`depositRefunds`.

2.  **Combined CERTS-pov** (`combined-certs`, composing top-level `CERTS-pov`
    with the telescoped sub-tx chain `SUBLEDGERS-certs-pov`):

    `rewardsBalance₀ + Σ directDeps_i ≡ rewardsBalance₂ + Σ wdrls_i`

3.  **Deposit accounting** (`posNeg-deposits`):

    `coinFromDeposits(cs₀) + newDeposits ≡ coinFromDeposits(cs₂) + depositRefunds`

    (per `calculateDepositsChange`, applied component-wise to top and sub.)

4.  **Mechanical UTxO tracking** (`UTXOW-V-mechanical` composed with
    `SUBLEDGERS-utxo-coin`):

        getCoin utxoSt₀ + Σ outs_i + Σ donations_i + txFee
        ≡ getCoin utxoSt₂ + Σ cbalance(utxo₀ ∣ SpendInputs_i)

#### Combining

(1)+(3)+(4) cancel out the deposit-change and UTxO-mechanical terms, yielding:

    U₀ + Σ wdrls_i + D₀ ≡ U₂ + Σ directDeps_i + D₂     (★)

This is `step-ii` in the proof. Adding `R₂` to both sides gives the
intermediate stage of the main chain.

To close, add `Σ directDeps_i` to both sides of the goal (eliminated at the end via
`+-cancelʳ-≡`):

    (U₀ + R₀ + D₀) + Σ directDeps_i
    ≡ U₀ + (R₀ + Σ directDeps_i) + D₀
    ≡ U₀ + (R₂ + Σ wdrls_i) + D₀               by (2)
    ≡ U₀ + Σ wdrls_i + D₀ + R₂                 (rearrange)
    ≡ U₂ + Σ directDeps_i + D₂ + R₂            by (★)
    ≡ (U₂ + R₂ + D₂) + Σ directDeps_i          (rearrange)


### `LEDGER-I` proof outline

`certState` and `govSt` are unchanged.

`SUBLEDGERS` is a no-op (`isValid ≡ false` ⟹ each `SUBLEDGER-I` preserves state).

In the invalid case the UTXOW/UTXO step performs collateral collection only
(no deposit processing — `depositsChange = ⟦ 0ℤ , 0ℤ ⟧`):

`utxoSt₁ = ⟦ utxo₀ ∣ collateral ᶜ , fees + cbalance(utxo₀ ∣ collateral) , donations₀ ⟧`

By `split-balance`,

    getCoin utxoSt₁ ≡ cbalance(utxo₀ ∣ collateral ᶜ) + (fees + cbalance(utxo₀ ∣ collateral)) + donations₀
                    ≡ cbalance utxo₀ + fees + donations₀
                    ≡ getCoin utxoSt₀

So `getCoin s' ≡ getCoin utxoSt₁ + getCoin certState₀ + coinFromDeposits certState₀ = getCoin s`.

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

  -- Sum distribution (standard list algebra):
  ( sum-map-+ : ∀ {A : Type} (f g : A → ℕ) (xs : List A)
      → sum (map (λ x → f x + g x) xs) ≡ sum (map f xs) + sum (map g xs) )

  where
  open Certs-PoV ∪ˡ-res-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique indexedSumᵛ'-∪⁺
  -- Note: The `λ {u}{u'} →` η-wrapper may be needed for Agda eta-expansion issue.

  open UTXOW-PoV tx (λ {u} {u'} → balance-∪ {u} {u'}) split-balance noMintTx noMintSubTx (λ {u} → outs-disjoint {u})
  open ≡-Reasoning

  -- Per-sub-tx withdrawal totals.
  wdrwl : SubLevelTx → Coin
  wdrwl = getCoin ∘ WithdrawalsOf

  -- Per-sub-tx direct-deposit totals.
  ddwl : SubLevelTx → Coin
  ddwl = getCoin ∘ DirectDepositsOf

  -- Move the rightmost summand one position left (modulo re-assoc).
  swap-right : ∀ a b c → a + b + c ≡ a + c + b
  swap-right a b c = trans (+-assoc a b c) (trans (cong (a +_) (+-comm b c)) (sym (+-assoc a c b)))

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
      U₀ + p-stx + p-sum      ≡⟨ cong (_+ p-sum) step-P-C ⟩
      U₁ + c-stx + p-sum      ≡⟨ +-assoc U₁ c-stx p-sum ⟩
      U₁ + (c-stx + p-sum)    ≡⟨ cong (U₁ +_) (+-comm c-stx p-sum) ⟩
      U₁ + (p-sum + c-stx)    ≡⟨ sym (+-assoc U₁ p-sum c-stx) ⟩
      U₁ + p-sum + c-stx      ≡⟨ cong (_+ c-stx) ih ⟩
      Uₙ + c-sum + c-stx      ≡⟨ +-assoc Uₙ c-sum c-stx ⟩
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
    → getCoin (CertStateOf s₀) + sum (map ddwl stxs)
      ≡ getCoin (CertStateOf s₁) + sum (map wdrwl stxs)

  -- Base case: empty list, getCoin cs₀ + 0 ≡ getCoin cs₀ + 0 — refl.
  SUBLEDGERS-certs-pov isV (BS-base Id-nop) = refl

  -- SUBLEDGER-I ruled out by isV.
  SUBLEDGERS-certs-pov isV (BS-ind (SUBLEDGER-I (isI , _)) rest) =
    ⊥-elim (case trans (sym isV) isI of λ ())

  -- Inductive step.
  SUBLEDGERS-certs-pov {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , certsStep , govsStep)) rest) =
      begin
      getCoin (CertStateOf s₀) + (getCoin (DirectDepositsOf stx) + sum (map ddwl sigs))
        ≡⟨ sym (+-assoc (getCoin (CertStateOf s₀))
                        (getCoin (DirectDepositsOf stx))
                        (sum (map ddwl sigs))) ⟩
      (getCoin (CertStateOf s₀) + getCoin (DirectDepositsOf stx)) + sum (map ddwl sigs)
        ≡⟨ cong (_+ sum (map ddwl sigs)) sub-certs ⟩
      (getCoin (CertStateOf s₁) + getCoin (WithdrawalsOf stx)) + sum (map ddwl sigs)
        ≡⟨ swap-right (getCoin (CertStateOf s₁))
                      (getCoin (WithdrawalsOf stx))
                      (sum (map ddwl sigs)) ⟩
      (getCoin (CertStateOf s₁) + sum (map ddwl sigs)) + getCoin (WithdrawalsOf stx)
        ≡⟨ cong (_+ getCoin (WithdrawalsOf stx)) ih ⟩
      (getCoin (CertStateOf sₙ) + sum (map wdrwl sigs)) + getCoin (WithdrawalsOf stx)
        ≡⟨ swap-right (getCoin (CertStateOf sₙ))
                      (sum (map wdrwl sigs))
                      (getCoin (WithdrawalsOf stx)) ⟩
      (getCoin (CertStateOf sₙ) + getCoin (WithdrawalsOf stx)) + sum (map wdrwl sigs)
        ≡⟨ +-assoc (getCoin (CertStateOf sₙ))
                   (getCoin (WithdrawalsOf stx))
                   (sum (map wdrwl sigs)) ⟩
      getCoin (CertStateOf sₙ) + (getCoin (WithdrawalsOf stx) + sum (map wdrwl sigs))
        ∎
    where
    extract-subutxo-netId : ∀ {Γ' s₀' s₁'}
      → Γ' ⊢ s₀' ⇀⦇ stx ,SUBUTXOW⦈ s₁'
      → ∀[ a ∈ dom (WithdrawalsOf stx) ] NetworkIdOf a ≡ NetworkId
    extract-subutxo-netId
      (SUBUTXOW ( _ , _ , _ , _ , _ , _ , _ , _ , _ , _
                , _ , _ , SUBUTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId

    -- Sub-level CERTS-pov (NEW signature: dd on LHS, wdrl on RHS).
    sub-certs : getCoin (CertStateOf s₀) + getCoin (DirectDepositsOf stx)
                ≡ getCoin (CertStateOf s₁) + getCoin (WithdrawalsOf stx)
    sub-certs = CERTS-pov (extract-subutxo-netId subutxowStep) certsStep

    -- IH: same form as the outer goal, just one element shorter.
    ih : getCoin (CertStateOf s₁) + sum (map ddwl sigs)
         ≡ getCoin (CertStateOf sₙ) + sum (map wdrwl sigs)
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

Direct deposits are applied inside `CERTS` (via `POST-CERT`), absorbed into
`certState₂` directly.  The LEDGER-V final state is
`⟦ utxoSt₂ , rmOrphanDRepVotes cs₂ govSt₂ , cs₂ ⟧`.  Direct deposit value cancels
between `producedBatch` (UTxO side, via `UTXOW-batch-balance-coin`) and `certState₂`
(CertState side, via the symmetric `CERTS-pov`).

```agda
  LEDGER-pov {Γ} {s}
    (LEDGER-V {certState₁ = cs₁} {cs₂} {govSt₁} {govSt₂}
              {utxoState₁ = us₁} {utxoState₂ = us₂}
              (valid , subStep , certStep , govStep , utxoStep)) =
    +-cancelʳ-≡ _ _ _
      (begin
        U₀ + R₀ + D₀ + allDirectDeps       ≡⟨ step-i ⟩
        U₀ + R₂ + allWdrls + D₀            ≡⟨ abcd-to-acdb U₀ R₂ allWdrls D₀ ⟩
        U₀ + allWdrls + D₀ + R₂            ≡⟨ step-ii ⟩
        U₂ + allDirectDeps + D₂ + R₂       ≡⟨ abcd-to-adcb U₂ allDirectDeps D₂ R₂ ⟩
        U₂ + R₂ + D₂ + allDirectDeps       ∎)

    where
      abcd-to-acdb : ∀ a b c d → a + b + c + d ≡ a + c + d + b
      abcd-to-acdb a b c d = begin
        a + b + c + d     ≡⟨ cong (_+ d) (+-assoc a b c) ⟩
        a + (b + c) + d   ≡⟨ cong (λ x → a + x + d) (+-comm b c) ⟩
        a + (c + b) + d   ≡⟨ cong (_+ d) (sym (+-assoc a c b)) ⟩
        a + c + b + d     ≡⟨ +-assoc (a + c) b d ⟩
        a + c + (b + d)   ≡⟨ cong ((a + c) +_) (+-comm b d) ⟩
        a + c + (d + b)   ≡⟨ sym (+-assoc (a + c) d b) ⟩
        a + c + d + b     ∎

      abcd-to-adcb : ∀ a b c d → a + b + c + d ≡ a + d + c + b
      abcd-to-adcb a b c d =
        trans (swap-right (a + b) c d)
              (trans (cong (_+ c) (swap-right a b d))
                     (swap-right (a + d) b c))

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

      subDirectDepsCoin : Coin
      subDirectDepsCoin = sum (map ddwl (SubTransactionsOf tx))

      allDirectDeps : Coin
      allDirectDeps = getCoin (DirectDepositsOf tx) + subDirectDepsCoin

      subWdrlsCoin : Coin
      subWdrlsCoin = sum (map wdrwl (SubTransactionsOf tx))

      allWdrls : Coin
      allWdrls = getCoin (WithdrawalsOf tx) + subWdrlsCoin

      extract-utxo-netId : ∀ {Γ' s₀' s₁'} → Γ' ⊢ s₀' ⇀⦇ tx ,UTXOW⦈ s₁'
        → ∀[ a ∈ dom (WithdrawalsOf tx) ] NetworkIdOf a ≡ NetworkId
      extract-utxo-netId
        (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId
      extract-utxo-netId
        (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , netId , _))) = netId

      -- Combined CERTS-pov: pre-batch certState + all direct deposits ≡
      --                     post-CERTS certState + all withdrawals.
      combined-certs : getCoin (CertStateOf s) + allDirectDeps ≡ getCoin cs₂ + allWdrls
      combined-certs =
        begin
          getCoin (CertStateOf s) + allDirectDeps
            ≡⟨ cong (getCoin (CertStateOf s) +_)
                    (+-comm (getCoin (DirectDepositsOf tx)) subDirectDepsCoin) ⟩
          getCoin (CertStateOf s) + (subDirectDepsCoin + getCoin (DirectDepositsOf tx))
            ≡⟨ sym (+-assoc (getCoin (CertStateOf s))
                            subDirectDepsCoin
                            (getCoin (DirectDepositsOf tx))) ⟩
          getCoin (CertStateOf s) + subDirectDepsCoin + getCoin (DirectDepositsOf tx)
            ≡⟨ cong (_+ getCoin (DirectDepositsOf tx)) (SUBLEDGERS-certs-pov valid subStep) ⟩
          getCoin cs₁ + subWdrlsCoin + getCoin (DirectDepositsOf tx)
            ≡⟨ swap-right (getCoin cs₁) subWdrlsCoin (getCoin (DirectDepositsOf tx)) ⟩
          getCoin cs₁ + getCoin (DirectDepositsOf tx) + subWdrlsCoin
            ≡⟨ cong (_+ subWdrlsCoin) (CERTS-pov (extract-utxo-netId utxoStep) certStep) ⟩
          getCoin cs₂ + getCoin (WithdrawalsOf tx) + subWdrlsCoin
            ≡⟨ +-assoc (getCoin cs₂) (getCoin (WithdrawalsOf tx)) subWdrlsCoin ⟩
          getCoin cs₂ + (getCoin (WithdrawalsOf tx) + subWdrlsCoin)
            ∎

      -- step-i: rearrange the LHS (with allDirectDeps inserted) using combined-certs.
      step-i : (U₀ + R₀ + D₀) + allDirectDeps ≡ U₀ + R₂ + allWdrls + D₀
      step-i =
        begin
          U₀ + R₀ + D₀ + allDirectDeps    ≡⟨ swap-right (U₀ + R₀) D₀ allDirectDeps ⟩
          U₀ + R₀ + allDirectDeps + D₀    ≡⟨ cong (_+ D₀) (+-assoc U₀ R₀ allDirectDeps) ⟩
          U₀ + (R₀ + allDirectDeps) + D₀  ≡⟨ cong (λ x → U₀ + x + D₀) combined-certs ⟩
          U₀ + (R₂ + allWdrls) + D₀       ≡⟨ cong (_+ D₀) (sym (+-assoc U₀ R₂ allWdrls)) ⟩
          U₀ + R₂ + allWdrls + D₀         ∎

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
          Ctop + allWdrls + Csub + negPart dct + negPart dcs
            ≡⟨⟩
          Ctop + (Wtop + subWdrlsCoin) + Csub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + Csub + negPart dct + negPart dcs) (sym (+-assoc Ctop Wtop subWdrlsCoin)) ⟩
          Ctop + Wtop + subWdrlsCoin + Csub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs) (swap-right (Ctop + Wtop) subWdrlsCoin Csub) ⟩
          Ctop + Wtop + Csub + subWdrlsCoin + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs) (+-assoc (Ctop + Wtop) Csub subWdrlsCoin) ⟩
          Ctop + Wtop + (Csub + subWdrlsCoin) + negPart dct + negPart dcs
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
          O + F + DN + DDtop + posPart dct + (Psub + subDirectDepsCoin) + posPart dcs
            ≡⟨ reshuffle-to-DD ⟩
          O + F + DN + allDirectDeps + Psub + posPart dct + posPart dcs
            ∎
          where
          O = cbalance (outs tx)
          F = TxFeesOf tx
          DN = DonationsOf tx
          DDtop = getCoin (DirectDepositsOf tx)
          Wtop = getCoin (WithdrawalsOf tx)
          CsubW = sum (map (λ stx → cbalance (UTxOOf s ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))
          reshuffle-to-DD : O + F + DN + DDtop + posPart dct + (Psub + subDirectDepsCoin) + posPart dcs
                          ≡ O + F + DN + (DDtop + subDirectDepsCoin) + Psub + posPart dct + posPart dcs
          reshuffle-to-DD = begin
            O + F + DN + DDtop + (posPart dct) + (Psub + subDirectDepsCoin) + (posPart dcs)
              ≡⟨ cong (_+ (posPart dcs)) (sym (+-assoc (O + F + DN + DDtop + (posPart dct)) Psub subDirectDepsCoin)) ⟩
            O + F + DN + DDtop + (posPart dct) + Psub + subDirectDepsCoin + (posPart dcs)
              ≡⟨ cong (_+ (posPart dcs)) (swap-right (O + F + DN + DDtop + (posPart dct)) Psub subDirectDepsCoin) ⟩
            O + F + DN + DDtop + (posPart dct) + subDirectDepsCoin + Psub + (posPart dcs)
              ≡⟨ cong (λ x → x + Psub + (posPart dcs)) (swap-right (O + F + DN + DDtop) (posPart dct) subDirectDepsCoin) ⟩
            O + F + DN + DDtop + subDirectDepsCoin + (posPart dct) + Psub + (posPart dcs)
              ≡⟨ cong (_+ (posPart dcs)) (swap-right (O + F + DN + DDtop + subDirectDepsCoin) (posPart dct) Psub) ⟩
            O + F + DN + DDtop + subDirectDepsCoin + Psub + (posPart dct) + (posPart dcs)
              ≡⟨ cong (λ x → x + Psub + (posPart dct) + (posPart dcs)) (+-assoc (O + F + DN) DDtop subDirectDepsCoin) ⟩
            O + F + DN + (DDtop + subDirectDepsCoin) + Psub + (posPart dct) + (posPart dcs)
              ∎

      -- === Main chain ============================================================
      LHS+E≡RHS+E : U₀ + allWdrls + D₀ + E ≡ U₂ + allDirectDeps + D₂ + E
      LHS+E≡RHS+E = begin
        U₀ + allWdrls + D₀ + E
          ≡⟨ refl ⟩
        U₀ + allWdrls + D₀ + (Ctop + Psub + posPart dct + posPart dcs)
          ≡⟨ arithmetic-1 U₀ allWdrls D₀ ⟩
        U₀ + allWdrls + D₀ + Ctop + Psub + posPart dct + posPart dcs
          ≡⟨ arithmetic-2 U₀ allWdrls D₀ ⟩
        U₀ + Psub + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop
          ≡⟨ cong  (λ x → x + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop)
                   (subst  (λ u → U₀ + Psub ≡ U₁ + sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx)) (SubTransactionsOf tx)))
                           (refl {x = UTxOOf s})
                           (SUBLEDGERS-utxo-coin valid subStep)) ⟩
        U₁ + Csub + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop
          ≡⟨ cong (λ x → (U₁ + Csub) + allWdrls + x + Ctop) posneg ⟩
        U₁ + Csub + allWdrls + (D₂ + negPart dct + negPart dcs) + Ctop
          ≡⟨ arithmetic-3 U₁ Csub allWdrls ⟩
        U₁ + (Ctop + allWdrls + Csub + negPart dct + negPart dcs) + D₂
          ≡⟨ cong (λ x → U₁ + x + D₂) bat' ⟩
        U₁ + (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs) + D₂
          ≡⟨ arithmetic-4 U₁ (cbalance (outs tx)) (TxFeesOf tx) ⟩
        U₁ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs + D₂
          ≡⟨ cong (λ x → x + allDirectDeps + Psub + posPart dct + posPart dcs + D₂) mech ⟩
        U₂ + Ctop + allDirectDeps + Psub + posPart dct + posPart dcs + D₂
          ≡⟨ arithmetic-5 U₂ Ctop allDirectDeps ⟩
        U₂ + allDirectDeps + D₂ + Ctop + Psub + posPart dct + posPart dcs
          ≡˘⟨ arithmetic-1 U₂ allDirectDeps D₂ ⟩
        U₂ + allDirectDeps + D₂ + E
          ∎
        where
        arithmetic-1 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + (d + e + f + g) ≡ a + b + c + d + e + f + g
        arithmetic-1 a b c {d}{e}{f}{g} = begin
          a + b + c + (d + e + f + g)  ≡˘⟨ +-assoc (a + b + c) (d + e + f) g ⟩
          a + b + c + (d + e + f) + g  ≡˘⟨ cong (_+ g) (+-assoc (a + b + c) (d + e) f) ⟩
          a + b + c + (d + e) + f + g  ≡˘⟨ cong (λ x → x + f + g) (+-assoc (a + b + c) d e) ⟩
          a + b + c + d + e + f + g    ∎

        arithmetic-2 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + d + e + f + g ≡ a + e + b + (c + f + g) + d
        arithmetic-2 a b c {d}{e}{f}{g} = begin
          a + b + c + d + e + f + g    ≡⟨ cong (λ x → x + f + g) (swap-right (a + b + c) d e) ⟩
          a + b + c + e + d + f + g    ≡⟨ cong (_+ g) (swap-right (a + b + c + e) d f) ⟩
          a + b + c + e + f + d + g    ≡⟨ swap-right (a + b + c + e + f) d g ⟩
          a + b + c + e + f + g + d    ≡⟨ cong (λ x → x + f + g + d) (swap-right (a + b) c e) ⟩
          a + b + e + c + f + g + d    ≡⟨ cong (λ x → x + c + f + g + d) (swap-right a b e) ⟩
          a + e + b + c + f + g + d    ≡⟨ cong (_+ d) reassoc-middle ⟩
          a + e + b + (c + f + g) + d  ∎
          where
          reassoc-middle : a + e + b + c + f + g ≡ a + e + b + (c + f + g)
          reassoc-middle = trans (+-assoc (a + e + b + c) f g)
                                 (trans (+-assoc (a + e + b) c (f + g))
                                        (cong (a + e + b +_) (sym (+-assoc c f g))))

        arithmetic-3 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + (d + e + f) + g ≡ a + (g + c + b + e + f) + d
        arithmetic-3 a b c {d}{e}{f}{g} = begin
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

        arithmetic-4 : ∀ a b c {d}{e}{f}{g}{h}{i}
          → a + (b + c + d + e + f + g + h) + i
          ≡ a +  b + c + d + e + f + g + h  + i
        arithmetic-4 a b c {d}{e}{f}{g}{h}{i} = cong (_+ i) $
          begin
          a + (b + c + d + e + f + g + h)  ≡˘⟨ +-assoc a _ h ⟩
          a + (b + c + d + e + f + g) + h  ≡˘⟨ cong (_+ h) (+-assoc a _ g) ⟩
          a + (b + c + d + e + f) + g + h  ≡˘⟨ cong (λ x → x + g + h) (+-assoc a _ f) ⟩
          a + (b + c + d + e) + f + g + h  ≡˘⟨ cong (λ x → x + f + g + h) (+-assoc a _ e) ⟩
          a + (b + c + d) + e + f + g + h  ≡˘⟨ cong (λ x → x + e + f + g + h) (+-assoc a _ d) ⟩
          a + (b + c) + d + e + f + g + h  ≡˘⟨ cong (λ x → x + d + e + f + g + h) (+-assoc a b c) ⟩
          a + b + c + d + e + f + g + h    ∎

        arithmetic-5 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + d + e + f + g ≡ a + c + g + b + d + e + f
        arithmetic-5 a b c {d}{e}{f}{g} = begin
          a + b + c + d + e + f + g  ≡⟨ cong (λ x → x + d + e + f + g) (swap-right a b c) ⟩
          a + c + b + d + e + f + g  ≡⟨ swap-right (a + c + b + d + e) f g ⟩
          a + c + b + d + e + g + f  ≡⟨ cong (_+ f) (swap-right (a + c + b + d) e g) ⟩
          a + c + b + d + g + e + f  ≡⟨ cong (λ x → x + e + f) (swap-right (a + c + b) d g) ⟩
          a + c + b + g + d + e + f  ≡⟨ cong (λ x → x + d + e + f) (swap-right (a + c) b g) ⟩
          a + c + g + b + d + e + f  ∎

      -- deposit accounting + batch UTxO combined
      step-ii : U₀ + allWdrls + D₀ + R₂ ≡ U₂ + allDirectDeps + D₂ + R₂
      step-ii = cong  (_+ R₂)
                      (+-cancelʳ-≡ E (U₀ + allWdrls + D₀) (U₂ + allDirectDeps + D₂) LHS+E≡RHS+E)

```
