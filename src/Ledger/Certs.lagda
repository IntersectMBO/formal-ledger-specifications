\section{Certificates}
\label{sec:certificates}
\modulenote{\LedgerModule{Certs}}.

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude renaming (filterˢ to filter)
open import Ledger.Types.GovStructure
open import Ledger.Types.Numeric.UnitInterval

module Ledger.Certs (gs : _) (open GovStructure gs) where

open import Tactic.Derive.DecEq

open import Ledger.GovernanceActions gs
open RwdAddr
open PParams
\end{code}

\begin{figure*}[ht]
\emph{Derived types}
\begin{code}
data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

Deposits  = DepositPurpose ⇀ Coin
Rewards   = Credential ⇀ Coin
DReps     = Credential ⇀ Epoch
\end{code}
\begin{code}[hide]
record HasDeposits {a} (A : Type a) : Type a where
  field DepositsOf : A → Deposits
open HasDeposits ⦃...⦄ public

record HasRewards {a} (A : Type a) : Type a where
  field RewardsOf : A → Rewards
open HasRewards  ⦃...⦄ public

record HasDReps {a} (A : Type a) : Type a where
  field DRepsOf : A → DReps
open HasDReps    ⦃...⦄ public

instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])
\end{code}
\caption{Deposit types}
\label{fig:certs:deposit-types}
\end{figure*}

\begin{figure*}
\begin{AgdaMultiCode}
\begin{NoConway}
\begin{code}
record PoolParams : Type where
  field
    owners          : ℙ KeyHash
    cost            : Coin
    margin          : UnitInterval
    pledge          : Coin
    rewardAccount   : Credential
\end{code}
\end{NoConway}
\end{AgdaMultiCode}
\caption{Stake pool parameter definitions}
\end{figure*}

\begin{figure*}[h!]
\begin{AgdaMultiCode}
\begin{code}
data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Maybe Coin → DCert
  regpool     : KeyHash → PoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → Coin → DCert
  ccreghot    : Credential → Maybe Credential → DCert
\end{code}
\begin{code}[hide]
  -- The `reg` cert is deprecated in Conway, but it's still present in this era
  -- for backwards compatibility. This has been added to the spec to make
  -- conformance testing work properly. We don't talk about this certificate
  -- in the pdf because it has been deprecated and we want to discourage people
  -- from using it.
  reg         : Credential → Coin → DCert
\end{code}
\begin{NoConway}
\begin{code}
cwitness : DCert → Maybe Credential
cwitness (delegate c _ _ _)  = just c
cwitness (dereg c _)         = just c
cwitness (regpool kh _)      = just $ KeyHashObj kh
cwitness (retirepool kh _)   = just $ KeyHashObj kh
cwitness (regdrep c _ _)     = just c
cwitness (deregdrep c _)     = just c
cwitness (ccreghot c _)      = just c
\end{code}
\begin{code}[hide]
-- The implementation requires the `reg` cert to be witnessed only if the
-- deposit is set. There didn't use to be a field for the deposit, but that was
-- added in the Conway era to make it easier to determine, just by looking at
-- the transaction, how much deposit was paid for that certificate.
cwitness (reg _ zero)        = nothing
cwitness (reg c (suc _))     = just c
\end{code}
\end{NoConway}
\end{AgdaMultiCode}
\caption{Delegation definitions}
\end{figure*}

\begin{figure*}[htb]
\begin{AgdaMultiCode}
\begin{code}
record CertEnv : Type where
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : RwdAddr ⇀ Coin
    coldCreds : ℙ Credential
\end{code}
\begin{code}[hide]
record HasWdrls {a} (A : Type a) : Type a where
  field wdrlsOf : A → RwdAddr ⇀ Coin
open HasWdrls ⦃...⦄ public

instance
  HasWdrls-CertEnv : HasWdrls CertEnv
  HasWdrls-CertEnv .wdrlsOf = CertEnv.wdrls
\end{code}
\begin{code}

record DState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ᵈ
\end{code}
\begin{code}
  field
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ KeyHash
    rewards      : Credential ⇀ Coin
\end{code}
\begin{code}[hide]
record HasDState {a} (A : Type a) : Type a where
  field DStateOf : A → DState
open HasDState ⦃...⦄ public

record HasVDelegs {a} (A : Type a) : Type a where
  field voteDelegsOf : A → Credential ⇀ VDeleg
open HasVDelegs ⦃...⦄ public

instance
  HasVDelegs-DState : HasVDelegs DState
  HasVDelegs-DState .voteDelegsOf = DState.voteDelegs

  HasRewards-DState : HasRewards DState
  HasRewards-DState .RewardsOf = DState.rewards
\end{code}
\begin{NoConway}
\begin{code}

record PState : Type where
  field
    pools     : KeyHash ⇀ PoolParams
    retiring  : KeyHash ⇀ Epoch
\end{code}
\begin{code}[hide]
record HasPState {a} (A : Type a) : Type a where
  field PStateOf : A → PState
open HasPState ⦃...⦄ public
\end{code}
\end{NoConway}
\begin{code}

record GState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵛ
\end{code}
\begin{code}
  field
    dreps      : DReps
    ccHotKeys  : Credential ⇀ Maybe Credential
\end{code}
\begin{code}[hide]
record HasGState {a} (A : Type a) : Type a where
  field GStateOf : A → GState
open HasGState ⦃...⦄ public

instance
  HasDReps-GState : HasDReps GState
  HasDReps-GState .DRepsOf = GState.dreps
\end{code}
\begin{code}

record CertState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ᶜˢ
\end{code}
\begin{code}
  field
    dState : DState
    pState : PState
    gState : GState
\end{code}
\begin{code}[hide]
record HasCertState {a} (A : Type a) : Type a where
  field CertStateOf : A → CertState
open HasCertState ⦃...⦄ public

instance
  HasDState-CertState : HasDState CertState
  HasDState-CertState .DStateOf = CertState.dState

  HasPState-CertState : HasPState CertState
  HasPState-CertState .PStateOf = CertState.pState

  HasGState-CertState : HasGState CertState
  HasGState-CertState .GStateOf = CertState.gState

  HasRewards-CertState : HasRewards CertState
  HasRewards-CertState .RewardsOf = RewardsOf ∘ DStateOf 

  HasDReps-CertState : HasDReps CertState
  HasDReps-CertState .DRepsOf = DRepsOf ∘ GStateOf
\end{code}
\begin{code}

record DelegEnv : Type where
  field
    pparams       : PParams
    pools         : KeyHash ⇀ PoolParams
    delegatees    : ℙ Credential

GovCertEnv  = CertEnv
PoolEnv     = PParams
\end{code}
\end{AgdaMultiCode}
\caption{Types used for CERTS transition system}
\end{figure*}

\begin{code}[hide]
rewardsBalance : DState → Coin
rewardsBalance ds = ∑[ x ← DState.rewards ds ] x

instance
  HasCoin-CertState : HasCoin CertState
  HasCoin-CertState .getCoin = rewardsBalance ∘ CertState.dState
\end{code}

\begin{code}[hide]
instance
  unquoteDecl HasCast-CertEnv HasCast-DState HasCast-PState HasCast-GState HasCast-CertState HasCast-DelegEnv = derive-HasCast
    (   (quote CertEnv , HasCast-CertEnv)
    ∷   (quote DState , HasCast-DState)
    ∷   (quote PState , HasCast-PState)
    ∷   (quote GState , HasCast-GState)
    ∷   (quote CertState , HasCast-CertState)
    ∷ [ (quote DelegEnv , HasCast-DelegEnv) ])

private variable
  rwds rewards           : Rewards
  dReps                  : DReps
  sDelegs stakeDelegs    : Credential ⇀ KeyHash
  ccKeys ccHotKeys       : Credential ⇀ Maybe Credential
  vDelegs voteDelegs     : Credential ⇀ VDeleg
  pools                  : KeyHash ⇀ PoolParams
  retiring               : KeyHash ⇀ Epoch
  wdrls                  : RwdAddr ⇀ Coin

  an          : Anchor
  Γ           : CertEnv
  d           : Coin
  md          : Maybe Coin
  c           : Credential
  mc          : Maybe Credential
  delegatees  : ℙ Credential
  dCert       : DCert
  e           : Epoch
  vs          : List GovVote
  kh          : KeyHash
  mkh         : Maybe KeyHash
  poolParams  : PoolParams
  pp          : PParams
  mv          : Maybe VDeleg

  stᵈ stᵈ' : DState
  stᵍ stᵍ' : GState
  stᵖ stᵖ' : PState
  cc : ℙ Credential
\end{code}

\subsection{Changes Introduced in Conway Era}

\subsubsection{Delegation}

Registered credentials can now delegate to a DRep as well as to a
stake pool. This is achieved by giving the \delegate{} certificate two
optional fields, corresponding to a DRep and stake pool.

Stake can be delegated for voting and block production simultaneously,
since these are two separate features. In fact, preventing this could
weaken the security of the chain, since security relies on high
participation of honest stake holders.

\subsubsection{Removal of Pointer Addresses, Genesis Delegations and MIR Certificates}

Support for pointer addresses, genesis delegations and MIR
certificates is removed (see \hrefCIP{1694} and \textcite{cip1694}).
In \DState{}, this means that the four fields relating to those features
are no longer present, and \DelegEnv{} contains none of the fields it used
to in the Shelley era (see \textcite[\sectionname~9.2]{shelley-ledger-spec}).

Note that pointer addresses are still usable, only their staking
functionality has been retired. So all funds locked behind pointer
addresses are still accessible, they just don't count towards the
stake distribution anymore. Genesis delegations and MIR certificates
have been superceded by the new governance mechanisms, in particular
the \TreasuryWdrl{} governance action in case of the MIR certificates.

\subsubsection{Explicit Deposits}

Registration and deregistration of staking credentials are now
required to explicitly state the deposit that is being paid or
refunded. This deposit is used for checking correctness of transactions
with certificates. Including the deposit aligns better with other
design decisions such as having explicit transaction fees and helps
make this information visible to light clients and hardware wallets.

While not shown in the figures, the old certificates without explicit
deposits will still be supported for some time for backwards
compatibility.

\subsection{Governance Certificate Rules}

The rules for transition systems dealing with individual certificates
are defined in
\begin{NoConway}
\Cref{fig:sts:aux-cert-deleg,fig:sts:aux-cert-pool,fig:sts:aux-cert-gov}.
\end{NoConway}
\begin{Conway}
\Cref{fig:sts:aux-cert-deleg,fig:sts:aux-cert-gov}.
\end{Conway}
GOVCERT deals with the new certificates relating to DReps and the
constitutional committee.

\begin{itemize}
\item \GOVCERTregdrep{} registers (or re-registers) a DRep. In case of
  registration, a deposit needs to be paid. Either way, the activity
  period of the DRep is reset.
\item \GOVCERTderegdrep{} deregisters a DRep.
\item \GOVCERTccreghot{} registers a ``hot'' credential for constitutional
  committee members.\footnote{By ``hot'' and ``cold'' credentials we mean
    the following: a cold credential is used to register a hot credential,
    and then the hot credential is used for voting. The idea is that the
    access to the cold credential is kept in a secure location, while the
    hot credential is more conveniently accessed.  If the hot credential
    is compromised, it can be changed using the cold credential.}
  We check that the cold key did not previously
  resign from the committee. We allow this delegation for any cold
  credential that is either part of \EnactState{} or is is a proposal.
  This allows a newly elected member of the constitutional committee to
  immediately delegate their vote to a hot key and use it to vote. Since
  votes are counted after previous actions have been enacted, this allows
  constitutional committee members to act without a delay of one epoch.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,DELEG⦈_     : DelegEnv    → DState     → DCert       → DState     → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,POOL⦈_      : PoolEnv     → PState     → DCert       → PState     → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,GOVCERT⦈_   : GovCertEnv  → GState     → DCert       → GState     → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERT⦈_      : CertEnv     → CertState  → DCert       → CertState  → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERTBASE⦈_  : CertEnv     → CertState  → ⊤           → CertState  → Type
\end{code}
\begin{code}[hide]
module _ where  -- achieves uniform (but perhaps misleading) alignment of type signatures in fig
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERTS⦈_     : CertEnv     → CertState  → List DCert  → CertState  → Type
\end{code}
\begin{code}[hide]
  _⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ' {_⊢_⇀⟦_⟧ᵇ_ = _⊢_⇀⦇_,CERTBASE⦈_} {_⊢_⇀⦇_,CERT⦈_}
\end{code}
\end{AgdaMultiCode}
\caption{Types for the transition systems relating to certificates}
\label{fig:sts:certs-types}
\end{figure*}

\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,DELEG⦈_ where
\end{code}
\begin{code}
  DELEG-delegate :
    let Γ = ⟦ pp , pools , delegatees ⟧
    in
    ∙ (c ∉ dom rwds → d ≡ pp .keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
        fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      Γ ⊢  ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ delegate c mv mkh d ,DELEG⦈
           ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ dereg c md ,DELEG⦈
        ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧

  DELEG-reg :
    ∙ c ∉ dom rwds
    ∙ d ≡ pp .keyDeposit ⊎ d ≡ 0
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢
        ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ reg c d ,DELEG⦈
        ⟦ vDelegs , sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧
\end{code}
\end{AgdaSuppressSpace}
\caption{Auxiliary DELEG transition system}
\label{fig:sts:aux-cert-deleg}
\end{figure*}

\begin{NoConway}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,POOL⦈_ where
\end{code}
\begin{code}
  POOL-regpool :
    ∙ kh ∉ dom pools
      ────────────────────────────────
      pp ⊢  ⟦ pools , retiring ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈
            ⟦ ❴ kh , poolParams ❵ ∪ˡ pools , retiring ⟧

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ ⇀⦇ retirepool kh e ,POOL⦈ ⟦ pools , ❴ kh , e ❵ ∪ˡ retiring ⟧
\end{code}
\end{AgdaSuppressSpace}
\caption{Auxiliary POOL transition system}
\label{fig:sts:aux-cert-pool}
\end{figure*}
\end{NoConway}

\begin{figure*}[htb]
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,GOVCERT⦈_ where
\end{code}
\begin{code}
  GOVCERT-regdrep :
    let Γ = ⟦ e , pp , vs , wdrls , cc ⟧
    in
    ∙ (d ≡ pp .drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ regdrep c d an ,GOVCERT⦈
          ⟦ ❴ c , e + pp .drepActivity ❵ ∪ˡ dReps , ccKeys ⟧

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ deregdrep c d ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys ⟧
\end{code}
\end{AgdaSuppressSpace}
\caption{Auxiliary GOVCERT transition system}
\label{fig:sts:aux-cert-gov}
\end{figure*}

\Cref{fig:sts:certs} assembles the CERTS transition system by
bundling the previously defined pieces together into the CERT system,
and then taking the reflexive-transitive closure of CERT together with
CERTBASE as the base case. CERTBASE does the following:

\begin{itemize}
\item check the correctness of withdrawals and ensure that withdrawals
  only happen from credentials that have delegated their voting power;
\item set the rewards of the credentials that withdrew funds to zero;
\item and set the activity timer of all DReps that voted to
  \drepActivity{} epochs in the future.
\end{itemize}

\begin{figure*}[htbp]
\emph{CERT transitions}
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,CERT⦈_ where
\end{code}
\begin{code}
  CERT-deleg :
    ∙ ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧

  CERT-vdel :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
      Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧
\end{code}
\end{AgdaSuppressSpace}
\emph{CERTBASE transition}
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,CERTBASE⦈_ where
\end{code}
\begin{code}
  CERT-base :
    let refresh          = mapPartial getDRepVote (fromList vs)
        refreshedDReps   = mapValueRestricted (const (e + pp .drepActivity)) dReps refresh
        wdrlCreds        = mapˢ stake (dom wdrls)
        validVoteDelegs  = voteDelegs ∣^ (  mapˢ (credVoter DRep) (dom dReps)
                                        ∪ fromList (noConfidenceRep ∷ abstainRep ∷ []) )
    in
    ∙ filter isKeyHash wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢
        ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧
        , stᵖ
        , ⟦ dReps , ccHotKeys ⟧
        ⟧ ⇀⦇ _ ,CERTBASE⦈
        ⟦ ⟦ validVoteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards ⟧
        , stᵖ
        , ⟦ refreshedDReps , ccHotKeys ⟧
        ⟧
\end{code}
\end{AgdaSuppressSpace}
\caption{CERTS rules}
\label{fig:sts:certs}
\end{figure*}
