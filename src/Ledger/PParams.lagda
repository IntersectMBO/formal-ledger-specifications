\section{Protocol parameters}
\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.PParams (Epoch : Set) where

open import Ledger.Prelude
\end{code}
\begin{figure*}[h]
\begin{code}
Coin = ℕ

record PParams : Set where
  field a              : ℕ
        b              : ℕ
        maxBlockSize   : ℕ
        maxTxSize      : ℕ
        maxHeaderSize  : ℕ
        poolDeposit    : Coin
        Emax           : Epoch
\end{code}
\caption{Definitions used for protocol parameters}
\label{fig:defs:pparams}
\end{figure*}
\begin{code}[hide]
record PParamsDiff : Set₁ where
  field UpdateT : Set
        applyUpdate : PParams → UpdateT → PParams
\end{code}
