\section{Protocol parameters}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Epoch

module Ledger.PParams (es : EpochStructure) where

open import Ledger.Prelude

open import Data.Rational using (ℚ)
open import MyDebugOptions
open import Relation.Nullary.Decidable
open import Tactic.Derive.DecEq

open EpochStructure es
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
        collateralPercent : ℕ

        -- Governance group
        votingThresholds  : ℚ × ℚ
        minCCSize         : ℕ
        ccTermLimit       : ℕ
        govExpiration     : ℕ
        govDeposit        : Coin
        drepDeposit       : Coin
        drepActivity      : Epoch

paramsWellFormed : PParams → Bool
paramsWellFormed pp = ⌊ ¬? (0 ∈? setFromList
  (maxBlockSize ∷ maxTxSize ∷ maxHeaderSize ∷ maxValSize ∷ minUTxOValue ∷ poolDeposit
  ∷ collateralPercent ∷ ccTermLimit ∷ govExpiration ∷ govDeposit ∷ drepDeposit ∷ [])) ⌋
  where open PParams pp
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
        ppdWellFormed : UpdateT → Bool
        ppdWellFormed⇒WF : ∀ {u} → ppdWellFormed u ≡ true → ∀ pp
                         → paramsWellFormed pp ≡ true
                         → paramsWellFormed (applyUpdate pp u) ≡ true
\end{code}
