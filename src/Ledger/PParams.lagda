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
  ∷ collateralPercent ∷ ccTermLimit ∷ govExpiration ∷ govDeposit ∷ drepDeposit ∷ [])) ⌋ ∧
  ⌊ (ℕtoEpoch govExpiration) ≤ᵉ? drepActivity ⌋
  where open PParams pp
\end{code}
\end{AgdaAlign}
} %% End: small
\caption{Protocol parameter declarations}
\label{fig:protocol-parameter-declarations}
\end{figure*}
\ProtVer represents the protocol version used in the Cardano ledger.
It is a pair of natural numbers, the first of which represents the major version, the second
represents the minor version.

\PParams contains parameters used in the Cardano ledger, which we group according
to the general purpose that each parameter serves.
\begin{itemize}
  \item \NetworkGroup: parameters related to the network settings;
  \item \EconomicGroup: parameters related to the economic aspects of the ledger;
  \item \TechnicalGroup: parameters related to technical settings;
  \item \GovernanceGroup: parameters related to governance settings.
\end{itemize}
The first three of these groups contain protocol parameters that
were already introduced during the Shelley, Alonzo and Babbage eras.
The new protocol parameters introduced in the Conway era (CIP-1694) belong to \GovernanceGroup.
These new parameters are declared in Figure~\ref{fig:protocol-parameter-declarations} and denote the following concepts.
\begin{itemize}
  \item \drepThresholds: governance thresholds for \DReps; these are rational numbers
  named \Pone, \Ptwoa, \Ptwob, \Pthree, \Pfour, \Pfivea, \Pfiveb, \Pfivec, \Pfived, and \Psix;
  \item \poolThresholds: pool-related governance thresholds; these are rational numbers named \Qone, \Qtwoa, \Qtwob, and \Qfour;
  \item \minCCSize: minimum constitutional committee size;
  \item \ccTermLimit: maximum term limit (in epochs) of constitutional committee members;
  \item \govExpiration: governance action expiration;
  \item \govDeposit: governance action deposit;
  \item \drepDeposit: \DRep deposit amount;
  \item \drepActivity: \DRep activity period;
  \item \minimumAVS: the minimum active voting threshold.
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
