\section{Base Types}
\label{sec:base-types}
\modulenote{\LedgerModule{BaseTypes}}, in which we define some of the most basic types used throughout the ledger.

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.BaseTypes where

open import Prelude using (ℕ; _×_)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ; _≤_)
open import Data.Refinement using (Refinement-syntax)
\end{code}

\begin{code}[hide]
private
\end{code}
\begin{figure*}[h]
\begin{code}
  Coin   = ℕ
  Slot   = ℕ
  Epoch  = ℕ
\end{code}
\caption{Some basic types used in many places in the ledger}
\end{figure*}

\begin{figure*}[h]
\begin{code}
  UnitInterval = [ x ∈ ℚ ∣ (0ℚ ≤ x) × (x ≤ 1ℚ) ]
\end{code}
\caption{Refinement types used in some places in the ledger}
\end{figure*}
