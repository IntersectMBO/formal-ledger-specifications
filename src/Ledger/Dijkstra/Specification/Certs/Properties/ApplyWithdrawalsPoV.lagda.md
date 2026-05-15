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

open import Ledger.Dijkstra.Specification.Account gs using (DirectDeposits; BalanceInterval)
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
open ≡-Reasoning

private variable
  A : Type

instance
  _ = +-0-monoid
```
-->

## Supporting lemmas

The following auxiliary properties are needed.

### Bridge: `getCoin` of a singleton-overwriting union

After CIP-159 PR #1197, `applyToRewards` writes via `❴ k , v ❵ ∪ˡ acc` (no
complement restriction on `acc`).  Left-bias of `∪ˡ` makes this extensionally
equal to the older `❴ k , v ❵ ∪ˡ (acc ∣ ❴ k ❵ ᶜ)` form; the lemma below states
the corresponding `getCoin` equation, which the two `applyOne` proofs use to
land on a uniform RHS.

```agda
getCoin-∪ˡ-overwrite : (acc : Rewards) (c : Credential) (v : Coin)
  → getCoin (❴ c , v ❵ ∪ˡ acc) ≡ v + getCoin (acc ∣ ❴ c ❵ ᶜ)
```

<!--
```agda
getCoin-∪ˡ-overwrite acc c v =
  begin
    getCoin (❴ c , v ❵ ∪ˡ acc)
      ≡⟨ ≡ᵉ-getCoin (❴ c , v ❵ ∪ˡ acc) (❴ c , v ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ))
                    bridge ⟩
    getCoin (❴ c , v ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ))
      ≡⟨ indexedSumᵛ'-∪ ❴ c , v ❵ᵐ (acc ∣ ❴ c ❵ ᶜ) disj ⟩
    getCoin ❴ c , v ❵ᵐ + getCoin (acc ∣ ❴ c ❵ ᶜ)
      ≡⟨ cong (_+ getCoin (acc ∣ ❴ c ❵ ᶜ)) getCoin-singleton ⟩
    v + getCoin (acc ∣ ❴ c ❵ ᶜ)
      ∎
  where
  open Equivalence
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
  -- `res-decomp ❴ c , v ❵ᵐ acc` proves
  --     (❴ c , v ❵ᵐ ∪ˡ acc) ˢ ≡ᵉ (❴ c , v ❵ᵐ ∪ˡ (acc ∣ dom (❴ c , v ❵ᵐ ˢ) ᶜ)) ˢ
  -- but the bridge wants `❴ c ❵ ᶜ` on the right (a set-singleton built via
  -- the `listing` axiom of `Theory`), not `dom (❴ c , v ❵ᵐ ˢ) ᶜ` (built via
  -- `mapˢ`, i.e. the `replacement` axiom).  The two restriction sets are
  -- extensionally equal by `dom-single≡single`, so we chain `res-decomp`
  -- with an `∪ˡ`-cong step on the right operand to translate the
  -- restriction set.  ('Listing vs. replacement' is exactly what Agda's
  -- MismatchedProjectionsError flagged in the previous formulation.)

  -- `_≡ᵐ_` on `Map A B` is defined as `_≡ᵉ_` on the underlying relations
  -- (`Map.agda`: `(x , _) ≡ᵐ (y , _) = x ≡ᵉ y`), so `res-comp-cong`
  -- (from `Axiom.Set.Rel`) lifts straight to the Map level.
  restrict-cong' : (❴ c , v ❵ᵐ ∪ˡ (acc ∣ dom (❴ c , v ❵ᵐ ˢ) ᶜ)) ˢ ≡ᵉ (❴ c , v ❵ᵐ ∪ˡ (acc ∣ ❴ c ❵ ᶜ)) ˢ
  restrict-cong' =
    ∪ˡ-cong {m = ❴ c , v ❵ᵐ} {m' = (acc ∣ dom (❴ c , v ❵ᵐ ˢ) ᶜ)}{m'' = ❴ c , v ❵ᵐ} {m''' = (acc ∣ ❴ c ❵ ᶜ)}
      (≡ᵉ.refl {x = ❴ c , v ❵ᵐ ˢ}) (res-comp-cong dom-single≡single)
--  ∪ˡ-cong : ∀ {m m' m'' m''' : Map A B} → m ≡ᵐ m'' → m' ≡ᵐ m''' → (m ∪ˡ m') ≡ᵐ (m'' ∪ˡ m''')

  bridge : (❴ c , v ❵ ∪ˡ acc) ˢ ≡ᵉ (❴ c , v ❵ ∪ˡ (acc ∣ ❴ c ❵ ᶜ)) ˢ
  bridge = ≡ᵉ.trans (res-decomp ❴ c , v ❵ᵐ acc) restrict-cong'

  disj : disjoint (dom ❴ c , v ❵ᵐ) (dom (acc ∣ ❴ c ❵ ᶜ))
  disj x y = res-comp-dom y (dom-single→single x)
```
-->

### `split-by-lookup`: decompose `getCoin acc` along a known lookup result

When `lookupᵐ? acc c ≡ just bal`, we can split `getCoin acc` into the
contribution of `c` (which is `bal`) plus the contribution of everything
else (`acc ∣ ❴ c ❵ ᶜ`).  This is the prefix shared by both `applyOne-pov`
and `applyOne-pov-add`; factoring it out avoids duplicating the proof.

```agda
split-by-lookup : (acc : Rewards) (c : Credential) (bal : Coin)
  → lookupᵐ? acc c ≡ just bal
  → getCoin acc ≡ getCoin (acc ∣ ❴ c ❵ ᶜ) + bal
```

<!--
```agda
split-by-lookup acc c bal lookup-eq =
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
      ∎
  where
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
  open Equivalence
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
```
-->



### Single-step Lemma: `applyOne` decreases `getCoin` by `amt`

When `stake addr ∈ dom acc` and `amt ≤ bal` (where `bal` is the current balance),
applying a single withdrawal decreases the total by exactly `amt`.

```agda
applyOne-pov :
  (acc : Rewards) (addr : RewardAddress) (amt bal : Coin)
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
      ≡⟨ cong (getCoin (acc ∣ ❴ c ❵ ᶜ) +_) (sym (m∸n+n≡m amt≤bal)) ⟩
    getCoin (acc ∣ ❴ c ❵ ᶜ) + (bal ∸ amt + amt)
      ≡⟨ trans (sym (+-assoc (getCoin (acc ∣ ❴ c ❵ ᶜ)) (bal ∸ amt) amt))
               (cong (_+ amt) (+-comm (getCoin (acc ∣ ❴ c ❵ ᶜ)) (bal ∸ amt))) ⟩
    (bal ∸ amt) + getCoin (acc ∣ ❴ c ❵ ᶜ) + amt
      ≡˘⟨ cong (_+ amt) (getCoin-∪ˡ-overwrite acc c (bal ∸ amt)) ⟩
    getCoin (❴ c , bal ∸ amt ❵ ∪ˡ acc) + amt
      ∎
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
module ApplyToRewards-PoV
  -- ASSUMPTIONS --

  -- TODO: ask that these be proved in the `agda-sets` library.

  -- 1. For any credential `c'` other than `c`, lookupᵐ? (❴ c , v ❵ ∪ˡ m) c' ≡ lookupᵐ? m c'
  ( ∪ˡ-lookup-preserve : (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ m) c' ≡ lookupᵐ? m c' )
    -- It's hard because the `agda-sets` API requires instance resolution for
    -- `lookupᵐ?`, but the semantic content is clear (lookup in a left-biased union
    -- for a key not in the left map equals lookup in the right map, and complement
    -- restriction doesn't affect keys ≢ c); threading it through the `⁇` instance
    -- resolution is painful library plumbing.

   -- 2. getCoin representation.
  ( sum-map-proj₂≡getCoin : (m : RewardAddress ⇀ Coin) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

   -- 3. no duplicate credentials.
  ( setToList-Unique : (m : RewardAddress ⇀ Coin) → ∀[ a ∈ dom (m ˢ) ] NetworkIdOf a ≡ NetworkId
      → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )

  where

  -- Local convenience matching the inline fold body of `applyToRewards`.
  -- Definitionally equal to the lambda inside `applyToRewards f`, so
  -- `foldl applyOne acc xs ≡ foldl (applyToRewards-lambda f) acc xs` is `refl`.
  applyOne : (Coin → Coin → Coin) → Rewards → RewardAddress × Coin → Rewards
  applyOne f acc (addr , amt) =
    maybe (λ bal → ❴ stake addr , f bal amt ❵ ∪ˡ acc) acc (lookupᵐ? acc (stake addr))
```
-->


## Main Theorems

### `applyWithdrawals-pov`

This is the form needed by `PRE-CERT-pov`.

```agda
  applyWithdrawals-pov : (wdrls : Withdrawals) (rwds : Rewards)
    → mapˢ stake (dom wdrls) ⊆ dom rwds
    → ∀[ a ∈ dom wdrls ] NetworkIdOf a ≡ NetworkId
    → ∀[ (addr , amt) ∈ wdrls ˢ ] amt ≤ maybe id 0 (lookupᵐ? rwds (stake addr))
    → getCoin rwds ≡ getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls
```

<!--
```agda
  applyWithdrawals-pov wdrls rwds creds∈ netIds amts≤ =
    begin
      getCoin rwds
        ≡⟨ foldl-applyOne-pov rwds (setToList (wdrls ˢ)) inv (setToList-Unique wdrls netIds) ⟩
      getCoin (foldl (applyOne _∸_) rwds (setToList (wdrls ˢ))) + sum (map proj₂ (setToList (wdrls ˢ)))
        ≡⟨ cong (getCoin (foldl (applyOne _∸_) rwds (setToList (wdrls ˢ))) +_) (sum-map-proj₂≡getCoin wdrls) ⟩
      getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls
        ∎
    where
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
      → getCoin acc ≡ getCoin (foldl (applyOne _∸_) acc entries) + sum (map proj₂ entries)


    foldl-applyOne-pov acc [] _ _ = sym (+-identityʳ (indexedSumᵛ' id acc))

    foldl-applyOne-pov acc ((addr , amt) ∷ xs) h (c∉xs :: uniq-xs)
      with lookupᵐ? acc (stake addr) in eq

    -- Nothing case: applyOne is a no-op, amt must be 0.
    ... | nothing =
      let amt≤0 = subst (amt ≤_) (cong (maybe id 0) eq) (h (here refl) .proj₂)
          amt≡0 = n≤0⇒n≡0 amt≤0
      in -- amt ≤ maybe id 0 nothing = amt ≤ 0
      subst (λ a → getCoin acc ≡ getCoin (foldl (applyOne _∸_) acc xs) + (a + sum (map proj₂ xs)))
            (sym amt≡0)
            (foldl-applyOne-pov acc xs (λ mem → h (there mem)) uniq-xs)

    -- Just case: the main inductive step.
    ... | just bal = begin
        getCoin acc
          ≡⟨ applyOne-pov acc addr amt bal eq amt≤bal ⟩
        getCoin acc' + amt
          ≡⟨ cong (_+ amt) (foldl-applyOne-pov acc' xs h' uniq-xs) ⟩
        (getCoin (foldl (applyOne _∸_) acc' xs) + sum (map proj₂ xs)) + amt
          ≡⟨ +-assoc (getCoin (foldl (applyOne _∸_) acc' xs)) (sum (map proj₂ xs)) amt ⟩
        getCoin (foldl (applyOne _∸_) acc' xs) + (sum (map proj₂ xs) + amt)
          ≡⟨ cong (getCoin (foldl (applyOne _∸_) acc' xs) +_) (+-comm (sum (map proj₂ xs)) amt) ⟩
        getCoin (foldl (applyOne _∸_) acc' xs) + (amt + sum (map proj₂ xs))
          ∎
      where
      c   = stake addr
      acc' : Rewards
      acc' = ❴ c , bal ∸ amt ❵ ∪ˡ acc

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
            dom' = dom∪ˡʳ {m = ❴ c , bal ∸ amt ❵} {m' = acc} c'∈dom
            bal' : lookupᵐ? acc' (stake addr') ≡ lookupᵐ? acc (stake addr')
            bal' = ∪ˡ-lookup-preserve acc c (bal ∸ amt) (stake addr') c'≢c
        in  dom' , subst (amt' ≤_) (cong (maybe id 0) (sym bal')) amt'≤
```
-->

### `applyDirectDeposits-pov`

The CIP-159 `POST-CERT` rule applies direct deposits via `applyDirectDeposits dd rwds`,
*increasing* the rewards balance by exactly the sum of the deposit amounts.  This
lemma is the symmetric counterpart to `applyWithdrawals-pov`; both are instances
of the common `applyToRewards` fold.

The fold induction `foldl-applyOne-pov-add` is the additive analogue of
`foldl-applyOne-pov`; its single-step ingredient `applyOne-pov-add` follows
directly from `getCoin-∪ˡ-overwrite`.

```agda
  applyOne-pov-add : (acc : Rewards) (addr : RewardAddress) (amt bal : Coin)
    → lookupᵐ? acc (stake addr) ≡ just bal
    → getCoin (❴ stake addr , bal + amt ❵ ∪ˡ acc) ≡ getCoin acc + amt
```

<!--
```agda
  applyOne-pov-add acc addr amt bal lookup-eq =
    let c = stake addr in
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

```agda
  foldl-applyOne-pov-add : (acc : Rewards) (entries : List (RewardAddress × Coin))
    → (∀ {addr amt} → (addr , amt) ∈ˡ entries → stake addr ∈ dom acc)
    → Unique (map (stake ∘ proj₁) entries)
    → getCoin (foldl (applyOne _+_) acc entries) ≡ getCoin acc + sum (map proj₂ entries)
```

<!--
```agda
  foldl-applyOne-pov-add acc [] _ _ =
    sym (+-identityʳ (indexedSumᵛ' id acc))
  foldl-applyOne-pov-add acc ((addr , amt) ∷ xs) h (c∉xs :: uniq-xs)
    with lookupᵐ? acc (stake addr) in eq
  ... | just bal = begin
      getCoin (foldl (applyOne _+_) acc' xs)
        ≡⟨ foldl-applyOne-pov-add acc' xs h' uniq-xs ⟩
      getCoin acc' + sum (map proj₂ xs)
        ≡⟨ cong (_+ sum (map proj₂ xs)) (applyOne-pov-add acc addr amt bal eq) ⟩
      (getCoin acc + amt) + sum (map proj₂ xs)
        ≡⟨ +-assoc (getCoin acc) amt (sum (map proj₂ xs)) ⟩
      getCoin acc + (amt + sum (map proj₂ xs))
        ∎
    where
    c = stake addr
    acc' = ❴ c , bal + amt ❵ ∪ˡ acc
    -- `h'` is the same invariant-transfer argument as in `foldl-applyOne-pov`,
    -- but with no `amt ≤ maybe id 0 (lookupᵐ? _ _)` bound to thread — only
    -- domain membership has to be preserved.
    -- Since `acc' = ❴ c , bal + amt ❵ ∪ˡ acc` (no complement restriction),
    -- we use `dom∪ˡʳ` directly; membership in `dom acc` lifts to membership
    -- in `dom acc'` without needing the `c'≢c` witness.
    h' : ∀ {addr' amt'} → (addr' , amt') ∈ˡ xs → stake addr' ∈ dom acc'
    h' mem = dom∪ˡʳ {m = ❴ c , bal + amt ❵} {m' = acc} (h (there mem))
  -- Defensive `nothing` case ruled out by the membership precondition.
  ... | nothing with (stake addr ∈? dom (acc ˢ))
  ... | yes c∈ = case eq of λ ()
  ... | no a∉ = ⊥-elim (a∉ (h (here refl)))
```
-->



```agda
  applyDirectDeposits-pov : (dd : DirectDeposits) (rwds : Rewards)
    → mapˢ stake (dom dd) ⊆ dom rwds
    → ∀[ a ∈ dom dd ] NetworkIdOf a ≡ NetworkId
    → getCoin (applyDirectDeposits dd rwds) ≡ getCoin rwds + getCoin dd
```

<!--
```agda
  applyDirectDeposits-pov dd rwds creds∈ netIds =
    begin
      getCoin (applyDirectDeposits dd rwds)
        ≡⟨ refl ⟩  -- by definition of `applyDirectDeposits = applyToRewards _+_`
      getCoin (foldl (applyOne _+_) rwds (setToList (dd ˢ)))
        ≡⟨ foldl-applyOne-pov-add rwds (setToList (dd ˢ)) inv
                                       (setToList-Unique dd netIds) ⟩
      getCoin rwds + sum (map proj₂ (setToList (dd ˢ)))
        ≡⟨ cong (getCoin rwds +_) (sum-map-proj₂≡getCoin dd) ⟩
      getCoin rwds + getCoin dd
        ∎
    where
    open Equivalence
    inv : ∀ {addr amt} → (addr , amt) ∈ˡ setToList (dd ˢ) → stake addr ∈ dom rwds
    inv {addr} {amt} mem =
      let addr-amt∈dd : (addr , amt) ∈ dd ˢ
          addr-amt∈dd = setToList-∈ mem
          c∈dom-dd : stake addr ∈ mapˢ stake (dom dd)
          c∈dom-dd = to ∈-map (addr , refl , to dom∈ (amt , addr-amt∈dd))
      in  creds∈ c∈dom-dd
```
-->

