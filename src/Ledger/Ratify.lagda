\section{Ratification}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties hiding (_≟_; _≤?_)
open import Data.Nat.Properties.Ext

open import Ledger.Prelude hiding (_∧_; _⊔_) renaming (filterᵐ to filter)
open import Ledger.Transaction hiding (Vote)

module Ledger.Ratify (txs : _) (open TransactionStructure txs) where

\end{code}

\begin{AgdaMultiCode}
\begin{code}
F : Bool
F = true
  where

  f : Bool
  f = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _ → true

  g : Bool
  g = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _ → true

  h : Bool
  h = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    _ → true
\end{code}
\end{AgdaMultiCode}

\end{document}
