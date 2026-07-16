---
source_branch: master
source_path: src/Interface/STS.lagda.md
---

# State Transition System {#sec:state-transition-system}

This module introduces the abstract types we use to define a generic state transition
system (STS) along with reusable *trace runners* (folds over lists of signals) and
standard properties (totality and invariant preservation).

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
does—it processes a list of signals, transforming state.

+  **Clearer names**

   +  `RunTraceAndThen`: run a given transition (`Step`) on a list of signals and
      then, once the list is empty, run a final transition (`Last`).
   +  `RunTraceAfterAndThen`: run a given transition (`Init`), then run a transition
      (`Step`) for a each signal in a given list, then, once the list is empty, run a
      final (`Last`) transition.

## High-level picture

+  A *trace* is a list of signals `sigs : List Sig`.
+  Let `Step : C → S → Sig → S → Type` be a step relation and `Last : C → S → ⊤ → S → Type` a relation.
+  `RunTraceAndThen Step Last Γ s sigs s'` means: starting in `s`, running `sigs`
   (left-to-right) under environment `Γ`, then perform `Last`, to yield `s'`.

A variation that is sometimes useful involves indexed steps—that is, it allows the
step relation to depend on the position in the trace via an index `n : ℕ`.

## State Transition Sytem Types

```agda
data RunTraceAndThen (Step : C → S → Sig → S → Type) (Last : C → S → ⊤ → S → Type) :
  C → S → List Sig → S → Type where

    run-[] : Last Γ s tt s' → RunTraceAndThen Step Last Γ s [] s'

    run-∷ :  Step Γ s sig s'
             → RunTraceAndThen Step Last Γ s' sigs s''
             → RunTraceAndThen Step Last Γ s (sig ∷ sigs) s''

data RunTraceAfterAndThen (Init : C → S → ⊤ → S → Type)
                          (Step : C → S → Sig → S → Type)
                          (Last : C → S → ⊤ → S → Type) :
  C → S → List Sig → S → Type where

    run :
        ∙ Init Γ s tt s'
        ∙ RunTraceAndThen Step Last Γ s' sigs s''
        ─────────────────────────────────────────────
        RunTraceAfterAndThen Init Step Last Γ s sigs s''
```

## The Original Transition Relation Types

The transition relations defined in this subsection are used in various places in the
ledger formalization.

```agda
module _ {_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Type} {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type} where
  data _⊢_⇀⟦_⟧*_ : C → S → List Sig → S → Type where

    BS-base :
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧* s'

    BS-ind :
        Γ ⊢ s  ⇀⟦ sig  ⟧  s'
      → Γ ⊢ s' ⇀⟦ sigs ⟧* s''
        ───────────────────────────────────────
        Γ ⊢ s  ⇀⟦ sig ∷ sigs ⟧* s''
```

### Indexed Variant

An indexed variant of the `_⊢_⇀⟦_⟧*_`{.AgdaDatatype} type allows the step relation
to depend on the position in the trace by threading an index through the environment.
The index counts how many elements have already been consumed.

```agda
module _ {_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Type} {_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Type} where
  data _⊢_⇀⟦_⟧ᵢ*'_ : C × ℕ → S → List Sig → S → Type where

    BS-base :
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      (Γ , n) ⊢ s ⇀⟦ [] ⟧ᵢ*' s'

    BS-ind :
        (Γ , n)     ⊢ s  ⇀⟦ sig  ⟧  s'
      → (Γ , suc n) ⊢ s' ⇀⟦ sigs ⟧ᵢ*' s''
        ───────────────────────────────────────
        (Γ , n)     ⊢ s  ⇀⟦ sig ∷ sigs ⟧ᵢ*' s''
```

The following defines a convenience wrapper that starts at index `0`.

```agda
  _⊢_⇀⟦_⟧ᵢ*_ : C → S → List Sig → S → Type
  _⊢_⇀⟦_⟧ᵢ*_ Γ = _⊢_⇀⟦_⟧ᵢ*'_ (Γ , 0)
```

Other convenience wrappers are defined, as follows:

```agda
-- with a trivial base case
data IdSTS {C S} : C → S → ⊤ → S → Type where
  Id-nop : IdSTS Γ s _ s

ReflexiveTransitiveClosure : {sts : C → S → Sig → S → Type} → C → S → List Sig → S → Type
ReflexiveTransitiveClosure {sts = sts} = _⊢_⇀⟦_⟧*_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS}{sts}

ReflexiveTransitiveClosureᵢ : {sts : C × ℕ → S → Sig → S → Type} → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵢ {sts = sts} = _⊢_⇀⟦_⟧ᵢ*_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS}{sts}

ReflexiveTransitiveClosureᵢᵇ = _⊢_⇀⟦_⟧ᵢ*_
ReflexiveTransitiveClosureᵇ = _⊢_⇀⟦_⟧*_
```

## Totality

We say a single-step relation is **total** if every input has some output.

```agda
STS-total : (C → S → Sig → S → Type) → Type
STS-total _⊢_⇀⟦_⟧_ = ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⟦ sig ⟧ s'

ReflexiveTransitiveClosure-total : {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type}
  → STS-total _⊢_⇀⟦_⟧_ → STS-total (ReflexiveTransitiveClosure {sts = _⊢_⇀⟦_⟧_})
ReflexiveTransitiveClosure-total SS-total {Γ} {s} {[]} = s , BS-base Id-nop
ReflexiveTransitiveClosure-total SS-total {Γ} {s} {x ∷ sig} =
  case SS-total of λ where
    (s' , Ps') → map₂′ (BS-ind Ps') $ ReflexiveTransitiveClosure-total SS-total
```

## Invariants

A predicate `P : S → Type` is an **invariant** of a step relation `STS` if it is
preserved by every step.

```agda
LedgerInvariant : (C → S → Sig → S → Type) → (S → Type) → Type
LedgerInvariant STS P = ∀ {c s sig s'} → STS c s sig s' → P s → P s'

RTC-preserves-inv : ∀ {STS : C → S → Sig → S → Type} {P}
                  → LedgerInvariant STS P → LedgerInvariant (ReflexiveTransitiveClosure {sts = STS}) P
RTC-preserves-inv inv (BS-base Id-nop) = id
RTC-preserves-inv inv (BS-ind p₁ p₂)   = RTC-preserves-inv inv p₂ ∘ inv p₁
```

While an invariant in the above sense is *preserved* by every step of a relation, it
is sometimes useful to *assert* a predicate at every state that a particular trace
passes through.  `RTC-All P tr` states that `P` holds at the target state of every
step of the trace `tr` (the initial state is not constrained), and `RTC-All-last`
reads the predicate off at the final state of a nonempty trace.

```agda
module _ {STS : C → S → Sig → S → Type} (P : S → Type) where

  RTC-All : ReflexiveTransitiveClosure {sts = STS} Γ s sigs s' → Type
  RTC-All (BS-base Id-nop)         = ⊤
  RTC-All (BS-ind {s' = s₁} _ tr)  = P s₁ × RTC-All tr

  RTC-All-last :
    (tr : ReflexiveTransitiveClosure {sts = STS} Γ s (sig ∷ sigs) s')
    → RTC-All tr → P s'
  RTC-All-last (BS-ind _ (BS-base Id-nop))  (p , _)   = p
  RTC-All-last (BS-ind _ tr@(BS-ind _ _))   (_ , ps)  = RTC-All-last tr ps
```
