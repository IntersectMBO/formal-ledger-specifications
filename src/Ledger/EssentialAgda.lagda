Here we describe some of the essential concepts and syntax of the Agda programming language and proof assistant.
The goal is to provide some background for readers who are not already familiar with Agda, to help them
understand the other sections of the specification.

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.EssentialAgda where

open import Data.Nat
\end{code}

\subsection{Record types}

A \defn{record} in Agda is similar to a structure or a class in other languages.  It provides a way to
define a type that groups together inhabitants of other types.\\[6pt]
\textbf{Syntax}.\\[4pt]
%
{\small%
\AgdaKeyword{record} \verb!<recordname> <parameters> :! \AgdaPrimitive{Set} \verb!<level>! \AgdaKeyword{where}\\
 \phantom{xx}\verb!<directives>!\\
 \phantom{xx}\AgdaKeyword{constructor} \verb!<constructorname>!\\
 \phantom{xx}\AgdaKeyword{field}\\
 \phantom{xxxx}\verb!<fieldname1> : <type1>!\\
 \phantom{xxxx}\verb!<fieldname2> : <type2>!\\
 \phantom{xxxx}\verb!-- ...!\\
 \phantom{xx}\verb!<declarations>!}\\[6pt]
%
\textbf{Example}.
\begin{code}
record Pair (A B : Set) : Set where
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
Here's an alternative syntax for defining the above record.  (Note: we must \AgdaKeyword{open}
the record type to bring its components---in this case, the field names \AgdaField{fst} and
\AgdaField{snd}---into scope.)
%
\begin{code}
open Pair
p23' : Pair ℕ ℕ
p23' .fst = 2
p23' .snd = 3
\end{code}
%
Since our definition of the \AgdaRecord{Pair} type provides an (optional) constructor
\AgdaInductiveConstructor{⦅\_,\_⦆}, we can have defined \AgdaFunction{p23} as follows:
%
\begin{code}
p23'' : Pair ℕ ℕ
p23'' = ⦅ 2 , 3 ⦆
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
See also \agdartdlang{record-types}.
