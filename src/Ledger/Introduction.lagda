\section{Introduction}
\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.Introduction where

open import Prelude
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

\subsection{Computational}

Since all such state machines need to be evaluated by the node and all
nodes should compute the same states, the relations specified by them
should be computable by functions. This is captured by the following
record, which is parametrized over the step relation.

\begin{code}[hide]
private variable
  C S Sig : Set
  Γ : C
  s s' : S
  b : Sig
\end{code}
\begin{figure*}[h]
\begin{code}
record Computational (_⊢_⇀⦇_,X⦈_ : C → S → Sig → S → Set) : Set where
  field
    compute     : C → S → Sig → Maybe S
    ≡-just⇔STS  : compute Γ s b ≡ just s' ⇔ Γ ⊢ s ⇀⦇ b ,X⦈ s'
\end{code}
\end{figure*}

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
