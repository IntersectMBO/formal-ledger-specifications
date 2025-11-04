# Pool Reaping Transition {sec:pool-reaping-transition}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Specification.PoolReap
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where
open import Ledger.Prelude
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Certs govStructure
```
-->

```agda
record PoolReapState : Type where
```
<!--
```agda
  inductive
  constructor ⟦_,_,_,_⟧ᵖ
```
-->
```agda
  field
    utxoSt     : UTxOState   -- utxo state
    acnt       : Acnt        -- accounting
    dState     : DState      -- delegation state
    pState     : PState      -- pool state
```

<!--
```agda
instance
  unquoteDecl HasCast-PoolReapState = derive-HasCast
                [ (quote PoolReapState , HasCast-PoolReapState) ]

private variable
  e lastEpoch : Epoch
  poolReapState : PoolReapState

data
```
-->
```agda
  _⊢_⇀⦇_,POOLREAP⦈_ : ⊤ → PoolReapState → Epoch → PoolReapState → Type where
  POOLREAP : let
    open PoolReapState poolReapState
    open StakePoolParams
    open UTxOState
    open PState
    open DState
    open Acnt
    open PParams

    retired    = pState .retiring ⁻¹ e
    rewardAcnts : DepositPurpose ⇀ Credential
    rewardAcnts =
      mapKeys PoolDeposit $
      mapValues rewardAccount $
      pState .pools ∣ retired

    rewardAcnts' : Credential ⇀ Coin
    rewardAcnts' = aggregateBy (rewardAcnts ˢ) (utxoSt .deposits)

    refunds : Credential ⇀ Coin
    refunds = rewardAcnts' ∣ dom (dState .rewards)

    mRefunds = rewardAcnts' ∣ dom (dState .rewards) ᶜ

    unclaimed  = getCoin mRefunds

    retiredDeposits : ℙ DepositPurpose
    retiredDeposits = mapˢ PoolDeposit retired

    utxoSt' = record utxoSt { deposits = utxoSt .deposits ∣ retiredDeposits ᶜ }

    acnt' = record acnt { treasury = acnt .treasury + unclaimed }

    dState' =
      ⟦ dState .voteDelegs
      , dState .stakeDelegs ∣^ retired ᶜ
      , dState .rewards ∪⁺ refunds
      ⟧

    pState' =
      ⟦ pState .pools ∣ retired ᶜ
      , pState .fPools ∣ retired ᶜ
      , pState .retiring ∣ retired ᶜ
      ⟧

    in
    ────────────────────────────────
    _ ⊢ ⟦ utxoSt , acnt , dState , pState ⟧ ⇀⦇ e ,POOLREAP⦈ ⟦ utxoSt' , acnt' , dState' , pState' ⟧

```
