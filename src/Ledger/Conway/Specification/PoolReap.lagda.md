# Pool Reaping Transition {sec:pool-reaping-transition}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

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
  constructor ⟦_,_,_,_⟧ᵖ
```
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
```

Recall, `PState`{.AgdaDatatype} is a record with two fields, `pools`{.AgdaField}
and `retiring`{.AgdaField} (maps on `KeyHash`{.AgdaField} with codomains
`PoolParams`{.AgdaRecord} and `Epoch`{.AgdaDatatype}, respectively).
`PoolParams`{.AgdaRecord} is a record with just one field, the
`rewardAddr`{.AgdaField} credential.

```agda
private variable
  e lastEpoch : Epoch
  poolReapState : PoolReapState
  pp : PParams

data _⊢_⇀⦇_,POOLREAP⦈_ : PParams → PoolReapState → Epoch → PoolReapState → Type where
  POOLREAP : let
    open PoolReapState poolReapState
    open PoolParams
    open UTxOState
    open PState
    open DState
    open Acnt
    open PParams

    retired    = pState .retiring ⁻¹ e
    rewardAcnts : KeyHash ⇀ Credential
    rewardAcnts = mapValues rewardAccount $ (pState .pools) ∣ retired

    rewardAcnts' : Credential ⇀ Coin
    rewardAcnts' =
      let combineDeposits : Credential → Coin
          combineDeposits a = ∑ˢ[ _ ← rewardAcnts ⁻¹ a ] pp .poolDeposit
       in mapFromFun combineDeposits (range rewardAcnts)

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

    pState' = ⟦ pState .pools ∣ retired ᶜ , pState .retiring ∣ retired ᶜ ⟧

    in
    ────────────────────────────────
    pp ⊢ ⟦ utxoSt , acnt , dState , pState ⟧ ⇀⦇ e ,POOLREAP⦈
         ⟦ utxoSt' , acnt' , dState' , pState' ⟧
```
