---
source_branch: master
source_path: src/Interface/ComputationalRelation.lagda.md
---

# Computational Relations for Trace Semantics

This module provides a generic computational interface for relations of the
form `C → S → B → S → Type` where

+  `C`{.AgdaDatatype} is an environment,
+  `S`{.AgdaDatatype} is the state type,
+  `B`{.AgdaDatatype} is the signal type (e.g., a single signal,
   `Sig`{.AgdaDatatype}, or a trace, `List Sig`{.AgdaDatatype}).

The interface supplies

1.  a result type `ComputationResult`{.AgdaDatatype} and its Functor/Applicative/Monad instances;

2.  a `Computational`{.AgdaRecord} record that captures an executable interpreter
    (`compute`{.AgdaFunction}/`computeProof`{.AgdaField}) and a correctness
    equivalence relating the interpreter to the relational specification;

3.  derived properties (right‑uniqueness, a decidability principle under
    `DecEq S`, and an extensionality lemma for two implementations), and

4.  **instances** that lift a small‑step computational specification to our
    trace runners from `Interface.STS`:

     +  `RunTrace` for lists of signals,
     +  `⟪ base AndThenRunTrace step ⟫` for a one‑off init step then a trace,
     +  `RunIndexedTrace` and `⟪ base AndThenRunIndexedTrace stepᵢ ⟫` for indexed traces.

The intent is that once we define a `Computational`{.AgdaRecord} instance for the single step
relation, we automatically obtain computational instances for the trace semantics.


<!--
```agda
{-# OPTIONS --safe #-}

module Interface.ComputationalRelation where

open import Prelude
open import Interface.STS public

private variable
  a : Level
  C S : Type
  Sig : Type
  Err Err₁ Err₂ : Type
```
-->



??? info "More Details"

    **Big Picture**.

    +  `STS`{.AgdaDatatype} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound} `s'`{.AgdaBound}
       is a *specification*; it's a *logical relation* that says,
       "Under environment `Γ`{.AgdaBound}, states `s`{.AgdaBound} and `s'`{.AgdaBound}
       are related via `b`{.AgdaBound}."  By itself this is not *executable*; it's just a
       type (proposition) that may or may not be inhabited (by a proof).

    +  `Computational`{.AgdaRecord} `STS`{.AgdaBound} `Err`{.AgdaBound}
       is the *executable* counterpart; it packages a program (`compute`) that attempts
       to produce the next state, together with facts that connect that program back to
       the spec (`STS`{.AgdaBound}).
       Think: spec + interpreter + proof the interpreter is correct.

    +  `ComputationResult`{.AgdaDatatype} `Err`{.AgdaBound} `R`{.AgdaBound}
       = `success`{.AgdaInductiveConstructor} `R`{.AgdaBound}
       `|` `failure`{.AgdaInductiveConstructor} `Err`{.AgdaBound} is just a
       "Maybe-with-error" wrapper.  We use it as the return type of
       `compute`{.AgdaFunction} and `computeProof`{.AgdaFunction} so we can represent
       either "I found a next state" or "this step is impossible/failed and here's why."


    **What each field really means**.

    1.  Functor, Applicative, Monad of `ComputationResult`{.AgdaDatatype}

        These are small but very useful conveniences.

        +  **Functor** lets us map a pure function over a successful result without
          touching failures.  In our code, we use it to define:

          `compute`{.AgdaFunction} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound}
          = `map proj₁` (`computeProof`{.AgdaFunction} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound})

          Here, `computeProof`{.AgdaFunction} gives

          `success`{.AgdaInductiveConstructor} (`s'`{.AgdaBound} , `proof`{.AgdaBound}) or

          `failure`{.AgdaInductiveConstructor} `e`{.AgdaBound}.

          Mapping `proj₁`{.AgdaFunction} turns that into
          `success`{.AgdaInductiveConstructor} `s'`{.AgdaBound}
          or keeps the same `failure`{.AgdaInductiveConstructor} `e`{.AgdaBound}.
          Without this functor, we'd have to pattern-match every time.

        +  **Applicative** lets us combine *independent* computations. We're not leaning on
           this much here, but it's standard to provide it with a functor and monad.

        +  **Monad** lets us sequence computations where later steps depend on earlier
           results.  This is the key when we run a trace: do a step, if it succeeds get the
           new state, then continue on the rest of the list; if it fails, stop with that
           failure.  Our `computeProof`{.AgdaFunction} for `RunTrace`{.AgdaDatatype}
           essentially implements a monadic fold (left-to-right) by pattern matching; having
           a monad means we can express and reason about that sequencing uniformly, without
           awkward error/exception handling.

        So these instances are not cases of "category theory for its own sake;"
        they let us write and prove things about the interpreter more cleanly.

        +  `map proj₁` keeps proofs around when we need them, but derives a state-only
           function when we don't.
        +  Monadic sequencing matches the structure of trace execution.


    2.  Executable Interpreter

        +  `computeProof`{.AgdaFunction} : (`Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound})
           `→` `ComputationResult`{.AgdaRecord} `Err`{.AgdaBound}
           (`Σ` `s'`{.AgdaBound} . `STS`{.AgdaBound} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound} `s'`{.AgdaBound})

           This is an interpreter that *tries* to run the spec and, if successful, returns both

           1.  the **output state** `s'`{.AgdaBound}, and
           2.  a **proof** that
               `STS`{.AgdaBound} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound} `s'`{.AgdaBound} holds.

           If it can't run (the step is impossible for those inputs), it returns
           `failure`{.AgdaInductiveConstructor} `e`{.AgdaBound}.

           Think: a function that either says, "I can't do this for reason `e`{.AgdaBound}",
           or, "I can do this and here's the state and a proof it's correct."

        +  `compute`{.AgdaFunction} : (`Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound})
           `→` `ComputationResult`{.AgdaRecord} `Err`{.AgdaBound} `S`{.AgdaBound}

          This is the plain executable version.  It throws away the proof and just returns
          the state, via the functor mapping discussed above.  We use it when all we need is the
          state for execution code paths; we keep `computeProof`{.AgdaFunction} when a proof is helpful
          downstream.

    3.  Correctness Equivalence

        We want our interpreter to exactly match the spec. There are two directions:

        +  **Completeness** (what we *provide* as a field)

           If the spec says `STS Γ s b s'`, then the interpreter must return that same state:

           `completeness`{.AgdaField}
           : `STS`{.AgdaBound} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound} `s'`{.AgdaBound}
           → `compute`{.AgdaFunction} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound}
           ≡ `success`{.AgdaInductiveConstructor} `s'`{.AgdaBound}

           This prevents two different outputs for the same input; the spec and the
           interpreter are aligned at least in this direction. (It also implies functional
           determinism of the relation, via a standard argument we will see below.)

        +  **Soundness** (the converse)

           If the interpreter returns `success`{.AgdaInductiveConstructor} `s'`{.AgdaBound}`, then
           `STS`{.AgdaBound} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound} `s'`{.AgdaBound} must hold.

           We *derive* this from `computeProof`{.AgdaField} because
           `computeProof`{.AgdaField} returns not only the state, `s'`{.AgdaBound}, but also
           the proof, `proofOfSTS`{.AgdaBound}. From that, we build

           `compute`{.AgdaFunction} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound}
           `≡` `success`{.AgdaInductiveConstructor} `s'`{.AgdaBound}`
           `⇔` `STS`{.AgdaBound} `Γ`{.AgdaBound} `s`{.AgdaBound} `b`{.AgdaBound} `s'`{.AgdaBound}

           in our code as `≡-success⇔STS`{.AgdaBound}, by combining
           `completeness`{.AgdaField} (the → direction) with the witness from
           `computeProof`{.AgdaField} (the ← direction).

        **Intuition**. *The function and the relation say the exact same thing.*
        One is executable, one is declarative; the equivalence ties them together.


    **How this plays out for traces**.

    Given a `Computational`{.AgdaRecord} instance for the step relation
    `Step`{.AgdaBound} : `C`{.AgdaDatatype} → `S`{.AgdaDatatype}
    → `Sig`{.AgdaDatatype} → `S`{.AgdaDatatype} → `Type`{.AgdaDatatype}, the
    instances for:

    +  `RunTrace`{.AgdaDataType} `Step`{.AgdaBound}
    +  `⟪`{.AgdaFunction} `base`{.AgdaBound} `AndThenRunTrace`{.AgdaFunction} `Step`{.AgdaBound} `⟫`{.AgdaFunction}
    +  `RunIndexedTrace`{.AgdaDataType} `Stepᵢ`{.AgdaBound}
    +  `⟪`{.AgdaFunction} `base`{.AgdaBound} `AndThenRunIndexedTrace`{.AgdaFunction} `Stepᵢ`{.AgdaBound} `⟫`{.AgdaFunction}

    are all just folds.

    +  If the list is empty: succeed (either reflexively
       `run-[]`{.AgdaInductiveConstructor} or via a base step).

    +  If the list is `sig ∷ sigs`, run one step

       `computeProof`{.AgdaField} `Γ`{.AgdaBound} `s`{.AgdaBound} `sig`{.AgdaBound}

       +  if failure → whole run fails
       +  if success `(s₁ , step-proof)` → recurse on `sigs` from `s₁`, and then stitch
          the proofs with the corresponding constructor (`run-∷`, `runᵢ-∷`).

    +  **Completeness for traces** is a structural induction using the single-step
       completeness and the induction hypothesis.


    **Toy Example**

    Suppose `S = ℕ`, `Sig = Bool`, and the spec says:

    if `sig = true`, increment the state, otherwise leave it alone:

       `Step Γ s sig s'  ≜  (sig ≡ true × s' ≡ suc s) ⊎ (sig ≡ false × s' ≡ s)`

    A `Computational Step Err` could implement:

    `compute`{.AgdaFunction} `Γ`{.AgdaBound} `s`{.AgdaBound} `true`{.AgdaBound}
    = `success`{.AgdaInductiveConstructor}  (suc s)`

    `compute`{.AgdaFunction} `Γ`{.AgdaBound} `s`{.AgdaBound} `false`{.AgdaBound}
    = `success`{.AgdaInductiveConstructor} `s`{.AgdaBound}

    and `computeProof`{.AgdaField} returns (`s'`{.AgdaBound}, `proof`{.AgdaBound}) with the obvious proof term.

    Then `Computational-RunTrace`{.AgdaFunction} just runs that function over the list of
    booleans; its completeness proof is the standard list induction: head step complete
    by `completeness` for `Step`, tail by inductive hypothesis.


## A Computation Result Type

```agda
data ComputationResult {a : Level} (Err : Type) (R : Type a) : Type a where
  success : R   → ComputationResult Err R
  failure : Err → ComputationResult Err R

success-maybe : ∀ {R : Type} → ComputationResult Err R → Maybe R
success-maybe (success x) = just x
success-maybe (failure _) = nothing

failure-maybe : ∀ {R : Type} → ComputationResult Err R → Maybe Err
failure-maybe (success _) = nothing
failure-maybe (failure x) = just x

_≈ᶜʳ_ : ∀ {A} → ComputationResult Err A → ComputationResult Err A → Type
x ≈ᶜʳ y = success-maybe x ≡ success-maybe y

isFailure : ∀ {A : Type a} → ComputationResult Err A → Type a
isFailure x = ∃[ e ] x ≡ failure e

module _ {a b} {E : Type} {A : Type a} {B : Type b} where
  caseCR_∣_∣_ : (ma : ComputationResult E A)
             → (∀ {a} → ma ≡ success a → B)
             → (isFailure ma → B) → B
  caseCR ma ∣ f ∣ g with ma
  ... | success _ = f refl
  ... | failure e = g (e , refl)

  caseCR-success : ∀ {a} {ma : ComputationResult E A}
    {f : ∀ {a} → ma ≡ success a → B} {g : isFailure ma → B}
    → (eq : ma ≡ success a)
    → caseCR ma ∣ f ∣ g ≡ f eq
  caseCR-success refl = refl

  caseCR-failure : {ma : ComputationResult E A}
    {f : ∀ {a} → ma ≡ success a → B} {g : isFailure ma → B}
    → (eq : isFailure ma)
    → caseCR ma ∣ f ∣ g ≡ g eq
  caseCR-failure (_ , refl) = refl

instance
  Bifunctor-ComputationResult : ∀ {a : Level} → Bifunctor {_} {a} ComputationResult
  Bifunctor-ComputationResult .bimap _ f (success x) = success (f x)
  Bifunctor-ComputationResult .bimap f _ (failure x) = failure (f x)

  Functor-ComputationResult : ∀ {E : Type} → Functor (ComputationResult E)
  Functor-ComputationResult ._<$>_ f (success x) = success (f x)
  Functor-ComputationResult ._<$>_ _ (failure x) = failure x

  Applicative-ComputationResult : ∀ {E : Type} → Applicative (ComputationResult E)
  Applicative-ComputationResult .pure = success
  Applicative-ComputationResult ._<*>_ (success f) x = f <$> x
  Applicative-ComputationResult ._<*>_ (failure e) _ = failure e

  Monad-ComputationResult : ∀ {E : Type} → Monad (ComputationResult E)
  Monad-ComputationResult .return = success
  Monad-ComputationResult ._>>=_ (success a) m = m a
  Monad-ComputationResult ._>>=_ (failure e) _ = failure e

map-failure : ∀ {A B C : Type} {f : A → B} {x : C} {ma : ComputationResult C A}
            → ma ≡ failure x → map f ma ≡ failure x
map-failure refl = refl
```

## Computational Interface

We parametrize the interface by a relation `STS : C → S → B → S → Type`.
The record provides both an executable `compute` and a two‑way equivalence
between `compute` returning `success s'` and the relational judgment.

```agda
module _ {B : Type} (STS : C → S → B → S → Type) where

  ExtendedRel : C → S → B → ComputationResult Err S → Type
  ExtendedRel Γ s b (success s') = STS Γ s b s'
  ExtendedRel Γ s b (failure _ ) = ∀ s' → ¬ STS Γ s b s'

  record Computational (Err : Type) : Type₁ where
    constructor MkComputational
    field
      computeProof : (Γ : C) (s : S) (b : B)
        → ComputationResult Err (∃[ s' ] STS Γ s b s')

    compute : C → S → B → ComputationResult Err S
    compute Γ s b = map proj₁ (computeProof Γ s b)

    field
      completeness : (Γ : C) (s : S) (b : B) (s' : S)
        → STS Γ s b s' → compute Γ s b ≡ success s'

    open ≡-Reasoning

    computeFail : C → S → B → Type
    computeFail Γ s b = isFailure (compute Γ s b)

    ≡-success⇔STS : {Γ : C} {s : S} {b : B} {s' : S}
      → compute Γ s b ≡ success s' ⇔ STS Γ s b s'
    ≡-success⇔STS {Γ}{s}{b}{s'} with computeProof Γ s b in eq
    ... | success (t , h) = mk⇔ (λ where refl → h) λ h' →
      begin
        success t         ≡˘⟨ completeness _ _ _ _ h ⟩
        compute Γ s b     ≡⟨ completeness _ _ _ _ h' ⟩
        success s'        ∎
    ... | failure _ = mk⇔ (λ ()) λ h →
      begin
        failure _         ≡˘⟨ map-failure eq ⟩
        compute Γ s b     ≡⟨ completeness _ _ _ _ h ⟩
        success s'        ∎

    failure⇒∀¬STS : {Γ : C} {s : S} {b : B}
      → computeFail Γ s b → ∀ s' → ¬ STS Γ s b s'
    failure⇒∀¬STS comp≡fail s' h rewrite ≡-success⇔STS .Equivalence.from h =
      case comp≡fail of λ ()

    ∀¬STS⇒failure : {Γ : C} {s : S} {b : B}
      → (∀ s' → ¬ STS Γ s b s') → computeFail Γ s b
    ∀¬STS⇒failure {Γ}{s}{b} ¬sts with computeProof Γ s b
    ... | success (x , y) = ⊥-elim (¬sts x y)
    ... | failure y       = (y , refl)

    failure⇔∀¬STS : {Γ : C} {s : S} {b : B}
      → computeFail Γ s b ⇔ ∀ s' → ¬ STS Γ s b s'
    failure⇔∀¬STS = mk⇔ failure⇒∀¬STS ∀¬STS⇒failure

    recomputeProof : ∀ {Γ s b s'}
                   → STS Γ s b s' → ComputationResult Err (∃[ t ] STS Γ s b t)
    recomputeProof _ = computeProof _ _ _
```

### Consequences of the Interface

From a `Computational STS Err`, we get:

```agda
module _ {B : Type} {STS : C → S → B → S → Type}
         (comp : Computational STS Err) where

  open Computational comp

  ExtendedRelSTS = ExtendedRel STS

  ExtendedRel-compute : {Γ : C} {s : S} {b : B}
    → ExtendedRelSTS Γ s b (compute Γ s b)
  ExtendedRel-compute {Γ}{s}{b} with compute Γ s b in eq
  ... | success s' = Equivalence.to ≡-success⇔STS eq
  ... | failure _  = λ s' h → case trans (sym (Equivalence.from ≡-success⇔STS h)) eq of λ ()

  open ≡-Reasoning

  ExtendedRel-rightUnique : {Γ : C} {s : S} {b : B} {s' s'' : ComputationResult Err S}
    → ExtendedRelSTS Γ s b s' → ExtendedRelSTS Γ s b s''
    → _≈ᶜʳ_ {Err = Err} s' s''
  ExtendedRel-rightUnique {s' = success x} {success x'} h h'
    with trans (sym (Equivalence.from ≡-success⇔STS h)) (Equivalence.from ≡-success⇔STS h')
  ... | refl = refl
  ExtendedRel-rightUnique {s' = success x} {failure _}  h h' = ⊥-elim (h' x h)
  ExtendedRel-rightUnique {s' = failure _} {success x'} h h' = ⊥-elim (h x' h')
  ExtendedRel-rightUnique {s' = failure _} {failure _}  h h' = refl

  computational⇒rightUnique : {Γ : C} {s : S} {b : B} {s' s'' : S}
    → STS Γ s b s' → STS Γ s b s'' → s' ≡ s''
  computational⇒rightUnique h h' with ExtendedRel-rightUnique h h'
  ... | refl = refl

  Computational⇒Dec : {Γ : C} {s : S} {b : B} {s' : S} ⦃ _ : DecEq S ⦄
    → Dec (STS Γ s b s')
  Computational⇒Dec {Γ} {s} {b} {s'}
    with compute Γ s b | ExtendedRel-compute {Γ} {s} {b}
  ... | failure _ | ExSTS = no (ExSTS s')
  ... | success x  | ExSTS with x ≟ s'
  ...   | no ¬p    = no (λ h → ¬p (sym (computational⇒rightUnique h ExSTS)))
  ...   | yes refl = yes ExSTS
```

Two computational instances for the same relation are extensionally equal on
successful results.

```agda
module _ {B : Type} {STS : C → S → B → S → Type}
         (comp comp' : Computational STS Err) where

  open Computational comp  renaming (compute to compute₁)
  open Computational comp' renaming (compute to compute₂)

  compute-ext≡ : {Γ : C} {s : S} {b : B} {s' : S}
    → compute₁ Γ s b ≈ᶜʳ compute₂ Γ s b
  compute-ext≡ = ExtendedRel-rightUnique comp (ExtendedRel-compute comp)
                                           (ExtendedRel-compute comp')

open Computational ⦃...⦄
```

## Error Injection Helper

When combining a base interpreter with a step interpreter, their error spaces may
differ.  We provide a tiny class to inject either error into a common sum-like error
used by the combined interpreter.

```agda
record InjectError Err₁ Err₂ : Type where
  field injectError : Err₁ → Err₂

open InjectError

instance
  InjectError-⊥ : InjectError ⊥ Err
  InjectError-⊥ .injectError ()

  InjectError-Id : InjectError Err Err
  InjectError-Id .injectError = id
```

## Basic Instance: identity relation

For the identity relation `IdSTS` (from `Interface.STS`), computing always
succeeds with the input state.

```agda
instance
  Computational-Id
    : {C S : Type} → Computational (IdSTS {C} {S}) ⊥
  Computational-Id .computeProof _ s _ = success (s , Id-nop)
  Computational-Id .completeness _ _ _ _ Id-nop = refl
```

## Lifting a Step Interpreter to Traces

Given a `Computational` instance for a single-step relation
`Step : C → S → Sig → S → Type`, we can execute traces in three flavors.

### 1. Plain Trace: <span class="AgdaDataType">RunTrace</span>

```agda
module _ {Step : C → S → Sig → S → Type}
         ⦃ _ : Computational Step Err ⦄ where instance

  Computational-RunTrace : Computational (RunTrace Step) Err
  Computational-RunTrace .computeProof Γ s [] = success (s , run-[])
  Computational-RunTrace .computeProof Γ s (sig ∷ sigs)
    with computeProof {STS = Step} Γ s sig
  ... | failure e = failure e
  ... | success (s₁ , step)
        with computeProof {STS = RunTrace Step} Γ s₁ sigs
  ...     | failure e           = failure e
  ...     | success (s₂ , rest) = success (s₂ , run-∷ step rest)

  Computational-RunTrace .completeness Γ s [] s' run-[] = refl
  Computational-RunTrace .completeness Γ s (sig ∷ sigs) s'' (run-∷ p ps)
    with computeProof Γ s sig | completeness {STS = Step} Γ s sig _ p
  ... | success (s₁ , _) | refl
    with computeProof Γ s₁ sigs | completeness _ _ _ _ ps
  ... | success (s₂ , _) | p = p
```

### 2. Seeded then Trace: <span class="AgdaDataFunction">⟪</span> `base` <span class="AgdaDataFunction">AndThenRunTrace</span> `Step` <span class="AgdaDataFunction">⟫</span>

The base relation is assumed given in the classic `C → S → ⊤ → S → Type`
shape (e.g., an initialization rule).  We adapt it to `C → S → S → Type` using
`baseDrop` from `Interface.STS`.

```agda
module _ {BSTS : C → S → ⊤ → S → Type}
         ⦃ _ : Computational BSTS Err₁ ⦄ where
  module _ {Step : C → S → Sig → S → Type}
           ⦃ _ : Computational Step Err₂ ⦄
           ⦃ _ : InjectError Err₁ Err ⦄
           ⦃ _ : InjectError Err₂ Err ⦄ where instance

    Computational-AndThenRunTrace
      : Computational (⟪ (baseDrop BSTS) AndThenRunTrace Step ⟫) Err

    Computational-AndThenRunTrace .computeProof Γ s sigs
      with computeProof {STS = BSTS} Γ s tt
    ... | failure e = failure (injectError it e)
    ... | success (s₁ , baseP)
          with computeProof {STS = RunTrace Step} Γ s₁ sigs
    ...       | failure e           = failure (injectError it e)
    ...       | success (s₂ , rest) = success (s₂ , (s₁ , (baseP , rest)))

    -- Empty trace after the base step
    Computational-AndThenRunTrace .completeness Γ s [] s'' (s₁ , (baseP , run-[]))
      with computeProof {STS = BSTS} Γ s tt
           | completeness {STS = BSTS} Γ s tt _ baseP
    ... | success (s₁ , _) | refl = refl

    -- Cons case: base, then one Step, then the tail trace
    Computational-AndThenRunTrace .completeness Γ s (sig ∷ sigs) s'' (s₁ , (baseP , run-∷ p ps))
      with computeProof {STS = BSTS} Γ s tt
           | completeness {STS = BSTS} Γ s tt _ baseP
    ... | success (s₁ , _) | refl
      with computeProof {STS = Step} Γ s₁ sig
           | completeness {STS = Step} Γ s₁ sig _ p
    ...   | success (s₂ , _) | refl
      with computeProof {STS = RunTrace Step} Γ s₂ sigs
           | completeness {STS = RunTrace Step} Γ s₂ sigs _ ps
    ...     | success (s'' , _) | refl = refl
```

### 3. Indexed Traces: <span class="AgdaDataType">RunIndexedTrace</span> and <span class="AgdaDataFunction">⟪</span> `base` <span class="AgdaDataFunction">AndThenRunIndexedTrace</span> `Stepᵢ` <span class="AgdaDataFunction">⟫</span>

For indexed steps we thread the position through the environment.
We implement the interpreter by a simple recursion that *internally* keeps the
index and starts from `0`.

But first, we some prove helper lemmas for showing completeness using an explicit dictionary.

```agda
success-injective : ∀ {a} {A : Type a} {E : Type} {x y : A}
  → success {Err = E} x ≡ success y → x ≡ y
success-injective refl = refl

-- Helpers are parameterized by an explicit Computational dictionary 'compᵢ'
module helpers {Stepᵢ : (C × ℕ) → S → Sig → S → Type}
               (compᵢ : Computational Stepᵢ Err) where
  module Cᵢ = Computational compᵢ

  _computeProofᵢ :
    (Γ : C) → (n : ℕ) → (s : S) → (xs : List Sig)
    → ComputationResult Err (∃[ s' ]
         RunIndexedTrace' Stepᵢ (Γ , n) s xs s')

  _computeProofᵢ Γ n s [] = success (s , runᵢ-[])

  _computeProofᵢ Γ n s (x ∷ xs)
    with Cᵢ.computeProof (Γ , n) s x
  ... | failure e          = failure e
  ... | success (s₁ , step)
        with _computeProofᵢ Γ (suc n) s₁ xs
  ...     | failure e            = failure e
  ...     | success (s₂ , rest)  = success (s₂ , runᵢ-∷ step rest)

  -- Completeness at an arbitrary index: produce *some* proof shape q.
  completenessᵢ :
    ∀ {Γ n s xs s'}
    → RunIndexedTrace' Stepᵢ (Γ , n) s xs s'
    → ∃[ q ] (_computeProofᵢ Γ n s xs ≡ success (s' , q))

  completenessᵢ runᵢ-[] = runᵢ-[] , refl

  completenessᵢ {Γ} {n} {s} {xs = sig ∷ sigs} {s'}
                 (runᵢ-∷ {sig = sig} {s' = s₁} p ps)
    with Cᵢ.computeProof (Γ , n) s sig
       | Cᵢ.completeness (Γ , n) s sig s₁ p
  ... | success (s₁ , step) | refl
    with _computeProofᵢ Γ (suc n) s₁ sigs
       | completenessᵢ ps
  ...   | success (t , rest) | (q , eq)
        with success-injective eq
  ...     | refl = runᵢ-∷ step rest , refl
```


Seeded indexed traces combine the base and the indexed runner; error handling is
identical to the non-indexed case.

```agda
module _ {Stepᵢ : (C × ℕ) → S → Sig → S → Type}
         ⦃ compᵢ : Computational Stepᵢ Err ⦄ where
  open module H = helpers {Stepᵢ = Stepᵢ} compᵢ

  instance
    Computational-RunIndexedTrace : Computational (RunIndexedTrace Stepᵢ) Err

    Computational-RunIndexedTrace .computeProof Γ s xs =
      H._computeProofᵢ Γ 0 s xs

    Computational-RunIndexedTrace .completeness Γ s xs s' prf
      with H.completenessᵢ prf
    ... | (q , eq)
      -- compute Γ s xs is map proj₁ (computeProof Γ s xs)
      -- and computeProof = _computeProofᵢ Γ 0 s xs; rewrite by eq:
      rewrite eq = refl
```

## Convenience exports

For projects that still use the historical names, the following shims maintain
compatibility with the new definitions in `Interface.STS`{.AgdaModule}:

```agda
Computational-ReflexiveTransitiveClosure
  : {STS : C → S → Sig → S → Type}
  → ⦃ Computational STS Err ⦄
  → Computational (RunTrace STS) Err
Computational-ReflexiveTransitiveClosure = it

Computational-ReflexiveTransitiveClosureᵢ
  : {STS : (C × ℕ) → S → Sig → S → Type}
  → ⦃ Computational STS Err ⦄
  → Computational (RunIndexedTrace STS) Err
Computational-ReflexiveTransitiveClosureᵢ = it
```
