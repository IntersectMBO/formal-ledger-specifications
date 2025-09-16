---
source_branch: master
source_path: src/Interface/STS.lagda.md
---

# State Transition System {#sec:state-transition-system}

This module introduces the abstract types we use to define a generic state
transition system (STS) along with some useful combinators and properties.

<!--
```agda
{-# OPTIONS --safe #-}

module Interface.STS where

open import Prelude
open import Prelude.InferenceRules public

private
  variable C S Sig : Type
           Γ : C
           s s' s'' : S
           sig : Sig
           sigs : List Sig
           n : ℕ
```
-->

## A Note on Recent Changes

We recently refactored the `STS`{.AgdaModule} module and the following provides an
overview of the changes:

+  **New names for clarity and consistency**

    +  `RunTrace`: process a list of signals, tracking change of state (empty list is reflexive/no-op).
    +  `RunTraceWithBase`: same but allow an initial base (or "seed") transformation.
    +  `RunTraceIndexed`: same but allow the step relation to depend on the position
       (indexed over `ℕ`) in the trace.

+  **One canonical inductive definition** with two specializations, instead of multiple bespoke variants;
+  **Backward-compatible aliases** preserve our old `ReflexiveTransitiveClosure*` names, for now, so we can migrate gradually;
*  **More precise documentation** describes the canonical STS operation as a fold or "trace evaluation," not a closure;
*  **Properties preserved and clarified**: totality, invariant preservation, and a `computeTrace` fold with a correctness theorem tied to the `Computational` spec.


### Renaming Summary

+  **Main relation**: `RunTrace` (instead of `ReflexiveTransitiveClosure`).
+  **Variant with empty-trace effect**: `RunTraceWithBase`.
+  **Indexed variant**: `RunTraceIndexed`.
+  Optional operators we can export:

    + `Γ ⊢ s ⇝[ sigs ] s'` for `RunTrace`.
    + `Γ ⊢ s ⇝ᵢ[ sigs ] s'` for the indexed version.

### Justification

We previously called the canonical abstract state transition rule a
"reflexive–transitive closure," but that's a misnomer.  "Reflexive–transitive
closure" normally refers to a closure of a single binary relation.
The existing combinators are not the reflexive–transitive closure of a binary
relation on states.  They execute a given sequence of signals (a *trace*) by
repeatedly applying a step relation in the context of some environment; that is, a
*trace evaluation* (a fold over signals), not a closure over reachability.  It's
really a big-step semantics for traces.  The new name (`RunTrace`) matches both the
intent and the rules.  We also make the empty-trace behavior (reflexive vs "seeded")
explicit.


## High‑level picture

Let

* `Step : C → S → Sig → S → Type` be a small‑step relation, and
* optionally, `Base : C → S → ⊤ → S → Type` be a base/seed relation used when the trace is empty.

We define an inductive family `RunTraceWithBase Base Step Γ s sigs s'` that

* on `[]` uses `Base` to produce the result state; and
* on `sig ∷ sigs` uses one `Step` followed by recursion.

Specializing `Base` to the identity relation yields `RunTrace Step Γ s sigs s'`, i.e., the empty trace leaves the state unchanged.

An indexed variant `RunTraceIndexed` threads a natural number through the environment to allow rules that depend on the position in the trace.

## Agda definitions (refactored)

### Identity base relation

The **identity seed** for the base case is used to specialize to the reflexive
(empty-trace) case; it is defined as follows:

```agda
data IdSTS {C S} : C → S → ⊤ → S → Type where
  Id-nop : IdSTS Γ s _ s
```

### Small-step to Big-step Transformer {#sec:small-step-to-big-step-transformer}

This is the canonical trace runner, parameterized by a given base relation
and step relation, denoted by `_⊢_⇀⟦_⟧ᵇ_`{.AgdaFunction} and
`_⊢_⇀⟦_⟧_`{.AgdaFunction}, respectively.

```agda
module _
  { _⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤  → S → Type }
  { _⊢_⇀⟦_⟧_  : C → S → Sig → S → Type }
  where

  -- RunTraceWithBase Base Step Γ s sigs s'
  -- reads: in environment Γ, running trace sigs from s evaluates to s'.
  data RunTraceWithBase : C → S → List Sig → S → Type where
    run-[] :
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s' →
      RunTraceWithBase Γ s [] s'

    run-∷ :
      Γ ⊢ s  ⇀⟦ sig  ⟧  s' →
      RunTraceWithBase Γ s' sigs s'' →
      RunTraceWithBase Γ s  (sig ∷ sigs) s''
```

### Specialization to Empty Seed Relation

With the identity as base relation, the empty trace does nothing (reflexive).

```agda
module _
  { _⊢_⇀⟦_⟧_  : C → S → Sig → S → Type }
  where

  RunTrace : C → S → List Sig → S → Type
  RunTrace Γ = RunTraceWithBase { _⊢_⇀⟦_⟧ᵇ_ = IdSTS } {_⊢_⇀⟦_⟧_ } Γ
```

### Indexed Variant

Next we define an indexed variant of the trace runner, where
the step relation may depend on the position.

We present it as a sized/positioned runner whose index is the length
of the prefix already consumed.

```agda
module _
  { _⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Type }
  { _⊢_⇀⟦_⟧ᵢ_ : (C × ℕ) → S → Sig → S → Type }
  where

  data RunTraceIndexed' : (C × ℕ) → S → List Sig → S → Type where
    runᵢ-[] :
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s' →
      RunTraceIndexed' (Γ , n) s [] s'

    runᵢ-∷ :
      (Γ , n    ) ⊢ s  ⇀⟦ sig  ⟧ᵢ s' →
      RunTraceIndexed' (Γ , suc n) s' sigs s'' →
      RunTraceIndexed' (Γ , n    ) s  (sig ∷ sigs) s''

  -- Convenient alias that starts the index at 0.
  RunTraceIndexed : C → S → List Sig → S → Type
  RunTraceIndexed Γ s sigs s' = RunTraceIndexed' (Γ , 0) s sigs s'
```

### "Double-bass" Variant

Finally, we provide a variant that performs a one-off base step then
runs with the identity base.

```agda
module _
  { _⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Type }
  { _⊢_⇀⟦_⟧_  : C → S → Sig → S → Type }
  where

  RunAfterBase : C → S → List Sig → S → Type
  RunAfterBase Γ s sigs s'' = Σ[ s' ∈ S ]
    ( Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'  ×  RunTrace { _⊢_⇀⟦_⟧_ = _⊢_⇀⟦_⟧_ } Γ s' sigs s'' )
```


## Backward-compatibility Layer

Here we map old names to the new ones so existing code still type-checks.


```agda
ReflexiveTransitiveClosure : {sts : C → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosure {sts = sts} = RunTrace { _⊢_⇀⟦_⟧_ = sts }

ReflexiveTransitiveClosureᵇ : {base : C → S → ⊤ → S → Type}
  {sts : C → S → Sig → S → Type} → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵇ {base = base} {sts} =
  RunTraceWithBase { _⊢_⇀⟦_⟧ᵇ_ = base } { _⊢_⇀⟦_⟧_ = sts }

ReflexiveTransitiveClosureᵢ : {sts : (C × ℕ) → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵢ {sts = sts} =
  RunTraceIndexed { _⊢_⇀⟦_⟧ᵇ_ = IdSTS } { _⊢_⇀⟦_⟧ᵢ_ = sts }
```


## Totality

The following formalizes what we mean when we say that a single-step transition
relation is total.

```agda
STS-total : (C → S → Sig → S → Type) → Type
STS-total _⊢_⇀⟦_⟧_ = ∀ {Γ s sig} → ∃[ s' ] (Γ ⊢ s ⇀⟦ sig ⟧ s')
```

### Property: Totality of Trace

Given a total single-step transition relation, the running of a trace with that
relation is also total.

```agda
RunTrace-total
  : { _⊢_⇀⟦_⟧_ : C → S → Sig → S → Type }
  → STS-total _⊢_⇀⟦_⟧_ → STS-total (RunTrace { _⊢_⇀⟦_⟧_ = _⊢_⇀⟦_⟧_ })
RunTrace-total SS-total {Γ} {s} {[]} = s , run-[] Id-nop
RunTrace-total SS-total {Γ} {s} {sig ∷ sigs} with SS-total {Γ} {s} {sig}
... | s' , step = map₂′ (run-∷ step) (RunTrace-total SS-total {Γ} {s'} {sigs})
```

## Invariants

We call a property `P` *invariant* with respect to the step relation `STS` provided
the following holds: if `P s` and if `STS Γ s sig s'`, then `P s'`.

Formally,

```agda
LedgerInvariant : (C → S → Sig → S → Type) → (S → Type) → Type
LedgerInvariant STS P = ∀ {c s sig s'} → STS c s sig s' → P s → P s'
```

### Property: Invariance of Trace

```agda
RT-preserves-inv : {STS : C → S → Sig → S → Type} {P : S → Type}
  → LedgerInvariant STS P → LedgerInvariant (RunTrace { _⊢_⇀⟦_⟧_ = STS }) P
RT-preserves-inv inv (run-[] Id-nop) = id
RT-preserves-inv inv (run-∷ p₁ p₂) = RT-preserves-inv inv p₂ ∘ inv p₁
```
