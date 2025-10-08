\section{Agda Essentials}
\label{sec:appendix-agda-essentials}
Here we describe some of the essential concepts and syntax of the Agda programming language and proof assistant.
The goal is to provide some background for readers who are not already familiar with Agda, to help them
understand the other sections of the specification.  For more details, the reader is
encouraged to consult the official \hrefAgdaDocs{}~\parencite{agda2024}.

\begin{code}[hide]
{-# OPTIONS --safe #-}

module EssentialAgda where

open import Prelude using (Type)
open import Data.Nat
\end{code}

\subsection{Record Types}

A \defn{record} is a product with named accessors for the individual fields.  It provides a way to
define a type that groups together inhabitants of other types.\\[6pt]
\textbf{Example}.
\begin{code}
record Pair (A B : Type) : Type where
  constructor ⦅_,_⦆
  field
    fst : A
    snd : B
\end{code}
%
We can construct an element of the type \AgdaRecord{Pair ℕ ℕ} (i.e., a pair of natural numbers) as follows:
%
\begin{code}
p23 : Pair ℕ ℕ
p23 = record { fst = 2; snd = 3 }
\end{code}
%
Since our definition of the \AgdaRecord{Pair} type provides an (optional) constructor
\AgdaInductiveConstructor{⦅\_,\_⦆}, we can have defined \AgdaFunction{p23} as follows:
%
\begin{code}
p23' : Pair ℕ ℕ
p23' = ⦅ 2 , 3 ⦆
\end{code}
%
Finally, we can ``update'' a record by deriving from it a new record whose fields may contain new
values.  The syntax is best explained by way of example.
%
\begin{code}
p24 : Pair ℕ ℕ
p24 = record p23 { snd = 4 }
\end{code}
%
This results a new record, \AgdaFunction{p24}, which denotes the pair
\AgdaInductiveConstructor{⦅}~\AgdaNumber{2}~\AgdaInductiveConstructor{,}~\AgdaNumber{4}~\AgdaInductiveConstructor{⦆}.
\\[6pt]
See also \hrefAgdaDocs[language/record-types.html][agda.readthedocs.io/record-types].
