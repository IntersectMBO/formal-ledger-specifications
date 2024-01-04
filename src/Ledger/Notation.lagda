\section{Notation}
\label{sec:notation}
\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.Notation where
\end{code}

In this section, we introduce some notations used in this document.

\begin{description}
\item[Propositions, sets and types] This document loosly treats sets and types as the same thing.
\item[Sums and products] The sum (or disjoint union, coproduct, etc.) of \AgdaBound{A} and
  \AgdaBound{B} is denoted by \AgdaBound{A} \coproduct \AgdaBound{B}, and their product
  is denoted by \AgdaBound{A} \agdatimes \AgdaBound{B}.
\item[Record types] Record types are explained in Appendix~\ref{sec:appendix-agda-essentials}.
\item[Postfix projections] Projections can be written using postix notation. For example, we may
  write \AgdaBound{x}\AgdaSpace{}\AgdaSymbol{.}\AgdaField{proj₁} instead of
  \AgdaField{proj₁}\AgdaSpace{}\AgdaBound{x}.
\item[Restriction, corestriction and complements] The restriction of a function or map
  \AgdaBound{f} to some domain \AgdaBound{A} is denoted by \AgdaBound{f}~\AgdaFunction{|}~\AgdaBound{A},
  and the restriction to the complement of \AgdaBound{A} is written
  \AgdaBound{f}~\AgdaFunction{|}~\AgdaBound{A}~\AgdaFunction{ᶜ}. Corestriction or range restriction is
  denoted the same, except that \AgdaFunction{|} is replaced by \AgdaFunction{↾}.
\item[Inverse image] The expression \AgdaBound{m}~\AgdaFunction{⁻¹}~\AgdaBound{B} denotes the
  inverse image of the set \AgdaBound{B} under the map \AgdaBound{m}.
\end{description}
