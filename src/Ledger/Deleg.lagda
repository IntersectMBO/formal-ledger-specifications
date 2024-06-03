\section{Delegation}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.Deleg (gs : _) (open GovStructure gs) where

open import Ledger.GovernanceActions gs
\end{code}
\begin{figure*}[h!]
\begin{code}
record PoolParams : Set where
  field rewardAddr : Credential

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
\caption{Delegation definitions}
\end{figure*}

\begin{figure*}[h!]
\begin{code}
record CertEnv : Set where
  constructor ⟦_,_,_,_⟧ᶜ
  field epoch  : Epoch
        pp     : PParams
        votes  : List GovVote
        wdrls  : RwdAddr ⇀ Coin

record DState : Set where
  constructor ⟦_,_,_⟧ᵈ
  field
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ Credential
    rewards      : Credential ⇀ Coin

record PState : Set where
  constructor ⟦_,_⟧ᵖ
  field pools     : Credential ⇀ PoolParams
        retiring  : Credential ⇀ Epoch

record GState : Set where
  constructor ⟦_,_⟧ᵛ
  field dreps      : Credential ⇀ Epoch
        ccHotKeys  : Credential ⇀ Maybe Credential

record CertState : Set where
  constructor ⟦_,_,_⟧ᶜˢ
  field dState : DState
        pState : PState
        gState : GState

record DelegEnv : Set where
  constructor ⟦_,_⟧ᵈᵉ
  field pparams  : PParams
        pools    : Credential ⇀ PoolParams

GovCertEnv  = CertEnv
PoolEnv     = PParams
\end{code}
\caption{Types used for CERTS transition system}
\end{figure*}

\begin{figure*}[h]
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
\begin{code}
getDRepVote : GovVote → Maybe Credential
getDRepVote record { voter = (DRep , credential) }  = just credential
getDRepVote _                                       = nothing
\end{code}
\caption{Functions used for CERTS transition system}
\end{figure*}

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
  _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\begin{code}

  DELEG-delegate : let open PParams pp in
    ∙ (c ∉ dom rwds → d ≡ keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mc ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
--@BEGIN@vecline
--@BEGIN@vec
      ⟦ pp , pools ⟧ᵈᵉ
--@END@vec
      ⊢
--@END@vecline
--@BEGIN@vecline
--@BEGIN@vec
        ⟦ vDelegs , sDelegs , rwds ⟧ᵈ
--@END@vec
        ⇀⦇ delegate c mv mc d ,DELEG⦈
--@END@vecline
--@BEGIN@vecline
--@BEGIN@vec
        ⟦ insertIfJust c mv vDelegs , insertIfJust c mc sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧ᵈ
--@END@vec
--@END@vecline

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
      ────────────────────────────────
--@BEGIN@vecline
--@BEGIN@vec
      ⟦ pp , pools ⟧ᵈᵉ
--@END@vec
      ⊢
--@BEGIN@vec
      ⟦ vDelegs , sDelegs , rwds ⟧ᵈ
--@END@vec
      ⇀⦇ dereg c ,DELEG⦈
--@END@vecline
--@BEGIN@vecline
--@BEGIN@vec
                          ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ
--@END@vec
--@END@vecline

\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\begin{code}

  POOL-regpool :
    ∙ c ∉ dom pools
      ────────────────────────────────
--@BEGIN@vecline
      pp ⊢
--@BEGIN@vec
      ⟦ pools , retiring ⟧ᵖ
--@END@vec
      ⇀⦇ regpool c poolParams ,POOL⦈
--@END@vecline
--@BEGIN@vecline
--@BEGIN@vec
            ⟦ ❴ c , poolParams ❵ ∪ˡ pools , retiring ⟧ᵖ
--@END@vec
--@END@vecline

  POOL-retirepool :
    ────────────────────────────────
--@BEGIN@vecline
      pp ⊢
--@BEGIN@vec
      ⟦ pools , retiring ⟧ᵖ
--@END@vec
      ⇀⦇ retirepool c e ,POOL⦈
--@BEGIN@vec
      ⟦ pools , ❴ c , e ❵ ∪ˡ retiring ⟧ᵖ
--@END@vec
--@END@vecline


\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,GOVCERT⦈_ : GovCertEnv → GState → DCert → GState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\begin{code}
  GOVCERT-regdrep : let open PParams pp in
    ∙ (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
--@BEGIN@vecline
--@BEGIN@vec
      ⟦ e , pp , vs , wdrls ⟧ᶜ
--@END@vec
      ⊢
--@BEGIN@vec
      ⟦ dReps , ccKeys ⟧ᵛ
--@END@vec
      ⇀⦇ regdrep c d an ,GOVCERT⦈
--@BEGIN@vec
      ⟦ ❴ c , e + drepActivity ❵ ∪ˡ dReps , ccKeys ⟧ᵛ
--@END@vec
--@END@vecline

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
--@BEGIN@vecline
      Γ ⊢
--@BEGIN@vec
      ⟦ dReps , ccKeys ⟧ᵛ
--@END@vec
      ⇀⦇ deregdrep c ,GOVCERT⦈
--@BEGIN@vec
      ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧ᵛ
--@END@vec
--@END@vecline

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
      ────────────────────────────────
--@BEGIN@vecline
      Γ ⊢
--@BEGIN@vec
      ⟦ dReps , ccKeys ⟧ᵛ
--@END@vec
      ⇀⦇ ccreghot c mc ,GOVCERT⦈
--@BEGIN@vec
      ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys ⟧ᵛ
--@END@vec
--@END@vecline
\end{code}
\end{AgdaMultiCode}
\caption{Auxiliary DELEG, POOL and GOVCERT transition systems}
\label{fig:sts:aux-cert}
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
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\begin{code}

  CERT-deleg :
--@BEGIN@vecline
    ∙
--@BEGIN@vec
    ⟦ pp , PState.pools stᵖ ⟧ᵈᵉ
--@END@vec
    ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
--@END@vecline
      ────────────────────────────────
--@BEGIN@vecline
--@BEGIN@vec
      ⟦ e , pp , vs , wdrls ⟧ᶜ
--@END@vec
      ⊢
--@BEGIN@vec
      ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
--@END@vec
      ⇀⦇ dCert ,CERT⦈
--@BEGIN@vec
      ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ
--@END@vec
--@END@vecline

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
--@BEGIN@vecline
--@BEGIN@vec
      ⟦ e , pp , vs , wdrls ⟧ᶜ
--@END@vec
      ⊢
--@BEGIN@vec
      ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
--@END@vec
      ⇀⦇ dCert ,CERT⦈
--@BEGIN@vec
      ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ
--@END@vec
--@END@vecline

  CERT-vdel :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
--@BEGIN@vecline
      Γ ⊢
--@BEGIN@vec
      ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
--@END@vec
      ⇀⦇ dCert ,CERT⦈
--@BEGIN@vec
      ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ
--@END@vec
--@END@vecline


\end{code}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,CERTBASE⦈_ : CertEnv → CertState → ⊤ → CertState → Set
\end{code}
\begin{code}[hide]
  where
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
--@BEGIN@vecline
--@BEGIN@vec
      ⟦ e , pp , vs , wdrls ⟧ᶜ
--@END@vec
      ⊢
--@BEGIN@vec
      ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
--@END@vec
      ⇀⦇ _ ,CERTBASE⦈
--@END@vecline
--@BEGIN@vecline
--@BEGIN@vec
        ⟦ ⟦ voteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards ⟧ᵈ
        , stᵖ
        , ⟦ refreshedDReps , ccHotKeys ⟧ᵛ ⟧ᶜˢ
--@END@vec
--@END@vecline

_⊢_⇀⦇_,CERTS⦈_ : CertEnv → CertState → List DCert → CertState → Set
_⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ _⊢_⇀⦇_,CERTBASE⦈_ _⊢_⇀⦇_,CERT⦈_
\end{code}
\caption{CERTS rules}
\label{fig:sts:certs}
\end{figure*}
