\section{Certificates}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude renaming (filterˢ to filter)
open import Ledger.Types.GovStructure

module Ledger.Certs (gs : _) (open GovStructure gs) where

open import Tactic.Derive.DecEq

open import Ledger.GovernanceActions gs
open RwdAddr
\end{code}

\begin{figure*}[h]
\emph{Derived types}
\begin{code}
data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

Deposits = DepositPurpose ⇀ Coin
\end{code}
\begin{code}[hide]
instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])
\end{code}
\caption{Deposit types}
\end{figure*}

\begin{figure*}[h!]
\begin{AgdaMultiCode}
\begin{NoConway}
\begin{code}
record PoolParams : Type where
\end{code}
\begin{code}[hide]
  field
\end{code}
\begin{code}
    rewardAddr : Credential
\end{code}
\end{NoConway}
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
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_,_⟧ᶜ
  field
\end{code}
\begin{code}
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : RwdAddr ⇀ Coin
    coldCreds : ℙ Credential

record DState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ᵈ
  field
\end{code}
\begin{code}
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ KeyHash
    rewards      : Credential ⇀ Coin
\end{code}
\begin{NoConway}
\begin{code}

record PState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵖ
  field
\end{code}
\begin{code}
    pools     : KeyHash ⇀ PoolParams
    retiring  : KeyHash ⇀ Epoch
\end{code}
\end{NoConway}
\begin{code}

record GState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵛ
  field
\end{code}
\begin{code}
    dreps      : Credential ⇀ Epoch
    ccHotKeys  : Credential ⇀ Maybe Credential

record CertState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ᶜˢ
  field
\end{code}
\begin{code}
    dState : DState
    pState : PState
    gState : GState

record DelegEnv : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ᵈᵉ
  field
\end{code}
\begin{code}
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
private variable
  rwds rewards           : Credential ⇀ Coin
  dReps                  : Credential ⇀ Epoch
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

\subsection{Removal of Pointer Addresses, Genesis Delegations and MIR Certificates}

In the Conway era, support for pointer addresses, genesis delegations
and MIR certificates is removed. In \DState, this means that the four
fields relating to those features are no longer present, and \DelegEnv
contains none of the fields it used to in the Shelley
era~(\cite[Sec.~9.2]{cardano_shelley_spec}).

Note that pointer addresses are still usable, only their staking
functionality has been retired. So all funds locked behind pointer
addresses are still accessible, they just don't count towards the
stake distribution anymore. Genesis delegations and MIR certificates
have been superceded by the new governance mechanisms, in particular
the \TreasuryWdrl governance action in case of the MIR certificates.

\subsection{Explicit Deposits}

Registration and deregistration of staking credentials are now
required to explicitly state the deposit that is being paid or
refunded. This aligns them better with other design decisions such as
having explicit transaction fees and helps make this information
visible to light clients and hardware wallets. While not shown in the
figures, the old certificates without explicit deposits will still be
supported for some time for backwards compatibility.

\subsection{Delegation}

Registered credentials can now delegate to a DRep as well as to a
stake pool. This is achieved by giving the \delegate certificate two
optional fields, corresponding to a DRep and stake pool. Stake can be
delegated for voting and block production simultaneously, since these
are two separate features. In fact, preventing this could weaken the
security of the chain, since security relies on high participation of
honest stake holders.

\subsection{Governance Certificate Rules}

The rules for transition systems dealing with individual certificates
are defined in
\begin{NoConway}
Figures~\ref{fig:sts:aux-cert-deleg}, \ref{fig:sts:aux-cert-pool}
\end{NoConway}
\begin{Conway}
Figures~\ref{fig:sts:aux-cert-deleg}
\end{Conway}
\ and~\ref{fig:sts:aux-cert-gov}. GOVCERT
deals with the new certificates relating to DReps and the
constitutional committee.

\begin{itemize}
\item \GOVCERTregdrep registers (or re-registers) a DRep. In case of
  registation, a deposit needs to be paid. Either way, the activity
  period of the DRep is reset.
\item \GOVCERTderegdrep deregisters a DRep.
\item \GOVCERTccreghot registers a ``hot'' credential for constitutional
  committee members.\footnote{By ``hot'' and ``cold'' credentials we mean
    the following: a cold credential is used to register a hot credential,
    and then the hot credential is used for voting. The idea is that the
    access to the cold credential is kept in a secure location, while the
    hot credential is more conveniently accessed.  If the hot credential
    is compromised, it can be changed using the cold credential.}
  We check that the cold key did not previously
  resign from the committee. We allow this delegation for any cold
  credential that is either part of \EnactState or is is a proposal.
  This allows a newly elected member of the constitutional committee to
  immediately delegate their vote to a hot key and use it to vote. Since
  votes are counted after previous actions have been enacted, this allows
  constitutional committee members to act without a delay of one epoch.
\end{itemize}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}[hide]
data
\end{code}
\begin{code}
    _⊢_⇀⦇_,DELEG⦈_     : DelegEnv → DState → DCert → DState → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
    _⊢_⇀⦇_,POOL⦈_      : PoolEnv → PState → DCert → PState → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
    _⊢_⇀⦇_,GOVCERT⦈_   : GovCertEnv → GState → DCert → GState → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
    _⊢_⇀⦇_,CERT⦈_      : CertEnv → CertState → DCert → CertState → Type
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
    _⊢_⇀⦇_,CERTBASE⦈_  : CertEnv → CertState → ⊤ → CertState → Type

_⊢_⇀⦇_,CERTS⦈_       : CertEnv → CertState → List DCert → CertState → Type
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
  DELEG-delegate : let open PParams pp in
    ∙ (c ∉ dom rwds → d ≡ keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
        fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ᵈᵉ ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ
        ⇀⦇ delegate c mv mkh d ,DELEG⦈
        ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧ᵈ

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ᵈᵉ ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ dereg c md ,DELEG⦈
        ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ
\end{code}
\begin{code}[hide]
  DELEG-reg : let open PParams pp in
    ∙ c ∉ dom rwds
    ∙ d ≡ keyDeposit ⊎ d ≡ 0
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ᵈᵉ ⊢
        ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ reg c d ,DELEG⦈
        ⟦ vDelegs , sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧ᵈ
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
      pp ⊢  ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool kh poolParams ,POOL⦈
            ⟦ ❴ kh , poolParams ❵ ∪ˡ pools , retiring ⟧ᵖ

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool kh e ,POOL⦈ ⟦ pools , ❴ kh , e ❵ ∪ˡ retiring ⟧ᵖ
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
  GOVCERT-regdrep : ∀ {pp} → let open PParams pp in
    ∙ (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ᶜ ⊢  ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d an ,GOVCERT⦈
                                  ⟦ ❴ c , e + drepActivity ❵ ∪ˡ dReps , ccKeys ⟧ᵛ

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ᶜ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ deregdrep c d ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧ᵛ

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ᶜ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys ⟧ᵛ
\end{code}
\end{AgdaSuppressSpace}
\caption{Auxiliary GOVCERT transition system}
\label{fig:sts:aux-cert-gov}
\end{figure*}

Figure~\ref{fig:sts:certs} assembles the CERTS transition system by
bundling the previously defined pieces together into the CERT system,
and then taking the reflexive-transitive closure of CERT together with
CERTBASE as the base case. CERTBASE does the following:

\begin{itemize}
\item check the correctness of withdrawals and ensure that withdrawals
  only happen from credentials that have delegated their voting power;
\item set the rewards of the credentials that withdrew funds to zero;
\item and set the activity timer of all DReps that voted to \drepActivity
  epochs in the future.
\end{itemize}

\begin{figure*}[htbp]
\emph{CERT transitions}
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,CERT⦈_ where
\end{code}
\begin{code}
  CERT-deleg :
    ∙ ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ᵈᵉ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ

  CERT-vdel :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
      Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ
\end{code}
\end{AgdaSuppressSpace}
\emph{CERTBASE transition}
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,CERTBASE⦈_ where
\end{code}
\begin{code}
  CERT-base : let
    open PParams pp
    refresh          = mapPartial getDRepVote (fromList vs)
    refreshedDReps   = mapValueRestricted (const (e + drepActivity)) dReps refresh
    wdrlCreds        = mapˢ stake (dom wdrls)
    validVoteDelegs  = voteDelegs ∣^ (  mapˢ (credVoter DRep) (dom dReps)
                                        ∪ fromList (noConfidenceRep ∷ abstainRep ∷ []) )
    in
    ∙ filter isKeyHash wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ᶜ ⊢
        ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ
        , stᵖ
        , ⟦ dReps , ccHotKeys ⟧ᵛ
        ⟧ᶜˢ ⇀⦇ _ ,CERTBASE⦈
        ⟦ ⟦ validVoteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards ⟧ᵈ
        , stᵖ
        , ⟦ refreshedDReps , ccHotKeys ⟧ᵛ
        ⟧ᶜˢ
\end{code}
\end{AgdaSuppressSpace}
\caption{CERTS rules}
\label{fig:sts:certs}
\end{figure*}
