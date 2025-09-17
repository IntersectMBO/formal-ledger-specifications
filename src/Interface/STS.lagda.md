---
source_branch: master
source_path: src/Interface/STS.lagda.md
---

# State Transition System {#sec:state-transition-system}

This module introduces the abstract types we use to define a generic state
transition system (STS) along with reusable **trace runners** (folds over
lists of signals) and standard properties (totality and invariant
preservation).

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

We refactored the `STS`{.AgdaModule} module to reflect what the code actually
does—**run a trace** of signals—rather than compute a closure.

- **Clearer names**
  - `RunTrace`: run on a list of signals; empty list is reflexive (no-op).
  - `RunIndexedTrace`: run on a list of signals while threading a position index.
  - `⟪ base AndThenRunTrace step ⟫`: perform a one-off *base* transformation
    before running the trace; similarly for the indexed variant.

- **Single canonical inductive definition** with small, explicit variations.

- **Backward-compatible aliases** keep the old
  `ReflexiveTransitiveClosure` names temporarily.

- **Documentation uses "trace evaluation" semantics** (a fold over signals),
  not "reflexive–transitive closure."

### Why the rename?

We previously called the canonical abstract state transition rule a
"reflexive–transitive closure," but that's a misnomer since it refers to
a closure of a single binary relation.
The existing combinators execute a given sequence of signals (a *trace*) by
repeatedly applying a step relation in the context of some environment; that is, a
*trace evaluation* (a fold over signals)---not a closure over reachability.
The new name (`RunTrace`) matches both the intent and the rules.  We also make the
empty-trace behavior explicit.

## High-level picture

+  Let `Step : C → S → Sig → S → Type` be a step relation.
+  A *trace* is a list of signals `sigs : List Sig`.
+  `RunTrace Step Γ s sigs s'` means: starting in `s`, running `sigs`
   (left-to-right) under environment `Γ` yields `s'`.

Two useful variations:

+  **Seeded start**: perform a one-off *base* transformation `(C → S → S → Type)`
   then run the trace: `⟪ base AndThenRunTrace Step ⟫ Γ s sigs s''`.
+  **Indexed steps**: allow the step relation to depend on the position in the
   trace via an index `n : ℕ`: `RunIndexedTrace Stepᵢ Γ s sigs s'`. A seeded
   version is also provided.


## Agda definitions (refactored)

### Trace Runner {#sec:trace-runner}

This is the canonical trace runner, parameterized by a single-step relation
`_⊢_⇀⟦_⟧_`{.AgdaFunction}.

```agda
data IdSTS {C S} : C → S → ⊤ → S → Type where
  Id-nop : IdSTS Γ s _ s


-- RunTrace _⊢_⇀⟦_⟧_ Γ s sigs s'
-- Read: in environment Γ, running the trace `sigs` from `s` yields `s'`.
data RunTrace (_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type) :
  C → S → List Sig → S → Type where

  -- RunTrace without signals is reflexive.
  run-[] : RunTrace _⊢_⇀⟦_⟧_ Γ s [] s

  run-∷ :
    Γ ⊢ s ⇀⟦ sig ⟧ s'
    → RunTrace _⊢_⇀⟦_⟧_ Γ s' sigs s''
    → RunTrace _⊢_⇀⟦_⟧_ Γ s  (sig ∷ sigs) s''
```

#### Semantics

+  The `run-[]`{.AgdaInductiveConstructor} constructor asserts that an empty trace
   leaves the state unchanged.
+  The `run-∷`{.AgdaInductiveConstructor} performs a step on the head signal
   and then continues with the tail.

### Seeded start (one-off base, then run)

Sometimes the empty trace should perform an initialization (or “base”) update
before processing signals. We expose this as a Σ-style combinator that pairs
the base transformation with a subsequent `RunTrace`.

```agda
⟪_AndThenRunTrace_⟫ :
  (C → S → S → Type)                 -- base (no signal)
  → (C → S → Sig → S → Type)         -- step
  → C → S → List Sig → S → Type
⟪ _⊢_⇀⟦⟧ᵇ_ AndThenRunTrace _⊢_⇀⟦_⟧_ ⟫ Γ s sigs s'' =
  ∃[ s' ] (Γ ⊢ s ⇀⟦⟧ᵇ s' × RunTrace _⊢_⇀⟦_⟧_ Γ s' sigs s'')
```

!!! note "Compatibility Note"

    If you have a base relation in the `C → S → ⊤ → S → Type` form, convert it to
    `C → S → S → Type` with `baseDrop` (see the compatibility section below).

### Indexed variant

Next we define an indexed variant of the trace runner, where
the step relation may depend on the position in the trace by
threading an index through the environment.

The index counts how many elements have already been consumed.

```agda
data RunIndexedTrace' (_⊢_⇀⟦_⟧ᵢ_ : (C × ℕ) → S → Sig → S → Type) :
  (C × ℕ) → S → List Sig → S → Type where

  runᵢ-[] : RunIndexedTrace' _⊢_⇀⟦_⟧ᵢ_ (Γ , n) s [] s

  runᵢ-∷ :
    (Γ , n) ⊢ s ⇀⟦ sig ⟧ᵢ s'
    → RunIndexedTrace' _⊢_⇀⟦_⟧ᵢ_ (Γ , suc n) s' sigs s''
    → RunIndexedTrace' _⊢_⇀⟦_⟧ᵢ_ (Γ , n) s (sig ∷ sigs) s''
```

The following defines a convenience wrapper that starts at index `0`.

```agda
RunIndexedTrace : ((C × ℕ) → S → Sig → S → Type)
  → C → S → List Sig → S → Type
RunIndexedTrace _⊢_⇀⟦_⟧ᵢ_ Γ s sigs s' =
  RunIndexedTrace' _⊢_⇀⟦_⟧ᵢ_ (Γ , 0) s sigs s'
```

We also provide a seeded version of the indexed runner.

```agda
⟪_AndThenRunIndexedTrace_⟫ :
  (C → S → S → Type)                  -- base
  → ((C × ℕ) → S → Sig → S → Type)    -- indexed step
  → C → S → List Sig → S → Type
⟪ _⊢_⇀⟦⟧ᵇ_ AndThenRunIndexedTrace _⊢_⇀⟦_⟧ᵢ_ ⟫ Γ s sigs s'' =
  ∃[ s' ] (Γ ⊢ s ⇀⟦⟧ᵇ s' × RunIndexedTrace _⊢_⇀⟦_⟧ᵢ_ Γ s' sigs s'')
```

## Backward-compatibility Layer

Here we map old names to new ones so existing code still type-checks.

```agda
ReflexiveTransitiveClosure :
  {sts : C → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosure {sts = sts} = RunTrace sts

-- Adapt a base relation of shape C → S → ⊤ → S → Type to C → S → S → Type.
baseDrop : (C → S → ⊤ → S → Type) → C → S → S → Type
baseDrop base Γ s s' = base Γ s tt s'

ReflexiveTransitiveClosureᵇ :
  {base : C → S → ⊤ → S → Type}
  {sts : C → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵇ {base = b} {sts} = ⟪ (baseDrop b) AndThenRunTrace sts ⟫

ReflexiveTransitiveClosureᵢ :
  {sts : C × ℕ → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵢ {sts = sts} = RunIndexedTrace sts

ReflexiveTransitiveClosureᵢᵇ :
  {base : C → S → ⊤ → S → Type}
  {sts : (C × ℕ) → S → Sig → S → Type}
  → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵢᵇ {base = b} {sts} = ⟪ (baseDrop b) AndThenRunIndexedTrace sts ⟫
```


## Totality

We say a single-step relation is **total** if every input has some output.

```agda
STS-total : (C → S → Sig → S → Type) → Type
STS-total _⊢_⇀⟦_⟧_ = ∀ {Γ s sig} → ∃[ s' ] (Γ ⊢ s ⇀⟦ sig ⟧ s')
```

### Property: Totality of Trace

If the single step relation is total, running any trace is total.

```agda
RunTrace-total :
  {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type}
  → STS-total _⊢_⇀⟦_⟧_ → STS-total (RunTrace _⊢_⇀⟦_⟧_)
RunTrace-total SS-total {Γ} {s} {[]} = s , run-[]
RunTrace-total SS-total {Γ} {s} {sig ∷ sigs} with SS-total
... | s' , step = map₂′ (run-∷ step) (RunTrace-total SS-total)
```

## Invariants

A predicate `P : S → Type` is an **invariant** of a step relation `STS` if it is
preserved by every step.

```agda
LedgerInvariant : (C → S → Sig → S → Type) → (S → Type) → Type
LedgerInvariant STS P = ∀ {c s sig s'} → STS c s sig s' → P s → P s'
```

### Property: Invariance of Trace

If `P` is preserved by each small step, then it is preserved by `RunTrace`.

```agda
RT-preserves-inv : {STS : C → S → Sig → S → Type} {P : S → Type}
  → LedgerInvariant STS P → LedgerInvariant (RunTrace STS) P
RT-preserves-inv inv run-[] = id
RT-preserves-inv inv (run-∷ p₁ p₂) = RT-preserves-inv inv p₂ ∘ inv p₁
```

---

## Optional Notation

The following are aliases for `RunTrace`{.AgdaDatatype} and
`RunIndexedTrace`{.AgdaDatatype} which might help to improve code readability.

```agda
module _ {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type} where

  _⊢_⇝[_]_ : C → S → List Sig → S → Type
  Γ ⊢ s ⇝[ sigs ] s' = RunTrace _⊢_⇀⟦_⟧_ Γ s sigs s'

module _ {_⊢_⇀⟦_⟧ᵢ_ : (C × ℕ) → S → Sig → S → Type} where

  _⊢_⇝[_]ᵢ_ : C → S → List Sig → S → Type
  Γ ⊢ s ⇝[ sigs ]ᵢ s' = RunIndexedTrace _⊢_⇀⟦_⟧ᵢ_ Γ s sigs s'
```
