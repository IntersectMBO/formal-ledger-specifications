---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entities/Properties/ApplyToRewardsPoV.lagda.md
---

# `applyToRewards` Preservation of Value {#sec:apply-to-rewards-pov}

This module proves preservation of value for the two specializations of
`applyToRewards`{.AgdaFunction} used inside the `ENTITIES`{.AgdaDatatype} rule.

+  `applyWithdrawals-pov`{.AgdaFunction}.

   `applyWithdrawals`{.AgdaFunction} *decreases* the total rewards balance by exactly
   the sum of withdrawal amounts.  Truncating subtraction (`_∸_`) means the per-step
   lemma requires `amt ≤ bal`, and the fold induction requires a
   `Unique`{.AgdaDatatype} witness on the stake-projected withdrawal list so that no
   already-reduced balance is revisited.

+  `applyDirectDeposits-pov`{.AgdaFunction}.

   `applyDirectDeposits`{.AgdaFunction} *increases* the total rewards balance by
   exactly the sum of direct-deposit amounts.  Because `_+_` is total and
   commutative, revisiting a credential is harmless, so neither the
   `NetworkId`{.AgdaFunction} witness nor the `Unique`{.AgdaDatatype} premise is
   needed.

Both lemmas share a common backbone: a per-step result about
`applyOne`{.AgdaFunction} (the lambda body of `applyToRewards`{.AgdaFunction})
together with a `foldl`-induction lemma over `setToList (m ˢ)`.  They are consumed
directly by `ENTITIES-pov`{.AgdaFunction} in `Entities.Properties.PoV`.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Entities.Properties.ApplyToRewardsPoV
  (gs : GovStructure) (open GovStructure gs) where

open import Data.Nat.Properties using (+-identityʳ; +-comm; +-assoc; m∸n+n≡m; n≤0⇒n≡0)
open import Data.Maybe.Properties using (just-injective)
open import Data.List.Membership.Propositional.Properties using (∈-map⁺)
open import Data.List.Relation.Unary.Any using (Any)
open import Data.List.Relation.Unary.All using (lookup)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique) renaming (_∷_ to _::_)
open import Relation.Binary using (IsEquivalence)

open import Ledger.Prelude hiding (lookup)

open import Ledger.Dijkstra.Specification.Account gs using (DirectDeposits)
open import Ledger.Dijkstra.Specification.Certs gs using (Rewards)
open import Ledger.Dijkstra.Specification.Entities gs
  using (applyWithdrawals; applyDirectDeposits)

open import Axiom.Set.Properties th

open RewardAddress
open Any
open ≡-Reasoning
```
-->

## Shared helpers

```agda
getCoin-∪ˡ-overwrite : (acc : Rewards) (c : Credential) (v : Coin)
  → getCoin (❴ c , v ❵ ∪ˡ acc) ≡ v + getCoin (acc ∣ ❴ c ❵ ᶜ)
```

<!--
```agda
-- The new applyToRewards writes to its accumulator via ❴ k , v ❵ ∪ˡ acc;
-- left-biasedness of ∪ˡ makes this extensionally equal to the older
-- ❴ k , v ❵ ∪ˡ (acc ∣ ❴ k ❵ ᶜ) form; the following proves this at the getCoin level.
getCoin-∪ˡ-overwrite acc c v =
  begin
    getCoin (❴ c , v ❵ ∪ˡ acc)
      ≡⟨ ≡ᵉ-getCoin (❴ c , v ❵ ∪ˡ acc) (❴ c , v ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ)) bridge ⟩
    getCoin (❴ c , v ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ))
      ≡⟨ indexedSumᵛ'-∪ ❴ c , v ❵ᵐ (acc ∣ ❴ c ❵ ᶜ) disj ⟩
    getCoin ❴ c , v ❵ᵐ + getCoin (acc ∣ ❴ c ❵ ᶜ)
      ≡⟨ cong (_+ getCoin (acc ∣ ❴ c ❵ ᶜ)) getCoin-singleton ⟩
    v + getCoin (acc ∣ ❴ c ❵ ᶜ)
      ∎
  where
  open Equivalence
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})

  restrict-cong-∪ˡ :
    (❴ c , v ❵ᵐ ∪ˡ acc ∣ dom ❴ c , v ❵ᵐ ᶜ) ˢ ≡ᵉ (❴ c , v ❵ᵐ ∪ˡ (acc ∣ ❴ c ❵ ᶜ)) ˢ
  restrict-cong-∪ˡ =
    ∪ˡ-cong {m   = ❴ c , v ❵ᵐ} {m'  = acc ∣ dom (❴ c , v ❵ᵐ ˢ) ᶜ}
            {m'' = ❴ c , v ❵ᵐ} {m''' = acc ∣ ❴ c ❵ ᶜ}
      (≡ᵉ.refl {x = ❴ c , v ❵ᵐ ˢ}) (res-comp-cong dom-single≡single)

  bridge : (❴ c , v ❵ ∪ˡ acc) ˢ ≡ᵉ (❴ c , v ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ)) ˢ
  bridge = ≡ᵉ.trans (res-decomp ❴ c , v ❵ᵐ acc) restrict-cong-∪ˡ

  disj : disjoint (dom ❴ c , v ❵ᵐ) (dom (acc ∣ ❴ c ❵ ᶜ))
  disj x y = res-comp-dom y (dom-single→single x)
```
-->

```agda
split-by-lookup : (acc : Rewards) (c : Credential) (bal : Coin)
  → lookupᵐ? acc c ≡ just bal → getCoin acc ≡ getCoin (acc ∣ ❴ c ❵ ᶜ) + bal
```

<!--
```agda
-- When lookupᵐ? acc c ≡ just bal, we can decompose getCoin acc into the contribution
-- of c (which is bal) plus the contribution of every other credential, getCoin (acc ∣ ❴ c ❵ ᶜ).
split-by-lookup acc c bal lookup-eq =
  begin
    getCoin acc
      ≡˘⟨ ≡ᵉ-getCoin decomp acc ( ≡ᵉ.trans  (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                                            (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    getCoin decomp
      ≡⟨ indexedSumᵛ'-∪ (acc ∣ ❴ c ❵ ᶜ) (acc ∣ ❴ c ❵) (disjoint-sym res-ex-disjoint) ⟩
    getCoin (acc ∣ ❴ c ❵ ᶜ) + getCoin (acc ∣ ❴ c ❵)
      ≡⟨ cong (getCoin (acc ∣ ❴ c ❵ ᶜ) +_) acc∣c≡bal ⟩
    getCoin (acc ∣ ❴ c ❵ ᶜ) + bal
      ∎
  where
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
  open Equivalence

  decomp : Credential ⇀ Coin
  decomp = (acc ∣ ❴ c ❵ ᶜ) ∪ˡ (acc ∣ ❴ c ❵)

  c∈acc : (c , bal) ∈ acc ˢ
  c∈acc with c ∈? dom (acc ˢ)
  ... | yes c∈dom = subst  (λ v → (c , v) ∈ acc ˢ)
                           (just-injective lookup-eq)
                           (lookupᵐ-∈ acc c c∈dom)
  ... | no _ = case lookup-eq of λ ()

  acc∣c≡bal : getCoin (acc ∣ ❴ c ❵) ≡ bal
  acc∣c≡bal =
    trans (getCoin-cong (acc ∣ ❴ c ❵) ❴ (c , bal) ❵ (res-singleton' {m = acc} c∈acc))
          getCoin-singleton
```
-->

## The `ApplyToRewards-PoV` module

The three assumed identities below are the same set/map identities used by the Conway
PoV proofs; they are stated as module parameters here, to be discharged in a
follow-up against the `agda-sets` library.

+  `∪ˡ-lookup-preserve`: lookup in a left-biased union with a singleton at `c` agrees
   with lookup in the right map for any key `c' ≠ c`.
+  `sum-map-proj₂≡getCoin`: the `getCoin`{.AgdaFunction} representation of a
   `(RewardAddress ⇀ Coin)` map equals the list-sum of its second projections.
+  `setToList-Unique`: stake-projection of a withdrawal/direct-deposit list is
   `Unique`{.AgdaDatatype}, assuming the per-batch `NetworkId`{.AgdaFunction}
   constraint.  (Used only by `applyWithdrawals-pov`.)

```agda
module ApplyToRewards-PoV
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
```

The `applyOne`{.AgdaFunction} is a local convenience definitionally equal to the
lambda body of `applyToRewards f`.

```agda
  applyOne : (Coin → Coin → Coin) → Rewards → RewardAddress × Coin → Rewards
  applyOne f acc (addr , amt) =
    maybe (λ bal → ❴ stake addr , f bal amt ❵ ∪ˡ acc) acc (lookupᵐ? acc (stake addr))
```

## Withdrawal preservation of value

### `applyOne-pov`: one withdrawal step decreases `getCoin` by `amt`

When `lookupᵐ? acc (stake addr) ≡ just bal` and `amt ≤ bal`, applying a single
withdrawal reduces the total by exactly `amt`.

```agda
  applyOne-pov : (acc : Rewards) (addr : RewardAddress) (amt bal : Coin)
    → lookupᵐ? acc (stake addr) ≡ just bal
    → amt ≤ bal
    → getCoin acc ≡ getCoin (❴ stake addr , bal ∸ amt ❵ ∪ˡ acc) + amt
```

<!--
```agda
  applyOne-pov acc addr amt bal lookup-eq amt≤bal = let c = stake addr in
    begin
      getCoin acc
        ≡⟨ split-by-lookup acc c bal lookup-eq ⟩
      getCoin (acc ∣ ❴ c ❵ ᶜ) + bal
        ≡˘⟨ cong (getCoin (acc ∣ ❴ c ❵ ᶜ) +_) (m∸n+n≡m amt≤bal) ⟩
      getCoin (acc ∣ ❴ c ❵ ᶜ) + (bal ∸ amt + amt)
        ≡⟨ trans  (sym (+-assoc (getCoin (acc ∣ ❴ c ❵ ᶜ)) (bal ∸ amt) amt))
                  (cong (_+ amt) (+-comm (getCoin (acc ∣ ❴ c ❵ ᶜ)) (bal ∸ amt))) ⟩
      (bal ∸ amt) + getCoin (acc ∣ ❴ c ❵ ᶜ) + amt
        ≡˘⟨ cong (_+ amt) (getCoin-∪ˡ-overwrite acc c (bal ∸ amt)) ⟩
      getCoin (❴ c , bal ∸ amt ❵ ∪ˡ acc) + amt
        ∎
```
-->

### `foldl-applyOne-pov` (fold induction)

The fold invariant tracks three things through the induction:

1.  every remaining withdrawal credential is in the current accumulator's domain;

2.  every remaining withdrawal amount is bounded by the current balance at that
    credential;

3.  no credential is revisited (the `Unique`{.AgdaDatatype} witness on the
    stake-projected list).

Uniqueness is essential here precisely because `applyOne _∸_` *modifies* the balance
at the targeted credential — without it, a re-visit could attempt to subtract from an
already-reduced balance for which the caller's original `amt ≤ bal` bound no longer
holds.

```agda
  foldl-applyOne-pov : (acc : Rewards) (entries : List (RewardAddress × Coin))
    → ( ∀ {addr amt} → (addr , amt) ∈ˡ entries
        → stake addr ∈ dom acc
        × amt ≤ maybe id 0 (lookupᵐ? acc (stake addr)) )
    → Unique (map (stake ∘ proj₁) entries)
    → getCoin acc ≡ getCoin (foldl (applyOne _∸_) acc entries) + sum (map proj₂ entries)
```

<!--
```agda
  foldl-applyOne-pov acc [] _ _ = sym (+-identityʳ (indexedSumᵛ' id acc))
  foldl-applyOne-pov acc ((addr , amt) ∷ xs) h (c∉xs :: uniq-xs)
    with lookupᵐ? acc (stake addr) in eq
  -- Nothing case: applyOne is the identity; the bound `h (here refl) .proj₂`
  -- forces `amt ≡ 0`, which makes the recursive call's right-hand side equal
  -- to ours.
  ... | nothing =
    let amt≤0 = subst (amt ≤_) (cong (maybe id 0) eq) (h (here refl) .proj₂)
        amt≡0 = n≤0⇒n≡0 amt≤0
    in
    subst (λ a → getCoin acc ≡ getCoin (foldl (applyOne _∸_) acc xs) + (a + sum (map proj₂ xs)))
          (sym amt≡0)
          (foldl-applyOne-pov acc xs (λ mem → h (there mem)) uniq-xs)
  -- Just case: per-step decrease via `applyOne-pov`, then chain with the IH.
  ... | just bal = begin
        getCoin acc
          ≡⟨ applyOne-pov acc addr amt bal eq amt≤bal ⟩
        getCoin acc' + amt
          ≡⟨ cong (_+ amt) (foldl-applyOne-pov acc' xs h' uniq-xs) ⟩
        (getCoin (foldl (applyOne _∸_) acc' xs) + sum (map proj₂ xs)) + amt
          ≡⟨ +-assoc (getCoin (foldl (applyOne _∸_) acc' xs)) (sum (map proj₂ xs)) amt ⟩
        getCoin (foldl (applyOne _∸_) acc' xs) + (sum (map proj₂ xs) + amt)
          ≡⟨ cong (getCoin (foldl (applyOne _∸_) acc' xs) +_)
                  (+-comm (sum (map proj₂ xs)) amt) ⟩
        getCoin (foldl (applyOne _∸_) acc' xs) + (amt + sum (map proj₂ xs))
          ∎
    where
    c = stake addr
    acc' : Rewards
    acc' = ❴ c , bal ∸ amt ❵ ∪ˡ acc

    amt≤bal : amt ≤ bal
    amt≤bal = subst (amt ≤_) (cong (maybe id 0) eq) (h (here refl) .proj₂)

    -- Invariant transfer.  For each (addr' , amt') ∈ xs, the Unique witness c∉xs
    -- gives stake addr' ≢ c, which, together with ∪ˡ-lookup-preserve, shows that the
    -- balance bound at stake addr' in acc' agrees with the bound in acc, so the
    -- amount inequality transfers.  Domain preservation is just dom∪ˡʳ.
    h' : ∀ {addr' amt'} → (addr' , amt') ∈ˡ xs
      → stake addr' ∈ dom acc' × amt' ≤ maybe id 0 (lookupᵐ? acc' (stake addr'))
    h' {addr'} {amt'} mem = dom' , subst (amt' ≤_) (cong (maybe id 0) (sym bal')) (proj₂ ξ)
      where
        ξ : stake addr' ∈ dom (acc ˢ) × amt' ≤ (maybe id 0 (lookupᵐ? acc (stake addr')))
        ξ = h (there mem)
        c'≢c : stake addr' ≢ c
        c'≢c = ≢-sym (lookup c∉xs (∈-map⁺ (stake ∘ proj₁) mem))
        dom' : stake addr' ∈ dom acc'
        dom' = dom∪ˡʳ {m = ❴ c , bal ∸ amt ❵} {m' = acc} (proj₁ ξ)
        bal' : lookupᵐ? acc' (stake addr') ≡ lookupᵐ? acc (stake addr')
        bal' = ∪ˡ-lookup-preserve acc c (bal ∸ amt) (stake addr') c'≢c
```
-->

### `applyWithdrawals-pov`

```agda
  applyWithdrawals-pov : (wdrls : Withdrawals) (rwds : Rewards)
    → mapˢ stake (dom wdrls) ⊆ dom rwds
    → ∀[ a ∈ dom wdrls ] NetworkIdOf a ≡ NetworkId
    → ∀[ (addr , amt) ∈ wdrls ˢ ]
        amt ≤ maybe id 0 (lookupᵐ? rwds (stake addr))
    → getCoin rwds ≡ getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls
```

<!--
```agda
  applyWithdrawals-pov wdrls rwds creds∈ netIds amts≤ =
    begin
      getCoin rwds
        ≡⟨ foldl-applyOne-pov rwds (setToList (wdrls ˢ)) inv
                              (setToList-Unique wdrls netIds) ⟩
      getCoin (foldl (applyOne _∸_) rwds (setToList (wdrls ˢ)))
        + sum (map proj₂ (setToList (wdrls ˢ)))
        ≡⟨ cong (getCoin (foldl (applyOne _∸_) rwds (setToList (wdrls ˢ))) +_)
                (sum-map-proj₂≡getCoin wdrls) ⟩
      getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls
        ∎
    where
    open Equivalence
    inv : ∀ {addr amt} → (addr , amt) ∈ˡ setToList (wdrls ˢ)
        → stake addr ∈ dom rwds
        × amt ≤ maybe id 0 (lookupᵐ? rwds (stake addr))
    inv {addr} {amt} mem = creds∈ c∈dom-wdrls , amts≤ addr-amt∈wdrls
      where
      addr-amt∈wdrls : (addr , amt) ∈ wdrls ˢ
      addr-amt∈wdrls = setToList-∈ mem
      c∈dom-wdrls : stake addr ∈ mapˢ stake (dom wdrls)
      c∈dom-wdrls = to ∈-map (addr , refl , to dom∈ (amt , addr-amt∈wdrls))
```
-->

## Direct-deposit preservation of value

### `applyOne-pov-add` (one direct-deposit step increases `getCoin` by `amt`)

For addition, no `amt ≤ bal` premise is needed (the operation is total),
and the per-step equation is `getCoin (...) ≡ getCoin acc + amt`
unconditionally on the relationship between `amt` and the current
balance.

```agda
  applyOne-pov-add :
    (acc : Rewards) (addr : RewardAddress) (amt bal : Coin)
    → lookupᵐ? acc (stake addr) ≡ just bal
    → getCoin (❴ stake addr , bal + amt ❵ ∪ˡ acc) ≡ getCoin acc + amt
```

<!--
```agda
  applyOne-pov-add acc addr amt bal lookup-eq = let c = stake addr in
    begin
      getCoin (❴ c , bal + amt ❵ ∪ˡ acc)
        ≡⟨ getCoin-∪ˡ-overwrite acc c (bal + amt) ⟩
      (bal + amt) + getCoin (acc ∣ ❴ c ❵ ᶜ)
        ≡⟨ +-comm (bal + amt) (getCoin (acc ∣ ❴ c ❵ ᶜ)) ⟩
      getCoin (acc ∣ ❴ c ❵ ᶜ) + (bal + amt)
        ≡˘⟨ +-assoc (getCoin (acc ∣ ❴ c ❵ ᶜ)) bal amt ⟩
      getCoin (acc ∣ ❴ c ❵ ᶜ) + bal + amt
        ≡˘⟨ cong (_+ amt) (split-by-lookup acc c bal lookup-eq) ⟩
      getCoin acc + amt
        ∎
```
-->

### `foldl-applyOne-pov-add` (fold induction, no `Unique` needed)

Unlike the withdrawal version, the additive fold induction needs only
domain preservation — the `Unique`{.AgdaDatatype} witness drops out.
The reason: `applyOne _+_` modifies the balance at the targeted
credential, but since the per-step lemma `applyOne-pov-add` is
unconditional on the prior balance and `_+_` is commutative, revisiting
the same credential simply accumulates additions correctly.

```agda
  foldl-applyOne-pov-add :
    (acc : Rewards) (entries : List (RewardAddress × Coin))
    → (∀ {addr amt} → (addr , amt) ∈ˡ entries → stake addr ∈ dom acc)
    → getCoin (foldl (applyOne _+_) acc entries)
      ≡ getCoin acc + sum (map proj₂ entries)
```

<!--
```agda
  foldl-applyOne-pov-add acc [] _ = sym (+-identityʳ (indexedSumᵛ' id acc))
  foldl-applyOne-pov-add acc ((addr , amt) ∷ xs) h
    with lookupᵐ? acc (stake addr) in eq
  ... | just bal = begin
        getCoin (foldl (applyOne _+_) acc' xs)
          ≡⟨ foldl-applyOne-pov-add acc' xs h' ⟩
        getCoin acc' + sum (map proj₂ xs)
          ≡⟨ cong (_+ sum (map proj₂ xs))
                  (applyOne-pov-add acc addr amt bal eq) ⟩
        (getCoin acc + amt) + sum (map proj₂ xs)
          ≡⟨ +-assoc (getCoin acc) amt (sum (map proj₂ xs)) ⟩
        getCoin acc + (amt + sum (map proj₂ xs))
          ∎
    where
    c = stake addr
    acc' = ❴ c , bal + amt ❵ ∪ˡ acc

    h' : ∀ {addr' amt'} → (addr' , amt') ∈ˡ xs → stake addr' ∈ dom acc'
    h' mem = dom∪ˡʳ {m = ❴ c , bal + amt ❵} {m' = acc} (h (there mem))
  -- Defensive `nothing` case: ruled out by the domain hypothesis.
  ... | nothing with stake addr ∈? dom (acc ˢ)
  ... | yes _  = case eq of λ ()
  ... | no a∉ = ⊥-elim (a∉ (h (here refl)))
```
-->

### `applyDirectDeposits-pov`

Note the slimmed-down signature relative to `applyWithdrawals-pov`: no
`NetworkId`{.AgdaFunction} premise (none is needed), no
`amt ≤ balance` premise (addition doesn't truncate).

```agda
  applyDirectDeposits-pov : (dd : DirectDeposits) (rwds : Rewards)
    → mapˢ stake (dom dd) ⊆ dom rwds
    → getCoin (applyDirectDeposits dd rwds) ≡ getCoin rwds + getCoin dd
```

<!--
```agda
  applyDirectDeposits-pov dd rwds creds∈ =
    begin
      getCoin (applyDirectDeposits dd rwds)
        ≡⟨ refl ⟩  -- by definition of `applyDirectDeposits = applyToRewards _+_`
      getCoin (foldl (applyOne _+_) rwds (setToList (dd ˢ)))
        ≡⟨ foldl-applyOne-pov-add rwds (setToList (dd ˢ)) inv ⟩
      getCoin rwds + sum (map proj₂ (setToList (dd ˢ)))
        ≡⟨ cong (getCoin rwds +_) (sum-map-proj₂≡getCoin dd) ⟩
      getCoin rwds + getCoin dd
        ∎
    where
    open Equivalence
    inv : ∀ {addr amt} → (addr , amt) ∈ˡ setToList (dd ˢ)
        → stake addr ∈ dom rwds
    inv {addr} {amt} mem = creds∈ c∈dom-dd
      where
      addr-amt∈dd : (addr , amt) ∈ dd ˢ
      addr-amt∈dd = setToList-∈ mem
      c∈dom-dd : stake addr ∈ mapˢ stake (dom dd)
      c∈dom-dd = to ∈-map (addr , refl , to dom∈ (amt , addr-amt∈dd))
```
-->
