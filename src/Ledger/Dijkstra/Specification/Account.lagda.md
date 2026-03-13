---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Account.lagda.md
---

# Account Types {#sec:account-types}

This module defines the core types introduced by [CIP 159][] (Account Address
Enhancement).

??? info "Implementation Note: Phase 1 (ADA-only)"

    In Phase 1 (ADA-only), we define `DirectDeposits`, `BalanceInterval`,
    `AccountBalanceIntervals`, and the `inBalanceInterval` predicate.

    Phase 2 (multi-asset) extensions are marked with comments but left
    for a future issue.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Account
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
```
-->

## Direct Deposits {#sec:direct-deposits}

A `DirectDeposits`{.AgdaDatatype} map records the ADA being deposited into account
(reward) addresses within a single transaction.  Each entry maps the stake credential
of the receiving reward address to a `Coin` amount.

```agda
DirectDeposits : Type
DirectDeposits = Credential ⇀ Coin
```

??? info "Implementation Note"

    **Phase 2 upgrade.** In Phase 2, `DirectDeposits` will be upgraded
    to `Credential ⇀ Value` to support multi-asset deposits.
## Balance Intervals {#sec:balance-intervals}

[CIP 159][] allows a transaction to assert that an account's balance falls within a
given interval.  The interval is half-open: `[lower, upper)`.  Either bound may be
omitted, but not both.

We represent a `BalanceInterval` as a pair of optional bounds, following the same
`Maybe × Maybe` convention used by the existing validity-interval type
(`Maybe Slot × Maybe Slot`).

```agda
BalanceInterval : Type
BalanceInterval = Maybe Coin × Maybe Coin
```
<!--
```agda
-- (just lo , just hi)  represents  [lo, hi)
-- (just lo , nothing)  represents  [lo, ∞)
-- (nothing , just hi)  represents  [0, hi)
-- (nothing , nothing)  is excluded by the well-formedness predicate below.
```
-->

### Well-Formedness {#sec:balance-interval-wf}

[CIP 159][] requires that at least one bound is present.  The
`validBalanceInterval`{.AgdaFunction} predicate excludes the `(nothing, nothing)`
case.

```agda
validBalanceInterval : BalanceInterval → Type
validBalanceInterval (just _  , _      ) = ⊤
validBalanceInterval (nothing , just _ ) = ⊤
validBalanceInterval (nothing , nothing) = ⊥
```

<!--
```agda
validBalanceInterval? : ∀ bi → Dec (validBalanceInterval bi)
validBalanceInterval? (just _  , _      ) = yes tt
validBalanceInterval? (nothing , just _ ) = yes tt
validBalanceInterval? (nothing , nothing) = no (λ ())
```
-->

### The `inBalanceInterval` Predicate {#sec:in-balance-interval}

The `inBalanceInterval` predicate checks whether a given `Coin` value `c` falls
within a `BalanceInterval`.  Unlike the existing `inInterval` for slots (which uses
closed bounds `[l, r]`), balance intervals are **half-open**: the lower bound is
inclusive (`lo ≤ c`) and the upper bound is exclusive (`c < hi`, i.e., `suc c ≤ hi`).

Since every valid balance interval has at least one bound, there is no `none`
constructor.

```agda
data inBalanceInterval (c : Coin) : BalanceInterval → Type where
  both   : ∀ {lo hi}  → lo ≤ c × suc c ≤ hi  → inBalanceInterval c (just lo  , just hi)
  lower  : ∀ {lo}     → lo ≤ c               → inBalanceInterval c (just lo  , nothing)
  upper  : ∀ {hi}     → suc c ≤ hi           → inBalanceInterval c (nothing  , just hi)
```

<!--
```agda
instance
  Dec-inBalanceInterval : inBalanceInterval ⁇²
  Dec-inBalanceInterval {c} {just lo , just hi} .dec with lo ≤? c | suc c ≤? hi
  ... | no ¬p  | _      = no λ where (both (h₁ , h₂)) → ¬p h₁
  ... | yes p₁ | no ¬p₂ = no λ where (both (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (both (p₁ , p₂))
  Dec-inBalanceInterval {c} {just lo , nothing} .dec with lo ≤? c
  ... | no ¬p = no  (λ where (lower h) → ¬p h)
  ... | yes p = yes (lower p)
  Dec-inBalanceInterval {c} {nothing , just hi} .dec with suc c ≤? hi
  ... | no ¬p = no  (λ where (upper h) → ¬p h)
  ... | yes p = yes (upper p)
  Dec-inBalanceInterval {c} {nothing , nothing} .dec = no (λ ())
```
-->

## Account Balance Intervals {#sec:account-balance-intervals}

An `AccountBalanceIntervals` map records the balance-interval assertions that a
transaction makes, one per account credential.

```agda
AccountBalanceIntervals : Type
AccountBalanceIntervals = Credential ⇀ BalanceInterval
```



[CIP 159]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-0159
