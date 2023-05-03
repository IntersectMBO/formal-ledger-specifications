\section{Protocol parameters}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Epoch

module Ledger.PParams (es : EpochStructure) where

open import Data.Rational using (ℚ)

open import Tactic.Derive.DecEq using (derive-DecEq)
open import MyDebugOptions

open import Ledger.Prelude using (ℕ ; _×_ ; Coin ; _,_ ; _∷_ ; [] ; ℙ_)
open EpochStructure es
\end{code}
\begin{figure*}[h]
\begin{code}
ProtVer = ℕ × ℕ

record Acnt : Set where
  field treasury  : Coin
        reserves  : Coin

data PParamGroup : Set where
  NetworkGroup EconomicGroup TechnicalGroup GovernanceGroup : PParamGroup

record PParams : Set where
  field
        -- Network group
        maxBlockSize     : ℕ
        maxTxSize        : ℕ
        maxHeaderSize    : ℕ
        maxValSize       : ℕ
        pv               : ProtVer -- retired, keep for now

        -- Economic group
        a                : ℕ
        b                : ℕ
        minUtxOValue     : Coin
        poolDeposit      : Coin

        -- Technical group
        Emax             : Epoch

        -- Governance group
        votingThresholds : ℚ × ℚ -- TODO: add all the thresholds required
        minCCSize        : ℕ
        ccTermLimit      : ℕ
        govExpiration    : ℕ
        govDeposit       : Coin
        drepDeposit      : Coin
        drepActivity     : Epoch
\end{code}
\caption{Definitions used for protocol parameters}
\label{fig:defs:pparams}
\end{figure*}
\begin{code}[hide]
instance
  unquoteDecl DecEq-PParams = derive-DecEq ((quote PParams , DecEq-PParams) ∷ [])

record PParamsDiff : Set₁ where
  field UpdateT : Set
        updateGroups : UpdateT → ℙ PParamGroup
        applyUpdate : PParams → UpdateT → PParams
\end{code}
