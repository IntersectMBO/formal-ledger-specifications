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
*trace evaluation* (a fold over signals), not a closure over reachability. The new 
name (`RunTrace`) matches both the intent and the rules.  We also make the 
empty-trace behavior (reflexive vs "seeded") explicit.


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

### Iterating Transformer {#sec:iterating-transformer}

This is the canonical trace runner, parameterized by step relation `_⊢_⇀⟦_⟧_`{.AgdaFunction}.

```agda
-- RunTrace Γ s sigs s'
-- reads: in environment Γ, starting in state s, and running trace on the list sigs
-- results in state s'.
data RunTrace (_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type) : C → S → List Sig → S → Type where

  run-[] : RunTrace _⊢_⇀⟦_⟧_ Γ s [] s

  run-∷ : Γ ⊢ s ⇀⟦ sig ⟧ s' → RunTrace _⊢_⇀⟦_⟧_ Γ s' sigs s''
    → RunTrace _⊢_⇀⟦_⟧_ Γ s  (sig ∷ sigs) s''
```

### Iterating Transformer with Base Step

This variant performs a one-off base step then runs the iterator.

```agda
⟪_AndThenRunTrace_⟫ : (C → S → S → Type) → (C → S → Sig → S → Type)
  → C → S → List Sig → S → Type
⟪ _⊢_⇀⟦⟧ᵇ_ AndThenRunTrace _⊢_⇀⟦_⟧_ ⟫ Γ s sigs s'' =
  ∃[ s' ] (Γ ⊢ s ⇀⟦⟧ᵇ s'  ×  RunTrace _⊢_⇀⟦_⟧_ Γ s' sigs s'')
```



### Indexed Variant

Next we define an indexed variant of the trace runner, where
the step relation may depend on the position.

We present it as a sized/positioned runner whose index is the length
of the prefix already consumed.

```agda

data RunIndexedTrace'
  (_⊢_⇀⟦_⟧ᵢ_ : (C × ℕ) → S → Sig → S → Type) : (C × ℕ) → S → List Sig → S → Type where
    runᵢ-[] : RunIndexedTrace' _ (Γ , n) s [] s
    runᵢ-∷ :
      (Γ , n) ⊢ s ⇀⟦ sig ⟧ᵢ s'
      → RunIndexedTrace' _⊢_⇀⟦_⟧ᵢ_ (Γ , suc n) s' sigs s''
      → RunIndexedTrace' _⊢_⇀⟦_⟧ᵢ_ (Γ , n ) s (sig ∷ sigs) s''

-- Convenient alias that starts the index at 0.
RunIndexedTrace : ((C × ℕ) → S → Sig → S → Type) → C → S → List Sig → S → Type
RunIndexedTrace _⊢_⇀⟦_⟧ᵢ_ Γ s sigs s' = RunIndexedTrace' _⊢_⇀⟦_⟧ᵢ_ (Γ , 0) s sigs s'

⟪_AndThenRunIndexedTrace_⟫ : (C → S → S → Type) → ((C × ℕ) → S → Sig → S → Type)
  → C → S → List Sig → S → Type
⟪ _⊢_⇀⟦⟧ᵇ_ AndThenRunIndexedTrace _⊢_⇀⟦_⟧ᵢ_ ⟫ Γ s sigs s'' =
  ∃[ s' ] (Γ ⊢ s ⇀⟦⟧ᵇ s'  ×  RunIndexedTrace _⊢_⇀⟦_⟧ᵢ_ Γ s' sigs s'')
```

## Backward-compatibility Layer

Here we map old names to the new ones so existing code still type-checks.

```agda
ReflexiveTransitiveClosure :
  {sts : C → S → Sig → S → Type} → C → S → List Sig → S → Type
ReflexiveTransitiveClosure {sts = sts} = RunTrace sts

baseDrop : (C → S → ⊤ → S → Type) → C → S → S → Type
baseDrop base Γ s s' = base Γ s tt s'

ReflexiveTransitiveClosureᵇ :
  {base : C → S → ⊤ → S → Type}
  {sts : C → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵇ {base = b} {sts} = ⟪ (baseDrop b) AndThenRunTrace sts ⟫

ReflexiveTransitiveClosureᵢ : {sts : C × ℕ → S → Sig → S → Type} → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵢ {sts = sts} = RunIndexedTrace sts

ReflexiveTransitiveClosureᵢᵇ :
  {base : C → S → ⊤ → S → Type}
  {sts : (C × ℕ) → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵢᵇ {base = b} {sts} = ⟪ (baseDrop b) AndThenRunIndexedTrace sts ⟫
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
RunTrace-total :
  {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type}
  → STS-total _⊢_⇀⟦_⟧_ → STS-total (RunTrace _⊢_⇀⟦_⟧_)
RunTrace-total SS-total {Γ} {s} {[]} = s , run-[]
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
  → LedgerInvariant STS P → LedgerInvariant (RunTrace STS) P
RT-preserves-inv inv run-[] = id
RT-preserves-inv inv (run-∷ p₁ p₂) = RT-preserves-inv inv p₂ ∘ inv p₁
```
