---
source_branch: master
source_path: src/Ledger/Conway/Specification/Epoch/Properties/ConstRwds.lagda.md
---

## Theorem: <span class="AgdaDatatype">NEWEPOCH</span> preserves rewards domain {#thm:NEWEPOCH-const-rwds}


<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.ConstRwds
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Rewards txs abs
open import Ledger.Prelude

open import Axiom.Set.Properties th using (≡ᵉ-isEquivalence)
open import Relation.Binary using (IsEquivalence)

module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential})
```
-->

*Informally*.

The `NEWEPOCH`{.AgdaDatatype} rule pays out rewards and refunds, but it never
registers or deregisters a reward account.

More precisely, if `es`{.AgdaBound} and `es'`{.AgdaBound} are two
`NewEpochStates`{.AgdaRecord} such that
`es ``⇀⦇`{.AgdaDatatype}` e ``,NEWEPOCH⦈`{.AgdaDatatype}` es'`,
then the rewards maps of `es` and `es'` have the same domain.

Only the domain is invariant (the reward values themselves change), and
domains are abstract sets, so the claim is stated with the set equality
`_≡ᵉ_`{.AgdaFunction} rather than propositional equality.

A `NEWEPOCH`{.AgdaDatatype} step modifies the rewards map in three places, and
each modification is an additive union `_∪⁺_`{.AgdaOperator} with a map whose
domain is contained in the domain of the rewards map:

+  `applyRUpd`{.AgdaFunction} adds `regRU`{.AgdaFunction}, the reward update
   restricted to the existing accounts (`rs ∣ dom rewards`);

+  the `POOLREAP`{.AgdaDatatype} rule adds the deposit `refunds`{.AgdaFunction} of
   retired pools restricted to `dom (dState .rewards)`;

+  the `EPOCH`{.AgdaDatatype} rule adds `refunds`{.AgdaFunction} of
   `Post-POOLREAPUpdate`{.AgdaModule} — a `pullbackMap`{.AgdaFunction} over
   `dom (RewardsOf dState')` — so its domain is again contained in the rewards
   domain.

Since `dom (m ∪⁺ n) ≡ᵉ dom m` whenever `dom n ⊆ dom m`,[^1] each of the three
modifications preserves the domain.

*Formally*.

We prove one lemma per modification site.

First, `applyRUpd`{.AgdaFunction} preserves the rewards domain:

```agda
applyRUpd-dom-rwds-const : (ru : RewardUpdate) (eps : EpochState)
  → dom (RewardsOf eps) ≡ᵉ dom (RewardsOf (applyRUpd ru eps))
applyRUpd-dom-rwds-const ru eps = ≡ᵉ.sym (dom⊆→dom∪⁺ res-dom)
```

Second, the `POOLREAP`{.AgdaDatatype} rule preserves the rewards domain:

```agda
POOLREAP-dom-rwds-const : {e : Epoch} {prSt prSt' : PoolReapState}
  → _ ⊢ prSt ⇀⦇ e ,POOLREAP⦈ prSt'
  → dom (RewardsOf prSt) ≡ᵉ dom (RewardsOf prSt')
POOLREAP-dom-rwds-const POOLREAP = ≡ᵉ.sym (dom⊆→dom∪⁺ res-dom)
```

Third, the `EPOCH`{.AgdaDatatype} rule preserves the rewards domain: the
`SNAP`{.AgdaDatatype} and `RATIFIES`{.AgdaDatatype} premises do not touch the
rewards map, so the claim follows by composing the `POOLREAP`{.AgdaDatatype}
lemma with the domain restriction of the `refunds`{.AgdaFunction} paid out by
`Post-POOLREAPUpdate`{.AgdaModule}.

```agda
opaque
  unfolding Post-POOLREAPUpdate.refunds

  EPOCH-dom-rwds-const : {e : Epoch} {eps eps' : EpochState}
    → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    → dom (RewardsOf eps) ≡ᵉ dom (RewardsOf eps')
  EPOCH-dom-rwds-const (EPOCH (_ , poolReapStep , _)) =
    ≡ᵉ.trans  (POOLREAP-dom-rwds-const poolReapStep)
              (≡ᵉ.sym (dom⊆→dom∪⁺ (dom-pullbackMap-⊆ _ toRewardAddress _)))
```

The main claim then follows by composing the above lemmas.

```agda
NEWEPOCH-dom-rwds-const : {e : Epoch} {es es' : NewEpochState}
  → _ ⊢ es ⇀⦇ e ,NEWEPOCH⦈ es'
  → dom (RewardsOf es) ≡ᵉ dom (RewardsOf es')
```

*Proof*.

We proceed by cases on the `NEWEPOCH`{.AgdaDatatype} rule.

+  `NEWEPOCH-Not-New`{.AgdaInductiveConstructor} leaves the state unchanged, so the
   claim holds by reflexivity;
+  `NEWEPOCH-No-Reward-Update`{.AgdaInductiveConstructor} is an
   `EPOCH`{.AgdaDatatype} step;
+  `NEWEPOCH-New`{.AgdaInductiveConstructor} is `applyRUpd`{.AgdaFunction} followed
   by an `EPOCH`{.AgdaDatatype} step.

```agda
NEWEPOCH-dom-rwds-const (NEWEPOCH-Not-New _) = ≡ᵉ.refl
NEWEPOCH-dom-rwds-const (NEWEPOCH-No-Reward-Update (_ , epochStep)) =
  EPOCH-dom-rwds-const epochStep
NEWEPOCH-dom-rwds-const (NEWEPOCH-New {ru = ru} {eps = eps} (_ , epochStep)) =
  ≡ᵉ.trans (applyRUpd-dom-rwds-const ru eps) (EPOCH-dom-rwds-const epochStep)
```

---

[^1]:  lemma `dom⊆→dom∪⁺`{.AgdaFunction}
