\section{Introduction}
\label{sec:introduction}
\modulenote{\LedgerModule{Introduction}}

\begin{code}[hide]
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
\end{code}

\begin{Conway}

This is the specification of the Conway era of the Cardano ledger. As
with previous specifications, this document is an incremental
specification, so everything that isn't defined here refers to the
most recent definition from an older specification.

Note: As of now, this specification is still a draft. Some details and
explanations may be missing or wrong.

\end{Conway}

\begin{NoConway}
This is the work-in-progress specification of the Cardano ledger.
The Agda source code with which we formalize the ledger specification and which
generates this pdf document is open source and resides at the following
\begin{center}
repository: \url{\repourl}
\end{center}

The current status of each individual era is described in Table \ref{fig:eras-progress}.

\begin{longtable}[h!]{|l l l l|}
\hline
Era  & Figures & Prose & Cleanup \\
\hline
\endhead
Shelley~\cite{shelley-ledger-spec} & Partial & Partial & Not started \\
Shelley-MA~\cite{shelley-ma-ledger-spec} & Partial & Partial & Not started \\
Alonzo~\cite{alonzo-ledger-spec} & Partial & Partial & Not started \\
Babbage~\cite{babbage-ledger-spec} & Not started & Not started & Not started \\
Conway~\cite{cip1694} & Complete & Partial & Partial \\
\hline
\caption{Specification progress}
\label{fig:eras-progress}
\end{longtable}

\subsection{Overview}
\label{sec:overview}
This document describes, in a precise and executable way, the behavior of a ledger
that can be updated in response to a series of events.  Because of the precise nature
of the document, it can be dense and difficult to read at times, and it can be
helpful to have a high-level understanding of what it is trying to describe, which we
present below.  Keep in mind that this section focuses on intuition, using
terms (set in italics) which may be unfamiliar to some readers, but rest assured that
later sections of the document will make the intuition and italicized terms precise.

By \textit{ledger}, we mean a record of a data structure at a specific point in time.
This data structure contains, for example, an accounting of how funds in the system
are distributed among different accounts; the ADA currently held in the reserves; a
list of \textit{stake pools} operating the network, and so on.

This ledger can be updated in response to certain signals, such as receiving a new
transaction, time passing and crossing an \textit{epoch boundary}, enacting a
\textit{governance proposal}, to name a few.  Thus, the ledger also defines a set of
rules for what signals are valid to apply, and exactly how the state should be
updated in response to those signals.  A description of this state, the possible
signals, and the aforementioned rules is exactly what this document seeks to make
precise.

We will model this via a number of \textit{state transition systems} (STS) that
describe different subsets of the behavior, and can be composed into the full
description of the protocol.  Each STS will consist of
\begin{itemize}
  \item an \textit{environment}, which consists of data read from the ledger or
        outside world that should be considered constant and unchanging for the
        purposes of the rule;
  \item an \textit{initial state}, which consists of the subset of the full ledger
        state that the transition can update;
  \item a \textit{signal}, with associated data, that the transition system can
        receive;
  \item a set of \textit{preconditions} that must be met in order for the transition
        to be valid;
  \item a new state that results from said transition.
\end{itemize}
For example, the UTXOW transition system defined in \cref{fig:rules:utxow} of
\cref{sec:witnessing} checks that, among other things, the transaction is signed by
the appropriate parties.

\input{Diagrams/Shelley}

\begin{figure}
  \centering
  \input{Diagrams/NewChain}
  \caption{State transition systems of the latest ledger specification.
  Each node in the graph represents a transition rule, with \textbf{solid arrows} indicating
  sub-rule inclusion (the source rule applies the target rule as part of its
  definition); \textbf{dotted arrows} represent dependencies where the target rule's
  output is used in the source rule’s input, state, or environment. Recursive rules
  such as LEDGERS and CERTS apply their sub-rules repeatedly over lists of transactions
  or certificates
    (\legendbox{\ShelleyColor}~Shelley,
     \legendbox{\ConwayColor}~Conway,
     \legendbox{\BabbageColor}~Babbage)}
  \label{fig:new-chain-diagram}

\end{figure}

These transition systems can be composed by requiring another transition system to
hold as part of the preconditions.  For example, the UTXOW transition system
mentioned above also requires the UTXO transition, which checks that the
inputs to the transaction exist, that the transaction is balanced, and several other
rules.

A brief description of each transition system is provided below, with a link to
an Agda module and reference to a section where the transition relation is formally defined.

\begin{itemize}[itemsep=1pt]
\item \LedgerModText{Utxo}{UTXOS} checks that any relevant scripts needed by the
  transaction evaluate to true (\cref{sec:utxo}).
\item \LedgerModText{Utxo}{UTXO} checks core invariants for an individual transaction
  to be valid, such as the transaction being balanced, fees being paid, etc; include
  the UTXOS transition system (\cref{sec:utxo}).
\item \LedgerModText{Utxow}{UTXOW} checks that a transaction is witnessed correctly
  with the appropriate signatures, datums, and scripts; includes the UTXO transitio
  system (\cref{sec:witnessing}).
\item \LedgerModText{Gov}{GOV} handles voting and submitting governance proposals (\cref{sec:governance}).
\item \LedgerModText{Certs}{DELEG} handles registering stake addresses and delegating
  to a stake pool (\cref{sec:certificates}).
\item \LedgerModText{Certs}{POOL} handles registering and retiring stake pools (\cref{sec:certificates}).
\item \LedgerModText{Certs}{GOVCERT} handles registering and delegating to DReps (\cref{sec:certificates}).
\item \LedgerModText{Certs}{CERT} combines DELEG, POOL, GOVCERT transitions systems,
  as well as some additional rules shared by all three (\cref{sec:certificates}).
\item \LedgerModText{Certs}{CERTS} applies CERT repeatedly for each certificate in
  the transaction (\cref{sec:certificates}).
\item \LedgerModText{Ledger}{LEDGER} is the full state update in response to a
  single transaction; it includes the UTXOW, GOV, and CERTS rules (\cref{sec:ledger-state-transition}).
\item \LedgerModText{Ledger}{LEDGERS} applies LEDGER repeatedly as needed, for each
  transaction in a list of transactions (\cref{sec:ledger-state-transition}).
\item \LedgerModText{Enact}{ENACT} applies the result of a previously ratified
  governance action, such as triggering a hard fork or updating the protocol
  parameters (\cref{sec:enactment}).
\item \LedgerModText{Ratify}{RATIFY} decides whether a pending governance action has
  reached the thresholds it needs to be ratified (\cref{sec:ratification}).
\item \LedgerModText{Epoch}{SNAP} computes new stake distribution snapshots (\cref{sec:epoch-boundary}).
\item \LedgerModText{Epoch}{EPOCH} computes the new state as of the end of an epoch;
  includes the ENACT, RATIFY, and SNAP transition systems (\cref{sec:epoch-boundary}).
\item \LedgerModText{Epoch}{NEWEPOCH} computes the new state as of the start of a new
  epoch; includes the previous EPOCH transition (\cref{sec:epoch-boundary}).
\item \LedgerModText{Chain}{CHAIN} is the top level transition in response to a new
  block that applies the NEWEPOCH transition when crossing an epoch boundary, and the
  LEDGERS transition on the list of transactions in the body (\cref{sec:blockchain-layer}).
\end{itemize}
\end{NoConway}

\subsection{A Note on Agda}

This specification is written using the
\hrefAgdaWiki[Agda programming language and proof assistant]~\parencite{agda2024}.
We have made a considerable effort to ensure
that this document is readable by people unfamiliar with Agda (or other proof
assistants, functional programming languages, etc.).  However, by the
nature of working in a formal language we have to play by its rules,
meaning that some instances of uncommon notation are very difficult or
impossible to avoid. Some are explained in
\cref{sec:notation}, but there is no guarantee that this
section is complete.  If the meaning of an expression is confusing
or unclear, please \href{\repourl/issues}{open an issue} in
\href{\repourl}{the formal ledger GitHub repository} with the `notation' label.

\subsection{Separation of Concerns}

The \emph{Cardano Node} consists of three pieces:

\begin{itemize}
  \item Networking layer, which deals with sending messages across the internet;
  \item Consensus layer, which establishes a common order of valid blocks;
  \item Ledger layer, which decides whether a sequence of blocks is valid.
\end{itemize}

Because of this separation, the ledger gets to be a state machine:
\[ s \xrightarrow[X]{b} s' \]

More generally, we will consider state machines with an environment:
\[ Γ ⊢ s \xrightarrow[X]{b} s' \]

These are modelled as 4-ary relations between the environment \(Γ\), an
initial state \(s\), a signal \(b\) and a final state \(s'\). The ledger consists of
25-ish (depending on the version) such relations that depend on each
other, forming a directed graph that is almost a tree.  Thus each such relation
represents the transition rule of the state machine; \(X\) is simply a placeholder
for the name of the transition rule.

\subsection{Reflexive-transitive Closure}

Some STS (state transition system) relations need to be applied as
many times as they can to arrive at a final state. Since we use this
pattern multiple times, we define a closure operation which takes a
STS relation and applies it as many times as possible.

The closure \RTCI{} of a relation \RTCB{} is defined in \cref{fig:rt-closure}.
In the remainder of the text, the closure operation is called \RTC{}.

\begin{figure*}[htb]
\caption{Reflexive transitive closure}
\begin{AgdaMultiCode}
\begin{code}
module _ (_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type) where

\end{code}
\emph{Closure type}
\begin{code}
  data _⊢_⇀⟦_⟧*_ : C → S → List Sig → S → Type where

\end{code}
\emph{Closure rules}
\begin{code}
    RTC-base :
      Γ ⊢ s ⇀⟦ [] ⟧* s

    RTC-ind :
      ∙ Γ ⊢ s  ⇀⟦ sig  ⟧  s'
      ∙ Γ ⊢ s' ⇀⟦ sigs ⟧* s''
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧* s''
\end{code}
\end{AgdaMultiCode}
\label{fig:rt-closure}
\end{figure*}

\subsection{Computational}

Since all such state machines need to be evaluated by the nodes and all
nodes should compute the same states, the relations specified by them
should be computable by functions. This can be captured by the
definition in \cref{fig:computational} which is parametrized
over the state transition relation.

\begin{figure*}[htb]
\begin{AgdaMultiCode}
\begin{code}
record Computational (_⊢_⇀⦇_,X⦈_ : C → S → Sig → S → Type) : Type where
  field
    compute     : C → S → Sig → Maybe S
    ≡-just⇔STS  : compute Γ s b ≡ just s' ⇔ Γ ⊢ s ⇀⦇ b ,X⦈ s'

  nothing⇒∀¬STS : compute Γ s b ≡ nothing → ∀ s' → ¬ Γ ⊢ s ⇀⦇ b ,X⦈ s'
\end{code}
\end{AgdaMultiCode}
\caption{Computational relations}
\label{fig:computational}
\end{figure*}
\begin{code}[hide]
  nothing⇒∀¬STS comp≡nothing s' h rewrite ≡-just⇔STS .Equivalence.from h =
    case comp≡nothing of λ ()
\end{code}

Unpacking this, we have a \compute{} function that computes a final
state from a given environment, state and signal. The second piece is
correctness: \compute{} succeeds with some final state if and only if
that final state is in relation to the inputs.

This has two further implications:

\begin{itemize}
\item Since \compute{} is a function, the state transition relation is necessarily
a (partial) function; i.e., there is at most one possible final state for each
input data.  Otherwise, we could prove that \compute{} could evaluates to
two different states on the same inputs, which is impossible since it
is a function.
\item The actual definition of \compute{} is irrelevant---any two
implementations of \compute{} have to produce the same result on any
input. This is because we can simply chain the equivalences for two
different \compute{} functions together.
\end{itemize}

What this all means in the end is that if we give a \Computational{}
instance for every relation defined in the ledger, we also have an
executable version of the rules which is guaranteed to be
correct. This is indeed something we have done, and the same source
code that generates this document also generates a Haskell library
that lets anyone run this code.

\subsection{Sets \& Maps}
\label{sec:sets-maps}

The ledger heavily uses set theory. For various reasons it was
necessary to implement our own set theory (there will be a paper on this
some time in the future). Crucially, the set theory is completely
abstract (in a technical sense---Agda has an abstract keyword) meaning
that implementation details of the set theory are
irrelevant. Additionally, all sets in this specification are finite.

We use this set theory to define maps as seen below, which are used in
many places. We usually think of maps as partial functions
(i.e., functions not necessarily defined everywhere---equivalently, "left-unique"
relations) and we use the harpoon arrow \AgdaFunction{⇀} to
distinguish such maps from standard Agda functions which use \AgdaSymbol{→}.
The figure below also gives notation for the powerset operation, \PowerSet{},
used to form a type of sets with elements in a given type,
as well as the subset relation and the equality relation for sets.
\begin{figure*}[h]
\begin{code}[hide]
open Theory th using (_∈_) renaming (Set to ℙ)
private variable
  a c : Level
  A : Type a
Σ-syntax' : (A : Type a) → (A → Type c) → Type _
Σ-syntax' = Σ
syntax Σ-syntax' A (λ x → B) = x ∈ A ﹐ B
\end{code}
\begin{code}
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
\end{code}
\end{figure*}

\subsection{Propositions as Types, Properties and Relations}

In type theory we represent propositions as types and proofs of a proposition as
elements of the corresponding type.
A unary predicate is a function that takes each \AgdaBound{x} (of some type \AgdaBound{A}) and
returns a proposition \AgdaFunction{P}(\AgdaBound{x}). Thus, a predicate is a function of type
\AgdaBound{A}~\AgdaSymbol{→}~\Type{}.
A \textit{binary relation} \AgdaFunction{R} between \AgdaBound{A} and \AgdaBound{B} is a
function that takes a pair of values \AgdaBound{x} and \AgdaBound{y} and returns a proposition
asserting that the relation \AgdaFunction{R} holds between \AgdaBound{x} and \AgdaBound{y}.
Thus, such a relation is a function of type
\AgdaBound{A}~\AgdaFunction{×}~\AgdaBound{B}~\AgdaSymbol{→}~\Type{}
or \AgdaBound{A}~\AgdaSymbol{→}~\AgdaBound{B}~\AgdaSymbol{→}~\Type{}.

\subsection{Superscripts and Other Special Notations}

In the current version of this specification, superscript letters are
heavily used for things such as disambiguations or type
conversions. These are essentially meaningless, only present for
technical reasons and can safely be ignored. However there are the
two exceptions:
\begin{itemize}
\item \AgdaFunction{∪ˡ} for left-biased union
\item \AgdaFunction{ᶜ} in the context of set restrictions, where it indicates the complement
\end{itemize}
Also, non-letter superscripts do carry meaning.\footnote{At some point in the future we
  hope to be able to remove all those non-essential superscripts.  Since we prefer doing
  this by changing the Agda source code instead of via hiding them in this document, this
  is a non-trivial problem that will take some time to address.}

Finally, there are some \AgdaFunction{?} and \AgdaFunction{¿} operations.
These relate to decision procedures and can also safely be ignored.\footnote{We
  plan on refactoring the code so that these special symbols will also disappear
  from this document.}
