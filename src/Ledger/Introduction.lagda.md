---
source_path: src/Ledger/Introduction.lagda.md
---

# Introduction {#sec:introduction}

<!--
```agda
{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Ledger.Introduction (th : Theory) where

open import Prelude

import Data.Maybe as Maybe
open import Data.Maybe.Properties
open import Interface.STS hiding (_⊢_⇀⟦_⟧*_)
open import Relation.Binary.PropositionalEquality

private variable
  C S Sig : Type
  Γ : C
  s s' s'' : S
  b sig : Sig
  sigs : List Sig
```
-->

This is the formal specification of the Cardano ledger.  The Agda source code with
which we formalize the ledger specification and which generates this web site is
open source and resides at the following

**repository url**: <https://github.com/IntersectMBO/formal-ledger-specifications>

The current status of each individual era is described in the table below.

<a id="fig:eras-progress">

**Table 1**. Specification Progress

| Era         | Figures     | Prose       | Cleanup     |
|:------------|:------------|:------------|:------------|
| Shelley     | Partial     | Partial     | Not started |
| Shelley-MA  | Partial     | Partial     | Not started |
| Alonzo      | Partial     | Partial     | Not started |
| Babbage     | Not started | Not started | Not started |
| Conway      | Complete    | Partial     | Partial     |

</a>

## Overview {#sec:overview}

The formal ledger specification Agda source code (and the documentation on this site
that it generates), describes, in a precise and executable way, the behavior of the
Cardano ledger as it is updated in response to a series of events.  Because of the
precise nature of the documententation, it can be dense and difficult to read at
times, and it can be helpful to have a high-level understanding of what it is trying
to describe, which we present in this introduction.  Keep in mind that this section
focuses on intuition, using terms (set in italics) that may be unfamiliar to some
readers, but rest assured that later sections of the document will make the intuition
and italicized terms precise.

## A Note on Agda

This specification is written using the
[Agda proof assistant and programming language][Agda Wiki].  We have made a
considerable effort to ensure that this documentation is readable by people
unfamiliar with Agda or other proof assistants.  However, by the nature of working in
a formal language we have to play by its rules, meaning that some instances of
uncommon notation are very difficult or impossible to avoid.  Some are explained in
the [Notation][] and [Essential Agda][] sections, but there is no guarantee that
those sections are complete.  If the meaning of an expression is confusing or
unclear, please [open an issue][issues] in the [formal ledger repository][repourl]
with the "notation" label.

!!! note "Viewing the Complete Agda Source Code"

    Throughout the documentation, source code snippets are presented in
    [literate Agda](https://agda.readthedocs.io/en/latest/tools/literate-programming.html)
    but some of the more technical and less essential bits of code are hidden from
    view in order to improve flow and make the formalization easier to digest.
    However, if you wish to see the complete Agda source code, you can click on
    the "Show more Agda" button at the top of each page, which will reveal the
    complete Agda source code for the module presented on that page.  Alterantively,
    you can always find the source code in its entirety in the
    [formal ledger repository][repourl].

## Separation of Concerns

The *Cardano Node* consists of three pieces,

- a *networking layer* responsible for sending messages across the
  internet,

- a *consensus layer* establishing a common order of valid blocks, and

- a *ledger layer* which determines whether a sequence of blocks is
  valid.

Because of this separation, the ledger can be modeled as a state
machine,

\[s \xrightarrow[X]{b} s'.\]

More generally, we will consider
state machines with an environment,

\[Γ ⊢ s \xrightarrow[X]{b} s'.\]

These are modelled as 4-ary relations between the environment $Γ$, an
initial state $s$, a signal $b$ and a final state $s'$. The ledger
consists of roughly 25 (depending on the version) such relations that
depend on each other, forming a directed graph that is almost a tree.
[STS diagram](#fig:latest-sts-diagram). Thus
each such relation represents the transition rule of the state machine;
$X$ is simply a placeholder for the name of the transition rule.

## Ledger State Transition Rules {#sec:ledger-state-transition-rules}

By a *ledger* we mean a structure that contains information about how
funds in the system are distributed accross accounts—that is, account
balances, how such balances should be adjusted when transactions and
proposals are processed, the ADA currently held in the treasury reserve,
a list of *stake pools* operating the network, and so on.

The ledger can be updated in response to certain events, such as
receiving a new transaction, time passing and crossing an *epoch
boundary*, enacting a *governance proposal*, to name a few. This
document defines, as part of the behaior of the ledger, a set of rules
that determine which events are valid and exactly how the state of the
ledger should be updated in response to those events. The primary aim of
this document is to provide a precise description of this system—the
ledger state, valid events and the rules for processing them.

We model this via a number of *state transition systems* (STS), sometimes called
“transition rules” or just “rules.”  These rules describe the different behaviors
that determine how the whole system evolves and, taken together, they comprise a full
description of the ledger protocol.  Each transition rule consists of the following
components:

+  an *environment* consisting of data, read from the ledger state or the
   outside world, which should be considered constant for the purposes of
   the rule;

+  an *initial state*, consisting of the subset of the full ledger state
   that is relevant to the rule and which the rule can update;

+  a *signal* or *event*, with associated data, that the rule can receive
   or observe;

+  a set of *preconditions* that must be met in order for the transition
   to be valid;

+  a new state that results from the transition rule.

For example, the UTXOW transition rule—defined in the section called
[The UTXOW Transition System][] of the [Utxow module][]—checks that, among
other things, a given transaction is signed by the appropriate parties.

The transition rules can be composed in the sense that they may require
other transition rules to hold as part of their preconditions. For
example, the UTXOW rule mentioned above requires the UTXO rule, which
checks that the inputs to the transaction exist, that the transaction is
balanced, and several other conditions.

!!! info "**Figure: STS Diagram**"

    State transition rules of the ledger specification, presented as a
    directed graph; each node represents a transition rule; an arrow
    from rule A to rule B indicates that B appears among the premises
    of A; a dotted arrow represents a dependency in the sense that the
    output of the target node is an input to the source node, either as
    part of the source state, the environment or the event.

    <span class="legend-box legend-Conway"></span> Rules added in Conway;
    <span class="legend-box legend-Babbage"></span> Rules modified in Conway

    <a id="fig:latest-sts-diagram"></a>
    <figure class="svg-card">
      <img src="img/STS-Diagram.svg"  alt="STS Diagram">
    </figure>


A brief description of each transition rule is provided below, with a
link to an Agda module and reference to a section where the rule is
formally defined.

+  [CHAIN][] is the top level transition in response to a new block that applies
   the NEWEPOCH transition when crossing an epoch boundary, and the
   LEDGERS transition on the list of transactions in the body.

+  [NEWEPOCH][] computes the new state as of the start of a new epoch; includes the
   previous EPOCH transition.

+  [EPOCH][] computes the new state as of the end of an epoch; includes the ENACT,
   RATIFY, and SNAP transition rules.

+  [RATIFY][] decides whether a pending governance action has reached the thresholds
   it needs to be ratified.

+  [ENACT][] applies the result of a previously ratified governance action, such as
   triggering a hard fork or updating the protocol parameters.


+  [SNAP][] computes new stake distribution snapshots.

+  [LEDGERS][] applies LEDGER repeatedly as needed, for each transaction in a list of
   transactions.

+  [LEDGER][] is the full state update in response to a single transaction; it
   includes the UTXOW, GOV, and CERTS rules.

+  [CERTS][] applies CERT repeatedly for each certificate in the transaction.

+  [CERT][] combines DELEG, POOL, GOVCERT transition rules, as well as some
   additional rules shared by all three.

+  [DELEG][] handles registering stake addresses and delegating to a stake pool.

+  [GOVCERT][] handles registering and delegating to `DReps`{.AgdaInductiveConstructor}.

+  [POOL][] handles registering and retiring stake pools.

+  [GOV][] handles voting and submitting governance proposals.

+  [UTXOW][] checks that a transaction is witnessed correctly with the appropriate
   signatures, datums, and scripts; includes the UTXO transition rule.

+  [UTXO][] checks core invariants for an individual transaction to be valid, such
   as the transaction being balanced, fees being paid, etc; include the
   UTXOS transition rule.

+  [UTXOS][] checks that any relevant scripts needed by the transaction evaluate to true.

## Reflexive-transitive Closure

Some state transition rules need to be applied as many times as possible
to arrive at a final state. Since we use this pattern multiple times, we
define a closure operation which takes a transition rule and applies it
as many times as possible.

The closure `RTCI`{.AgdaOperator} of a relation `RTCB`{.AgdaOperator} is defined in
[Reflexive transitive closure](Ledger.Introduction.md#reflexive-transitive-closure).
In the remainder of the text, the closure operation is called `RTC`{.AgdaFunction}.


### Reflexive transitive closure

<!--
```agda

module _ (_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type) where
```
-->

 *Closure type*

```agda

  data _⊢_⇀⟦_⟧*_ : C → S → List Sig → S → Type where
```
 *Closure rules*
```agda

    RTC-base :
      Γ ⊢ s ⇀⟦ [] ⟧* s

    RTC-ind :
      ∙ Γ ⊢ s  ⇀⟦ sig  ⟧  s'
      ∙ Γ ⊢ s' ⇀⟦ sigs ⟧* s''
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧* s''
```

## Computational

Since all such state machines need to be evaluated by the nodes and all
nodes should compute the same states, the relations specified by them
should be computable by functions. This can be captured by the
definition in [Computational relations](Ledger.Introduction.md#computational-relations)
which is parametrized over the state transition relation.


### Computational relations

```agda

record Computational (_⊢_⇀⦇_,X⦈_ : C → S → Sig → S → Type) : Type where
  field
    compute     : C → S → Sig → Maybe S
    ≡-just⇔STS  : compute Γ s b ≡ just s' ⇔ Γ ⊢ s ⇀⦇ b ,X⦈ s'

  nothing⇒∀¬STS : compute Γ s b ≡ nothing → ∀ s' → ¬ Γ ⊢ s ⇀⦇ b ,X⦈ s'
```

<!--
```agda

  nothing⇒∀¬STS comp≡nothing s' h rewrite ≡-just⇔STS .Equivalence.from h =
    case comp≡nothing of λ ()
```
-->

Unpacking this, we have a `compute`{.AgdaField} function that computes a
final state from a given environment, state and signal. The second piece
is correctness: `compute`{.AgdaField} succeeds with some final state if
and only if that final state is in relation to the inputs.

This has two further implications:

- Since `compute`{.AgdaField} is a function, the state transition
  relation is necessarily a (partial) function; i.e., there is at most
  one possible final state for each input data. Otherwise, we could
  prove that `compute`{.AgdaField} could evaluates to two different
  states on the same inputs, which is impossible since it is a function.

- The actual definition of `compute`{.AgdaField} is irrelevant—any two
  implementations of `compute`{.AgdaField} have to produce the same
  result on any input. This is because we can simply chain the
  equivalences for two different `compute`{.AgdaField} functions
  together.

What this all means in the end is that if we give a
`Computational`{.AgdaRecord} instance for every relation defined in the
ledger, we also have an executable version of the rules which is
guaranteed to be correct. This is indeed something we have done, and the
same source code that generates this document also generates a Haskell
library that lets anyone run this code.

## Sets & Maps {#sec:sets-maps}

The ledger heavily uses set theory. For various reasons it was necessary
to implement our own set theory (there will be a paper on this some time
in the future). Crucially, the set theory is completely abstract (in a
technical sense—Agda has an abstract keyword) meaning that
implementation details of the set theory are irrelevant. Additionally,
all sets in this specification are finite.

We use this set theory to define maps as seen below, which are used in
many places. We usually think of maps as partial functions (i.e.,
functions not necessarily defined everywhere—equivalently, "left-unique"
relations) and we use the harpoon arrow to distinguish such maps from
standard Agda functions which use . The code below also gives notation
for the powerset operation, `PowerSet`{.AgdaFunction}, used to form a
type of sets with elements in a given type, as well as the subset
relation and the equality relation for sets.

When we need to convert a list to its set of elements, we write
`fromList`{.AgdaFunction} .

<!--
```agda

open Theory th using (_∈_) renaming (Set to ℙ)
private variable
  a c : Level
  A : Type a
Σ-syntax' : (A : Type a) → (A → Type c) → Type _
Σ-syntax' = Σ
syntax Σ-syntax' A (λ x → B) = x ∈ A ﹐ B
```
-->

```agda

_⊆_ : {A : Type} → ℙ A → ℙ A → Type
X ⊆ Y = ∀ {x} → x ∈ X → x ∈ Y

_≡ᵉ_ : {A : Type} → ℙ A → ℙ A → Type
X ≡ᵉ Y = X ⊆ Y × Y ⊆ X

Rel : Type → Type → Type
Rel A B = ℙ (A × B)

left-unique : {A B : Type} → Rel A B → Type
left-unique R = ∀ {a b b'} → (a , b) ∈ R → (a , b') ∈ R → b ≡ b'

_⇀_ : Type → Type → Type
A ⇀ B = r ∈ Rel A B ﹐ left-unique r
```

## Propositions as Types, Properties and Relations {#sec:prop-as-types}

In type theory we represent propositions as types and proofs of a
proposition as elements of the corresponding type. A unary predicate is
a function that takes each `x`{.AgdaBound} (of some type `A`{.AgdaBound})
and returns a proposition `P`{.AgdaFunction}(`x`{.AgdaBound}).
Thus, a predicate is a function of type `A`{.AgdaBound} → `Type`{.AgdaPrimitive}.
A *binary relation* `R`{.AgdaFunction} between `A`{.AgdaBound} and `B`{.AgdaBound} is
a function that takes a pair of values `x`{.AgdaBound} and `y`{.AgdaBound} and
returns a proposition asserting that the relation `R`{.AgdaFunction} holds between
`x`{.AgdaBound} and `y`{.AgdaBound}. Thus, such a relation is a function of type
`A`{.AgdaBound} `×`{.AgdaFunction} `B`{.AgdaBound} → `Type`{.AgdaPrimitive} or
`A`{.AgdaBound} → `B`{.AgdaBound} → `Type`{.AgdaPrimitive}.

These relations are typically required to be decidable, which means
that there is a boolean-valued function that computes whether the
predicate holds or not. This means that it is generally safe to think
of predicates simply returning a boolean value instead.
