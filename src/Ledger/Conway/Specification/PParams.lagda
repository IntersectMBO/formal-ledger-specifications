\section{Protocol Parameters}
\label{sec:protocol-parameters}
\modulenote{\ConwayModule{PParams}}, in which we define the adjustable protocol
parameters of the Cardano ledger.  

Protocol parameters are used in block validation and
can affect various features of the system, such as minimum fees, maximum and minimum
sizes of certain components, and more.

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Product.Properties
open import Data.Nat.Properties using (m+1+n≢m)
open import Data.Rational using (ℚ)
open import Relation.Nullary.Decidable
open import Data.List.Relation.Unary.Any using (Any; here; there)

open import Tactic.Derive.Show

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Conway.Specification.Script.Base
open import Ledger.Core.Specification.Epoch
open import Ledger.Prelude.Numeric using (UnitInterval; ℕ⁺)

module Ledger.Conway.Specification.PParams
  (cs : CryptoStructure )
  (es : _) (open EpochStructure es)
  (ss : ScriptStructure cs es) (open ScriptStructure ss)
  where

private variable
  m n : ℕ
\end{code}

\begin{NoConway}
The \AgdaRecord{Acnt} record has two fields, \AgdaField{treasury} and \AgdaField{reserves}, so
the \AgdaBound{acnt} field in \AgdaRecord{NewEpochState} keeps track of the total assets that
remain in treasury and reserves.

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record Acnt : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵃ
\end{code}
\begin{code}
  field
    treasury reserves : Coin

record Hastreasury {a} (A : Type a) : Type a where
  field treasuryOf : A → Coin
open Hastreasury ⦃...⦄ public

record Hasreserves {a} (A : Type a) : Type a where
  field reservesOf : A → Coin
open Hasreserves ⦃...⦄ public

ProtVer : Type
ProtVer = ℕ × ℕ

instance
  Show-ProtVer : Show ProtVer
  Show-ProtVer = Show-×

data pvCanFollow : ProtVer → ProtVer → Type where
  canFollowMajor : pvCanFollow (m , n) (m + 1 , 0)
  canFollowMinor : pvCanFollow (m , n) (m , n + 1)
\end{code}
\end{AgdaMultiCode}
\caption{Definitions related to protocol parameters}
\label{fig:protocol-parameter-defs}
\end{figure*}
\end{NoConway}
\begin{code}[hide]
instance
  unquoteDecl HasCast-Acnt = derive-HasCast
    [ (quote Acnt , HasCast-Acnt) ]
\end{code}

\begin{figure*}[ht]
\begin{code}
data PParamGroup : Type where
  NetworkGroup     : PParamGroup
  EconomicGroup    : PParamGroup
  TechnicalGroup   : PParamGroup
  GovernanceGroup  : PParamGroup
  SecurityGroup    : PParamGroup
\end{code}
\caption{Protocol parameter group definition}
\label{fig:protocol-parameter-groups}
\end{figure*}

\begin{figure*}[ht]
\begin{code}
record DrepThresholds : Type where
  field
    P1 P2a P2b P3 P4 P5a P5b P5c P5d P6 : ℚ

record PoolThresholds : Type where
  field
    Q1 Q2a Q2b Q4 Q5 : ℚ
\end{code}
\caption{Protocol parameter threshold definitions}
\label{fig:protocol-parameter-thresholds}
\end{figure*}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record PParams : Type where
  field
\end{code}
\emph{Network group}
\begin{code}
        maxBlockSize                  : ℕ
        maxTxSize                     : ℕ
        maxHeaderSize                 : ℕ
        maxTxExUnits                  : ExUnits
        maxBlockExUnits               : ExUnits
        maxValSize                    : ℕ
        maxCollateralInputs           : ℕ
\end{code}
\begin{code}[hide]
        pv                            : ProtVer -- retired, keep for now
\end{code}
\emph{Economic group}
\begin{code}
        a                             : ℕ
        b                             : ℕ
        keyDeposit                    : Coin
        poolDeposit                   : Coin
        monetaryExpansion             : UnitInterval -- formerly: rho
        treasuryCut                   : UnitInterval -- formerly: tau
        coinsPerUTxOByte              : Coin
        prices                        : Prices
        minFeeRefScriptCoinsPerByte   : ℚ
        maxRefScriptSizePerTx         : ℕ
        maxRefScriptSizePerBlock      : ℕ
        refScriptCostStride           : ℕ⁺
        refScriptCostMultiplier       : ℚ
\end{code}
\begin{code}[hide]
        minUTxOValue                  : Coin -- retired, keep for now
\end{code}
\emph{Technical group}
\begin{code}
        Emax                          : Epoch
        nopt                          : ℕ
        a0                            : ℚ
        collateralPercentage          : ℕ
\end{code}
\begin{code}[hide]
        -- costmdls                   : Language →/⇀ CostModel (Does not work with DecEq)
\end{code}
\begin{code}
        costmdls                      : CostModel
\end{code}
\emph{Governance group}
\begin{code}
        poolThresholds                : PoolThresholds
        drepThresholds                : DrepThresholds
        ccMinSize                     : ℕ
        ccMaxTermLength               : ℕ
        govActionLifetime             : ℕ
        govActionDeposit              : Coin
        drepDeposit                   : Coin
        drepActivity                  : Epoch
\end{code}
\end{AgdaMultiCode}
\emph{Security group}

\maxBlockSize{} \maxTxSize{} \maxHeaderSize{} \maxValSize{}
\maxBlockExUnits{} \AgdaField{a}{} \AgdaField{b}{}
\minFeeRefScriptCoinsPerByte{} \coinsPerUTxOByte{} \govActionDeposit{}
\caption{Protocol parameter definitions}
\label{fig:protocol-parameter-declarations}
\end{figure*}
\begin{code}[hide]
record HasPParams {a} (A : Type a) : Type a where
  field PParamsOf : A → PParams
open HasPParams ⦃...⦄ public
record HasgovActionDeposit {a} (A : Type a) : Type a where
  field govActionDepositOf : A → Coin
open HasgovActionDeposit ⦃...⦄ public

record HasccMaxTermLength {a} (A : Type a) : Type a where
  field ccMaxTermLengthOf : A → ℕ
open HasccMaxTermLength ⦃...⦄ public

instance
  HasgovActionDeposit-PParams : HasgovActionDeposit PParams
  HasgovActionDeposit-PParams .govActionDepositOf = PParams.govActionDeposit
\end{code}
\begin{figure*}
\begin{AgdaMultiCode}
\begin{code}
positivePParams : PParams → List ℕ
positivePParams pp =  ( maxBlockSize ∷ maxTxSize ∷ maxHeaderSize
                      ∷ maxValSize ∷ coinsPerUTxOByte
                      ∷ poolDeposit ∷ collateralPercentage ∷ ccMaxTermLength
                      ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit ∷ [] )
\end{code}
\begin{code}[hide]
  where open PParams pp
\end{code}
\begin{code}

paramsWellFormed : PParams → Type
paramsWellFormed pp = 0 ∉ fromList (positivePParams pp)
\end{code}
\begin{code}[hide]
paramsWF-elim : (pp : PParams) → paramsWellFormed pp → (n : ℕ) → n ∈ˡ (positivePParams pp) → n > 0
paramsWF-elim pp pwf (suc n) x = z<s
paramsWF-elim pp pwf 0 0∈ = ⊥-elim (pwf (to ∈-fromList 0∈))
  where open Equivalence

\end{code}
\end{AgdaMultiCode}
\caption{Protocol parameter well-formedness}
\label{fig:protocol-parameter-well-formedness}
\end{figure*}
\begin{code}[hide]
instance
  unquoteDecl DecEq-DrepThresholds = derive-DecEq
    ((quote DrepThresholds , DecEq-DrepThresholds) ∷ [])
  unquoteDecl DecEq-PoolThresholds = derive-DecEq
    ((quote PoolThresholds , DecEq-PoolThresholds) ∷ [])
  unquoteDecl DecEq-PParams        = derive-DecEq
    ((quote PParams , DecEq-PParams) ∷ [])
  unquoteDecl DecEq-PParamGroup    = derive-DecEq
    ((quote PParamGroup , DecEq-PParamGroup) ∷ [])
  unquoteDecl Show-DrepThresholds = derive-Show
    ((quote DrepThresholds , Show-DrepThresholds) ∷ [])
  unquoteDecl Show-PoolThresholds = derive-Show
    ((quote PoolThresholds , Show-PoolThresholds) ∷ [])
  unquoteDecl Show-PParams        = derive-Show
    ((quote PParams , Show-PParams) ∷ [])

module PParamsUpdate where
  record PParamsUpdate : Type where
    field
          maxBlockSize maxTxSize        : Maybe ℕ
          maxHeaderSize maxValSize      : Maybe ℕ
          maxCollateralInputs           : Maybe ℕ
          maxTxExUnits maxBlockExUnits  : Maybe ExUnits
          pv                            : Maybe ProtVer -- retired, keep for now
          a b                           : Maybe ℕ
          keyDeposit                    : Maybe Coin
          poolDeposit                   : Maybe Coin
          monetaryExpansion             : Maybe UnitInterval
          treasuryCut                   : Maybe UnitInterval
          coinsPerUTxOByte              : Maybe Coin
          prices                        : Maybe Prices
          minFeeRefScriptCoinsPerByte   : Maybe ℚ
          maxRefScriptSizePerTx         : Maybe ℕ
          maxRefScriptSizePerBlock      : Maybe ℕ
          refScriptCostStride           : Maybe ℕ⁺
          refScriptCostMultiplier       : Maybe ℚ
          minUTxOValue                  : Maybe Coin -- retired, keep for now
          a0                            : Maybe ℚ
          Emax                          : Maybe Epoch
          nopt                          : Maybe ℕ
          collateralPercentage          : Maybe ℕ
          costmdls                      : Maybe CostModel
          drepThresholds                : Maybe DrepThresholds
          poolThresholds                : Maybe PoolThresholds
          govActionLifetime             : Maybe ℕ
          govActionDeposit drepDeposit  : Maybe Coin
          drepActivity                  : Maybe Epoch
          ccMinSize ccMaxTermLength     : Maybe ℕ
  
  paramsUpdateWellFormed : PParamsUpdate → Type
  paramsUpdateWellFormed ppu =
       just 0 ∉ fromList ( maxBlockSize ∷ maxTxSize ∷ maxHeaderSize ∷ maxValSize
                         ∷ coinsPerUTxOByte ∷ poolDeposit ∷ collateralPercentage ∷ ccMaxTermLength
                         ∷ govActionLifetime ∷ govActionDeposit ∷ drepDeposit ∷ [] )
    where open PParamsUpdate ppu
  
  paramsUpdateWellFormed? : ( u : PParamsUpdate ) → Dec (paramsUpdateWellFormed u)
  paramsUpdateWellFormed? u = ¿ paramsUpdateWellFormed u ¿
  
  modifiesNetworkGroup : PParamsUpdate → Bool
  modifiesNetworkGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just maxBlockSize
      ∷ is-just maxTxSize
      ∷ is-just maxHeaderSize
      ∷ is-just maxValSize
      ∷ is-just maxCollateralInputs
      ∷ is-just maxTxExUnits
      ∷ is-just maxBlockExUnits
      ∷ is-just pv
      ∷ [])
  
  modifiesEconomicGroup : PParamsUpdate → Bool
  modifiesEconomicGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just a
      ∷ is-just b
      ∷ is-just keyDeposit
      ∷ is-just poolDeposit
      ∷ is-just monetaryExpansion
      ∷ is-just treasuryCut
      ∷ is-just coinsPerUTxOByte
      ∷ is-just minFeeRefScriptCoinsPerByte
      ∷ is-just maxRefScriptSizePerTx
      ∷ is-just maxRefScriptSizePerBlock
      ∷ is-just refScriptCostStride
      ∷ is-just refScriptCostMultiplier
      ∷ is-just prices
      ∷ is-just minUTxOValue
      ∷ [])
  
  modifiesTechnicalGroup : PParamsUpdate → Bool
  modifiesTechnicalGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just a0
      ∷ is-just Emax
      ∷ is-just nopt
      ∷ is-just collateralPercentage
      ∷ is-just costmdls
      ∷ [])
  
  modifiesGovernanceGroup : PParamsUpdate → Bool
  modifiesGovernanceGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just drepThresholds
      ∷ is-just poolThresholds
      ∷ is-just govActionLifetime
      ∷ is-just govActionDeposit
      ∷ is-just drepDeposit
      ∷ is-just drepActivity
      ∷ is-just ccMinSize
      ∷ is-just ccMaxTermLength
      ∷ [])

  modifiesSecurityGroup : PParamsUpdate → Bool
  modifiesSecurityGroup ppu = let open PParamsUpdate ppu in
    or
      ( is-just maxBlockSize
      ∷ is-just maxTxSize
      ∷ is-just maxHeaderSize
      ∷ is-just maxValSize
      ∷ is-just maxBlockExUnits
      ∷ is-just b
      ∷ is-just a
      ∷ is-just coinsPerUTxOByte
      ∷ is-just govActionDeposit
      ∷ is-just minFeeRefScriptCoinsPerByte
      ∷ []
      )
  
  modifiedUpdateGroups : PParamsUpdate → ℙ PParamGroup
  modifiedUpdateGroups ppu =
    ( modifiesNetworkGroup    ?═⇒ NetworkGroup
    ∪ modifiesEconomicGroup   ?═⇒ EconomicGroup
    ∪ modifiesTechnicalGroup  ?═⇒ TechnicalGroup
    ∪ modifiesGovernanceGroup ?═⇒ GovernanceGroup
    ∪ modifiesSecurityGroup   ?═⇒ SecurityGroup
    )
    where
      _?═⇒_ : (PParamsUpdate → Bool) → PParamGroup → ℙ PParamGroup
      pred ?═⇒ grp = if pred ppu then ❴ grp ❵ else ∅
  
  _?↗_ : ∀ {A : Type} → Maybe A → A → A
  just x ?↗ _ = x
  nothing ?↗ x = x
  
  ≡-update : ∀ {A : Type} {u : Maybe A} {p : A} {x : A} → u ?↗ p ≡ x ⇔ (u ≡ just x ⊎ (p ≡ x × u ≡ nothing))
  ≡-update {u} {p} {x} = mk⇔ to from
    where
      to : ∀ {A} {u : Maybe A} {p : A} {x : A} → u ?↗ p ≡ x → (u ≡ just x ⊎ (p ≡ x × u ≡ nothing))
      to {u = just x} refl = inj₁ refl
      to {u = nothing} refl = inj₂ (refl , refl)
  
      from : ∀ {A} {u : Maybe A} {p : A} {x : A} → u ≡ just x ⊎ (p ≡ x × u ≡ nothing) → u ?↗ p ≡ x
      from (inj₁ refl) = refl
      from (inj₂ (refl , refl)) = refl
  
  applyPParamsUpdate : PParams → PParamsUpdate → PParams
  applyPParamsUpdate pp ppu =
    record
      { maxBlockSize                = U.maxBlockSize ?↗ P.maxBlockSize
      ; maxTxSize                   = U.maxTxSize ?↗ P.maxTxSize
      ; maxHeaderSize               = U.maxHeaderSize ?↗ P.maxHeaderSize
      ; maxValSize                  = U.maxValSize ?↗ P.maxValSize
      ; maxCollateralInputs         = U.maxCollateralInputs ?↗ P.maxCollateralInputs
      ; maxTxExUnits                = U.maxTxExUnits ?↗ P.maxTxExUnits
      ; maxBlockExUnits             = U.maxBlockExUnits ?↗ P.maxBlockExUnits
      ; pv                          = U.pv ?↗ P.pv
      ; a                           = U.a ?↗ P.a
      ; b                           = U.b ?↗ P.b
      ; keyDeposit                  = U.keyDeposit ?↗ P.keyDeposit
      ; poolDeposit                 = U.poolDeposit ?↗ P.poolDeposit
      ; monetaryExpansion           = U.monetaryExpansion ?↗ P.monetaryExpansion
      ; treasuryCut                 = U.treasuryCut ?↗ P.treasuryCut
      ; coinsPerUTxOByte            = U.coinsPerUTxOByte ?↗ P.coinsPerUTxOByte
      ; minFeeRefScriptCoinsPerByte = U.minFeeRefScriptCoinsPerByte ?↗ P.minFeeRefScriptCoinsPerByte
      ; maxRefScriptSizePerTx       = U.maxRefScriptSizePerTx ?↗ P.maxRefScriptSizePerTx
      ; maxRefScriptSizePerBlock    = U.maxRefScriptSizePerBlock ?↗ P.maxRefScriptSizePerBlock
      ; refScriptCostStride         = U.refScriptCostStride ?↗ P.refScriptCostStride
      ; refScriptCostMultiplier     = U.refScriptCostMultiplier ?↗ P.refScriptCostMultiplier
      ; prices                      = U.prices ?↗ P.prices
      ; minUTxOValue                = U.minUTxOValue ?↗ P.minUTxOValue
      ; a0                          = U.a0 ?↗ P.a0
      ; Emax                        = U.Emax ?↗ P.Emax
      ; nopt                        = U.nopt ?↗ P.nopt
      ; collateralPercentage        = U.collateralPercentage ?↗ P.collateralPercentage
      ; costmdls                    = U.costmdls ?↗ P.costmdls
      ; drepThresholds              = U.drepThresholds ?↗ P.drepThresholds
      ; poolThresholds              = U.poolThresholds ?↗ P.poolThresholds
      ; govActionLifetime           = U.govActionLifetime ?↗ P.govActionLifetime
      ; govActionDeposit            = U.govActionDeposit ?↗ P.govActionDeposit
      ; drepDeposit                 = U.drepDeposit ?↗ P.drepDeposit
      ; drepActivity                = U.drepActivity ?↗ P.drepActivity
      ; ccMinSize                   = U.ccMinSize ?↗ P.ccMinSize
      ; ccMaxTermLength             = U.ccMaxTermLength ?↗ P.ccMaxTermLength
      }
    where
      open module P = PParams pp
      open module U = PParamsUpdate ppu

  instance
    unquoteDecl DecEq-PParamsUpdate  = derive-DecEq
      ((quote PParamsUpdate , DecEq-PParamsUpdate) ∷ [])
\end{code}
% Retiring ProtVer's documentation since ProtVer is retired.
% \ProtVer{} represents the protocol version used in the Cardano ledger.
% It is a pair of natural numbers, representing the major and minor version,
% respectively.

\PParams{} contains parameters used in the Cardano ledger, which we group according
to the general purpose that each parameter serves.
\begin{itemize}
  \item \NetworkGroup{}: parameters related to the network settings;
  \item \EconomicGroup{}: parameters related to the economic aspects of the ledger;
  \item \TechnicalGroup{}: parameters related to technical settings;
  \item \GovernanceGroup{}: parameters related to governance settings;
  \item \SecurityGroup{}: parameters that can impact the security of the system.
\end{itemize}
The purpose of these groups is to determine voting thresholds for
proposals aiming to change parameters.  Given a proposal to change a certain set of
parameters, we look at which groups those parameters fall into and from this we
determine the voting threshold for that proposal.  (The voting threshold
calculation is described in detail in \cref{sec:ratification-requirements}; in
particular, the definition of the \threshold{} function appears in
\cref{fig:ratification-requirements}.)

The first four groups have the property that every protocol parameter
is associated to precisely one of these groups.  The \SecurityGroup{} is
special: a protocol parameter may or may not be in the \SecurityGroup{}.
So, each protocol parameter belongs to at least one and at most two groups.
Note that in \hrefCIP{1694} there is no \SecurityGroup{}, but there is the
concept of security-relevant protocol parameters (see \textcite{cip1694}).
The difference between these notions is only social, so we implement
security-relevant protocol parameters as a group.

The new protocol parameters are declared in \cref{fig:protocol-parameter-declarations}
and denote the following concepts:
\begin{itemize}
  \item \drepThresholds{}: governance thresholds for \DReps{}; these are rational
    numbers named \Pone{}, \Ptwoa{}, \Ptwob{}, \Pthree{}, \Pfour{}, \Pfivea{},
    \Pfiveb{}, \Pfivec{}, \Pfived{}, and \Psix{};
  \item \poolThresholds: pool-related governance thresholds; these are rational
    numbers named \Qone{}, \Qtwoa{}, \Qtwob{}, \Qfour{} and \Qfive{};
  \item \ccMinSize{}: minimum constitutional committee size;
  \item \ccMaxTermLength{}: maximum term limit (in epochs) of constitutional
    committee members;
  \item \govActionLifetime{}: governance action expiration;
  \item \govActionDeposit{}: governance action deposit;
  \item \drepDeposit{}: \DRep{} deposit amount;
  \item \drepActivity{}: \DRep{} activity period;
  \item \minimumAVS{}: the minimum active voting threshold.
\end{itemize}
\Cref{fig:protocol-parameter-declarations} also defines the
function \paramsWellFormed{} which performs some sanity checks on protocol
parameters.
\Cref{fig:pp-update-type} defines types and functions to update
parameters. These consist of an abstract type \AgdaField{UpdateT} and
two functions \AgdaField{applyUpdate} and \AgdaField{updateGroups}.
The type \AgdaField{UpdateT} is to be instantiated by a type that
%
\begin{itemize}
  \item can be used to update parameters, via the
    function \AgdaField{applyUpdate}
  \item can be queried about what parameter groups it updates, via the
    function \AgdaField{updateGroups}
\end{itemize}
%
An element of the type \AgdaField{UpdateT} is well formed if it
updates at least one group and applying the update preserves
well-formedness.


\begin{code}[hide]
instance
  pvCanFollow? : ∀ {pv} {pv'} → Dec (pvCanFollow pv pv')
  pvCanFollow? {m , n} {pv} with pv ≟ (m + 1 , 0) | pv ≟ (m , n + 1)
  ... | no ¬p    | no ¬p₁   = no $ λ where canFollowMajor → ¬p  refl
                                           canFollowMinor → ¬p₁ refl
  ... | no ¬p    | yes refl = yes canFollowMinor
  ... | yes refl | no ¬p    = yes canFollowMajor
  ... | yes refl | yes p    = ⊥-elim $ m+1+n≢m m $ ×-≡,≡←≡ p .proj₁
\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
record PParamsDiff : Type₁ where
  field
\end{code}
\emph{Abstract types \& functions}
\begin{code}
    UpdateT : Type
    applyUpdate : PParams → UpdateT → PParams
    updateGroups : UpdateT → ℙ PParamGroup

\end{code}
\begin{code}[hide]
    ⦃ ppWF? ⦄ : ∀ {u} → (∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)) ⁇
\end{code}
\emph{Well-formedness condition}
\begin{code}

  ppdWellFormed : UpdateT → Type
  ppdWellFormed u = updateGroups u ≢ ∅
    × ∀ pp → paramsWellFormed pp → paramsWellFormed (applyUpdate pp u)
\end{code}
\end{AgdaMultiCode}
\caption{Abstract type for parameter updates}
\label{fig:pp-update-type}
\end{figure*}
\begin{code}[hide]
record GovParams : Type₁ where
  field ppUpd : PParamsDiff
  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate) public
  field ⦃ DecEq-UpdT ⦄ : DecEq PParamsUpdate
--         ⦃ Show-UpdT ⦄ : Show PParamsUpdate
\end{code}
