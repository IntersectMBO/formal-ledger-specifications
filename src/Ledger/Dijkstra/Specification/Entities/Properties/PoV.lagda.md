---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entities/Properties/PoV.lagda.md
---

# Properties of `ENTITIES`: Preservation of Value {#thm:ENTITIES-PoV}

This module proves preservation of value for the `ENTITIES`{.AgdaDatatype} rule
introduced in [CIP-159-11d][PR-1201].  In the Dijkstra era, `ENTITIES`{.AgdaDatatype}
wraps the inner `CERTS`{.AgdaDatatype} step with per-transaction withdrawal- and
direct-deposit-handling: withdrawals are applied to the rewards balance *before*
`CERTS`{.AgdaDatatype}, direct deposits *after*.  The value-flow equation captures
the net effect of all three components on `getCoin (CertState)`:

    getCoin s + getCoin (DirectDepositsOf Γ) ≡ getCoin s' + getCoin (WithdrawalsOf Γ)

Intuitively, the deposits added on the right are matched by the withdrawals removed
on the left — they "pass through" the rule.

## Proof Strategy

Case-split on the single `ENTITIES`{.AgdaInductiveConstructor} constructor to expose
the three internal phases.  Letting `r₀`{.AgdaBound} denote the initial rewards map
and `r₁`{.AgdaBound} the rewards map after `CERTS`{.AgdaDatatype}, the equational
chain is

+  `applyWithdrawals-pov`{.AgdaFunction} on `(wdrls, r₀)` rewrites `getCoin r₀` as
   `getCoin (applyWithdrawals wdrls r₀) + getCoin wdrls`.
+  `CERTS-pov`{.AgdaFunction} on the inner step rewrites
   `getCoin (applyWithdrawals wdrls r₀)` as `getCoin r₁` (the rewards balance is
   preserved by the closure of `CERT`{.AgdaDatatype}).
+  `applyDirectDeposits-pov`{.AgdaFunction} on `(dd, r₁)` rewrites
   `getCoin (applyDirectDeposits dd r₁)` as `getCoin r₁ + getCoin dd`.

The three rewrites compose into the desired equation modulo associativity and
commutativity of `+` on `Coin`.

[PR-1201]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1201

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Entities.Properties.PoV
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Account gs -- using (DirectDeposits)
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Entities gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)

open import Ledger.Dijkstra.Specification.Certs.Properties.PoV gs
open import Ledger.Dijkstra.Specification.Entities.Properties.ApplyToRewardsPoV gs

open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-comm; +-assoc; +-0-monoid)

open RewardAddress
open ≡-Reasoning

private variable
  A      : Type
  dCerts : List DCert

instance
  _ = +-0-monoid
```
-->

## The `ENTITIES-pov` module

`ENTITIES-pov`{.AgdaFunction} inherits the three set/map module parameters of
`ApplyToRewards-PoV`{.AgdaModule} — they are needed by
`applyWithdrawals-pov`{.AgdaFunction} and `applyDirectDeposits-pov`{.AgdaFunction} —
and threads them through unchanged.

```agda
module ENTITIES-PoV
  ( ∪ˡ-lookup-preserve :
      (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ m) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin :
      (m : RewardAddress ⇀ Coin)
      → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique :
      (m : RewardAddress ⇀ Coin)
      → ∀[ a ∈ dom (m ˢ) ] NetworkIdOf a ≡ NetworkId
      → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )
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

    getCoin s + getCoin (DirectDepositsOf Γ) ≡ getCoin s' + getCoin (WithdrawalsOf Γ)

**Formally**.

```agda
  ENTITIES-pov : {Γ : CertEnv} {s s' : CertState}
    → ∀[ a ∈ dom (WithdrawalsOf Γ)    ] NetworkIdOf a ≡ NetworkId
    → ∀[ a ∈ dom (DirectDepositsOf Γ) ] NetworkIdOf a ≡ NetworkId
    → Γ ⊢ s ⇀⦇ dCerts ,ENTITIES⦈ s'
    → getCoin s + getCoin (DirectDepositsOf Γ) ≡ getCoin s' + getCoin (WithdrawalsOf Γ)
```

**Proof**.  Case-split on the single `ENTITIES`{.AgdaInductiveConstructor}
constructor to expose the inner `CERTS`{.AgdaDatatype} step and the threaded states.

<!--
```agda
  ENTITIES-pov {Γ = Γ}
    {s  = ⟦ ⟦ _ , _ , r₀ , _ ⟧ᵈ , _ , _ ⟧ᶜˢ} {s' = ⟦ ⟦ _ , _ , _  , _ ⟧ᵈ , _ , _ ⟧ᶜˢ}
    wd-netId dd-netId (ENTITIES { rewards₁ = r₁ } (fst , wdrls⊆ , amts≤ , certsStep , ddCreds⊆ )) =
    begin
      G r₀ + DD
        ≡⟨ cong (_+ DD) (applyWithdrawals-pov wdrls r₀ wdrls⊆ wd-netId amts≤) ⟩
      (G aw + W) + DD
        ≡⟨ +-assoc (G aw) W DD ⟩
      G aw + (W + DD)
        ≡⟨ cong (G aw +_) (+-comm W DD) ⟩
      G aw + (DD + W)
        ≡˘⟨ +-assoc (G aw) DD W ⟩
      (G aw + DD) + W
        ≡⟨ cong (λ x → (x + DD) + W) (CERTS-pov certsStep) ⟩
      (G r₁ + DD) + W
        ≡˘⟨ cong (_+ W) (applyDirectDeposits-pov dd r₁ ddCreds⊆) ⟩
      G (applyDirectDeposits dd r₁) + W
        ∎
    where
    wdrls : Withdrawals
    wdrls = WithdrawalsOf Γ
    dd : DirectDeposits
    dd = CertEnv.directDeposits Γ
    aw : Rewards
    aw = applyWithdrawals wdrls r₀
    G : Rewards → Coin
    G = getCoin
    W DD : Coin
    W  = getCoin wdrls
    DD = getCoin dd
```
-->

The first three rewrites move `W` past `DD` to set up the
`CERTS-pov`{.AgdaFunction} application; the `CERTS-pov`{.AgdaFunction}
step then preserves `getCoin`{.AgdaFunction} through the inner closure;
and the final rewrite folds `applyDirectDeposits`{.AgdaFunction} back
into the LHS of the goal.

Equivalences used implicitly: under
`HasCoin-CertState`{.AgdaFunction}, `getCoin (CertState) ≡ getCoin (rewards ∘ DStateOf)`,
which is why `G r₀`, `G aw`, `G r₁`, and `G (applyDirectDeposits dd r₁)`
are interchangeable with `getCoin s`, `getCoin <intermediate>`,
`getCoin <post-CERTS>`, and `getCoin s'` respectively — both sides
project to the `rewards`{.AgdaField} field, which is exactly what the
chain manipulates.
