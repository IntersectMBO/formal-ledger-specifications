---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/PoolReap.lagda.md
---

# The <span class="AgdaDatatype">POOLREAP</span> Transition System {#sec:pool-reaping-transition}

The pool reap transition system is responsible for removing pools
slated for retirement in the given epoch.

In Dijkstra, pool registration deposits are tracked as part of pool state
(i.e., `PState`{.AgdaDatatype}).

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Transaction
module Ledger.Dijkstra.Specification.PoolReap
  (txs : _) (open TransactionStructure txs)
  where
open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
```
-->

```agda
record PoolReapState : Type where
  constructor ⟦_,_,_⟧ᵖ
  field
    acnt    : Acnt
    dState  : DState
    pState  : PState
```

<!--
```agda
instance
  unquoteDecl HasCast-PoolReapState = derive-HasCast
                [ (quote PoolReapState , HasCast-PoolReapState) ]

private variable
  e : Epoch
  treasury reserves : Coin
  pools fPools : Pools
  retiring : KeyHash ⇀ Epoch
  depositsᵖ : KeyHash ⇀ Coin
  voteDelegs : VoteDelegs
  stakeDelegs : StakeDelegs
  rewards : Rewards
  depositsᵈ : Credential ⇀ Coin

open StakePoolParams using (rewardAccount)
```
-->

```agda
data _⊢_⇀⦇_,POOLREAP⦈_ : ⊤ → PoolReapState → Epoch → PoolReapState → Type where
  POOLREAP :
    let
        retired : ℙ KeyHash
        retired = retiring ⁻¹ e

        rewardAccounts : KeyHash ⇀ Credential
        rewardAccounts = mapValues rewardAccount (pools ∣ retired)

        rewardAccounts' : Credential ⇀ Coin
        rewardAccounts' = aggregateBy (rewardAccounts ˢ) depositsᵖ

        refunds : Credential ⇀ Coin
        refunds = rewardAccounts' ∣ dom (rewards)

        unclaimed : Coin
        unclaimed = getCoin (rewardAccounts' ∣ dom (rewards) ᶜ)
    in
      ────────────────────────────────
      _ ⊢ ⟦ ⟦ treasury , reserves ⟧ , ⟦ voteDelegs , stakeDelegs , rewards , depositsᵈ ⟧ , ⟦ pools , fPools , retiring , depositsᵖ ⟧ ⟧ ⇀⦇ e ,POOLREAP⦈ ⟦ ⟦ treasury + unclaimed , reserves ⟧ , ⟦ voteDelegs , stakeDelegs ∣^ retired ᶜ , rewards ∪⁺ refunds , depositsᵈ ⟧ , ⟦ pools ∣ retired ᶜ , fPools ∣ retired ᶜ , retiring ∣ retired ᶜ , depositsᵖ ∣ retired ᶜ ⟧ ⟧
```
