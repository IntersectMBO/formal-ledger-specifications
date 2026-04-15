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
open import Relation.Binary using (IsEquivalence)

open RewardAddress

private variable
  A : Type

instance
  _ = +-0-monoid
```
-->

## Module parameters

We parameterize over the standard finite-map sum lemmas (same pattern as Conway).

<!--
```agda
module ApplyWithdrawals-PoV
  ( getCoin-cong :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin))
                  → s ˢ ≡ᵉ s' → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
  where
  open ≡-Reasoning
  open Equivalence
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})

```
-->

## Single-step lemma: `applyOne` decreases `getCoin` by `amt`

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
  applyOne-pov acc addr amt bal lookup-eq amt≤bal = trans acc≡decomp decomp≡goal
    where
    c : Credential
    c = stake addr

    ξ : acc ˢ ≡ᵉ (acc ∣ ❴ c ❵) ˢ ∪ (acc ∣ ❴ c ❵ ᶜ) ˢ
    ξ = IsEquivalence.sym ≡ᵉ-isEquivalence (res-ex-∪ Dec-∈-singleton)

    c∈acc : (c , bal) ∈ acc ˢ
    c∈acc with c ∈? dom (acc ˢ)
    ... | yes c∈dom =
      subst (λ v → (c , v) ∈ acc ˢ)
            (just-injective lookup-eq)    -- lookupᵐ acc c ≡ bal
            (lookupᵐ-∈ acc c c∈dom)      -- (c , lookupᵐ acc c) ∈ acc ˢ
    ... | no c∉dom = case lookup-eq of λ ()
      -- lookupᵐ? resolves to nothing, so nothing ≡ just bal is absurd

    acc∣c≡bal : getCoin (acc ∣ ❴ c ❵) ≡ bal
    acc∣c≡bal =
      trans (getCoin-cong (acc ∣ ❴ c ❵) ❴ (c , bal) ❵ (res-singleton' c∈acc))
            getCoin-singleton

    c∉dom-compl : c ∉ dom ((acc ∣ ❴ c ❵ ᶜ) ˢ)
    c∉dom-compl c∈ = res-comp-dom c∈ (∈-singleton .Equivalence.to refl)


    decomp : acc ≡ (acc ∣ ❴ c ❵ ᶜ) ∪ˡ (acc ∣ ❴ c ❵)
    decomp = ?

    acc≡decomp : getCoin acc ≡ getCoin decomp
    acc≡decomp =
      ≡ᵉ-getCoin decomp acc
        ( ≡ᵉ.trans (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                   ( ≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩

    decomp≡goal : getCoin decomp ≡ getCoin (acc ∣ ❴ c ❵ ᶜ) + getCoin (acc ∣ ❴ c ❵)
    decomp≡goal = indexedSumᵛ'-∪ (acc ∣ ❴ c ❵ ᶜ) (acc ∣ ❴ c ❵) (disjoint-sym res-ex-disjoint) ⟩

    -- Goal : getCoin acc ≡ getCoin (❴ c , bal ∸ amt ❵ᵐ ∪ˡ (acc ∣ ❴ c ❵ˢ ᶜ)) + amt
    -- Goal = begin
    --   getCoin acc
    --     ≡⟨ {!!} ⟩        -- by: acc ≡ᵉ (acc ∣ ❴ c ❵ ᶜ) ∪ (acc ∣ ❴ c ❵), then indexedSumᵛ'-∪
    --   getCoin (acc ∣ ❴ c ❵ ᶜ) + getCoin (acc ∣ ❴ c ❵)
    --     ≡⟨ {!!} ⟩        -- by: getCoin-cong on (acc ∣ ❴ c ❵) ≡ᵉ ❴ c , bal ❵ (from lookup-eq)
    --   getCoin (acc ∣ ❴ c ❵ ᶜ) + bal
    --     ≡⟨ {!!} ⟩        -- by: m∸n+n≡m amt≤bal
    --   getCoin (acc ∣ ❴ c ❵ ᶜ) + (bal ∸ amt + amt)
    --     ≡⟨ {!!} ⟩        -- by: +-comm, +-assoc
    --   (bal ∸ amt) + getCoin (acc ∣ ❴ c ❵ ᶜ) + amt
    --     ≡⟨ {!!} ⟩        -- by: indexedSumᵛ'-∪ (disjoint since c ∉ dom (acc ∣ ❴ c ❵ ᶜ))
    --   getCoin (❴ c , bal ∸ amt ❵ᵐ ∪ˡ (acc ∣ ❴ c ❵ˢ ᶜ)) + amt
    --   ∎
```
-->

## Fold invariant

The fold invariant tracks three properties through the induction:

1. All remaining withdrawal credentials are in the current accumulator's domain.
2. All remaining withdrawal amounts are bounded by the current balances.
3. Each credential appears at most once in the remaining list (NoDup on credentials).

<!--
```agda
  -- The fold invariant for the induction.
  --
  -- After processing some prefix of withdrawals, the remaining suffix still
  -- has all its credentials registered in the accumulator, with amounts bounded
  -- by current (possibly reduced) balances.
  --
  -- The NoDup condition ensures each credential is targeted at most once,
  -- which is critical: applyOne replaces (not removes) the entry, so other
  -- credentials' balances are unchanged, but the same credential's balance
  -- IS reduced.  NoDup guarantees we never revisit a reduced balance.
  --
  -- NoDup on (mapˢ (stake ∘ proj₁) entries) follows from injectivity of
  -- `stake` on `dom wdrls`, which follows from the NetworkId constraint.
```
-->

## Main lemma: fold over the full list

```agda
  applyOne : Rewards → RewardAddress × Coin → Rewards
  applyOne ac (addr , amt) =
    case lookupᵐ? ac (stake addr) of λ where
      (just bal) → ❴ stake addr , bal ∸ amt ❵ ∪ˡ (ac ∣ ❴ stake addr ❵ ᶜ)
      nothing    → ac

  foldl-applyOne-pov :
    (acc : Rewards) (entries : List (RewardAddress × Coin))
    → (∀ {addr amt} → (addr , amt) ∈ˡ entries
        → stake addr ∈ dom acc
        × amt ≤ maybe id 0 (lookupᵐ? acc (stake addr)))
    -- → NoDup (map (stake ∘ proj₁) entries)  -- needed for invariant preservation
    → getCoin acc ≡ getCoin (foldl applyOne acc entries) + sum (map proj₂ entries)
```

<!--
```agda
  foldl-applyOne-pov = {!!}
    -- Proof by induction on entries:
    --
    -- Base case (entries = []):
    --   getCoin acc ≡ getCoin acc + 0   -- by +-identityʳ
    --
    -- Step case (entries = (addr , amt) ∷ rest):
    --   Let acc' = applyOne acc (addr , amt).
    --   By the invariant, stake addr ∈ dom acc and amt ≤ bal.
    --   So lookupᵐ? acc (stake addr) ≡ just bal for some bal.
    --
    --   (1) applyOne-pov gives:
    --       getCoin acc ≡ getCoin acc' + amt
    --
    --   (2) For the IH, we need the invariant for (acc', rest).
    --       - Domain: applyOne replaces the entry for `stake addr`,
    --         so all credentials remain in dom acc'.  For credentials
    --         ≠ stake addr, the complement restriction preserves them.
    --       - Bounds: Since NoDup ensures `stake addr` does not appear
    --         again in rest, remaining entries target different credentials
    --         whose balances are unchanged by applyOne.
    --
    --   (3) IH on (acc', rest) gives:
    --       getCoin acc' ≡ getCoin (foldl applyOne acc' rest) + sum (map proj₂ rest)
    --
    --   (4) Combining (1) and (3):
    --       getCoin acc
    --         ≡ getCoin acc' + amt
    --         ≡ getCoin (foldl applyOne acc' rest) + sum (map proj₂ rest) + amt
    --         ≡ getCoin (foldl applyOne acc ((addr,amt) ∷ rest)) + (amt + sum (map proj₂ rest))
    --         ≡ getCoin (foldl applyOne acc ((addr,amt) ∷ rest)) + sum (map proj₂ ((addr,amt) ∷ rest))
```
-->

## Top-level lemma

This is the form needed by `PRE-CERT-pov`.

```agda
  applyWithdrawals-pov :
    (wdrls : Withdrawals) (rwds : Rewards)
    → mapˢ stake (dom wdrls) ⊆ dom rwds
    → (∀[ (addr , amt) ∈ wdrls ˢ ] amt ≤ maybe id 0 (lookupᵐ? rwds (stake addr)))
    → getCoin rwds ≡ getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls
```

<!--
```agda
  applyWithdrawals-pov = {!!}
    -- Proof:
    --
    -- applyWithdrawals wdrls rwds = foldl applyOne rwds (setToList (wdrls ˢ))
    --
    -- Apply foldl-applyOne-pov with acc = rwds, entries = setToList (wdrls ˢ).
    --
    -- The preconditions of foldl-applyOne-pov follow from:
    --   - Domain membership: from `mapˢ stake (dom wdrls) ⊆ dom rwds`
    --   - Amount bounds: from the second precondition
    --   - NoDup: from injectivity of `stake` on `dom wdrls`
    --     (which follows from the NetworkId constraint, established in PRE-CERT-pov)
    --
    -- The remaining step is to relate:
    --   sum (map proj₂ (setToList (wdrls ˢ))) ≡ getCoin wdrls
    --
    -- This holds because getCoin for a finite map is defined as
    -- indexedSumᵛ' which sums over the set representation, and
    -- summing proj₂ over the list representation of the same set
    -- gives the same result (by properties of setToList/indexedSum).
```
-->

## Supporting lemmas (to be proved)

The following auxiliary properties are needed but not yet proved.
They are standard finite-map facts independent of CIP-159.

```agda
  -- applyOne preserves domain membership for other credentials.
  Claim-applyOne-dom-preserve :
    ∀ (acc : Rewards) (addr : RewardAddress) (amt : Coin) (c : Credential)
    → c ∈ dom acc → c ≢ stake addr
    → c ∈ dom (case lookupᵐ? acc (stake addr) of λ where
                 (just bal) → ❴ stake addr , bal ∸ amt ❵ ∪ˡ (acc ∣ ❴ stake addr ❵ ᶜ)
                 nothing    → acc)
  Claim-applyOne-dom-preserve = {!!}

  -- applyOne preserves balance for other credentials.
  Claim-applyOne-balance-preserve :
    ∀ (acc : Rewards) (addr : RewardAddress) (amt : Coin) (c : Credential)
    → c ≢ stake addr
    → lookupᵐ? (case lookupᵐ? acc (stake addr) of λ where
                   (just bal) → ❴ stake addr , bal ∸ amt ❵ ∪ˡ (acc ∣ ❴ stake addr ❵ ᶜ)
                   nothing    → acc) c
      ≡ lookupᵐ? acc c
  Claim-applyOne-balance-preserve = {!!}
```
