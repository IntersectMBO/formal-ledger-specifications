\section{Protocol parameters}
\label{sec:protocol-parameters}
This section defines the adjustable protocol parameters of the Cardano ledger.
These parameters are used in block validation and can affect various features of the system,
such as minimum fees, maximum and minimum sizes of certain components, and more.
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Product.Properties
open import Data.Nat.Properties using (m+1+n≢m)
open import Data.Rational using (ℚ)
open import Relation.Nullary.Decidable

open import Tactic.Derive.DecEq

open import Ledger.Prelude
open import Ledger.Crypto
open import Ledger.Script
open import Ledger.Types.Epoch

module Ledger.PParams
  (crypto : Crypto )
  (es     : _) (open EpochStructure es)
  (ss     : ScriptStructure crypto es) (open ScriptStructure ss)
  where

private variable
  m n : ℕ
\end{code}

\begin{NoConway}
The \AgdaRecord{Acnt} record has two fields, \AgdaField{treasury} and \AgdaField{reserves}, so
the \AgdaBound{acnt} field in \AgdaRecord{NewEpochState} keeps track of the total assets that
remain in treasury and reserves.

\begin{figure*}[h!]
\begin{code}
record Acnt : Set where
  field treasury reserves : Coin

ProtVer : Set
ProtVer = ℕ × ℕ

data pvCanFollow : ProtVer → ProtVer → Set where
  canFollowMajor : pvCanFollow (m , n) (m + 1 , 0)
  canFollowMinor : pvCanFollow (m , n) (m , n + 1)
\end{code}
\caption{Definitions related to protocol parameters}
\label{fig:protocol-parameter-defs}
\end{figure*}
\end{NoConway}

\begin{figure*}[h!]
\begin{AgdaMultiCode}
\begin{code}
data PParamGroup : Set where
  NetworkGroup EconomicGroup TechnicalGroup GovernanceGroup SecurityGroup : PParamGroup

record DrepThresholds : Set where
  field P1 P2a P2b P3 P4 P5a P5b P5c P5d P6 : ℚ

record PoolThresholds : Set where
  field Q1 Q2a Q2b Q4 Q5e : ℚ

record PParams : Set where
  field
\end{code}
\emph{Network group}
\begin{code}
        maxBlockSize maxTxSize        : ℕ
        maxHeaderSize maxValSize      : ℕ
        maxCollateralInputs           : ℕ
        pv                            : ProtVer -- retired, keep for now
        maxTxExUnits maxBlockExUnits  : ExUnits
\end{code}
\emph{Economic group}
\begin{code}
        a b                           : ℕ
        minUTxOValue poolDeposit      : Coin
        coinsPerUTxOWord              : Coin
        minFeeRefScriptCoinsPerByte   : ℚ
        prices                        : Prices
\end{code}
\emph{Technical group}
\begin{code}
        a0                            : ℚ
        Emax                          : Epoch
        nopt                          : ℕ
        collateralPercentage          : ℕ
        -- costmdls                   : Language →/⇀ CostModel (Does not work with DecEq)
        costmdls                      : CostModel
\end{code}
\emph{Governance group}
\begin{code}
        drepThresholds                : DrepThresholds
        poolThresholds                : PoolThresholds
        govActionLifetime             : ℕ
        govActionDeposit drepDeposit  : Coin
        drepActivity                  : Epoch
        ccMinSize ccMaxTermLength     : ℕ

paramsWellFormed : PParams → Set
paramsWellFormed pp =
     0 ∉ fromList  ( maxBlockSize ∷ maxTxSize ∷ maxHeaderSize ∷ maxValSize
                   ∷ minUTxOValue ∷ poolDeposit ∷ collateralPercentage ∷ ccMaxTermLength
                   ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit ∷ [] )
  ×  ℕtoEpoch govActionLifetime ≤ drepActivity
  where open PParams pp
\end{code}
\end{AgdaMultiCode}
\caption{Protocol parameter declarations}
\label{fig:protocol-parameter-declarations}
\end{figure*}
% Retiring ProtVer's documentation since ProtVer is retired.
% \ProtVer represents the protocol version used in the Cardano ledger.
% It is a pair of natural numbers, representing the major and minor version,
% respectively.

\PParams contains parameters used in the Cardano ledger, which we group according
to the general purpose that each parameter serves.
\begin{itemize}
  \item \NetworkGroup: parameters related to the network settings;
  \item \EconomicGroup: parameters related to the economic aspects of the ledger;
  \item \TechnicalGroup: parameters related to technical settings;
  \item \GovernanceGroup: parameters related to governance settings;
  \item \SecurityGroup: parameters that can impact the security of the system.
\end{itemize}

The first four groups have the property that every protocol parameter
is associated to precisely one of these groups. The \SecurityGroup is
special: a protocol parameter may or may not be in the
\SecurityGroup. So, each protocol parameter belongs to at least one
and at most two groups. Note that in \cite{cip1694} there is no
\SecurityGroup, but there is the concept of security-relevant protocol
parameters. The difference between these notions is only social, so we
implement security-relevant protocol parameters as a group.

The purpose of the groups is to determine voting thresholds for
proposals aiming to change parameters. The thresholds depend on the
groups of the parameters contained in such a proposal.

These new parameters are declared in
Figure~\ref{fig:protocol-parameter-declarations} and denote the
following concepts.

\begin{itemize}
  \item \drepThresholds: governance thresholds for \DReps; these are rational numbers
  named \Pone, \Ptwoa, \Ptwob, \Pthree, \Pfour, \Pfivea, \Pfiveb, \Pfivec, \Pfived, and \Psix;
  \item \poolThresholds: pool-related governance thresholds; these are rational numbers named \Qone, \Qtwoa, \Qtwob, \Qfour and \Qfivee;
  \item \ccMinSize: minimum constitutional committee size;
  \item \ccMaxTermLength: maximum term limit (in epochs) of constitutional committee members;
  \item \govActionLifetime: governance action expiration;
  \item \govActionDeposit: governance action deposit;
  \item \drepDeposit: \DRep deposit amount;
  \item \drepActivity: \DRep activity period;
  \item \minimumAVS: the minimum active voting threshold.
\end{itemize}

Figure~\ref{fig:protocol-parameter-declarations} also defines the
function \paramsWellFormed. It performs some sanity checks on protocol
parameters.

\begin{code}[hide]
instance
  unquoteDecl DecEq-DrepThresholds = derive-DecEq
    ((quote DrepThresholds , DecEq-DrepThresholds) ∷ [])
  unquoteDecl DecEq-PoolThresholds = derive-DecEq
    ((quote PoolThresholds , DecEq-PoolThresholds) ∷ [])
  unquoteDecl DecEq-PParams        = derive-DecEq
    ((quote PParams , DecEq-PParams) ∷ [])

instance
  pvCanFollow? : ∀ {pv} {pv'} → Dec (pvCanFollow pv pv')
  pvCanFollow? {m , n} {pv} with pv ≟ (m + 1 , 0) | pv ≟ (m , n + 1)
  ... | no ¬p    | no ¬p₁   = no $ λ where canFollowMajor → ¬p  refl
                                           canFollowMinor → ¬p₁ refl
  ... | no ¬p    | yes refl = yes canFollowMinor
  ... | yes refl | no ¬p    = yes canFollowMajor
  ... | yes refl | yes p    = ⊥-elim $ m+1+n≢m m $ ×-≡,≡←≡ p .proj₁

record PParamsDiff : Set₁ where
  field UpdateT : Set
        updateGroups : UpdateT → ℙ PParamGroup
        applyUpdate : PParams → UpdateT → PParams
        ppdWellFormed : UpdateT → Bool
        ppdWellFormed⇒hasGroup : ∀ {u} → ppdWellFormed u ≡ true → updateGroups u ≢ ∅
        ppdWellFormed⇒WF       : ∀ {u} → ppdWellFormed u ≡ true → ∀ pp
                               → paramsWellFormed pp
                               → paramsWellFormed (applyUpdate pp u)

record GovParams : Set₁ where
  field ppUpd : PParamsDiff
  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public
  field ppHashingScheme : isHashableSet PParams
  open isHashableSet ppHashingScheme renaming (THash to PPHash) public
  field ⦃ DecEq-UpdT ⦄ : DecEq PParamsUpdate
\end{code}
