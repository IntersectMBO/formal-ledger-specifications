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

     +  `RunTraceAndThen` for lists of signals,
     +  `RunTraceAfterAndThen` for a one‑off init step then a trace, then a final step.

The intent is that once we define a `Computational`{.AgdaRecord} instance for the single step
relation (and, in the second case, the init and final steps), we automatically obtain
computational instances for the trace semantics.


<!--
```agda
{-# OPTIONS --safe #-}

module Interface.ComputationalRelation where

open import Prelude
open import Interface.STS public

private variable
  a : Level
  C S Sig : Type
  Err Err₁ Err₂ : Type
  c : C
  s s' s'' : S
  sig : Sig
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
           failure.  Our `computeProof`{.AgdaFunction} for `RunTraceAndThen`{.AgdaDatatype}
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

    +  `RunTraceAndThen`{.AgdaDataType} `Step`{.AgdaBound} `Last`{.AgdaBound}
    +  `RunTraceAfterAndThen`{.AgdaDataType} `Init`{.AgdaBound} `Step`{.AgdaBound} `Last`{.AgdaBound}
    +  `RunIndexedTrace`{.AgdaDataType} `Stepᵢ`{.AgdaBound}

    are all just folds.

    +  If the list is empty: succeed (via a initial step).

    +  If the list is `sig ∷ sigs`, run one step

       `computeProof`{.AgdaField} `Γ`{.AgdaBound} `s`{.AgdaBound} `sig`{.AgdaBound}

       +  if failure → whole run fails
       +  if success `(s₁ , step-proof)` → recurse on `sigs` from `s₁`, and then stitch
          the proofs with the corresponding constructor (e.g., `run-∷`).

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

    Then `Computational-RunTraceAndThen`{.AgdaFunction} just runs that function over the list of
    booleans; its completeness proof is the standard list induction: head step complete
    by `completeness` for `Step`, tail by inductive hypothesis.


## A Computation Result Type

```agda
data ComputationResult {a : Level} (Err : Type) (R : Type a) : Type a where
  success : R   → ComputationResult Err R
  failure : Err → ComputationResult Err R

isFailure : ∀ {A : Type a} → ComputationResult Err A → Type a
isFailure x = ∃[ e ] x ≡ failure e

module _ {a b} {E : Type} {A : Type a} {B : Type b} where
  caseCR_∣_∣_ : (ma : ComputationResult E A) → (∀ {a} → ma ≡ success a → B) → (isFailure ma → B) → B
  caseCR ma ∣ f ∣ g with ma
  ... | success _ = f refl
  ... | failure e = g (e , refl)

  caseCR-success : ∀ {a} {ma : ComputationResult E A} {f : ∀ {a} → ma ≡ success a → B} {g : isFailure ma → B}
    → (eq : ma ≡ success a)
    → caseCR ma ∣ f ∣ g ≡ f eq
  caseCR-success refl = refl

  caseCR-failure : {ma : ComputationResult E A} {f : ∀ {a} → ma ≡ success a → B} {g : isFailure ma → B}
    → (eq : isFailure ma)
    → caseCR ma ∣ f ∣ g ≡ g eq
  caseCR-failure (_ , refl) = refl

instance
  Bifunctor-ComputationResult : ∀ {a : Level} → Bifunctor {_} {a} ComputationResult
  Bifunctor-ComputationResult .bimap _ f (success x) = success $ f x
  Bifunctor-ComputationResult .bimap f _ (failure x) = failure $ f x

  Functor-ComputationResult : ∀ {E : Type} → Functor (ComputationResult E)
  Functor-ComputationResult ._<$>_ f (success x) = success $ f x
  Functor-ComputationResult ._<$>_ _ (failure x) = failure x

  Applicative-ComputationResult : ∀ {E : Type} → Applicative (ComputationResult E)
  Applicative-ComputationResult .pure = success
  Applicative-ComputationResult ._<*>_ (success f) x = f <$> x
  Applicative-ComputationResult ._<*>_ (failure e) _ = failure e

  Monad-ComputationResult : ∀ {E : Type} → Monad (ComputationResult E)
  Monad-ComputationResult .return = success
  Monad-ComputationResult ._>>=_ (success a) m = m a
  Monad-ComputationResult ._>>=_ (failure e) _ = failure e

map-failure : ∀ {A B C : Type} {f : A → B} {x : C} {ma} → ma ≡ failure x → map f ma ≡ failure x
map-failure refl = refl

success-maybe : ∀ {R : Type} → ComputationResult Err R → Maybe R
success-maybe (success x) = just x
success-maybe (failure _) = nothing

failure-maybe : ∀ {R : Type} → ComputationResult Err R → Maybe Err
failure-maybe (success _) = nothing
failure-maybe (failure x) = just x

_≈ᶜʳ_ : ∀ {A} → ComputationResult Err A → ComputationResult Err A → Type
x ≈ᶜʳ y = success-maybe x ≡ success-maybe y
```

## Computational Interface

We parametrize the interface by a relation `STS : C → S → B → S → Type`.
The record provides both an executable `compute` and a two‑way equivalence
between `compute` returning `success s'` and the relational judgment.

```agda
module _ (STS : C → S → Sig → S → Type) where

  ExtendedRel : C → S → Sig → ComputationResult Err S → Type
  ExtendedRel c s sig (success s') = STS c s sig s'
  ExtendedRel c s sig (failure _ ) = ∀ s' → ¬ STS c s sig s'

  record Computational Err : Type₁ where
    constructor MkComputational
    field
      computeProof : (c : C) (s : S) (sig : Sig) → ComputationResult Err (∃[ s' ] STS c s sig s')

    compute : C → S → Sig → ComputationResult Err S
    compute c s sig = map proj₁ $ computeProof c s sig

    field
      completeness : (c : C) (s : S) (sig : Sig) (s' : S)
        → STS c s sig s' → compute c s sig ≡ success s'

    open ≡-Reasoning

    computeFail : C → S → Sig → Type
    computeFail c s sig = isFailure $ compute c s sig

    ≡-success⇔STS : compute c s sig ≡ success s' ⇔ STS c s sig s'
    ≡-success⇔STS {c} {s} {sig} {s'} with computeProof c s sig in eq
    ... | success (s'' , h) = mk⇔ (λ where refl → h) λ h' →
      begin success s''     ≡˘⟨ completeness _ _ _ _ h ⟩
            compute c s sig ≡⟨ completeness _ _ _ _ h' ⟩
            success s'      ∎
    ... | failure y = mk⇔ (λ ()) λ h →
      begin failure _       ≡˘⟨ map-failure eq ⟩
            compute c s sig ≡⟨ completeness _ _ _ _ h ⟩
            success s'      ∎

    failure⇒∀¬STS : computeFail c s sig → ∀ s' → ¬ STS c s sig s'
    failure⇒∀¬STS comp≡nothing s' h rewrite ≡-success⇔STS .Equivalence.from h =
      case comp≡nothing of λ ()

    ∀¬STS⇒failure : (∀ s' → ¬ STS c s sig s') → computeFail c s sig
    ∀¬STS⇒failure {c = c} {s} {sig} ¬sts with computeProof c s sig
    ... | success (x , y) = ⊥-elim (¬sts x y)
    ... | failure y = (y , refl)

    failure⇔∀¬STS : computeFail c s sig ⇔ ∀ s' → ¬ STS c s sig s'
    failure⇔∀¬STS = mk⇔ failure⇒∀¬STS ∀¬STS⇒failure

    recomputeProof : ∀ {Γ s sig s'} → STS Γ s sig s' → ComputationResult Err (∃[ s'' ] STS Γ s sig s'')
    recomputeProof _ = computeProof _ _ _
```

### Consequences of the Interface

From a `Computational STS Err`, we get:

```agda
module _ {STS : C → S → Sig → S → Type} (comp : Computational STS Err) where

  open Computational comp

  ExtendedRelSTS = ExtendedRel STS

  ExtendedRel-compute : ExtendedRelSTS c s sig (compute c s sig)
  ExtendedRel-compute {c} {s} {sig} with compute c s sig in eq
  ... | success s' = Equivalence.to ≡-success⇔STS eq
  ... | failure _  = λ s' h → case trans (sym $ Equivalence.from ≡-success⇔STS h) eq of λ ()

  open ≡-Reasoning

  ExtendedRel-rightUnique : ExtendedRelSTS c s sig s' → ExtendedRelSTS c s sig s'' → _≈ᶜʳ_ {Err = Err} s' s''
  ExtendedRel-rightUnique {s' = success x}  {success x'} h h'
    with trans (sym $ Equivalence.from ≡-success⇔STS h) (Equivalence.from ≡-success⇔STS h')
  ... | refl = refl

  ExtendedRel-rightUnique {s' = success x} {failure _}  h h' = ⊥-elim $ h' x h
  ExtendedRel-rightUnique {s' = failure _} {success x'} h h' = ⊥-elim $ h x' h'
  ExtendedRel-rightUnique {s' = failure a} {failure b}  h h' = refl

  computational⇒rightUnique : STS c s sig s' → STS c s sig s'' → s' ≡ s''
  computational⇒rightUnique h h' with ExtendedRel-rightUnique h h'
  ... | refl = refl

  Computational⇒Dec : ⦃ _ : DecEq S ⦄ → Dec (STS c s sig s')
  Computational⇒Dec {c} {s} {sig} {s'}
    with compute c s sig | ExtendedRel-compute {c} {s} {sig}
  ... | failure _ | ExSTS = no (ExSTS s')
  ... | success x  | ExSTS with x ≟ s'
  ... | no ¬p    = no  λ h → ¬p $ sym $ computational⇒rightUnique h ExSTS
  ... | yes refl = yes ExSTS
```

Two computational instances for the same relation are extensionally equal on
successful results.

```agda
module _ {STS : C → S → Sig → S → Type} (comp comp' : Computational STS Err) where

  open Computational comp  renaming (compute to compute₁)
  open Computational comp' renaming (compute to compute₂)

  compute-ext≡ : compute₁ c s sig ≈ᶜʳ compute₂ c s sig
  compute-ext≡ = ExtendedRel-rightUnique comp
    (ExtendedRel-compute comp) (ExtendedRel-compute comp')

open Computational ⦃...⦄

Computational⇒Dec' :
  {STS : C → S → Sig → S → Type} ⦃ comp : Computational STS Err ⦄ → Dec (∃[ s' ] STS c s sig s')
Computational⇒Dec' with computeProof _ _ _ in eq
... | success x = yes x
... | failure x = no λ (_ , h) → failure⇒∀¬STS (-, cong (map proj₁) eq) _ h
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
  InjectError-⊥ = λ where
    .injectError ()

  InjectError-Id : InjectError Err Err
  InjectError-Id = λ where
    .injectError → id
```

## Basic Instance: identity relation

For the identity relation `IdSTS` (from `Interface.STS`), computing always
succeeds with the input state.

```agda
instance
  Computational-Id : {C S : Type} → Computational (IdSTS {C} {S}) ⊥
  Computational-Id .computeProof _ s _ = success (s , Id-nop)
  Computational-Id .completeness _ _ _ _ Id-nop = refl
```

## Computational Instances for the Original "Reflexive Transitive Closure" Relations

```agda
module _ {BSTS : C → S → ⊤ → S → Type} ⦃ _ : Computational BSTS Err₁ ⦄ where
  module _ {STS : C → S → Sig → S → Type} ⦃ _ : Computational STS Err₂ ⦄
     ⦃ _ : InjectError Err₁ Err ⦄ ⦃ _ : InjectError Err₂ Err ⦄ where instance
    Computational-ReflexiveTransitiveClosureᵇ : Computational (ReflexiveTransitiveClosureᵇ {_⊢_⇀⟦_⟧ᵇ_ = BSTS}{STS}) (Err)
    Computational-ReflexiveTransitiveClosureᵇ .computeProof c s [] = bimap (injectError it) (map₂′ BS-base) (computeProof c s tt)
    Computational-ReflexiveTransitiveClosureᵇ .computeProof c s (sig ∷ sigs) with computeProof c s sig
    ... | success (s₁ , h) with computeProof c s₁ sigs
    ...   | success (s₂ , hs) = success (s₂ , BS-ind h hs)
    ...   | failure a = failure (injectError it a)
    Computational-ReflexiveTransitiveClosureᵇ .computeProof c s (sig ∷ sigs) | failure a = failure (injectError it a)
    Computational-ReflexiveTransitiveClosureᵇ .completeness c s [] s' (BS-base p)
      with computeProof {STS = BSTS} c s tt | completeness _ _ _ _ p
    ... | success x | refl = refl
    Computational-ReflexiveTransitiveClosureᵇ .completeness c s (sig ∷ sigs) s' (BS-ind h hs)
      with computeProof c s sig | completeness _ _ _ _ h
    ... | success (s₁ , _) | refl
      with computeProof ⦃ Computational-ReflexiveTransitiveClosureᵇ ⦄ c s₁ sigs | completeness _ _ _ _ hs
    ... | success (s₂ , _) | p = p

  module _ {STS : C × ℕ → S → Sig → S → Type} ⦃ Computational-STS : Computational STS Err₂ ⦄
    ⦃ InjectError-Err₁ : InjectError Err₁ Err ⦄ ⦃ InjectError-Err₂ : InjectError Err₂ Err ⦄
    where instance
    Computational-ReflexiveTransitiveClosureᵢᵇ' : Computational (_⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = BSTS}{STS}) Err
    Computational-ReflexiveTransitiveClosureᵢᵇ' .computeProof c s [] =
      bimap (injectError it) (map₂′ BS-base) (computeProof (proj₁ c) s tt)
    Computational-ReflexiveTransitiveClosureᵢᵇ' .computeProof c s (sig ∷ sigs) with computeProof c s sig
    ... | success (s₁ , h) with computeProof (proj₁ c , suc (proj₂ c)) s₁ sigs
    ... | success (s₂ , hs) = success (s₂ , BS-ind h hs)
    ... | failure a = failure a
    Computational-ReflexiveTransitiveClosureᵢᵇ' .computeProof c s (sig ∷ sigs) | failure a = failure (injectError it a)
    Computational-ReflexiveTransitiveClosureᵢᵇ' .completeness c s [] s' (BS-base p)
      with computeProof {STS = BSTS} (proj₁ c) s tt | completeness _ _ _ _ p
    ... | success x | refl = refl
    Computational-ReflexiveTransitiveClosureᵢᵇ' .completeness c s (sig ∷ sigs) s' (BS-ind h hs)
      with computeProof {STS = STS} {Err = Err₂} c s sig | completeness _ _ _ _ h
    ... | success (s₁ , _) | refl
      with computeProof (proj₁ c , suc (proj₂ c)) s₁ sigs | completeness _ _ _ _ hs
    ...   | success (s₂ , _) | p = p

    Computational-ReflexiveTransitiveClosureᵢᵇ : Computational (ReflexiveTransitiveClosureᵢᵇ {_⊢_⇀⟦_⟧ᵇ_ = BSTS}{STS}) Err
    Computational-ReflexiveTransitiveClosureᵢᵇ .computeProof c =
      Computational-ReflexiveTransitiveClosureᵢᵇ' .computeProof (c , 0)
    Computational-ReflexiveTransitiveClosureᵢᵇ .completeness c =
      Computational-ReflexiveTransitiveClosureᵢᵇ' .completeness (c , 0)
```


## Convenience exports

For projects that still use the historical names, the following shims maintain
compatibility with the new definitions in `Interface.STS`{.AgdaModule}:

```agda
Computational-ReflexiveTransitiveClosure : {STS : C → S → Sig → S → Type} → ⦃ Computational STS Err ⦄
  → Computational (ReflexiveTransitiveClosure {sts = STS}) Err
Computational-ReflexiveTransitiveClosure = it

Computational-ReflexiveTransitiveClosureᵢ : {STS : C × ℕ → S → Sig → S → Type} → ⦃ Computational STS Err ⦄
  → Computational (ReflexiveTransitiveClosureᵢ {sts = STS}) Err
Computational-ReflexiveTransitiveClosureᵢ = it
```


## Lifting a Step Interpreter to Traces

Given a `Computational` instance for a single-step relations
`Step : C → S → Sig → S → Type` (and instances for
`Init : C → S → ⊤ → S → Type` and
`Last : C → S → ⊤ → S → Type`, as needed), we execute traces in two flavors.

### 1. Trace with Final Step: <span class="AgdaDataType">RunTraceAndThen</span>

```agda
module _ {Step : C → S → Sig → S → Type} ⦃ serr : Computational Step Err₁ ⦄ where
  module _  {Last : C → S → ⊤ → S → Type} ⦃ lerr : Computational Last Err₂ ⦄
            ⦃ _ : InjectError Err₁ Err ⦄ ⦃ _ : InjectError Err₂ Err ⦄
    where

    instance

      Computational-RunTraceAndThen : Computational (RunTraceAndThen Step Last) Err

      Computational-RunTraceAndThen .computeProof Γ s []
        with computeProof {STS = Last} Γ s tt
      ... | failure e = failure (injectError it e)
      ... | success (s' , h) = success (s' , run-[] h)


      Computational-RunTraceAndThen .computeProof Γ s (sig ∷ sigs)
        with computeProof {STS = Step} Γ s sig
      ... | failure e = failure (injectError it e)
      ... | success (s₁ , h) with computeProof {STS = RunTraceAndThen Step Last} Γ s₁ sigs
      ... | failure e = failure (injectError it e)
      ... | success (s₂ , hs) = success (s₂ , run-∷ h hs)

      Computational-RunTraceAndThen .completeness Γ s sigs s'' (run-[] x)
        with computeProof {STS = Last} Γ s tt | completeness _ _ _ _ x
      ... | success (s' , h) | refl = refl

      Computational-RunTraceAndThen .completeness Γ s (sig ∷ sigs) s'' (run-∷ x x₁)
        with computeProof {STS = Step} Γ s sig | completeness _ _ _ _ x
      ... | success (s₁ , _) | refl
        with computeProof {STS = RunTraceAndThen Step Last} Γ s₁ sigs | completeness _ _ _ _ x₁
      ... | success (s₂ , _) | p = p
```

### 2. Seeded Trace with Final Step: <span class="AgdaDataType">RunTraceAfterAndThen</span>

```agda
module _ {Init : C → S → ⊤ → S → Type} ⦃ _ : Computational Init Err₂ ⦄ where
  module _ {Step : C → S → Sig → S → Type} ⦃ _ : Computational Step Err₁ ⦄ where
    module _ {Last : C → S → ⊤ → S → Type} ⦃ _ : Computational Last Err₂ ⦄
             ⦃ _ : InjectError Err₁ Err ⦄ ⦃ _ : InjectError Err₂ Err ⦄ where

      instance
        Computational-RunTraceAfterAndThen : Computational (RunTraceAfterAndThen Init Step Last) Err

        Computational-RunTraceAfterAndThen .computeProof Γ s sigs
          with computeProof {STS = Init} Γ s tt
        ... | failure e = failure (injectError it e)
        ... | success (s' , h)
              with computeProof {STS = RunTraceAndThen Step Last} {Err = Err} Γ s' sigs
        ...   | failure e = failure (injectError it e)
        ...   | success (t , r) = success (t , run (h , r))

        Computational-RunTraceAfterAndThen .completeness Γ s sigs t (run (init , rtat))
          with computeProof {STS = Init} Γ s tt | completeness _ _ _ _ init
        ... | success (s' , h) | refl
              with computeProof {STS = RunTraceAndThen Step Last} {Err = Err} Γ s' sigs
              | completeness {Err = Err} _ _ _ _ rtat
        ...   | success (t' , r) | refl = refl
```
