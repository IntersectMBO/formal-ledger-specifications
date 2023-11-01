\section{Introduction}
\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.Introduction where

open import Prelude

import Data.Maybe as Maybe
open import Data.Maybe.Properties
open import Interface.STS hiding (_⊢_⇀⟦_⟧*_)
open import Relation.Binary.PropositionalEquality

private variable
  C S Sig : Set
  Γ : C
  s s' s'' : S
  b sig : Sig
  sigs : List Sig
\end{code}

Repository: https://github.com/input-output-hk/formal-ledger-specifications

This document describes the formalization of the Cardano ledger specification in the Agda programming
language and proof assistant. The specification formalized here is that of the Conway era, described
in detail in the Cardano Improvement Proposal (CIP) 1694,
\href{https://github.com/cardano-foundation/CIPs/tree/master/CIP-1694}{github.com/cardano-foundation/CIPs/CIP-1694}.

\subsection{Separation of concerns}

The \emph{Cardano Node} consists of three pieces:

\begin{itemize}
  \item Networking layer, which deals with sending messages across the internet
  \item Consensus layer, which establishes a common order of valid blocks
  \item Ledger layer, which decides whether a sequence of blocks is valid
\end{itemize}

Because of this separation, the ledger gets to be a state machine:
\[ s \xrightarrow[X]{b} s' \]

More generally, we will consider state machines with an environment:
\[ Γ ⊢ s \xrightarrow[X]{b} s' \]

These are modelled as 4-ary relations between the environment \(Γ\), an
initial state \(s\), a signal \(b\) and a final state \(s'\). The ledger consists of
25-ish (depending on the version) such relations that depend on each
other, forming a directed graph that is almost a tree.

\subsection{Small-step to big-step}

Some STS relations need to be applied as many times as they can to
arrive at a final state. Since we use this pattern multiple times, we
define a small-step to big-step transformer which takes a STS relation
and applies it as many times as possible. In some cases we also need
to supply a base case, which this transformer handles as well.

The transformer is defined in Figure \ref{fig:ss-to-bs}, assuming a
base relation \SSToBSB and a step relation \SSToBSS. In the remainder
of the text, it is called \SSToBS.

\begin{figure*}[h!]
\begin{code}[hide]
module _ (_⊢_⇀ᵇ_ : C → S → S → Set) (_⊢_⇀⟦_⟧_ : C → S → Sig → S → Set) where
  data
\end{code}
\emph{Small-step to big-step transformer type}
\begin{code}
    _⊢_⇀⟦_⟧*_ : C → S → List Sig → S → Set
\end{code}
\begin{code}[hide]
    where
\end{code}
\emph{Small-step to big-step transformer rules}
\begin{code}
    BS-base :
      ∙ Γ ⊢ s ⇀ᵇ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧* s'

    BS-ind :
      ∙ Γ ⊢ s  ⇀⟦ sig  ⟧  s'
      ∙ Γ ⊢ s' ⇀⟦ sigs ⟧* s''
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧* s''
\end{code}
\caption{Small-step to big step transformer}
\label{fig:ss-to-bs}
\end{figure*}

\subsection{Computational}

Since all such state machines need to be evaluated by the node and all
nodes should compute the same states, the relations specified by them
should be computable by functions. This can be captured by the
definition in Figure \ref{fig:computational} which is parametrized
over the step relation.

\begin{figure*}[h]
\begin{code}
record Computational (_⊢_⇀⦇_,X⦈_ : C → S → Sig → S → Set) : Set where
  field
    compute     : C → S → Sig → Maybe S
    ≡-just⇔STS  : compute Γ s b ≡ just s' ⇔ Γ ⊢ s ⇀⦇ b ,X⦈ s'

  nothing⇒∀¬STS : compute Γ s b ≡ nothing → ∀ s' → ¬ Γ ⊢ s ⇀⦇ b ,X⦈ s'
\end{code}
\caption{Computational relations}
\label{fig:computational}
\end{figure*}
\begin{code}[hide]
  nothing⇒∀¬STS comp≡nothing s' h rewrite ≡-just⇔STS .Equivalence.from h =
    case comp≡nothing of λ ()
\end{code}

Unpacking this, we have a \compute function that computes a final
state from a given environment, state and signal. The second piece is
correctness: \compute succeeds with some final state if and only if
that final state is in relation to the inputs.

This has two further implications:

\begin{itemize}

\item Since \compute is a function, the step relation is necessarily
right-unique, i.e. there is at most one possible final state for each
input data. Otherwise, we could prove that \compute could evaluates to
two different states on the same inputs, which is impossible since it
is a function.

\item The actual definition of \compute is irrelevant - any two
implementations of \compute have to produce the same result on any
input. This is because we can simply chain the equivalences for two
different \compute functions together.

\end{itemize}

What this all means in the end is that if we give a \Computational
instance for every relation defined in the ledger, we also have an
executable version of the rules which is guaranteed to be
correct. This is indeed something we have done, and the same source
code that generates this document also generates a Haskell library
that lets anyone run this code.

\subsection{Sets \& maps}

The ledger heavily uses set theory. For various reasons it was
necessary to implement our own set theory (there will be a paper on this
some time in the future). Crucially, the set theory is completely
abstract (in a technical sense - Agda has an abstract keyword) meaning
that implementation details of the set theory are
irrelevant. Additionally, all sets in this specification are finite.

We use this set theory to define maps as seen below, which are used in
many places. We usually think of maps as partial functions
(i.e. functions not defined everywhere), but importantly they are not
Agda functions.

\begin{figure*}[h]
\begin{code}[hide]
module _ (ℙ_ : Set → Set) (_∈_ : ∀ {A : Set} → A → ℙ A → Set) where
\end{code}
\begin{code}
  _⊆_ : {A : Set} → ℙ A → ℙ A → Set
  X ⊆ Y = ∀ {x} → x ∈ X → x ∈ Y

  _≡ᵉ_ : {A : Set} → ℙ A → ℙ A → Set
  X ≡ᵉ Y = X ⊆ Y × Y ⊆ X

  Rel : Set → Set → Set
  Rel A B = ℙ (A × B)

  left-unique : {A B : Set} → Rel A B → Set
  left-unique R = ∀ {a b b'} → (a , b) ∈ R → (a , b') ∈ R → b ≡ b'

  _⇀_ : Set → Set → Set
  A ⇀ B = Σ (Rel A B) left-unique
\end{code}
\end{figure*}
