\section{Certificates}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.Certs (gs : _) (open GovStructure gs) where

open import Ledger.GovernanceActions gs
\end{code}
\begin{figure*}[h!]
\begin{AgdaAlign}
\begin{code}
record PoolParams : Set where
\end{code}
\begin{code}[hide]
  field
\end{code}
\begin{code}
    rewardAddr : Credential

data DCert : Set where
  delegate    : Credential → Maybe VDeleg → Maybe Credential → Coin → DCert
  dereg       : Credential → DCert
  regpool     : Credential → PoolParams → DCert
  retirepool  : Credential → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → DCert
  ccreghot    : Credential → Maybe Credential → DCert

cwitness : DCert → Credential
cwitness (delegate c _ _ _)  = c
cwitness (dereg c)           = c
cwitness (regpool c _)       = c
cwitness (retirepool c _)    = c
cwitness (regdrep c _ _)     = c
cwitness (deregdrep c)       = c
cwitness (ccreghot c _)      = c
\end{code}
\end{AgdaAlign}
\caption{Delegation definitions}
\end{figure*}

\begin{figure*}[h!]
\begin{AgdaAlign}
\begin{AgdaSuppressSpace}
\begin{code}
record CertEnv : Set where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_⟧ᶜ
  field
\end{code}
\begin{code}
    epoch  : Epoch
    pp     : PParams
    votes  : List GovVote
    wdrls  : RwdAddr ⇀ Coin

record DState : Set where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ᵈ
  field
\end{code}
\begin{code}
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ Credential
    rewards      : Credential ⇀ Coin

record PState : Set where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵖ
  field
\end{code}
\begin{code}
    pools     : Credential ⇀ PoolParams
    retiring  : Credential ⇀ Epoch

record GState : Set where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵛ
  field
\end{code}
\begin{code}
    dreps      : Credential ⇀ Epoch
    ccHotKeys  : Credential ⇀ Maybe Credential

record CertState : Set where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ᶜˢ
  field
\end{code}
\begin{code}
    dState : DState
    pState : PState
    gState : GState

record DelegEnv : Set where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵈᵉ
  field
\end{code}
\begin{code}
    pparams  : PParams
    pools    : Credential ⇀ PoolParams

GovCertEnv  = CertEnv
PoolEnv     = PParams
\end{code}
\end{AgdaSuppressSpace}
\end{AgdaAlign}
\caption{Types used for CERTS transition system}
\end{figure*}


\begin{code}[hide]
private variable
  an : Anchor
  dReps dReps' : Credential ⇀ Epoch
  pools : Credential ⇀ PoolParams
  vDelegs : Credential ⇀ VDeleg
  sDelegs : Credential ⇀ Credential
  retiring retiring' : Credential ⇀ Epoch
  ccKeys : Credential ⇀ Maybe Credential
  rwds : Credential ⇀ Coin
  dCert : DCert
  c c' : Credential
  mc : Maybe Credential
  mv : Maybe VDeleg
  d : Coin
  e : Epoch
  kh kh' : KeyHash
  mkh : Maybe KeyHash
  st st' : CertState
  stᵍ stᵍ' : GState
  stᵈ stᵈ' : DState
  stᵖ stᵖ' : PState
  Γ : CertEnv
  pp : PParams
  vs : List GovVote
  poolParams : PoolParams
  wdrls  : RwdAddr ⇀ Coin
\end{code}

\subsection{Removal of pointer addresses, genesis delegations and MIR certificates}

In the Conway era, support for pointer addresses, genesis delegations
and MIR certificates is removed. In \DState, this means that the four
fields relating to those features are no longer present, and \DelegEnv
contains none of the fields it used to in the Shelley era.

Note that pointer addresses are still usable, only their staking
functionality has been retired. So all funds locked behind pointer
addresses are still accessible, they just don't count towards the
stake distribution anymore. Genesis delegations and MIR certificates
have been superceded by the new governance mechanisms, in particular
the \TreasuryWdrl governance action in case of the MIR certificates.

\subsection{Governance certificate rules}

The rules for transition systems dealing with individual certificates
are defined in Figure~\ref{fig:sts:aux-cert}. GOVCERT deals with the
new certificates relating to DReps and the constitutional committee.

\begin{itemize}
\item \GOVCERTregdrep registers (or re-registers) a DRep. In case of
  registation, a deposit needs to be paid. Either way, the activity
  period of the DRep is reset.
\item \GOVCERTderegdrep deregisters a DRep.
\item \GOVCERTccreghot registers a hot credential for constitutional
  committee members. We check that the cold key did not previously
  resign from the committee. Note that we intentionally do not check
  if the cold key is actually part of the committee; if it isn't, then
  the corresponding hot key does not carry any voting power. By allowing
  this, a newly elected member of the constitutional committee can
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
  _⊢_⇀⦇_,DELEG⦈_     : DelegEnv → DState → DCert → DState → Set
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,POOL⦈_      : PoolEnv → PState → DCert → PState → Set
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,GOVCERT⦈_   : GovCertEnv → GState → DCert → GState → Set
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERT⦈_      : CertEnv → CertState → DCert → CertState → Set
\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERTBASE⦈_  : CertEnv → CertState → ⊤ → CertState → Set
\end{code}
\begin{code}[hide]
module _ where
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERTS⦈_     : CertEnv → CertState → List DCert → CertState → Set
  _⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ _⊢_⇀⦇_,CERTBASE⦈_ _⊢_⇀⦇_,CERT⦈_
\end{code}
\end{AgdaMultiCode}
\caption{Types for the transition systems relating to certificates}
\label{fig:sts:certs-types}
\end{figure*}


\begin{figure*}[h]
\begin{code}[hide]
data _⊢_⇀⦇_,DELEG⦈_ where
\end{code}
\begin{code}
  DELEG-delegate : let open PParams pp in
    ∙ (c ∉ dom rwds → d ≡ keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mc ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools ⟧ᵈᵉ ⊢
        ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ delegate c mv mc d ,DELEG⦈
        ⟦ insertIfJust c mv vDelegs , insertIfJust c mc sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧ᵈ

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
      ────────────────────────────────
      ⟦ pp , pools ⟧ᵈᵉ ⊢  ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ dereg c ,DELEG⦈
                          ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ
\end{code}
\caption{Auxiliary DELEG transition system}
\label{fig:sts:aux-cert-deleg}
\end{figure*}


\begin{figure*}[h]
\begin{code}[hide]
data _⊢_⇀⦇_,POOL⦈_ where
\end{code}
\begin{code}
  POOL-regpool :
    ∙ c ∉ dom pools
      ────────────────────────────────
      pp ⊢  ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool c poolParams ,POOL⦈
            ⟦ ❴ c , poolParams ❵ ∪ˡ pools , retiring ⟧ᵖ

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool c e ,POOL⦈ ⟦ pools , ❴ c , e ❵ ∪ˡ retiring ⟧ᵖ
\end{code}
\caption{Auxiliary POOL transition system}
\label{fig:sts:aux-cert-pool}
\end{figure*}


\begin{figure*}[h]
\begin{code}[hide]
data _⊢_⇀⦇_,GOVCERT⦈_ where
\end{code}
\begin{code}
  GOVCERT-regdrep : let open PParams pp in
    ∙ (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢  ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d an ,GOVCERT⦈
                                  ⟦ ❴ c , e + drepActivity ❵ ∪ˡ dReps , ccKeys ⟧ᵛ

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ deregdrep c ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧ᵛ

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys ⟧ᵛ
\end{code}
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

\begin{figure*}[h]
\emph{CERT transitions}
\begin{code}[hide]
data _⊢_⇀⦇_,CERT⦈_ where
\end{code}
\begin{code}
  CERT-deleg :
    ∙ ⟦ pp , PState.pools stᵖ ⟧ᵈᵉ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ

  CERT-vdel :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
      Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ
\end{code}
\emph{CERTBASE transition}
\begin{code}[hide]
data _⊢_⇀⦇_,CERTBASE⦈_ where
\end{code}
\begin{code}
  CERT-base :
    let open PParams pp; open GState stᵍ; open DState stᵈ
        refresh         = mapPartial getDRepVote (fromList vs)
        refreshedDReps  = mapValueRestricted (const (e + drepActivity)) dreps refresh
        wdrlCreds       = mapˢ RwdAddr.stake (dom wdrls)
    in
    ∙ wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ _ ,CERTBASE⦈
        ⟦ ⟦ voteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards ⟧ᵈ
        , stᵖ
        , ⟦ refreshedDReps , ccHotKeys ⟧ᵛ ⟧ᶜˢ
\end{code}
\caption{CERTS rules}
\label{fig:sts:certs}
\end{figure*}
