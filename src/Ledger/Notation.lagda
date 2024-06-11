\section{Notation}
\label{sec:notation}
\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.Notation where
\end{code}

In this section, we introduce some notations used in this document.

\begin{description}
\item[Propositions, sets and types] This document loosly treats sets and types as the same thing.
  When we need to convert a list to its set of elements, we write \fromList.
\item[Sums and products] The sum (or disjoint union, coproduct, etc.) of \AgdaBound{A} and
  \AgdaBound{B} is denoted by \AgdaBound{A} \coproduct \AgdaBound{B}, and their product
  is denoted by \AgdaBound{A} \agdatimes \AgdaBound{B}. The projection functions from products
  are denoted \fst and \snd, and the injections are denoted \inl and \inr respectively. The
  properties whether an element of a coproduct is in the left or right component are called
  \isInl and \isInr.
\item[Record types] Record types are explained in Appendix~\ref{sec:appendix-agda-essentials}.
\item[Postfix projections] Projections can be written using postix notation. For example, we may
  write \AgdaBound{x}\AgdaSpace{}\AgdaSymbol{.}\AgdaField{proj₁} instead of
  \AgdaField{proj₁}\AgdaSpace{}\AgdaBound{x}.
\item[Restriction, corestriction and complements] The restriction of a function or map
  \AgdaBound{f} to some domain \AgdaBound{A} is denoted by \AgdaBound{f}~\AgdaFunction{|}~\AgdaBound{A},
  and the restriction to the complement of \AgdaBound{A} is written
  \AgdaBound{f}~\AgdaFunction{|}~\AgdaBound{A}~\AgdaFunction{ᶜ}. Corestriction or range restriction is
  denoted the same, except that \AgdaFunction{|} is replaced by \corestriction.
\item[Inverse image] The expression \AgdaBound{m}~\AgdaFunction{⁻¹}~\AgdaBound{B} denotes the
  inverse image of the set \AgdaBound{B} under the map \AgdaBound{m}.
\item[Left-biased union] For maps \AgdaBound{m} and \AgdaBound{m'}, we write
  \AgdaBound{m}~\AgdaFunction{∪ˡ}~\AgdaBound{m'} for their left-biased union. This means that
  key-value pairs in \AgdaBound{m} are guaranteed to be in the union, while key-value pairs in
  \AgdaBound{m'} will be in the union if and only if the keys don't collide.
\item[Map addition] For maps \AgdaBound{m} and \AgdaBound{m'}, we write
  \AgdaBound{m}~\AgdaFunction{∪⁺}~\AgdaBound{m'} for their union, where keys that appear
  in both maps have their corresponding values added.
\item[Maping a partial function] A partial function is a function on \AgdaBound{A} which may not be
  defined for all elements of \AgdaBound{A}. We denote such a function by
  \AgdaBound{f}~:~\AgdaBound{A}⇀\AgdaBound{B}.  (If we happen to know that the function is total---defined for all
  elements of \AgdaBound{A}---then we would write \AgdaBound{f}~:~\AgdaBound{A}→\AgdaBound{B} instead.
  The \mapPartial operation takes such a function \AgdaBound{f}
  and a set \AgdaBound{S} of elements of \AgdaBound{A} and applies \AgdaBound{f} to the elements
  of \AgdaBound{S} at which it is defined.  The result is the set
  \(\{\text{\AgdaBound{f} \AgdaBound{x}} ∣ \text{\AgdaBound{x}}
  ∈ \text{\AgdaBound{S} and \AgdaBound{f} is defined at \AgdaBound{x}}\}\).
\end{description}
