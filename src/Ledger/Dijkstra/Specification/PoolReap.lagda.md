---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/PoolReap.lagda.md
---


# Pool Reaping Transition {#sec:pool-reaping-transition}

## Key Difference from Conway/Specification

In Dijkstra, deposits live in `CertState`{.AgdaRecord} (in
`DState.deposits`{.AgdaField} and `PState.deposits`{.AgdaField}), *not* in
`UTxOState`{.AgdaRecord}.  Specifically, pool retirement deposits are tracked in
`PState.deposits`{.AgdaField}, and govAction deposits are tracked in
`GState.deposits`{.AgdaField}.  Therefore, `govActionReturns`{.AgdaFunction} is
computed from `GState.deposits`{.AgdaField}, and pool-related payouts come from
`PState.deposits`{.AgdaField}, and the `UTxOState`{.AgdaRecord} is *not* modified by
the `POOLREAP`{.AgdaDatatype} transition.

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction
module Ledger.Dijkstra.Specification.PoolReap
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
toRewardAddress : Credential → RewardAddress
toRewardAddress x = record { net = NetworkId ; stake = x }

```
-->

The `PoolReapState`{.AgdaRecord} type denotes what the `POOLREAP`{.AgdaDatatype}
transition reads and writes.  In Dijkstra, deposits live in CertState, so we include
the full `CertState`{.AgdaRecord} plus the account record.

Thus, the `PoolReapState`{.AgdaRecord} here carries (`DState`{.AgdaRecord},
`PState`{.AgdaRecord}, `GState`{.AgdaRecord}, `Acnt`{.AgdaRecord})
as opposed to the Conway `PoolReapState`{.AgdaRecord} (`UTxOState`{.AgdaRecord},
Acnt{.AgdaRecord}, `DState`{.AgdaRecord}, `PState`{.AgdaRecord}) shape.

```agda
record PoolReapState : Type where
  constructor ⟦_,_⟧ᵖ
  field
    certState  : CertState
    acnt       : Acnt

private variable
  e          : Epoch
  prs        : PoolReapState

data _⊢_⇀⦇_,POOLREAP⦈_ : ⊤ → PoolReapState → Epoch → PoolReapState → Type where
  POOLREAP :
    -- Use explicit field access throughout to avoid namespace clashes:
    -- DState, PState, and GState all have a field named `deposits`.
    let cs = PoolReapState.certState prs
        ps = CertState.pState cs
        ds = CertState.dState cs
        a  = PoolReapState.acnt prs

        -- Pool key hashes retiring this epoch
        retired : ℙ KeyHash
        retired = PState.retiring ps ⁻¹ e

        -- Redirect pool deposits to the reward address of each retiring pool.
        -- toRewardAddress looks up the rewardAccount in StakePoolParams.
        -- aggregate₊ sums coins going to the same reward address.
        poolPayout : Credential ⇀ Coin
        poolPayout = {!!}
        -- aggregate₊ ( mapˢ (λ (kh , c) → (PoolsOf ps) , c)
        --                      ((DepositsOf ps ∣ retired) ˢ)
        --                ᶠˢ )

        refunds  : Credential ⇀ Coin
        refunds  = poolPayout ∣ dom (RewardsOf ds)

        unclaimed : Coin
        unclaimed = getCoin poolPayout - getCoin refunds

        -- Updated DState: credit refunds to registered reward accounts
        dState' : DState
        dState' = record ds { rewards = RewardsOf ds ∪⁺ refunds }

        -- Updated PState: remove retired pools and their deposits
        pState' : PState
        pState' = ⟦ PoolsOf ps ∣ retired ᶜ , PState.fPools ps ∣ retired ᶜ , RetiringOf ps ∣ retired ᶜ , DepositsOf ps ∣ retired ᶜ ⟧

        certState' : CertState
        certState' = record cs { dState = dState' ; pState = pState' }

        acnt' : Acnt
        acnt' = record a { treasury = TreasuryOf a + unclaimed }
    in
      ────────────────────────────────
      _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ ⟦ certState' , acnt' ⟧ᵖ

```
