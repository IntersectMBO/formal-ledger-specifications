---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entities/Properties/PoV.lagda.md
---

## Properties of `ENTITIES`: Preservation of Value {#thm:ENTITIES-PoV}

This module proves preservation of value for the `ENTITIES`{.AgdaDatatype} rule.

In the Dijkstra era, `ENTITIES`{.AgdaDatatype} wraps the inner `CERTS`{.AgdaDatatype}
step with per-transaction withdrawal and direct-deposit handling.  Withdrawals and
deposits are applied to the rewards balance before and after `CERTS`{.AgdaDatatype},
respectively.  The "value-flow" equation proved below captures the net effect of all
three components on the cert-state rewards balance (`coinFromRewards`{.AgdaFunction};
the deposits are accounted separately).

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Entities.Properties.PoV
  (gs : GovStructure) (open GovStructure gs) where

open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-comm; +-assoc)

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Account gs
  using (DirectDeposits; DirectDepositsOf)
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Entities gs
open import Ledger.Dijkstra.Specification.Entities.Properties.ApplyToRewardsPoV gs
  using (module ApplyToRewards-PoV)

open RewardAddress
open ≡-Reasoning

private variable
  A       : Type
  dCerts  : List DCert

```
-->

## The `ENTITIES-pov` module

`ENTITIES-pov`{.AgdaFunction} inherits the three module parameters of
`ApplyToRewards-PoV`{.AgdaModule} (which are "obvious" facts which probably ought to
be proved upstream in the `agda-sets` library).

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

  -- Value preservation of the `CERTS` rule to be proved in `Certs.Properties.PoV`.
  ( CERTS-pov : ∀ {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → coinFromRewards s ≡ coinFromRewards s' )
  where
  open ApplyToRewards-PoV ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique public
```

## The `ENTITIES-pov` theorem

**Informally**.  Let `s`{.AgdaBound}, `s'`{.AgdaBound} be `CertStates`{.AgdaRecord}
related by `ENTITIES`{.AgdaDatatype} under some `CertEnv`{.AgdaRecord}
`Γ`{.AgdaBound}, and let `wd-netId`{.AgdaBound} and `dd-netId`{.AgdaBound} be the
per-batch `NetworkId`{.AgdaFunction} witnesses for `WithdrawalsOf Γ`{.AgdaBound} and
`DirectDepositsOf Γ`{.AgdaBound} (produced at the call site by the
`SUBUTXOW`{.AgdaDatatype} or `UTXOW`{.AgdaDatatype} step).  Then,

    coinFromRewards s + getCoin (DirectDepositsOf Γ) ≡ coinFromRewards s' + getCoin (WithdrawalsOf Γ)

**Formally**.

```agda
  ENTITIES-pov : {Γ : CertEnv} {s s' : CertState}
    → ∀[ a ∈ dom (WithdrawalsOf Γ)    ] NetworkIdOf a ≡ NetworkId
    → ∀[ a ∈ dom (DirectDepositsOf Γ) ] NetworkIdOf a ≡ NetworkId
    → Γ ⊢ s ⇀⦇ dCerts ,ENTITIES⦈ s'
    → coinFromRewards s + getCoin (DirectDepositsOf Γ) ≡ coinFromRewards s' + getCoin (WithdrawalsOf Γ)
```

**Proof**.

```agda
  ENTITIES-pov {Γ = Γ}
    {s  = ⟦ ⟦ _ , _ , r₀ , _ ⟧ᵈ , _ , _ ⟧ᶜˢ} {s' = ⟦ ⟦ _ , _ , _  , _ ⟧ᵈ , _ , _ ⟧ᶜˢ}
    wd-netId dd-netId (ENTITIES { rewards₁ = r₁ } (fst , wdrls⊆ , amts≤ , certsStep , ddCreds⊆ )) =
    begin
      getCoin r₀ + dd
        ≡⟨ cong (_+ dd) (applyWithdrawals-pov (WithdrawalsOf Γ) r₀ wdrls⊆ wd-netId amts≤) ⟩
      getCoin aw + wdrls + dd
        ≡⟨ +-assoc (getCoin aw) wdrls dd ⟩
      getCoin aw + (wdrls + dd)
        ≡⟨ cong (getCoin aw +_) (+-comm wdrls dd) ⟩
      getCoin aw + (dd + wdrls)
        ≡˘⟨ +-assoc (getCoin  aw) dd wdrls ⟩
      getCoin aw + dd + wdrls
        ≡⟨ cong (λ x → (x + dd) + wdrls) (CERTS-pov certsStep) ⟩
      (getCoin r₁ + dd) + wdrls
        ≡˘⟨ cong (_+ wdrls) (applyDirectDeposits-pov (DirectDepositsOf Γ) r₁ ddCreds⊆) ⟩
      getCoin (applyDirectDeposits (DirectDepositsOf Γ) r₁) + wdrls
        ∎
    where
    dd  wdrls : Coin
    dd = getCoin (DirectDepositsOf Γ)
    wdrls = getCoin (WithdrawalsOf Γ)
    aw : Rewards
    aw = applyWithdrawals (WithdrawalsOf Γ) r₀
```
