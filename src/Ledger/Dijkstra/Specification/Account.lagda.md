---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Account.lagda.md
---

# Account Types {#sec:account-types}

This module defines the core types introduced by [CIP 159][] (Account Address
Enhancement).

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Account
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Tactic.Derive.DecEq
```
-->

## Direct Deposits {#sec:direct-deposits}

A `DirectDeposits`{.AgdaDatatype} map records the ADA being deposited into account
addresses within a single transaction.  Each entry maps the stake credential of the
receiving account address to a `Coin`{.AgdaDatatype} amount.

```agda
DirectDeposits : Type
DirectDeposits = Credential ⇀ Coin
```

## Balance Intervals {#sec:balance-intervals}

[CIP 159][] allows a transaction to assert that an account's balance falls within a
given interval.  The interval is half-open: `[lower, upper)`.  Either bound may be
omitted, but not both.  The three constructors correspond to the three cases in the
CIP's CDDL `required_balance_interval` type.

```agda
data BalanceInterval : Type where
  both   : Coin → Coin → BalanceInterval   -- [lo, hi)
  lower  : Coin → BalanceInterval          -- [lo, ∞)
  upper  : Coin → BalanceInterval          -- [0, hi)
```


### The `inBalanceInterval` Predicate {#sec:in-balance-interval}

The `inBalanceInterval` predicate checks whether a given `Coin` value `c` falls
within a `BalanceInterval`.  Unlike the existing `inInterval` for slots (which uses
closed bounds `[l, r]`), balance intervals are **half-open**; the lower bound is
inclusive (`lo ≤ c`) and the upper bound is exclusive (`c < hi`, i.e., `suc c ≤ hi`).

```agda
data inBalanceInterval (c : Coin) : BalanceInterval → Type where
  inBoth   : ∀ {lo hi}  → lo ≤ c × suc c ≤ hi   → inBalanceInterval c (both lo hi)
  inLower  : ∀ {lo}     → lo ≤ c                → inBalanceInterval c (lower lo)
  inUpper  : ∀ {hi}     → suc c ≤ hi            → inBalanceInterval c (upper hi)
```

<!--
```agda
instance
  Dec-inBalanceInterval : inBalanceInterval ⁇²
  Dec-inBalanceInterval {c} {both lo hi} .dec with lo ≤? c | suc c ≤? hi
  ... | no ¬p  | _      = no λ where (inBoth (h₁ , h₂)) → ¬p h₁
  ... | yes p₁ | no ¬p₂ = no λ where (inBoth (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (inBoth (p₁ , p₂))
  Dec-inBalanceInterval {c} {lower lo} .dec with lo ≤? c
  ... | no ¬p = no  (λ where (inLower h) → ¬p h)
  ... | yes p = yes (inLower p)
  Dec-inBalanceInterval {c} {upper hi} .dec with suc c ≤? hi
  ... | no ¬p = no  (λ where (inUpper h) → ¬p h)
  ... | yes p = yes (inUpper p)

  unquoteDecl DecEq-BalanceInterval = derive-DecEq
    ((quote BalanceInterval , DecEq-BalanceInterval) ∷ [])
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
