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
   `CERTS`/`GOVS`/`UTXOW`.  Each `SUBLEDGER-V` step must preserve total value.
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

open import Ledger.Dijkstra.Specification.Certs govStructure
-- open import Ledger.Dijkstra.Specification.Certs.Properties.PoV govStructure
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Prelude
open import Axiom.Set.Properties th
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-comm; +-assoc)
```
-->

## HasCoin instances

In Dijkstra, `UTxOState` has 3 fields (no deposits):

```agda
instance
  HasCoin-UTxOState : HasCoin UTxOState
  HasCoin-UTxOState .getCoin s = getCoin (UTxOOf s) + FeesOf s + DonationsOf s

  HasCoin-LedgerState : HasCoin LedgerState
  HasCoin-LedgerState .getCoin s =
    getCoin (LedgerState.utxoSt s) + getCoin (LedgerState.certState s)
```

## Key Lemma: `applyDirectDeposits` increases `getCoin` by deposit total

Since `applyDirectDeposits dd ds = record ds { rewards = RewardsOf ds ∪⁺ dd }`,
and `getCoin` for `CertState` is `rewardsBalance ∘ DStateOf = ∑[ x ← rewards ] x`,
we need:

<!--
```agda
module _
  (tx : TopLevelTx) (let open Tx tx)

  -- Shared assumptions (same pattern as Conway)
  ( indexedSumᵛ'-∪  :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                       → disjoint (dom m) (dom m')
                       → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
  ( applyWithdrawals-pov  :
      (wdrls : Withdrawals) (rwds : Rewards)
      → mapˢ RewardAddress.stake (dom wdrls) ⊆ dom rwds
      → (∀[ (addr , amt) ∈ wdrls ˢ ]
          amt ≤ maybe id 0 (lookupᵐ? rwds (RewardAddress.stake addr)))
      → getCoin rwds ≡ getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls )
  ( ≡ᵉ-getCoinˢ  :
      {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄
      (s : ℙ (A × Coin)) {f : A → A'}
      → InjectiveOn (dom s) f
      → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )

  -- CIP-159–specific assumption: ∪⁺ adds getCoin values
  ( applyDirectDeposits-getCoin :
      (dd : DirectDeposits) (ds : DState)
      → getCoin (applyDirectDeposits dd ds) ≡ getCoin ds + getCoin dd )

  where
```
-->

```agda
  Claim-applyDirectDeposits-getCoin :
    ∀ (dd : DirectDeposits) (ds : DState)
    → getCoin (applyDirectDeposits dd ds) ≡ getCoin ds + getCoin dd
  Claim-applyDirectDeposits-getCoin = ?
```

## LEDGER Preservation of Value

```agda
  LEDGER-pov : {Γ : LedgerEnv} {s s' : LedgerState}
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
    → getCoin s ≡ getCoin s'
```

### Proof sketch

**LEDGER-V case** (valid transaction):

The `LEDGER-V` rule produces:

`s' = ⟦ utxoSt₂ , rmOrphanDRepVotes certStateFinal govState₂ , certStateFinal ⟧`

where `certStateFinal = record certState₂ { dState = applyDirectDeposits (allDirectDeposits tx) (DStateOf certState₂) }`.

The proof decomposes as:

1. `SUBLEDGERS` preserves total value:
   `getCoin utxoSt₀ + getCoin certState₀ ≡ getCoin utxoSt₁ + getCoin certState₁`
   (Each `SUBLEDGER-V` step preserves it via sub-CERTS-pov + sub-UTXO balance.)

2. Top-level `CERTS-pov`:
   `getCoin certState₁ ≡ getCoin certState₂ + getCoin (WithdrawalsOf tx)`

3. `UTXO` premise `consumedBatch ≡ producedBatch` gives:
   `getCoin utxoSt₁ + getCoin (WithdrawalsOf tx) + ... ≡ getCoin utxoSt₂ + getCoin (allDirectDeposits tx) + ...`
   (The withdrawal terms on the consumed side cancel with CERTS-pov;
    the direct deposit terms on the produced side cancel with step 4.)

4. `applyDirectDeposits` adds exactly `getCoin (allDirectDeposits tx)` to certState₂:
   `getCoin certStateFinal ≡ getCoin certState₂ + getCoin (allDirectDeposits tx)`

5. **Cancellation**: direct deposits appear in `producedBatch` (UTxO side) and
   in `certStateFinal` (CertState side), so they cancel in the total.

**LEDGER-I case** (invalid transaction):

`certState` is unchanged and `applyDirectDeposits` is not applied.
Follows the Conway pattern with `certState' ≡ certState₀`.

<!--
```agda
  LEDGER-pov = ?
```
-->
