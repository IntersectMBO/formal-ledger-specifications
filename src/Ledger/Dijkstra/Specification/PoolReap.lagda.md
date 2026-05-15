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
`Acnt`{.AgdaRecord}, `DState`{.AgdaRecord}, `PState`{.AgdaRecord}) shape.

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
    let cs = PoolReapState.certState prs
        ps = CertState.pState cs
        ds = CertState.dState cs
        a  = PoolReapState.acnt prs

        -- Pool key hashes retiring this epoch
        retired : ℙ KeyHash
        retired = PState.retiring ps ⁻¹ e

        -- For each retiring pool kh with deposit c, look up its reward-account
        -- credential from PState.pools and convert to a RewardAddress.
        -- mapPartial handles the case where kh might not be in pools (invariant:
        -- retiring pools are always registered, so lookupᵐ? always succeeds).
        poolPayoutPairs : ℙ (RewardAddress × Coin)
        poolPayoutPairs =
          mapPartial
            (λ (kh , c) →
              (λ params →
                toRewardAddress (StakePoolParams.rewardAccount params) , c)
              <$> lookupᵐ? (PState.pools ps) kh)
            ((PState.deposits ps ∣ retired) ˢ)

        -- Aggregate by reward address (multiple retiring pools may share one).
        poolPayout : RewardAddress ⇀ Coin
        poolPayout = aggregate₊ (poolPayoutPairs ᶠˢ)

        -- Registered reward accounts receive a refund; unregistered amounts go
        -- to the treasury as unclaimed.  Mirrors Conway's pullbackMap pattern.
        refunds : Credential ⇀ Coin
        refunds = pullbackMap poolPayout toRewardAddress (dom (DState.rewards ds))

        unclaimed : Coin
        unclaimed = getCoin poolPayout - getCoin refunds

        -- Updated DState: credit refunds to registered reward accounts.
        dState' : DState
        dState' = record ds { rewards = DState.rewards ds ∪⁺ refunds }

        -- Updated PState: remove retired pools and their deposits.
        pState' : PState
        pState' = record ps
          { pools    = PState.pools    ps ∣ retired ᶜ
          ; fPools   = PState.fPools   ps ∣ retired ᶜ
          ; retiring = PState.retiring ps ∣ retired ᶜ
          ; deposits = PState.deposits ps ∣ retired ᶜ
          }

        certState' : CertState
        certState' = record cs { dState = dState' ; pState = pState' }

        acnt' : Acnt
        acnt' = record a { treasury = Acnt.treasury a + unclaimed }
    in
      ────────────────────────────────
      _ ⊢ prs ⇀⦇ e ,POOLREAP⦈ ⟦ certState' , acnt' ⟧ᵖ
```
