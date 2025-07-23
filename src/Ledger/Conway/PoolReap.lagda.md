# Pool Reaping Transition {sec:pool-reaping-transition}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.PoolReap
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where
open import Ledger.Prelude
open import Ledger.Conway.Utxo txs abs
open import Ledger.Conway.Certs govStructure
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
    -- open LState ls
    open PoolReapState poolReapState
    open UTxOState
    open PState
    open DState
    open Acnt
    open PParams

    -- retired := dom (retiring⁻¹ e) = { hk : (hk , e) ∈ retiring }  (Shelley Fig 41)
    retired    = (pState .retiring) ⁻¹ e


    -- pr = { hk ↦ (poolDeposit pp) | hk ∈ retired }
    --    = { (hk , poolDeposit pp) ∈ KeyHash × Coin | hk ∈ retired }  (Shelley Fig 41)
    pr = constMap retired  (pp .poolDeposit)

    -- rewardAcnts := { (hk , poolRAcnt pool) ∈ KeyHash × Credential | (hk , pool) ∈ poolParams ↾ retired }  (Shelley Fig 41)
    -- rewardAcnts : KeyHash ⇀ Credential
    rewardAcnts = (pState .pools) ∣ retired

    -- rewardAcnts' : RwdAddr ⇀ Coin
    -- rewardAcnts' =?= constMap (range (rewardAcnts ˢ)) (pp .poolDeposit)



    -- refunds := rewardAcnts' ↾ dom rewards         (recall, rewards : Credential ⇀ Coin is stored in DState))
    refunds    = _ -- pullbackMap (esW .withdrawals) toRwdAddr (dom (dState .rewards))
    --(recall, pullbackMap : (m : Map A B) → ⦃ ∀ {x} → (x ∈ dom (m ˢ)) ⁇ ⦄ → (A' → A) → Set A' → Map A' B)

    -- refunds =?= rewardAcnts' ∣ (dom (dState .rewards))

    -- mRefunds := rewardAcnts' ↾ (dom rewards)ᶜ

--    unclaimed  = getCoin (esW .withdrawals) - getCoin refunds
    -- cf. Shelley Fig 41: unclaimed := ∑ {c | ∃ hk (hk , c) ∈ mRefunds }

    utxoSt' = ⟦ utxoSt .utxo , utxoSt .fees , utxoSt .deposits , 0 ⟧
    -- cf. Shelley Fig 41: utxoSt' .deposits = utxoSt .deposits - (unclaimed + getCoin refunds)
    --                                       = utxoSt .deposits - getCoin (esW .withdrawals)

    acnt' = _
    -- record acnt
--      { treasury  = acnt .treasury ∸ totWithdrawals + utxoSt .donations + unclaimed }
    -- cf. Shelley spec fig 41: acnt' = acnt .treasury + utxoSt .donations + unclaimed

    dState' = ⟦ dState .voteDelegs , dState .stakeDelegs ,  dState .rewards ∪⁺ refunds ⟧

    pState' = ⟦ pState .pools ∣ retired ᶜ , pState .retiring ∣ retired ᶜ ⟧

    in
    ────────────────────────────────
    pp ⊢ ⟦ utxoSt , acnt , dState , pState ⟧ ⇀⦇ e ,POOLREAP⦈ ⟦ utxoSt' , acnt' , dState' , pState' ⟧
```
