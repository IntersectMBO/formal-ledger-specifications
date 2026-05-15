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
DirectDeposits = RewardAddress ⇀ Coin
```

## Balance Intervals {#sec:balance-intervals}

[CIP 159][] allows a transaction to assert that an account's balance falls within a
given interval.  The interval is half-open: `[lb, ub)`.  Either bound may be omitted,
but not both.  The three constructors correspond to the three cases in the CIP's CDDL
`required_balance_interval` type.

```agda
data BalanceInterval : Type where
  ⟦_,_⦆ : Coin → Coin → BalanceInterval
  ⟦_,∞⦆ : Coin → BalanceInterval
  ⟦0,_⦆ : Coin → BalanceInterval
```


### The <span class="AgdaDatatype">InBalanceInterval</span> Predicate {#sec:in-balance-interval}

The `InBalanceInterval` predicate checks whether a given `Coin` value `c` falls
within a `BalanceInterval`.  (Unlike `inInterval` for slots, which uses closed
intervals, balance intervals are **half-open**.)

```agda
data InBalanceInterval (c : Coin) : BalanceInterval → Type where
  bounded       : {lb ub : Coin}  → lb ≤ c → c < ub  → InBalanceInterval c ⟦ lb , ub ⦆
  lowerBounded  : {lb : Coin}     → lb ≤ c           → InBalanceInterval c ⟦ lb ,∞⦆
  upperBounded  : {ub : Coin}     → c < ub           → InBalanceInterval c ⟦0, ub ⦆
```

Note that in the `upperBounded` case, `c` is not only upper-bounded (by `ub`), but
also lower-bounded (by `0`); thus `lowerBounded` is the only *truly* "half-open" case.

<!--
```agda
instance
  Dec-InBalanceInterval : InBalanceInterval ⁇²
  Dec-InBalanceInterval {c} {⟦ lb , ub ⦆} .dec with lb ≤? c | c <? ub
  ... | no ¬p  | _      = no λ where (bounded lbp ubp) → ¬p lbp
  ... | yes p₁ | no ¬p₂ = no λ where (bounded lbp ubp) → ¬p₂ ubp
  ... | yes p₁ | yes p₂ = yes (bounded p₁ p₂)
  Dec-InBalanceInterval {c} {⟦ lo ,∞⦆} .dec with lo ≤? c
  ... | no ¬p = no  (λ where (lowerBounded lbp) → ¬p lbp)
  ... | yes p = yes (lowerBounded p)
  Dec-InBalanceInterval {c} {⟦0, hi ⦆} .dec with c <? hi
  ... | no ¬p = no  (λ where (upperBounded ubp) → ¬p ubp)
  ... | yes p = yes (upperBounded p)

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
