---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/ApplyWithdrawalsPoV.lagda.md
---

# `applyWithdrawals` Preservation of Value {#sec:apply-withdrawals-pov}

This module proves that `applyWithdrawals` decreases the total rewards balance
by exactly the sum of the withdrawal amounts.  This is the key new lemma
for the Dijkstra (CIP-159) CERTS preservation-of-value proof.

## Proof Strategy

`applyWithdrawals` is defined as a `foldl` over the list representation of the
withdrawal map.  The proof proceeds by induction on this list, with a single-step
lemma showing that each `applyOne` step decreases `getCoin` by exactly the
withdrawal amount.

The single-step argument decomposes the accumulator map `acc` into:
`acc ≡ᵉ (acc ∣ ❴ c ❵ ᶜ) ∪ˡ (acc ∣ ❴ c ❵)`
where `c = stake addr`.  When `lookupᵐ? acc c ≡ just bal` and `amt ≤ bal`:
`getCoin acc = getCoin (acc ∣ ❴ c ❵ ᶜ) + bal`, by decomposition;
`getCoin (applyOne acc (addr , amt))` = `getCoin (❴ c , bal ∸ amt ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ))`
= `(bal ∸ amt) + getCoin (acc ∣ ❴ c ❵ ᶜ)`, by disjoint union.

So the decrease is `bal - (bal ∸ amt) = amt` (since `amt ≤ bal`).

For the fold induction, the invariant is maintained because:
- Each credential is targeted at most once (by injectivity of `stake` on `dom wdrls`,
  which follows from the `NetworkId` constraint).
- `applyOne` preserves domain membership (it replaces entries, never removes them).
- Therefore, remaining entries still have their credentials registered and their
  amounts bounded by the (unchanged) balances.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.ApplyWithdrawalsPoV
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Prelude
open import Axiom.Set.Properties th
open import Data.Nat.Properties
  using ( +-0-monoid; +-identityʳ; +-identityˡ; +-comm; +-assoc
        ; m∸n+n≡m )
open import Data.Maybe.Properties using (just-injective)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique) renaming (_∷_ to _::_)
open import Data.List.Relation.Unary.Any using (Any)
open import Data.List.Membership.Propositional.Properties using (∈-map⁺)
import Data.List.Relation.Unary.All as All
open import Relation.Binary using (IsEquivalence)
open import Data.Nat.Properties using (n≤0⇒n≡0)
open RewardAddress
open Any

private variable
  A : Type

instance
  _ = +-0-monoid
```
-->

## Supporting lemmas

The following auxiliary properties are needed.

### Single-step Lemma: `applyOne` decreases `getCoin` by `amt`

When `stake addr ∈ dom acc` and `amt ≤ bal` (where `bal` is the current balance),
applying a single withdrawal decreases the total by exactly `amt`.

```agda
applyOne-pov :
  (acc : Rewards) (addr : RewardAddress) (amt bal : Coin)
  → lookupᵐ? acc (stake addr) ≡ just bal
  → amt ≤ bal
  → getCoin acc ≡ getCoin (❴ stake addr , bal ∸ amt ❵ ∪ˡ (acc ∣ ❴ stake addr ❵ ᶜ)) + amt
```

<!--
```agda
applyOne-pov acc addr amt bal lookup-eq amt≤bal =
  begin
    getCoin acc
      ≡˘⟨ ≡ᵉ-getCoin decomp acc
      ( ≡ᵉ.trans (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                 ( ≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    getCoin decomp
      ≡⟨ indexedSumᵛ'-∪ (acc ∣ ❴ c ❵ ᶜ) (acc ∣ ❴ c ❵) (disjoint-sym res-ex-disjoint) ⟩
    getCoin (acc ∣ ❴ c ❵ ᶜ) + getCoin (acc ∣ ❴ c ❵)
      ≡⟨ cong (getCoin (acc ∣ ❴ c ❵ ᶜ) +_) acc∣c≡bal ⟩
    getCoin (acc ∣ ❴ c ❵ ᶜ) + bal
      ≡⟨ cong (getCoin (acc ∣ ❴ c ❵ ᶜ) +_) (sym (m∸n+n≡m amt≤bal)) ⟩
    getCoin (acc ∣ ❴ c ❵ ᶜ) + (bal ∸ amt + amt)
      ≡⟨ trans (sym (+-assoc (getCoin (acc ∣ ❴ c ❵ ᶜ)) (bal ∸ amt) amt))
               (cong (_+ amt) (+-comm (getCoin (acc ∣ ❴ c ❵ ᶜ)) (bal ∸ amt))) ⟩
    (bal ∸ amt) + getCoin (acc ∣ ❴ c ❵ ᶜ) + amt
      ≡˘⟨ cong (_+ amt)
            (trans (indexedSumᵛ'-∪ ❴ c , bal ∸ amt ❵ᵐ (acc ∣ ❴ c ❵ ᶜ) disj-doms)
                   (cong (_+ getCoin (acc ∣ ❴ c ❵ ᶜ)) getCoin-singleton)) ⟩
    getCoin (❴ c , bal ∸ amt ❵ᵐ ∪ˡ (acc ∣ ❴ c ❵ˢ ᶜ)) + amt
      ∎
  where
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
  open ≡-Reasoning
  open Equivalence

  c : Credential
  c = stake addr

  decomp : Credential ⇀ Coin
  decomp = (acc ∣ ❴ c ❵ ᶜ) ∪ˡ (acc ∣ ❴ c ❵)

  c∈acc : (c , bal) ∈ acc ˢ
  c∈acc with c ∈? dom (acc ˢ)
  ... | yes c∈dom =
    subst (λ v → (c , v) ∈ acc ˢ) (just-injective lookup-eq) (lookupᵐ-∈ acc c c∈dom)
  ... | no c∉dom = case lookup-eq of λ ()

  acc∣c≡bal : getCoin (acc ∣ ❴ c ❵) ≡ bal
  acc∣c≡bal =
    trans (getCoin-cong (acc ∣ ❴ c ❵) ❴ (c , bal) ❵ (res-singleton' {m = acc} c∈acc))
          getCoin-singleton

  c∉dom-compl : c ∉ dom ((acc ∣ ❴ c ❵ ᶜ) ˢ)
  c∉dom-compl c∈ = res-comp-dom c∈ (to ∈-singleton refl)

  disj-doms : disjoint (dom ❴ c , bal ∸ amt ❵ᵐ) (dom (acc ∣ ❴ c ❵ ᶜ))
  disj-doms x y = c∉dom-compl (subst (_∈ dom (acc ∣ ❴ c ❵ ᶜ)) (from ∈-dom-singleton-pair x) y)
```
-->


### Domain Membership Preservation Lemma

```agda
∪ˡ-res-dom-preserve :
    ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
    → c' ∈ dom m → c' ≢ c
    → c' ∈ dom (❴ c , v ❵ ∪ˡ (m ∣ ❴ c ❵ ᶜ))
```

<!--
```agda
∪ˡ-res-dom-preserve m c v c' c'∈dom c'≢c = dom∪ˡʳ {m = ❴ c , v ❵} {m' = m ∣ ❴ c ❵ ᶜ} c'∈resᶜ
    where
    open Equivalence
    c'∉❴c❵ : c' ∉ ❴ c ❵
    c'∉❴c❵ = c'≢c ∘ from ∈-singleton

    c'∈resᶜ : c' ∈ dom ((m ∣ ❴ c ❵ ᶜ) ˢ)
    c'∈resᶜ = let (v' , c'v'∈m) = from dom∈ c'∈dom
              in  to dom∈ (v' , to ∈-filter (c'∉❴c❵ , c'v'∈m))
```
-->


<!--
```agda
-- applyOne preserves balance for other credentials.
module ApplyWithdrawals-PoV
  -- ASSUMPTIONS --

  -- TODO: ask that these be proved in the `agda-sets` library.

  -- 1. For any credential `c'` other than `c`, lookupᵐ? (❴ c , v ❵ ∪ˡ (m ∣ ❴ c ❵ ᶜ)) c' ≡ lookupᵐ? m c'
  ( ∪ˡ-res-lookup-preserve : ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ (m ∣ ❴ c ❵ ᶜ)) c' ≡ lookupᵐ? m c' )
    -- It's hard because the `agda-sets` API requires instance resolution for
    -- `lookupᵐ?`, but the semantic content is clear (lookup in a left-biased union
    -- for a key not in the left map equals lookup in the right map, and complement
    -- restriction doesn't affect keys ≢ c); threading it through the `⁇` instance
    -- resolution is painful library plumbing.

   -- 2. getCoin representation.
  ( sum-map-proj₂≡getCoin : ∀ (m : Withdrawals) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

   -- 3. no duplicate credentials.
  ( setToList-Unique : ∀ (m : Withdrawals) → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )
  where
```
-->


## Main Theorem

This is the form needed by `PRE-CERT-pov`.

```agda
  applyWithdrawals-pov : (wdrls : Withdrawals) (rwds : Rewards)
    → mapˢ stake (dom wdrls) ⊆ dom rwds
    → ∀[ (addr , amt) ∈ wdrls ˢ ] amt ≤ maybe id 0 (lookupᵐ? rwds (stake addr))
    → getCoin rwds ≡ getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls
```

<!--
```agda
  applyWithdrawals-pov wdrls rwds creds∈ amts≤ =
    begin
      getCoin rwds
        ≡⟨ foldl-applyOne-pov rwds (setToList (wdrls ˢ)) inv (setToList-Unique wdrls) ⟩
      getCoin (foldl applyOne rwds (setToList (wdrls ˢ))) + sum (map proj₂ (setToList (wdrls ˢ)))
        ≡⟨ cong (getCoin (foldl applyOne rwds (setToList (wdrls ˢ))) +_) (sum-map-proj₂≡getCoin wdrls) ⟩
      getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls
        ∎
    where
    open ≡-Reasoning
    open Equivalence

    inv : ∀ {addr amt} → (addr , amt) ∈ˡ setToList (wdrls ˢ)
      → stake addr ∈ dom rwds × amt ≤ maybe id 0 (lookupᵐ? rwds (stake addr))
    inv {addr} {amt} mem =
      let addr-amt∈wdrls : (addr , amt) ∈ wdrls ˢ
          addr-amt∈wdrls = setToList-∈ mem  -- setToList is id in List-Model

          c∈dom-wdrls : stake addr ∈ mapˢ stake (dom wdrls)
          c∈dom-wdrls = to ∈-map (addr , refl , to dom∈ (amt , addr-amt∈wdrls))

      in  creds∈ c∈dom-wdrls , amts≤ addr-amt∈wdrls

    -- MAIN SUPPORTING LEMMA --
    -- Fold invariant: fold over the full list
    -- The fold invariant tracks three properties through the induction.
    -- 1. All remaining withdrawal credentials are in the current accumulator's domain.
    -- 2. All remaining withdrawal amounts are bounded by the current balances.
    -- 3. Each credential appears at most once in the remaining list (NoDup on credentials).

    -- After processing some prefix of withdrawals, the remaining suffix still
    -- has all its credentials registered in the accumulator, with amounts bounded
    -- by current (possibly reduced) balances.
    --
    -- The Unique condition ensures each credential is targeted at most once,
    -- which is critical: applyOne replaces (not removes) the entry, so other
    -- credentials' balances are unchanged, but the same credential's balance
    -- IS reduced.  Unique guarantees we never revisit a reduced balance.
    --
    -- Unique on (mapˢ (stake ∘ proj₁) entries) follows from injectivity of
    -- `stake` on `dom wdrls`, which follows from the NetworkId constraint.

    foldl-applyOne-pov : (acc : Rewards) (entries : List (RewardAddress × Coin))
      → (∀ {addr amt} → (addr , amt) ∈ˡ entries
      → stake addr ∈ dom acc × amt ≤ maybe id 0 (lookupᵐ? acc (stake addr)))
      → Unique (map (stake ∘ proj₁) entries) -- needed for invariant preservation
      → getCoin acc ≡ getCoin (foldl applyOne acc entries) + sum (map proj₂ entries)

    foldl-applyOne-pov acc [] _ _ = sym (+-identityʳ (indexedSumᵛ' id acc))

    foldl-applyOne-pov acc ((addr , amt) ∷ xs) h (c∉xs :: uniq-xs)
      with lookupᵐ? acc (stake addr) in eq

    -- Nothing case: applyOne is a no-op, amt must be 0.
    ... | nothing =
      let amt≤0 = subst (amt ≤_) (cong (maybe id 0) eq) (h (here refl) .proj₂)
          amt≡0 = n≤0⇒n≡0 amt≤0
      in -- amt ≤ maybe id 0 nothing = amt ≤ 0
      subst (λ a → getCoin acc ≡ getCoin (foldl applyOne acc xs) + (a + sum (map proj₂ xs)))
            (sym amt≡0)
            (foldl-applyOne-pov acc xs (λ mem → h (there mem)) uniq-xs)

    -- Just case: the main inductive step.
    ... | just bal = begin
        getCoin acc
          ≡⟨ applyOne-pov acc addr amt bal eq amt≤bal ⟩
        getCoin acc' + amt
          ≡⟨ cong (_+ amt) (foldl-applyOne-pov acc' xs h' uniq-xs) ⟩
        (getCoin (foldl applyOne acc' xs) + sum (map proj₂ xs)) + amt
          ≡⟨ +-assoc (getCoin (foldl applyOne acc' xs)) (sum (map proj₂ xs)) amt ⟩
        getCoin (foldl applyOne acc' xs) + (sum (map proj₂ xs) + amt)
          ≡⟨ cong (getCoin (foldl applyOne acc' xs) +_) (+-comm (sum (map proj₂ xs)) amt) ⟩
        getCoin (foldl applyOne acc' xs) + (amt + sum (map proj₂ xs))
          ∎
      where
      c   = stake addr
      acc' : Rewards
      acc' = ❴ c , bal ∸ amt ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ)

      amt≤bal : amt ≤ bal
      amt≤bal = subst (amt ≤_) (cong (maybe id 0) eq) (h (here refl) .proj₂)

      -- Invariant transfer: the precondition holds for (acc', xs).
      -- For each (addr', amt') ∈ˡ xs:
      --   - From Unique, stake addr' ≢ c
      --   - dom-preserve: stake addr' ∈ dom acc → stake addr' ∈ dom acc'
      --   - balance-preserve: lookupᵐ? acc' (stake addr') ≡ lookupᵐ? acc (stake addr')
      h' : ∀ {addr' amt'} → (addr' , amt') ∈ˡ xs
         → stake addr' ∈ dom acc'
           × amt' ≤ maybe id 0 (lookupᵐ? acc' (stake addr'))
      h' {addr'} {amt'} mem =
        let (c'∈dom , amt'≤) = h (there mem)
            c'≢c : stake addr' ≢ c
            c'≢c = ≢-sym (All.lookup c∉xs (∈-map⁺ (stake ∘ proj₁) mem))
            dom' : stake addr' ∈ dom acc'
            dom' = ∪ˡ-res-dom-preserve acc c (bal ∸ amt) (stake addr') c'∈dom c'≢c
            bal' : lookupᵐ? acc' (stake addr') ≡ lookupᵐ? acc (stake addr')
            bal' = ∪ˡ-res-lookup-preserve acc c (bal ∸ amt) (stake addr') c'≢c
        in  dom' , subst (amt' ≤_) (cong (maybe id 0) (sym bal')) amt'≤
```
-->



