---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entities/Properties/PoV.lagda.md
---

## Properties of `ENTITIES`: Preservation of Value {#thm:ENTITIES-PoV}

This module proves preservation of value for the `ENTITIES`{.AgdaDatatype} and
`SUBENTITIES`{.AgdaDatatype} rules.  Each rule wraps the inner `CERTS`{.AgdaDatatype}
step with the withdrawal and direct-deposit handling of the transaction given as the
signal, and its value accounting splits into the two components of
`getCoin`{.AgdaFunction} on a `CertState`{.AgdaRecord}:

+  **rewards flow** (`SUBENTITIES-pov`{.AgdaFunction}, `ENTITIES-pov`{.AgdaFunction}):
   the rewards balance grows by the transaction's direct deposits and shrinks by its
   withdrawals — `CERTS`{.AgdaDatatype} itself preserves it;

+  **deposit flow** (`SUBENTITIES-deposits-pov`{.AgdaFunction},
   `ENTITIES-deposits-pov`{.AgdaFunction}): the deposit pots change by exactly the
   new deposits minus the refunds of the transaction's certificates, in the closed
   form (`newCertDeposits`{.AgdaFunction}/`refundCertDeposits`{.AgdaFunction}) used
   by the `UTXO`{.AgdaDatatype} batch-balance equation.

`SUBENTITIES-pov-total`{.AgdaFunction} and `ENTITIES-pov-total`{.AgdaFunction}
combine the two into a single equation for the full `CertState`{.AgdaRecord} coin.

Two hypotheses appear, both about the rule's *input* state:

+  a *no-truncation* bound `amts≤`{.AgdaBound}: each withdrawal amount is bounded by
   the account's balance.  `applyWithdrawals`{.AgdaFunction} uses truncating
   subtraction (`_∸_`), so without this bound a withdrawal could claim more coin than
   actually leaves the rewards pot.  The rules' own premises bound withdrawals
   against the *pre-batch* snapshot `rewards₀`{.AgdaField} (exactly, per account, in
   top-level legacy mode), which does not by itself bound them against the input
   state of a later step in the batch, so the bound is taken as a hypothesis here.

+  `PoolDepositsRegistered`{.AgdaFunction}: every pool-deposit entry belongs to a
   registered pool (see `Certs`{.AgdaModule}).  Without it,
   `POOL-reg`{.AgdaInductiveConstructor}'s left-biased pot update can swallow a
   deposit that the closed form counts.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)

module Ledger.Dijkstra.Specification.Entities.Properties.PoV
  (txs : TransactionStructure) (open TransactionStructure txs) where

open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-comm; +-assoc)

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Entities.Properties.ApplyToRewardsPoV txs
  using (module ApplyToRewards-PoV)

open RewardAddress
open ≡-Reasoning

private variable
  txTop : TopLevelTx
  txSub : SubLevelTx
```
-->

## The `ENTITIES-PoV` module

`ENTITIES-PoV`{.AgdaModule} inherits the three module parameters of
`ApplyToRewards-PoV`{.AgdaModule} and assumes four facts about the inner
`CERTS`{.AgdaDatatype} relation:

+  `CERTS-rewards-pov`: `CERTS` preserves the rewards balance;
+  `CERTS-deposits-pov`: over a `CERTS` run, the deposit pots satisfy the closed-form
   accounting *pre + new ≡ post + refunds*, with `newCertDeposits`{.AgdaFunction}
   threading the run's initial registered-pool set;
+  `CERTS-deposits-registered`: `CERTS` preserves
   `PoolDepositsRegistered`{.AgdaFunction};
+  `CERTS-new-thread`: `newCertDeposits`{.AgdaFunction} over an appended certificate
   list splits at a `CERTS` run boundary, the second half against the run's *final*
   pool set — this is what lets per-step accounting compose across a batch.

```agda
module ENTITIES-PoV
  ( ∪ˡ-lookup-preserve :
      (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ m) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin :
    (m : RewardAddress ⇀ Coin) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique :
      (m : RewardAddress ⇀ Coin)
      → ∀[ a ∈ dom (m ˢ) ] NetworkIdOf a ≡ NetworkId
      → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )

  -- Value preservation of the `CERTS` rule --

  ( CERTS-rewards-pov : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → coinFromRewards s ≡ coinFromRewards s' )

  ( CERTS-deposits-pov : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → PoolDepositsRegistered s
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
      → coinFromDeposits s  + newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) dCerts
      ≡ coinFromDeposits s' + refundCertDeposits (PParamsOf Γ) dCerts )

  ( CERTS-deposits-registered : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → PoolDepositsRegistered s
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
      → PoolDepositsRegistered s' )

  ( CERTS-new-thread : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
      → (ys : List DCert)
      → newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) (dCerts ++ ys)
      ≡ newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) dCerts
        + newCertDeposits (PParamsOf Γ) (dom (PoolsOf s')) ys )
  where
  open ApplyToRewards-PoV ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique public
```

## Rewards flow

**Informally**.  Let `s`{.AgdaBound}, `s'`{.AgdaBound} be `CertStates`{.AgdaRecord}
related by `SUBENTITIES`{.AgdaDatatype} with signal `txSub`{.AgdaBound}, and suppose
each of `txSub`{.AgdaBound}'s withdrawal amounts is bounded by the corresponding
account balance in `s`{.AgdaBound} (the `amts≤`{.AgdaBound} no-truncation
hypothesis).  Then,

    coinFromRewards s + getCoin (DirectDepositsOf txSub)
      ≡ coinFromRewards s' + getCoin (WithdrawalsOf txSub)

All other ingredients — the `NetworkId`{.AgdaFunction} witnesses and the two domain
conditions — are premises of the rule itself.

**Formally**.

```agda
  SUBENTITIES-pov : {Γ : SubEntitiesEnv} {s s' : CertState}
    → ∀[ (addr , amt) ∈ (WithdrawalsOf txSub) ˢ ]
        amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s) (stake addr))
    → Γ ⊢ s ⇀⦇ txSub ,SUBENTITIES⦈ s'
    → coinFromRewards s  + getCoin (DirectDepositsOf txSub)
      ≡ coinFromRewards s' + getCoin (WithdrawalsOf txSub)
```

**Proof**.

```agda
  SUBENTITIES-pov {txSub = txSub} {s = ⟦ ⟦ _ , _ , r₀ , _ ⟧ᵈ , _ , _ ⟧ᶜˢ}
    amts≤
    (SUBENTITIES {rewards' = r₁} (wd-netId , _ , wdrls⊆ , _ , _ , certsStep , _ , ddCreds⊆)) =
    begin
      getCoin r₀ + dd
        ≡⟨ cong (_+ dd) (applyWithdrawals-pov (WithdrawalsOf txSub) r₀ wdrls⊆ wd-netId amts≤) ⟩
      getCoin aw + wdrls + dd
        ≡⟨ +-assoc (getCoin aw) wdrls dd ⟩
      getCoin aw + (wdrls + dd)
        ≡⟨ cong (getCoin aw +_) (+-comm wdrls dd) ⟩
      getCoin aw + (dd + wdrls)
        ≡˘⟨ +-assoc (getCoin  aw) dd wdrls ⟩
      getCoin aw + dd + wdrls
        ≡⟨ cong (λ x → (x + dd) + wdrls) (CERTS-rewards-pov certsStep) ⟩
      (getCoin r₁ + dd) + wdrls
        ≡˘⟨ cong (_+ wdrls) (applyDirectDeposits-pov (DirectDepositsOf txSub) r₁ ddCreds⊆) ⟩
      getCoin (applyDirectDeposits (DirectDepositsOf txSub) r₁) + wdrls
        ∎
    where
    dd  wdrls : Coin
    dd = getCoin (DirectDepositsOf txSub)
    wdrls = getCoin (WithdrawalsOf txSub)
    aw : Rewards
    aw = applyWithdrawals (WithdrawalsOf txSub) r₀
```

The top-level analogue, with signal `txTop`{.AgdaBound}, by the same argument.  (In
legacy mode the rule's own premise forces each top-level withdrawal to equal the
account's current balance, which implies the `amts≤`{.AgdaBound} hypothesis; in
normal mode the rule bounds withdrawals only against the pre-batch
`rewards₀`{.AgdaField}, so the hypothesis is genuinely extra information.)

```agda
  ENTITIES-pov : {Γ : EntitiesEnv} {s s' : CertState}
    → ∀[ (addr , amt) ∈ (WithdrawalsOf txTop) ˢ ]
        amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s) (stake addr))
    → Γ ⊢ s ⇀⦇ txTop ,ENTITIES⦈ s'
    → coinFromRewards s  + getCoin (DirectDepositsOf txTop)
      ≡ coinFromRewards s' + getCoin (WithdrawalsOf txTop)

  ENTITIES-pov {txTop = txTop} {s = ⟦ ⟦ _ , _ , r₀ , _ ⟧ᵈ , _ , _ ⟧ᶜˢ}
    amts≤
    (ENTITIES {rewards' = r₁} (wd-netId , wdrls⊆ , _ , _ , _ , _ , certsStep , _ , ddCreds⊆)) =
    begin
      getCoin r₀ + dd
        ≡⟨ cong (_+ dd) (applyWithdrawals-pov (WithdrawalsOf txTop) r₀ wdrls⊆ wd-netId amts≤) ⟩
      getCoin aw + wdrls + dd
        ≡⟨ +-assoc (getCoin aw) wdrls dd ⟩
      getCoin aw + (wdrls + dd)
        ≡⟨ cong (getCoin aw +_) (+-comm wdrls dd) ⟩
      getCoin aw + (dd + wdrls)
        ≡˘⟨ +-assoc (getCoin  aw) dd wdrls ⟩
      getCoin aw + dd + wdrls
        ≡⟨ cong (λ x → (x + dd) + wdrls) (CERTS-rewards-pov certsStep) ⟩
      (getCoin r₁ + dd) + wdrls
        ≡˘⟨ cong (_+ wdrls) (applyDirectDeposits-pov (DirectDepositsOf txTop) r₁ ddCreds⊆) ⟩
      getCoin (applyDirectDeposits (DirectDepositsOf txTop) r₁) + wdrls
        ∎
    where
    dd  wdrls : Coin
    dd = getCoin (DirectDepositsOf txTop)
    wdrls = getCoin (WithdrawalsOf txTop)
    aw : Rewards
    aw = applyWithdrawals (WithdrawalsOf txTop) r₀
```

## Deposit flow

Withdrawals, direct deposits, and the vote-delegation restriction only touch the
rewards map, so a `SUBENTITIES`{.AgdaDatatype}/`ENTITIES`{.AgdaDatatype} step changes
the deposit pots exactly as its inner `CERTS`{.AgdaDatatype} run does: the closed-form
accounting, the preservation of `PoolDepositsRegistered`{.AgdaFunction}, and the
`newCertDeposits`{.AgdaFunction} split all transport from the corresponding `CERTS`
assumptions, definitionally.

```agda
  SUBENTITIES-deposits-pov : {Γ : SubEntitiesEnv} {s s' : CertState}
    → PoolDepositsRegistered s
    → Γ ⊢ s ⇀⦇ txSub ,SUBENTITIES⦈ s'
    → coinFromDeposits s
        + newCertDeposits (SubEntitiesEnv.pp Γ) (dom (PoolsOf s)) (DCertsOf txSub)
      ≡ coinFromDeposits s'
        + refundCertDeposits (SubEntitiesEnv.pp Γ) (DCertsOf txSub)
  SUBENTITIES-deposits-pov registered (SUBENTITIES (_ , _ , _ , _ , _ , certsStep , _ , _)) =
    CERTS-deposits-pov registered certsStep

  ENTITIES-deposits-pov : {Γ : EntitiesEnv} {s s' : CertState}
    → PoolDepositsRegistered s
    → Γ ⊢ s ⇀⦇ txTop ,ENTITIES⦈ s'
    → coinFromDeposits s
        + newCertDeposits (EntitiesEnv.pp Γ) (dom (PoolsOf s)) (DCertsOf txTop)
      ≡ coinFromDeposits s'
        + refundCertDeposits (EntitiesEnv.pp Γ) (DCertsOf txTop)
  ENTITIES-deposits-pov registered (ENTITIES (_ , _ , _ , _ , _ , _ , certsStep , _ , _)) =
    CERTS-deposits-pov registered certsStep

  SUBENTITIES-deposits-registered : {Γ : SubEntitiesEnv} {s s' : CertState}
    → PoolDepositsRegistered s
    → Γ ⊢ s ⇀⦇ txSub ,SUBENTITIES⦈ s'
    → PoolDepositsRegistered s'
  SUBENTITIES-deposits-registered registered (SUBENTITIES (_ , _ , _ , _ , _ , certsStep , _ , _)) =
    CERTS-deposits-registered registered certsStep

  ENTITIES-deposits-registered : {Γ : EntitiesEnv} {s s' : CertState}
    → PoolDepositsRegistered s
    → Γ ⊢ s ⇀⦇ txTop ,ENTITIES⦈ s'
    → PoolDepositsRegistered s'
  ENTITIES-deposits-registered registered (ENTITIES (_ , _ , _ , _ , _ , _ , certsStep , _ , _)) =
    CERTS-deposits-registered registered certsStep

  SUBENTITIES-new-thread : {Γ : SubEntitiesEnv} {s s' : CertState}
    → Γ ⊢ s ⇀⦇ txSub ,SUBENTITIES⦈ s'
    → (ys : List DCert)
    → newCertDeposits (SubEntitiesEnv.pp Γ) (dom (PoolsOf s)) (DCertsOf txSub ++ ys)
      ≡ newCertDeposits (SubEntitiesEnv.pp Γ) (dom (PoolsOf s)) (DCertsOf txSub)
        + newCertDeposits (SubEntitiesEnv.pp Γ) (dom (PoolsOf s')) ys
  SUBENTITIES-new-thread (SUBENTITIES (_ , _ , _ , _ , _ , certsStep , _ , _)) =
    CERTS-new-thread certsStep
```

## Full value flow

Adding the two flows gives preservation of value for the full `CertState`{.AgdaRecord}
coin (recall `getCoin`{.AgdaFunction} on a `CertState`{.AgdaRecord} is
`coinFromRewards`{.AgdaFunction} plus `coinFromDeposits`{.AgdaFunction}): the input
coin, plus the value flowing in (direct deposits and new certificate deposits),
equals the output coin, plus the value flowing out (withdrawals and refunds).

```agda
  private
    combine-flows : (r d r' d' : Coin) {i₁ i₂ o₁ o₂ : Coin}
      → r + i₁ ≡ r' + o₁
      → d + i₂ ≡ d' + o₂
      → (r + d) + i₁ + i₂ ≡ (r' + d') + o₁ + o₂
    combine-flows r d r' d' {i₁} {i₂} {o₁} {o₂} eq₁ eq₂ = begin
      (r + d) + i₁ + i₂     ≡⟨ +-assoc (r + d) i₁ i₂ ⟩
      (r + d) + (i₁ + i₂)   ≡⟨ +-interleave {r} ⟩
      (r + i₁) + (d + i₂)   ≡⟨ cong₂ _+_ eq₁ eq₂ ⟩
      (r' + o₁) + (d' + o₂) ≡˘⟨ +-interleave {r'} ⟩
      (r' + d') + (o₁ + o₂) ≡˘⟨ +-assoc (r' + d') o₁ o₂ ⟩
      (r' + d') + o₁ + o₂   ∎

  SUBENTITIES-pov-total : {Γ : SubEntitiesEnv} {s s' : CertState}
    → PoolDepositsRegistered s
    → ∀[ (addr , amt) ∈ (WithdrawalsOf txSub) ˢ ]
        amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s) (stake addr))
    → Γ ⊢ s ⇀⦇ txSub ,SUBENTITIES⦈ s'
    → getCoin s + getCoin (DirectDepositsOf txSub)
        + newCertDeposits (SubEntitiesEnv.pp Γ) (dom (PoolsOf s)) (DCertsOf txSub)
      ≡ getCoin s' + getCoin (WithdrawalsOf txSub)
        + refundCertDeposits (SubEntitiesEnv.pp Γ) (DCertsOf txSub)
  SUBENTITIES-pov-total {s = s} {s' = s'} registered amts≤ step =
    combine-flows (coinFromRewards s) (coinFromDeposits s) (coinFromRewards s') (coinFromDeposits s')
                  (SUBENTITIES-pov amts≤ step) (SUBENTITIES-deposits-pov registered step)

  ENTITIES-pov-total : {Γ : EntitiesEnv} {s s' : CertState}
    → PoolDepositsRegistered s
    → ∀[ (addr , amt) ∈ (WithdrawalsOf txTop) ˢ ]
        amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s) (stake addr))
    → Γ ⊢ s ⇀⦇ txTop ,ENTITIES⦈ s'
    → getCoin s + getCoin (DirectDepositsOf txTop)
        + newCertDeposits (EntitiesEnv.pp Γ) (dom (PoolsOf s)) (DCertsOf txTop)
      ≡ getCoin s' + getCoin (WithdrawalsOf txTop)
        + refundCertDeposits (EntitiesEnv.pp Γ) (DCertsOf txTop)
  ENTITIES-pov-total {s = s} {s' = s'} registered amts≤ step =
    combine-flows (coinFromRewards s) (coinFromDeposits s) (coinFromRewards s') (coinFromDeposits s')
                  (ENTITIES-pov amts≤ step) (ENTITIES-deposits-pov registered step)
```
