\section{Notation}
\label{sec:notation}
\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.Notation where
\end{code}

In this section, we introduce some notations used in this document.

\begin{description}
\item[Propositions, sets and types.] In this document the abstract notions of ``set''
and ``type'' are essentially the same, despite having different formal definitions
in our Agda code. We represent sets as a special type, which we denote by
\AgdaDatatype{Set}~\AgdaBound{A}, for \AgdaBound{A} an arbitrary type.
(See Section~\ref{sec:sets-maps} for details and \cite[Chapter 19]{NPS:1990-open} for
background.)
Agda denotes the primitive notion of type by \AgdaPrimitive{Set}.  To avoid confusion,
throughout this document and in our Agda code we call this primitive \Type,
reserving the name \AgdaDatatype{Set} for our set type.
All of our sets are finite, and when we need to convert
a list \AgdaBound{l} to its set of elements, we write \fromList~\AgdaBound{l}.
\item[Sums and products.] The sum (or disjoint union, coproduct, etc.) of \AgdaBound{A} and
  \AgdaBound{B} is denoted by \AgdaBound{A} \coproduct \AgdaBound{B}, and their product
  is denoted by \AgdaBound{A} \agdatimes \AgdaBound{B}. The projection functions from products
  are denoted \fst and \snd, and the injections are denoted \inl and \inr respectively. The
  properties whether an element of a coproduct is in the left or right component are called
  \isInl and \isInr.
\item[Record types] are explained in Appendix~\ref{sec:appendix-agda-essentials}.
\item[Postfix projections.] Projections can be written using postfix notation. For example, we may
  write \AgdaBound{x}\AgdaSpace{}\AgdaSymbol{.}\AgdaField{proj₁} instead of
  \AgdaField{proj₁}\AgdaSpace{}\AgdaBound{x}.
\item[Restriction, corestriction and complements.] The restriction of a function or map
  \AgdaBound{f} to some domain \AgdaBound{A} is denoted by \AgdaBound{f}~\AgdaFunction{|}~\AgdaBound{A},
  and the restriction to the complement of \AgdaBound{A} is written
  \AgdaBound{f}~\AgdaFunction{|}~\AgdaBound{A}~\AgdaFunction{ᶜ}. Corestriction or range restriction is
  denoted the same, except that \AgdaFunction{|} is replaced by \corestriction.
\item[Inverse image.] The expression \AgdaBound{m}~\AgdaFunction{⁻¹}~\AgdaBound{B} denotes the
  inverse image of the set \AgdaBound{B} under the map \AgdaBound{m}.
\item[Left-biased union.] For maps \AgdaBound{m} and \AgdaBound{m'}, we write
  \AgdaBound{m}~\AgdaFunction{∪ˡ}~\AgdaBound{m'} for their left-biased union. This means that
  key-value pairs in \AgdaBound{m} are guaranteed to be in the union, while key-value pairs in
  \AgdaBound{m'} will be in the union if and only if the keys don't collide.
\item[Map addition.] For maps \AgdaBound{m} and \AgdaBound{m'}, we write
  \AgdaBound{m}~\AgdaFunction{∪⁺}~\AgdaBound{m'} for their union, where keys that appear
  in both maps have their corresponding values added.
\item[Mapping a partial function.] A \textit{partial function} is a function on \AgdaBound{A} which
  may not be defined for all elements of \AgdaBound{A}. We denote such a function by
  \AgdaBound{f}~:~\AgdaBound{A}~⇀~\AgdaBound{B}.  If we happen to know that the function is
  \textit{total} (defined for all elements of \AgdaBound{A}), then we write
  \AgdaBound{f}~:~\AgdaBound{A}~→~\AgdaBound{B}.
  The \mapPartial operation takes such a function \AgdaBound{f}
  and a set \AgdaBound{S} of elements of \AgdaBound{A} and applies \AgdaBound{f} to the elements
  of \AgdaBound{S} at which it is defined; the result is the set
  \(\{\text{\AgdaBound{f}~\AgdaBound{x}} ∣ \text{\AgdaBound{x}}~∈~\text{\AgdaBound{S} and
  \AgdaBound{f} is defined at \AgdaBound{x}}\}\).
\item[The \AgdaDatatype{Maybe} type]
represents an optional value and can either be
\AgdaInductiveConstructor{just}\AgdaSpace{}\AgdaBound{x}
(indicating the presence of a value, \AgdaBound{x}) or \AgdaInductiveConstructor{nothing}
(indicating the absence of a value).  If \AgdaBound{x} has type \AgdaDatatype{X}, then
\AgdaInductiveConstructor{just}\AgdaSpace{}\AgdaBound{x} has type
\AgdaDatatype{Maybe}\AgdaSpace{}\AgdaDatatype{X}.
\item[The \AgdaFunction{\$} symbol] is used as a function application operator that has the lowest precedence;
it allows for the elimination of parentheses in expressions. For example,
\AgdaFunction{f}\AgdaSpace{}\AgdaFunction{\$}\AgdaSpace{}\AgdaFunction{g}\AgdaSpace{}%
\AgdaFunction{\$}\AgdaSpace{}\AgdaFunction{h}\AgdaSpace{}\AgdaBound{x} is equivalent to
\AgdaFunction{f}\AgdaSpace{}(\AgdaFunction{g}\AgdaSpace{}(\AgdaFunction{h}\AgdaSpace{}\AgdaBound{x})).
\item[The unit type] \AgdaRecord{⊤} has a single inhabitant \AgdaInductiveConstructor{tt} and may be thought
of as a type that carries no information; it is useful for signifying the completion of an action, the
presence of a trivial value, a trivially satisfied requirement, etc.
\end{description}
