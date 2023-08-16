\section{Protocol parameters}
\label{sec:protocol-parameters}
This section defines the adjustable protocol parameters of the Cardano ledger.
These parameters are used in block validation and can affect various features of the system,
such as minimum fees, maximum and minimum sizes of certain components, and more.
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

Adjustable parameters of the Cardano ledger are used in block
validation and may affect things such as the minimum fees, maximum and
minimum sizes of certain things and various other features.
\begin{figure*}[h!]
{\small
\begin{AgdaAlign}
\begin{code}
ProtVer : Set
ProtVer = ℕ × ℕ

record Acnt : Set where
  field treasury  : Coin
        reserves  : Coin

data PParamGroup : Set where
  NetworkGroup EconomicGroup TechnicalGroup GovernanceGroup : PParamGroup

record DrepThresholds : Set where
  field P1 P2a P2b P3 P4 P5a P5b P5c P5d P6 : ℚ

record PoolThresholds : Set where
  field Q1 Q2a Q2b Q4 : ℚ

record PParams : Set where
  field
\end{code}
\emph{Network group}
\AgdaTarget{maxBlockSize, maxTxSize, maxHeaderSize, maxValSize, pv}
\begin{code}
        maxBlockSize       : ℕ
        maxTxSize          : ℕ
        maxHeaderSize      : ℕ
        maxValSize         : ℕ
        pv                 : ProtVer -- retired, keep for now
\end{code}
\emph{Economic group}
\AgdaTarget{a, b, minUTxOValue, poolDeposit}
\begin{code}
        a                  : ℕ
        b                  : ℕ
        minUTxOValue       : Coin
        poolDeposit        : Coin
\end{code}
\emph{Technical group}
\AgdaTarget{Emax, collateralPercent}
\begin{code}
        Emax               : Epoch
        collateralPercent  : ℕ
\end{code}
\emph{Governance group}
\AgdaTarget{drepThresholds, poolThresholds, minCCSize, ccTermLimit, govExpiration, govDeposit, drepDeposit, drepActivity, minimumAVS}
\begin{code}
        drepThresholds     : DrepThresholds
        poolThresholds     : PoolThresholds
        minCCSize          : ℕ
        ccTermLimit        : ℕ
        govExpiration      : ℕ
        govDeposit         : Coin
        drepDeposit        : Coin
        drepActivity       : Epoch
        minimumAVS         : Coin

paramsWellFormed : PParams → Bool
paramsWellFormed pp = ⌊ ¬? (0 ∈? setFromList
  (maxBlockSize ∷ maxTxSize ∷ maxHeaderSize ∷ maxValSize ∷ minUTxOValue ∷ poolDeposit
  ∷ collateralPercent ∷ ccTermLimit ∷ govExpiration ∷ govDeposit ∷ drepDeposit ∷ [])) ⌋
  where open PParams pp
\end{code}
\end{AgdaAlign}
} %% End: small
\caption{Protocol parameter declarations}
\label{fig:protocol-parameter-declarations}
\end{figure*}
The \ProtVer type represents the protocol version used in the Cardano ledger.
It is a pair of natural numbers, the first of which represents the major version, the second
represents the minor version.

\PParams is is a record containing parameters used in the Cardano ledger;
depending on what purpose it serves, we associate each parameter with
one of the following groups: \NetworkGroup (network settings),
\EconomicGroup (economic aspects of the ledger), \TechnicalGroup (technical aspects of the ledger),
\GovernanceGroup (governance settings).  The first three of these four groups contain protocol
parameters that were introduced during the Shelley, Alonzo and Babbage eras.
The new protocol parameters introduced in the Conway era (CIP-1694) belong to \GovernanceGroup and are
declared in Figure~\ref{fig:protocol-parameter-declarations}; they denote the following concepts:
\begin{itemize}
  \item \drepThresholds are governance voting thresholds; these are rational numbers
  named \AgdaField{P1}, \AgdaField{P2a}, \AgdaField{P2b}, \AgdaField{P3}, \AgdaField{P4}, \AgdaField{P5a}, \AgdaField{P5b}, \AgdaField{P5c}, \AgdaField{P5d}, \AgdaField{P6}; %\acs{P1}, \acs{P2a}, \acs{P2b}, \acs{P3}, \acs{P4}, \acs{P5a}, \acs{P5b}, \acs{P5c}, \acs{P5d}, and \acs{P6};
  \item \poolThresholds are pool-related governance thresholds; these are rational numbers named \AgdaField{Q1}, \AgdaField{Q2a}, \AgdaField{Q2b}, and \AgdaField{Q4}; %\acs{Q1}, \acs{Q2a}, \acs{Q2b}, and \acs{Q4};
  \item \minCCSize is the minimum constitutional committee size;
  \item \ccTermLimit is the maximum term limit (in epochs) of constitutional committee members;
  \item \govExpiration is \acl{govExpiration};
  \item \govDeposit is the governance action deposit;
  \item \drepDeposit is the \DRep deposit amount;
  \item \drepActivity is the \DRep activity period;
  \item \minimumAVS is the minimum active voting threshold.
\end{itemize}

\begin{code}[hide]
instance
  unquoteDecl DecEq-DrepThresholds = derive-DecEq ((quote DrepThresholds , DecEq-DrepThresholds) ∷ [])
  unquoteDecl DecEq-PoolThresholds = derive-DecEq ((quote PoolThresholds , DecEq-PoolThresholds) ∷ [])
  unquoteDecl DecEq-PParams        = derive-DecEq ((quote PParams , DecEq-PParams) ∷ [])

record PParamsDiff : Set₁ where
  field UpdateT : Set
        updateGroups : UpdateT → ℙ PParamGroup
        applyUpdate : PParams → UpdateT → PParams
        ppdWellFormed : UpdateT → Bool
        ppdWellFormed⇒WF : ∀ {u} → ppdWellFormed u ≡ true → ∀ pp
                         → paramsWellFormed pp ≡ true
                         → paramsWellFormed (applyUpdate pp u) ≡ true
\end{code}
