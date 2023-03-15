\section{Protocol parameters}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Epoch

module Ledger.PParams (es : EpochStructure) where

open import Ledger.Prelude
open EpochStructure es
\end{code}
\begin{figure*}[h]
\begin{code}
ProtVer = ℕ × ℕ

record Acnt : Set where
  field treasury  : Coin
        reserves  : Coin

record PParams : Set where
  field a              : ℕ
        b              : ℕ
        maxBlockSize   : ℕ
        maxTxSize      : ℕ
        maxHeaderSize  : ℕ
        maxValSize     : ℕ
        minUtxOValue   : Coin
        poolDeposit    : Coin
        Emax           : Epoch
        pv             : ProtVer -- retired, keep for now
\end{code}
\caption{Definitions used for protocol parameters}
\label{fig:defs:pparams}
\end{figure*}
\begin{code}[hide]
record PParamsDiff : Set₁ where
  field UpdateT : Set
        applyUpdate : PParams → UpdateT → PParams
\end{code}
