\section{Protocol parameters}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Crypto
open import Ledger.Epoch
open import Ledger.Script
open import Ledger.Prelude hiding (All; Any)


module Ledger.PParams (crypto : Crypto )
                      (es     : EpochStructure)
                      (ss     : ScriptStructure crypto es) where

open import Data.Rational

open import Tactic.Derive.DecEq
open import MyDebugOptions

open import Ledger.Prelude
open EpochStructure es
open ScriptStructure ss
\end{code}

Adjustable parameters of the Cardano ledger. They are used in block
validation and may affect things such as the minimum fees, maximum and
minimum sizes of certain things and various other features.

\begin{figure*}[h]
\begin{code}
ProtVer = ℕ × ℕ

record Acnt : Set where
  field treasury  : Coin
        reserves  : Coin

data PParamGroup : Set where
  NetworkGroup EconomicGroup TechnicalGroup GovernanceGroup : PParamGroup

record PParams : Set where
  field -- Network group
        maxBlockSize      : ℕ
        maxTxSize         : ℕ
        maxHeaderSize     : ℕ
        maxValSize        : ℕ
        pv                : ProtVer -- retired, keep for now

        -- Economic group
        a                 : ℕ
        b                 : ℕ
        minUTxOValue      : Coin
        poolDeposit       : Coin

        -- Technical group
        Emax              : Epoch

        -- Governance group
        votingThresholds  : ℚ × ℚ
        minCCSize         : ℕ
        ccTermLimit       : ℕ
        govExpiration     : ℕ
        govDeposit        : Coin
        drepDeposit       : Coin
        drepActivity      : Epoch

        -- Script
        collateralPercent : ℕ
        prices            : Prices
        maxTxExUnits      : ExUnits
        maxBlockExUnits   : ExUnits

-- New Protocol Parameters
--        costmdls : (Language → CostModel)
--        maxValSize : N
--        coinsPerUTxOWord : Coin
--        collateralPercent : N
--        maxCollateralInputs : N
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
