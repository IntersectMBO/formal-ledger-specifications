---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoVLemmas.lagda.md
---
# The Preservation-of-Value Property for `CERT`{.AgdaDatatype}

This module proves two related properties of the individual-certificate
transition rule `CERT`{.AgdaDatatype}:

+  **Preservation of value** (`CERT-pov`{.AgdaFunction}): every `CERT` step
   leaves `getCoin`{.AgdaField} of the `CertState`{.AgdaRecord} unchanged.
+  **The per-step coin-form bridging lemma**
   (`CERT-coinFromDeposits-step`{.AgdaFunction}): the post-step
   `coinFromDeposits`{.AgdaFunction} is equal to the coin-valuation of the
   closed-form `updateCertDeposit`{.AgdaFunction} applied to the pre-step
   deposit-pot triple.

The first is the per-step ingredient of `CERTS-pov`{.AgdaFunction} in
`Certs.Properties.PoV`{.AgdaModule}.  The second is the per-step ingredient
of `CERTS-coinFromDeposits-updateCertDeposits`{.AgdaFunction} in
`Certs.Properties.PoV`{.AgdaModule}, which `LEDGER-pov`{.AgdaFunction}
consumes to relate the actual `CertState` deposit-evolution to the closed-form
`newCertDeposits`{.AgdaFunction} / `refundCertDeposits`{.AgdaFunction}
quantities appearing in the UTXO batch-balance equation.

## Why coin form, and why the `≡ᵐ`-componentwise scaffolding

A naïve triple-form bridging lemma would say

    pots s' ≡ updateCertDeposit pp dCert (pots s)

**propositionally**.  For the `POOL-rereg` case, the rule leaves the
pool-deposit pot unchanged, but `updateCertDeposit`{.AgdaFunction} appends
`❴ kh , poolDeposit ❵`.  Closing this gap requires the equation

    m ∪ˡ ❴ k , v ❵ ≡ m     (when  k ∈ dom m),

which `agda-sets` only provides up to `≡ᵐ`{.AgdaFunction} (extensional map
equality), **not** propositional `≡`.

To avoid introducing a deferred propositional version of that fact, we work
at two levels:

+  The **per-step triple-form bridge** `CERT-pots-≡ᵐᵗ`{.AgdaFunction} states
   `pots s'`{.AgdaFunction} and the closed-form output agree
   **componentwise modulo `≡ᵐ`**.  The `POOL-rereg` case uses
   `singleton-∈-∪ˡ`{.AgdaFunction} from `agda-sets`

        a ∈ dom m → m ∪ˡ ❴ (a , b) ❵ᵐ ≡ᵐ m

   — a parameter-free fact.
+  The **per-step coin-form bridge** `CERT-coinFromDeposits-step`{.AgdaFunction}
   is derived from `CERT-pots-≡ᵐᵗ`{.AgdaFunction} by collapsing each
   `≡ᵐ`{.AgdaFunction} component to a coin equality via `≡ᵉ-getCoin`{.AgdaFunction},
   and summing the three resulting equalities.

The `≡ᵐ`-componentwise relation `_≡ᵐᵗ_` threads through the list-iterated closed
form `updateCertDeposit-list`{.AgdaFunction} via the componentwise `cong` lemmas
(`∪ˡ-cong`{.AgdaFunction}, `∪⁺-cong-r`{.AgdaFunction}, `restrict-cong`{.AgdaFunction}).
This means the RTC version of the bridge in `Certs.Properties.PoV`{.AgdaModule} can
chain the per-step facts without ever needing the propositional `m ∪ˡ ❴ k , v ❵ ≡ m`.

Net result: the only deferred assumption at the bridging level is
`PoolDepositsAligned-CERT`{.AgdaFunction} (preservation of the
pool-deposit-alignment invariant under one `CERT` step), consumed in
`Certs.Properties.PoV`{.AgdaModule} and discharged at the `CHAIN`-invariant
layer in a follow-up issue.

## A note on unresolved-implicit hygiene

Several lemmas in this module rely on `agda-sets` `Map`-respecting cong
operations (`∪ˡ-cong`{.AgdaFunction}, `restrict-cong`{.AgdaFunction},
`∪⁺-cong-r`{.AgdaFunction}, `≡ᵐ-refl`{.AgdaFunction}, `≡ᵉ-getCoin`{.AgdaFunction}).
A subtle interaction with the definition of `_≡ᵐ_`{.AgdaFunction} —
`m ≡ᵐ m'` unfolds to `m ˢ ≡ᵉ m' ˢ`, which only constrains the **relation**
projection of the `Map` Σ — means that unification through `_≡ᵐ_` does not
propagate `left-unique`{.AgdaFunction} witnesses.  Two patterns avoid the
resulting unresolved metas:

+  When a lemma has **implicit** `Map` arguments (like the four maps of `∪ˡ-cong`),
   we pass them explicitly at the call site:
   `∪ˡ-cong {m = b} {m' = sing} {m'' = b'} {m''' = sing} …`.
+  When defining lemmas whose implicit `Triple` arguments would be decomposed
   by an LHS pattern (`{a , b , g}`), we instead bind the triple variable
   directly (`{t}`) and project explicitly in the body (`proj₁ t`, etc.).
   Pattern destructuring at an **implicit** position introduces three fresh
   implicit Map metas — one per component — whose `.proj₂` (`left-unique`)
   doesn't get pinned by the usual `_≡ᵐ_`-based unification.  Projection
   terms have no such gap because the `Map` Σ remains atomically referenced
   through `t`.

The two patterns combined keep all `Σ`-level facts concrete at every call
site — relation **and** `left-unique` — and the module typechecks meta-free.
(`pots s'` for `≡ᵐᵗ-refl` in the seven refl cases of `CERT-pots-≡ᵐᵗ`, and
explicit `depᵖ`/`depᵖ ∪ˡ ❴ kh , pp .poolDeposit ❵ᵐ` to `≡ᵐ-sym` in the
`POOL-rereg` case, follow the same principle.)

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)

-- `_∪⁺_`- and `_∣_ᶜ`-respecting `≡ᵐ`-cong lemmas.  These live in the
-- `Extra` module of `abstract-set-theory`; named explicitly so we don't
-- depend on whichever subset `Ledger.Prelude` re-exports today.
open import abstract-set-theory.Axiom.Set.Map.Extra
  using (∪⁺-cong-r; restrict-cong)

open import Axiom.Set.Properties th
open import Algebra using (CommutativeMonoid)
import Algebra.Structures as AlgStruct
open import Data.Maybe using (Is-just)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ)
open import Relation.Binary using (IsEquivalence)
open import Relation.Nullary.Decidable

-- TODO: some hoop-jumping required since the Map proofs need the
-- stdlib IsCommutativeSemigroup for Coin.
open AlgStruct {A = Coin} _≡_ using (IsCommutativeSemigroup)
open import Data.Nat.Properties using (+-isCommutativeSemigroup)

instance
  Coin-Semigroup : IsCommutativeSemigroup _+_
  Coin-Semigroup = +-isCommutativeSemigroup

open CertState

open PParams

private variable
  dCert : DCert
  A     : Type

instance
  _ = +-0-monoid

open ≡-Reasoning
open Equivalence
```
-->

## Deposit-pot triple and closed-form helpers {#sec:triple-helpers}

The three deposit pots carried by a `CertState`{.AgdaRecord} live in
distinct map types (`Credential ⇀ Coin`, `KeyHash ⇀ Coin`, `Credential ⇀ Coin`),
so we package them as a single `Triple`{.AgdaFunction}, inhabitants of which are
constructed via `pots`{.AgdaFunction}, and values of which are computed via
`coinFromDeposits-pots`{.AgdaFunction}.  By definition,

    coinFromDeposits cs ≡ coinFromDeposits-pots (pots cs).

```agda
Triple : Type
Triple = (Credential ⇀ Coin) × (KeyHash ⇀ Coin) × (Credential ⇀ Coin)

pots : CertState → Triple
pots cs =
  ( DepositsOf (DStateOf cs)
  , DepositsOf (PStateOf cs)
  , DepositsOf (GStateOf cs)
  )

coinFromDeposits-pots : Triple → Coin
coinFromDeposits-pots (depᵈ , depᵖ , depᵍ) =
  getCoin depᵈ + getCoin depᵖ + getCoin depᵍ
```

The per-step pots equation

    pots (updateCertDepositsStep pp s c) ≡ updateCertDeposit pp c (pots s)

is **propositional**: by Σ-η on `Triple`{.AgdaFunction} and record-η on the three
`record dState { deposits = ... }` updates inside
`updateCertDepositsStep`{.AgdaFunction}, both sides reduce to the same expression.

```agda
pots-updateCertDepositsStep : (pp : PParams) (s : CertState) (c : DCert)
  → pots (updateCertDepositsStep pp s c) ≡ updateCertDeposit pp c (pots s)
pots-updateCertDepositsStep _ _ _ = refl
```

The triple-level closed-form iteration mirrors the rule-level
`updateCertDeposits`{.AgdaFunction}: both fold the same per-step function
over a list of certificates.

```agda
updateCertDeposit-list : PParams → Triple → List DCert → Triple
updateCertDeposit-list pp t = foldl (λ t' c → updateCertDeposit pp c t') t
```

These two closed forms agree **propositionally** at the triple level — no `≡ᵐ`-only
steps required, since both sides are built by the same `foldl` from the same per-step
function.

```agda
pots-updateCertDeposits : (pp : PParams) (s : CertState) (cs : List DCert)
  → pots (updateCertDeposits pp s cs) ≡ updateCertDeposit-list pp (pots s) cs
pots-updateCertDeposits _ _ []        = refl
pots-updateCertDeposits pp s (c ∷ cs') =
  -- Both sides reduce via `foldl _ e (c ∷ cs') = foldl _ (f e c) cs'` to
  -- the same recursive shape, then we apply IH and the per-step
  -- propositional equation `pots-updateCertDepositsStep`.
  trans  (pots-updateCertDeposits pp (updateCertDepositsStep pp s c) cs')
         (cong (λ t → updateCertDeposit-list pp t cs')
               (pots-updateCertDepositsStep pp s c))
```

## Componentwise `≡ᵐ` on `Triple` {#sec:eq-triple}

```agda
-- Componentwise extensional map equality on `Triple`.
_≡ᵐᵗ_ : Triple → Triple → Type
(a₁ , b₁ , c₁) ≡ᵐᵗ (a₂ , b₂ , c₂) =
  (a₁ ≡ᵐ a₂) × (b₁ ≡ᵐ b₂) × (c₁ ≡ᵐ c₂)

private
  -- `_≡ᵐ_` for maps is `m ˢ ≡ᵉ m' ˢ`, which is a pair of inclusions; refl,
  -- sym, and trans are all immediate.  Map arguments are kept explicit so
  -- the callers can pin them down precisely (avoiding `left-unique` metas).
  ≡ᵐ-refl : ∀ {A B : Type} (m : A ⇀ B) → m ≡ᵐ m
  ≡ᵐ-refl _ = id , id

  ≡ᵐ-sym : ∀ {A B : Type} (m m' : A ⇀ B) → m ≡ᵐ m' → m' ≡ᵐ m
  ≡ᵐ-sym _ _ (p , q) = (q , p)

  ≡ᵐ-trans : ∀ {A B : Type} (m m' m'' : A ⇀ B)
    → m ≡ᵐ m' → m' ≡ᵐ m'' → m ≡ᵐ m''
  ≡ᵐ-trans _ _ _ (p , q) (p' , q') = (λ x → p' (p x)) , (λ x → q (q' x))

≡ᵐᵗ-refl : ∀ t → t ≡ᵐᵗ t
≡ᵐᵗ-refl (a , b , c) = ≡ᵐ-refl a , ≡ᵐ-refl b , ≡ᵐ-refl c

≡ᵐᵗ-sym : ∀ t₁ t₂ → t₁ ≡ᵐᵗ t₂ → t₂ ≡ᵐᵗ t₁
≡ᵐᵗ-sym (a , b , c) (a' , b' , c') (p1 , p2 , p3) =
  ≡ᵐ-sym a a' p1 , ≡ᵐ-sym b b' p2 , ≡ᵐ-sym c c' p3

≡ᵐᵗ-trans : ∀ t₁ t₂ t₃ → t₁ ≡ᵐᵗ t₂ → t₂ ≡ᵐᵗ t₃ → t₁ ≡ᵐᵗ t₃
≡ᵐᵗ-trans (a₁ , b₁ , c₁) (a₂ , b₂ , c₂) (a₃ , b₃ , c₃) (pa , pb , pc) (pa' , pb' , pc') =
  ≡ᵐ-trans a₁ a₂ a₃ pa pa' , ≡ᵐ-trans b₁ b₂ b₃ pb pb' , ≡ᵐ-trans c₁ c₂ c₃ pc pc'
```

## `≡ᵐᵗ`-respect of the closed-form operations {#sec:eq-triple-cong}

`updateCertDeposit`{.AgdaFunction} is built from `∪⁺`{.AgdaFunction},
`∪ˡ`{.AgdaFunction}, and `_∣_ ᶜ`{.AgdaFunction}, each of which respects `≡ᵐ`.
Case-splitting on the certificate constructor and applying the relevant `cong` lemma
in the affected component (with `≡ᵐ-refl`{.AgdaFunction} in the others) yields the
lemma below.

The `regpool` case is the one that needs care: `∪ˡ-cong b≡ _` would leave the
right-hand operand's Map (and its `left-unique` field) as a meta, so we bind `pp`
and `kh` explicitly and pass the fully-constructed singleton
`❴ kh , pp .poolDeposit ❵ᵐ` to `≡ᵐ-refl`{.AgdaFunction}.

```agda
updateCertDeposit-≡ᵐᵗ : (pp : PParams) (c : DCert) {t t' : Triple}
  → t ≡ᵐᵗ t'
  → updateCertDeposit pp c t ≡ᵐᵗ updateCertDeposit pp c t'
updateCertDeposit-≡ᵐᵗ _  (delegate _ _ _ _)                       (a≡ , b≡ , g≡) =
  ∪⁺-cong-r a≡ , b≡ , g≡
updateCertDeposit-≡ᵐᵗ _  (dereg _ _) {a , _ , _} {a' , _ , _}     (a≡ , b≡ , g≡) =
  restrict-cong a a' a≡ , b≡ , g≡
updateCertDeposit-≡ᵐᵗ pp (regpool kh _) {t = t} {t' = t'}         (a≡ , b≡ , g≡) =
  -- `∪ˡ-cong` has four **implicit** Map arguments {m m' m'' m'''}.  Inferring
  -- them only from `b≡ : … ≡ᵐ …` and `≡ᵐ-refl sing : sing ≡ᵐ sing` pins each
  -- meta's `.proj₁` (the relation) but leaves its `.proj₂` (`left-unique`)
  -- as a separate meta — `_≡ᵐ_`'s definition `m ˢ ≡ᵉ m' ˢ` simply doesn't
  -- mention the Σ-tail.  We pass all four explicitly: `b` and `b'` projected
  -- from `t` and `t'` (the projection form keeps the Σ atomically referenced
  -- and avoids the implicit-pattern-meta issue), and the singleton itself
  -- for both `m'` and `m'''`.
  let sing = ❴ kh , pp .poolDeposit ❵ᵐ
      b    = proj₁ (proj₂ t)
      b'   = proj₁ (proj₂ t')
  in a≡ , ∪ˡ-cong {m = b} {m' = sing} {m'' = b'} {m''' = sing} b≡ (≡ᵐ-refl sing) , g≡
updateCertDeposit-≡ᵐᵗ _  (regdrep _ _ _)                          (a≡ , b≡ , g≡) =
  a≡ , b≡ , ∪⁺-cong-r g≡
updateCertDeposit-≡ᵐᵗ _  (deregdrep _ _) {_ , _ , g} {_ , _ , g'} (a≡ , b≡ , g≡) =
  a≡ , b≡ , restrict-cong g g' g≡
updateCertDeposit-≡ᵐᵗ _  (retirepool _ _)                         eq = eq
updateCertDeposit-≡ᵐᵗ _  (ccreghot _ _)                           eq = eq
```

The list-iterated version is straightforward induction on the list,
delegating to `updateCertDeposit-≡ᵐᵗ`{.AgdaFunction} at each step.

```agda
updateCertDeposit-list-≡ᵐᵗ : (pp : PParams) (cs : List DCert) {t t' : Triple}
  → t ≡ᵐᵗ t'
  → updateCertDeposit-list pp t cs ≡ᵐᵗ updateCertDeposit-list pp t' cs
updateCertDeposit-list-≡ᵐᵗ _  []        eq = eq
updateCertDeposit-list-≡ᵐᵗ pp (c ∷ cs') eq =
  updateCertDeposit-list-≡ᵐᵗ pp cs' (updateCertDeposit-≡ᵐᵗ pp c eq)
```

Finally, `≡ᵐᵗ`-equal triples have equal coin valuations: collapse each
component via `≡ᵉ-getCoin`{.AgdaFunction} and sum.

```agda
coinFromDeposits-pots-cong : {t t' : Triple}
  → t ≡ᵐᵗ t' → coinFromDeposits-pots t ≡ coinFromDeposits-pots t'
coinFromDeposits-pots-cong {t} {t'} (a≡ , b≡ , g≡) =
  -- We bind `{t}` `{t'}` and project, rather than pattern-matching
  -- `{a , b , g}` `{a' , b' , g'}`.  An implicit-position pattern on a
  -- `Triple` introduces three fresh implicit Map metas (one per component)
  -- whose `left-unique` Σ-fields aren't propagated by Agda's unification;
  -- the projection form leaves each component as a concrete projection
  -- term, fully determining both Σ-fields.
  cong₂ _+_
    (cong₂ _+_ (≡ᵉ-getCoin (proj₁ t)         (proj₁ t')         a≡)
               (≡ᵉ-getCoin (proj₁ (proj₂ t)) (proj₁ (proj₂ t')) b≡))
    (≡ᵉ-getCoin (proj₂ (proj₂ t)) (proj₂ (proj₂ t')) g≡)
```

## Pool-deposit alignment invariant {#sec:pool-alignment}

The invariant `PoolDepositsAligned`{.AgdaFunction} captures the ledger-wide
discipline that **every registered pool has a corresponding deposit entry**. It is
consumed in the `POOL-rereg` case of `CERT-pots-≡ᵐᵗ`{.AgdaFunction}, where the rule
leaves the pool-deposit pot unchanged while the closed-form
`updateCertDeposit`{.AgdaFunction} appends `❴ kh , poolDeposit ❵`; these agree
(modulo `≡ᵐ`) precisely when `kh`{.AgdaBound} is already in the deposit-pot's domain.

```agda
PoolDepositsAligned : PState → Type
PoolDepositsAligned ps = dom (PoolsOf ps) ⊆ dom (DepositsOf ps)

Is-just-isPoolRegistered⇒∈-dom :
    ∀ {pools : Pools} {kh : KeyHash}
  → Is-just (isPoolRegistered pools kh) → kh ∈ dom (pools ˢ)
Is-just-isPoolRegistered⇒∈-dom {pools = pools} {kh = kh} ij with kh ∈? dom (pools ˢ)
... | yes kh∈ = kh∈
... | no  _   = case ij of λ ()
```

## Per-step bridging lemmas {#sec:per-step-bridges}

### The per-step `≡ᵐᵗ` bridge

*Informally*. Given a `CERT`{.AgdaDatatype} step

    Γ ⊢ s ⇀⦇dCert,CERT⦈ s'

and the pool-deposit-alignment invariant on `s`, the three deposit pots of `s'`
agree componentwise (modulo `≡ᵐ`) with the closed-form

    updateCertDeposit (PParamsOf Γ) dCert (pots s).

*Proof*. Case split on the rule. Seven of the eight cases reduce to component-wise
`≡ᵐ-refl`{.AgdaFunction}, because the rule's deposit-pot update and
`updateCertDeposit`{.AgdaFunction}'s `case`-branch produce literally identical
expressions:

+  `DELEG-delegate`: DState pot becomes `deposits ∪⁺ ❴ c , d ❵`, matching the
   closed-form.
+  `DELEG-dereg`: DState pot becomes `deposits ∣ ❴ c ❵ ᶜ`, matching.
+  `POOL-reg`: PState pot becomes `deposits ∪ˡ ❴ kh , poolDeposit ❵`, matching.
+  `POOL-retirepool`: deposits unchanged, matching the catch-all closed-form branch.
+  `GOVCERT-regdrep`: GState pot becomes `deposits ∪⁺ ❴ c , d ❵`, matching.
+  `GOVCERT-deregdrep`: GState pot becomes `deposits ∣ ❴ c ❵ ᶜ`, matching.
+  `GOVCERT-ccreghot`: deposits unchanged, matching the catch-all closed-form branch.

For each of these we discharge the goal with `≡ᵐᵗ-refl (pots s')` rather than the
underscore form `≡ᵐᵗ-refl _`, since the latter leaves the three Maps' `left-unique`
witnesses as unresolved metas (Agda only unifies the relation part of each `Σ`).

The eighth case, `POOL-rereg`, requires the alignment invariant.  The rule
leaves the pool-deposit pot `depᵖ` unchanged, while
`updateCertDeposit`{.AgdaFunction} appends `❴ kh , poolDeposit ❵`.
The `POOL-rereg` premise `Is-just (isPoolRegistered pools kh)`{.AgdaFunction}
and the alignment invariant together yield `kh ∈ dom depᵖ`, from which
`singleton-∈-∪ˡ`{.AgdaFunction} gives

    depᵖ ∪ˡ ❴ kh , v ❵ ≡ᵐ depᵖ

for any `v`; symmetrising this gives the `≡ᵐ` we need for the PState
component, with `≡ᵐ-refl` for the others.  We pass every Map argument to
`≡ᵐ-sym`{.AgdaFunction} explicitly (`depᵖ ∪ˡ ❴ kh , pp .poolDeposit ❵ᵐ` and
`depᵖ`) so the singleton's `left-unique` witness is concrete at the call site.

*Formally*.

```agda
CERT-pots-≡ᵐᵗ : {Γ : CertEnv} {s s' : CertState}
  → PoolDepositsAligned (PStateOf s)
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
  → pots s' ≡ᵐᵗ updateCertDeposit (PParamsOf Γ) dCert (pots s)
CERT-pots-≡ᵐᵗ {s' = s'} _ (CERT-deleg (DELEG-delegate _)) = ≡ᵐᵗ-refl (pots s')
CERT-pots-≡ᵐᵗ {s' = s'} _ (CERT-deleg (DELEG-dereg _))    = ≡ᵐᵗ-refl (pots s')
CERT-pots-≡ᵐᵗ {s' = s'} _ (CERT-pool (POOL-reg _))        = ≡ᵐᵗ-refl (pots s')
CERT-pots-≡ᵐᵗ {Γ = Γ} {s = s} plInv (CERT-pool (POOL-rereg {kh = kh} r)) =
  -- PState pot is unchanged by the rule, but the closed form inserts a
  -- redundant `❴ kh , poolDeposit ❵`.  `singleton-∈-∪ˡ` collapses that to
  -- `≡ᵐ` when `kh` is already in the deposit-pot's domain, which the
  -- alignment invariant + the rereg premise guarantee.
  let pp   = PParamsOf Γ
      depᵈ = DepositsOf (DStateOf s)
      depᵖ = DepositsOf (PStateOf s)
      depᵍ = DepositsOf (GStateOf s)
      kh∈  = plInv (Is-just-isPoolRegistered⇒∈-dom r)
  in ≡ᵐ-refl depᵈ
   , ≡ᵐ-sym (depᵖ ∪ˡ ❴ kh , pp .poolDeposit ❵ᵐ) depᵖ
            (singleton-∈-∪ˡ {m = depᵖ} kh∈)
   , ≡ᵐ-refl depᵍ
CERT-pots-≡ᵐᵗ {s' = s'} _ (CERT-pool POOL-retirepool)       = ≡ᵐᵗ-refl (pots s')
CERT-pots-≡ᵐᵗ {s' = s'} _ (CERT-gov  (GOVCERT-regdrep _))   = ≡ᵐᵗ-refl (pots s')
CERT-pots-≡ᵐᵗ {s' = s'} _ (CERT-gov  (GOVCERT-deregdrep _)) = ≡ᵐᵗ-refl (pots s')
CERT-pots-≡ᵐᵗ {s' = s'} _ (CERT-gov  (GOVCERT-ccreghot _))  = ≡ᵐᵗ-refl (pots s')
```

The per-step **coin-form** bridge is then just the `≡ᵐᵗ` version collapsed via
`coinFromDeposits-pots-cong`{.AgdaFunction}.

*Informally*. Given the same hypotheses as `CERT-pots-≡ᵐᵗ`{.AgdaFunction},

    coinFromDeposits s' ≡ coinFromDeposits-pots (updateCertDeposit (PParamsOf Γ) dCert (pots s)).

Using `coinFromDeposits cs ≡ coinFromDeposits-pots (pots cs)` (definitional), the
goal reduces to a statement about `coinFromDeposits-pots`{.AgdaFunction} on two
`≡ᵐᵗ`{.AgdaFunction}-related triples, which is exactly
`coinFromDeposits-pots-cong`{.AgdaFunction} applied to
`CERT-pots-≡ᵐᵗ`{.AgdaFunction}.

*Formally*.

```agda
CERT-coinFromDeposits-step : {Γ : CertEnv} {s s' : CertState}
  → PoolDepositsAligned (PStateOf s)
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
  → coinFromDeposits s' ≡ coinFromDeposits-pots (updateCertDeposit (PParamsOf Γ) dCert (pots s))
CERT-coinFromDeposits-step {dCert} {Γ = Γ} {s} {s'} plInv h =
  coinFromDeposits-pots-cong {t = pots s'} {t' = updateCertDeposit (PParamsOf Γ) dCert (pots s)}
    (CERT-pots-≡ᵐᵗ {Γ = Γ} {s}{s'} plInv h)
```

## Preservation of value at a single `CERT` step {#sec:CERT-pov}

`CERT-pov`{.AgdaFunction} relies on the disjoint-union coin homomorphism
`∪ˡsingleton0≡`{.AgdaFunction}, which now lives in `Ledger.Prelude`{.AgdaModule}
(no module parameter required at this layer).

*Informally*. Let `s , s'` : `CertState`{.AgdaRecord} be related by

    Γ ⊢ s ⇀⦇dCert,CERT⦈ s'.

Then `getCoin s ≡ getCoin s'`.

*Proof*. Under Dijkstra's `HasCoin-CertState`{.AgdaFunction} instance,
`getCoin`{.AgdaFunction} of a `CertState`{.AgdaRecord} is
`rewardsBalance`{.AgdaFunction} of its `DState`{.AgdaRecord}, so each
sub-rule is shown to preserve `rewardsBalance`{.AgdaFunction}:

+  `CERT-deleg DELEG-delegate`: appends a *zero-balance* entry `❴ c , 0 ❵` to
   rewards; preservation by `∪ˡsingleton0≡`{.AgdaFunction}.
+  `CERT-deleg DELEG-dereg`: removes a zero-balance entry from rewards
   (the premise `(c , 0) ∈ rwds`{.AgdaFunction} pins the value at 0);
   preservation by decomposing rewards into its restriction and
   complement-restriction and reassembling via `∪ˡsingleton0≡`{.AgdaFunction}.
+  `CERT-pool` and `CERT-gov`: leave `DState`{.AgdaRecord} untouched, so
   preservation is `refl`{.AgdaInductiveConstructor}.

*Formally*.

```agda
CERT-pov : {Γ : CertEnv} {s s' : CertState}
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s' → getCoin s ≡ getCoin s'
CERT-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) =
  sym (∪ˡsingleton0≡ rwds)
CERT-pov
  {s  = ⟦ ⟦ vDelegs , sDelegs , rwds , dep ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ}
  {s' = ⟦ ⟦ _ , _ , _ , _ ⟧ᵈ , stᵖ' , stᵍ' ⟧ᶜˢ}
  (CERT-deleg (DELEG-dereg {c = c} x)) =
  begin
    getCoin ⟦ ⟦ vDelegs , sDelegs , rwds , dep ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ
      ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds
           ( ≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    getCoin rwds-∪ˡ-decomp
      ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ ⟩
    getCoin ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ)
      ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
    getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ , dep ∣ ❴ c ❵ ᶜ ⟧ᵈ , stᵖ' , stᵍ' ⟧ᶜˢ
      ∎
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
    rwds-∪ˡ-decomp = (rwds ∣ ❴ c ❵ ᶜ) ∪ˡ (rwds ∣ ❴ c ❵)

    rwds-∪ˡ-∪ : rwds-∪ˡ-decomp ˢ ≡ᵉ (rwds ∣ ❴ c ❵ ᶜ)ˢ ∪ (rwds ∣ ❴ c ❵)ˢ
    rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)

    disj : disjoint (dom ((rwds ∣ ❴ c ❵ˢ ᶜ) ˢ)) (dom (❴ c , 0 ❵ᵐ ˢ))
    disj {a} a∈res a∈dom = res-comp-dom a∈res (dom-single→single a∈dom)

    rwds-∪ˡ≡sing-∪ˡ : rwds-∪ˡ-decomp ˢ ≡ᵉ ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) ˢ
    rwds-∪ˡ≡sing-∪ˡ =
      ≡ᵉ.trans rwds-∪ˡ-∪
               ( ≡ᵉ.trans (∪-cong ≡ᵉ.refl (res-singleton' {m = rwds} (proj₁ x)))
                          (≡ᵉ.sym $ disjoint-∪ˡ-∪ disj) )
CERT-pov (CERT-pool _) = refl
CERT-pov (CERT-gov  _) = refl
```
