---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoV.lagda.md
---
# The Preservation-of-Value Property for `CERTS`{.AgdaDatatype}

This module lifts the per-step results from `Certs.Properties.PoVLemmas`{.AgdaModule}
across the reflexive-transitive closure `CERTS`{.AgdaDatatype} of `CERT`{.AgdaDatatype}.
It exports two theorems consumed by `LEDGER-pov`{.AgdaFunction} in
`Ledger.Properties.PoV`{.AgdaModule}:

+  **Preservation of value** (`CERTS-pov`{.AgdaFunction}): iterating
   `CERT`{.AgdaDatatype} over a list of certificates preserves `getCoin`{.AgdaField}
   of the `CertState`{.AgdaRecord}.
+  **The closed-form deposit-coin bridge**
   (`CERTS-coinFromDeposits-updateCertDeposits`{.AgdaFunction}): after a
   `CERTS`{.AgdaDatatype} run, the post-state's deposit coin matches the coin of the
   **closed-form** `updateCertDeposits`{.AgdaFunction} applied to the pre-state and
   the certificate list; this is the bridge that lets `LEDGER-pov`{.AgdaFunction}
   relate the actual `CertState` deposit-evolution to the
   `newCertDeposits`{.AgdaFunction} / `refundCertDeposits`{.AgdaFunction} quantities
   appearing in the UTXO batch-balance equation (see the
   *Cert-State Threading and Deposit Accounting* design note in `Utxo`{.AgdaModule}).

## Module structure

Both theorems are bundled under a single named module `Certs-PoV`{.AgdaModule}
parameterised by one deferred assumption:

+  `PoolDepositsAligned-CERT`{.AgdaBound}: preservation of the pool-deposit-alignment
   invariant under one `CERT`{.AgdaDatatype} step; consumed by the inductive step of
   `CERTS-pots-≡ᵐᵗ`{.AgdaFunction} to keep the alignment hypothesis
   available across the trace.  Discharged at the `CHAIN`-invariant
   layer in a follow-up issue.

`CERT-pov`{.AgdaFunction} (the per-step preservation-of-value lemma) is now imported
directly from `Certs.Properties.PoVLemmas`{.AgdaModule}; it no longer needs to be
opened from a nested helper module.

## A note on explicit-everywhere call sites

Every cross-lemma call in this module passes its implicit arguments explicitly,
including the implicit triples of `≡ᵐᵗ-refl`{.AgdaFunction},
`≡ᵐᵗ-trans`{.AgdaFunction}, `coinFromDeposits-pots-cong`{.AgdaFunction},
`CERT-pots-≡ᵐᵗ`{.AgdaFunction}, and the explicit `cs` argument of
`updateCertDeposit-list-≡ᵐᵗ`{.AgdaFunction}.  This is the same hygiene principle
documented in `Certs.Properties.PoVLemmas`{.AgdaModule}: unification through
`_≡ᵐ_`{.AgdaFunction} only constrains the relation projection of the `Map` Σ,
so leaving any implicit `Map` or implicit `Triple` to be inferred via a
`_≡ᵐ_`-typed hypothesis leaves its `left-unique`{.AgdaFunction} field as an
unresolved meta.  Passing the implicits explicitly pins both projections.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoV
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)

open import Interface.STS using (BS-base; BS-ind; Id-nop)

open import Algebra using (CommutativeMonoid)
open import Data.Nat.Properties using (+-0-monoid)

open CertState

private variable
  dCert : DCert
  cs    : List DCert

instance
  _ = +-0-monoid
```
-->

## The bundled `Certs-PoV` module {#sec:certs-pov-module}

```agda
module Certs-PoV
  ( PoolDepositsAligned-CERT :
      ∀ {Γ : CertEnv} {s s' : CertState} {c : DCert}
      → Γ ⊢ s ⇀⦇ c ,CERT⦈ s'
      → PoolDepositsAligned (PStateOf s)
      → PoolDepositsAligned (PStateOf s') )
  where
```

## `CERTS-pov` — preservation of value across the closure {#sec:CERTS-pov}

*Informally*. Let `s , s'` : `CertState`{.AgdaRecord} be related by a
`CERTS`{.AgdaDatatype} step

    Γ ⊢ s ⇀⦇cs,CERTS⦈ s'.

Then `getCoin s ≡ getCoin s'`.

*Proof*. By induction on the `BS-ind`{.AgdaInductiveConstructor} /
`BS-base`{.AgdaInductiveConstructor} structure of the trace:

+  Base case `BS-base Id-nop`: the trace is empty, `s' = s`, and
   `refl`{.AgdaInductiveConstructor} suffices.
+  Inductive case `BS-ind h h*`: chain `CERT-pov h` (preservation across
   one step) with the inductive hypothesis on `h*` (preservation across
   the remaining trace).

*Formally*.

```agda
  CERTS-pov : {Γ : CertEnv} {s s' : CertState}
    → Γ ⊢ s ⇀⦇ cs ,CERTS⦈ s'
    → getCoin s ≡ getCoin s'
  CERTS-pov (BS-base Id-nop) = refl
  CERTS-pov (BS-ind h h*)    = trans (CERT-pov h) (CERTS-pov h*)
```

## RTC-lifted `≡ᵐᵗ` bridge {#sec:CERTS-pots-eq}

We first lift the per-step `≡ᵐᵗ`{.AgdaFunction} bridge
`CERT-pots-≡ᵐᵗ`{.AgdaFunction} across the trace.  The result is an
`≡ᵐᵗ`{.AgdaFunction}-statement comparing `pots s'`{.AgdaFunction}
against `updateCertDeposit-list (PParamsOf Γ) (pots s) cs`{.AgdaFunction}
— the iterated **triple-level** closed form.

*Informally*.  Suppose the pool-deposit-alignment invariant holds at `s`,
and `Γ ⊢ s ⇀⦇cs,CERTS⦈ s'`.  Then

    pots s' ≡ᵐᵗ updateCertDeposit-list (PParamsOf Γ) (pots s) cs.

*Proof*.  Induction on `BS-ind`{.AgdaInductiveConstructor} /
`BS-base`{.AgdaInductiveConstructor}:

+  `BS-base Id-nop`: trace empty; both sides reduce to `pots s`,
   discharged by `≡ᵐᵗ-refl (pots s)`{.AgdaFunction}.  We pass the explicit
   triple `pots s` (rather than `_`) so the three `Map` Σ-fields are
   pinned at the call site.
+  `BS-ind h h*` with intermediate state `smid`{.AgdaBound} and head/tail
   `c ∷ cs'` of the certificate list: chain three pieces via
   `≡ᵐᵗ-trans`{.AgdaFunction} with all three triples passed explicitly:

        t₁ = pots s'
        t₂ = updateCertDeposit-list pp (pots smid) cs'
        t₃ = updateCertDeposit-list pp (updateCertDeposit pp c (pots s)) cs'

   where `pp = PParamsOf Γ`.  The first proof, IH on `h*`, gives
   `t₁ ≡ᵐᵗ t₂` (using `PoolDepositsAligned-CERT h plInv` to advance the
   invariant).  The second proof,
   `updateCertDeposit-list-≡ᵐᵗ pp cs' (CERT-pots-≡ᵐᵗ … plInv h)`,
   gives `t₂ ≡ᵐᵗ t₃`.  Note that `t₃` is definitionally equal to
   `updateCertDeposit-list pp (pots s) (c ∷ cs')` via `foldl`'s
   recurrence, so the chained equation matches the goal.
   **No deferred propositional map equation is required**, because
   everything happens at the `≡ᵐ`{.AgdaFunction} level.

*Formally*.

```agda
  module CERTS-Deposits-Bridge where
    CERTS-pots-≡ᵐᵗ : ∀ {Γ : CertEnv} {s s' : CertState} {cs : List DCert}
      → PoolDepositsAligned (PStateOf s)
      → Γ ⊢ s ⇀⦇ cs ,CERTS⦈ s'
      → pots s' ≡ᵐᵗ updateCertDeposit-list (PParamsOf Γ) (pots s) cs
    CERTS-pots-≡ᵐᵗ {s = s} _ (BS-base Id-nop) = ≡ᵐᵗ-refl (pots s)
    CERTS-pots-≡ᵐᵗ {Γ = Γ} {s = s} {s'} plInv (BS-ind {sig = c} {s' = smid} {sigs = cs'} h h*) =
      -- All three triples passed explicitly to `≡ᵐᵗ-trans`; without this,
      -- Agda creates fresh `Triple` metas whose component `Map`s have
      -- unresolved `left-unique` Σ-fields.  Similarly we pass `cs'`
      -- explicitly to `updateCertDeposit-list-≡ᵐᵗ` (whose `cs` argument
      -- is explicit) and the implicit `{Γ}` `{s}` `{s'}` `{cs}` `{dCert}`
      -- to every recursive / cross-lemma call.
      let pp  = PParamsOf Γ
          t₁  = pots s'
          t₂  = updateCertDeposit-list pp (pots smid) cs'
          t₃  = updateCertDeposit-list pp (updateCertDeposit pp c (pots s)) cs'
          eq₁ : t₁ ≡ᵐᵗ t₂
          eq₁ = CERTS-pots-≡ᵐᵗ {Γ = Γ} {s = smid} {s' = s'} {cs = cs'}
                              (PoolDepositsAligned-CERT h plInv) h*
          eq₂ : t₂ ≡ᵐᵗ t₃
          eq₂ = updateCertDeposit-list-≡ᵐᵗ pp cs'
                  {t = pots smid} {t' = updateCertDeposit pp c (pots s)}
                  (CERT-pots-≡ᵐᵗ {dCert = c} {Γ = Γ} {s = s} {s' = smid} plInv h)
      in ≡ᵐᵗ-trans t₁ t₂ t₃ eq₁ eq₂
```

## `CERTS-coinFromDeposits-list` — coin form, triple shape {#sec:CERTS-coinFromDeposits-list}

Collapse `CERTS-pots-≡ᵐᵗ`{.AgdaFunction} to a coin equality via
`coinFromDeposits-pots-cong`{.AgdaFunction}.  This is the intermediate
lemma; the final exported form (next subsection) bridges to the
`CertState`{.AgdaRecord}-valued closed form
`updateCertDeposits`{.AgdaFunction}.

The two implicit triples of `coinFromDeposits-pots-cong`{.AgdaFunction} are
passed explicitly — mirroring the hygiene applied in
`Certs.Properties.PoVLemmas.CERT-coinFromDeposits-step`{.AgdaFunction}.

```agda
    CERTS-coinFromDeposits-list : ∀ {Γ : CertEnv} {s s' : CertState} {cs : List DCert}
      → PoolDepositsAligned (PStateOf s)
      → Γ ⊢ s ⇀⦇ cs ,CERTS⦈ s'
      → coinFromDeposits s'
        ≡ coinFromDeposits-pots (updateCertDeposit-list (PParamsOf Γ) (pots s) cs)
    CERTS-coinFromDeposits-list {Γ = Γ} {s = s} {s' = s'} {cs = cs} plInv h =
      coinFromDeposits-pots-cong
        {t = pots s'}
        {t' = updateCertDeposit-list (PParamsOf Γ) (pots s) cs}
        (CERTS-pots-≡ᵐᵗ {Γ = Γ} {s = s} {s' = s'} {cs = cs} plInv h)
```

## `CERTS-coinFromDeposits-updateCertDeposits` — the `LEDGER-pov` interface {#sec:CERTS-coinFromDeposits-updateCertDeposits}

The form `LEDGER-pov`{.AgdaFunction} actually consumes: a coin equality
between the actual post-`CERTS`{.AgdaDatatype} state's
`coinFromDeposits`{.AgdaFunction} and the **`CertState`-valued** closed
form `updateCertDeposits`{.AgdaFunction}.  Both quantities appear in
`newCertDeposits`{.AgdaFunction} / `refundCertDeposits`{.AgdaFunction} in
`Ledger.Dijkstra.Specification.Certs`{.AgdaModule}.

*Informally*.  Under the same hypotheses,

    coinFromDeposits s' ≡ coinFromDeposits (updateCertDeposits (PParamsOf Γ) s cs).

*Proof*.  Chain `CERTS-coinFromDeposits-list`{.AgdaFunction} (giving the
RHS in terms of `updateCertDeposit-list`{.AgdaFunction}, the
triple-valued closed form) with the **propositional** bridge
`pots-updateCertDeposits`{.AgdaFunction}, which says

    pots (updateCertDeposits pp s cs) ≡ updateCertDeposit-list pp (pots s) cs.

Since

    coinFromDeposits cs ≡ coinFromDeposits-pots (pots cs)

holds definitionally, applying `cong coinFromDeposits-pots`{.AgdaFunction}
to `pots-updateCertDeposits`{.AgdaFunction} closes the chain.

*Formally*.

```agda
    CERTS-coinFromDeposits-updateCertDeposits :
        ∀ {Γ : CertEnv} {s s' : CertState} {cs : List DCert}
      → PoolDepositsAligned (PStateOf s)
      → Γ ⊢ s ⇀⦇ cs ,CERTS⦈ s'
      → coinFromDeposits s'
        ≡ coinFromDeposits (updateCertDeposits (PParamsOf Γ) s cs)
    CERTS-coinFromDeposits-updateCertDeposits
      {Γ = Γ} {s = s} {s' = s'} {cs = cs} plInv h =
      trans
        (CERTS-coinFromDeposits-list {Γ = Γ} {s = s} {s' = s'} {cs = cs} plInv h)
        ( sym (cong coinFromDeposits-pots
                    (pots-updateCertDeposits (PParamsOf Γ) s cs)) )
```

The right-hand side of the `sym (cong …)` step is
`coinFromDeposits-pots (pots (updateCertDeposits (PParamsOf Γ) s cs))`,
which is definitionally `coinFromDeposits (updateCertDeposits (PParamsOf Γ) s cs)`
by the definitions of `coinFromDeposits`{.AgdaFunction} and
`coinFromDeposits-pots`{.AgdaFunction}.
