Here we describe some of the essential concepts and syntax of the Agda programming language and proof assistant.
The goal is to provide some background for readers who are not already familiar with Agda, to help them
understand the other sections of the specification.

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.EssentialAgda where

open import Data.Nat
\end{code}

\subsection{Record types}
\label{sec:record-types}

\subsection{Sigma types}
\label{sec:sigma-types}
If \aA\ and \aB\ are types, the (\textit{Cartesian}) \defn{product} of \aA\ and \aB\ is denoted by
\aA~×~\aB\ and defined as the type whose inhabitants are the pairs (\aa,~\ab) such that \aa\ has
type \aA\ and \ab\ has type \aB\ (i.e., \aa~:~\aA\ and \ab~:~\aB).

A \defn{sigma type} is a generalization of the Cartesian product in which the type of the
second component can depend on the first component.  For this reason, sigma types are
also known as \defn{dependent product} types.\footnote{%
  Another name for a sigma type is a \defn{dependent pair} type.
  }
The type of the second component of a dependent product is thus a function \aB~:~\aA~→~\aType,
that is, a family of types indexed by \aA. We denote the dependent product of \aA~:~\aType\ and
\aB~:~\aA~→~\aType\ by \Sum~\aA~\aB. Inhabitants of \Sum~\aA~\aB\ are the pairs (\aa,~\ab) such
that \aa~:~\aA\ and \ab~:~\aB~\aa.\\[6pt]
%
(See also the \href{https://agda.readthedocs.io/en/v2.6.4/language/built-ins.html#the-type}{\Sum\ types section of agda.readthedocs.io}.)

\subsection{Pi types}
\label{sec:pi-types}
If \aA\ and \aB\ are types, the type of functions from \aA\ (the \defn{domain}) to \aB\
(the \defn{codomain}) is denoted by \aA~→~\aB.  A \defn{pi type} is a generalization of
such a function type where the domain is still a simple type, but the codomain is a function
of the domain type. For this reason, pi types are also known as \defn{dependent function} types.
The codomain of a dependent function is the union of a family \aB~:~\aA~→~\aType\ of types indexed
by \aA. The dependent function type from \aA~:~\aType\ to \aB~:~\aA~→~\aType\ is sometimes
denoted by \Prod~\aA~\aB, but in Agda we write (\aa~:~\aA)~→~\aB.\footnote{or, equivalently, \(\forall\) (\aa~:~\aA)~→~\aB}
An inhabitant of \Prod~\aA~\aB\ is a function \af\ with domain \aA\ and codomain
\Union~\{\aB~\aa~|~\aa~:~\aA\} (the union of \aB~\aa\ as \aa\ ranges over \aA) subject to the
following constraint: for all \aa~:~\aA, \af~\aa~:~\aB~\aa.\\[6pt]
%
\textbf{Example.}
Let the domain be the two-element type \aBool~=~\{\afalse,~\atrue\}
and let the codomain be given by the type family \aB~:~\aBool~→~\aType\ where
\aB~\afalse~=~\aBool\ and \aB~\atrue~=~\N. Then \af\ has type \Prod~\aBool~\aB\
provided \af~:~\aBool~→~\aBool~\(\cup\)~\N\ and \af~\afalse~:~\aBool\ and \af~\atrue~:~\N.
Observe that when the domain is enumerable (as in the present example)
a function is completely specified by the vector of its values (here, (\af~\afalse, \af~\atrue)),
and the type \Prod~\aBool~\aB\ is isomorphic to the product of the types in the range of \aB\
(here, \aBool~\(\times\)~\N).\\[6pt]
%
(See also the \href{https://agda.readthedocs.io/en/v2.6.4/language/function-types.html}{Function Types section of agda.readthedocs.io}.)
