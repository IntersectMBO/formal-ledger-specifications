\section{Delegation}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.GovStructure

module Ledger.Deleg (gs : _) (open GovStructure gs) where

open import Ledger.GovernanceActions gs

instance
  _ : {A : Set} → HasSingleton A (ℙ A)
  _ = record { ❴_❵ = singleton }
  _ : {A B : Set} → HasSingleton (A × B) (A ⇀ B)
  _ = record { ❴_❵ = ❴_❵ᵐ }

\end{code}
\begin{figure*}[h!]
\begin{code}
record PoolParams : Set where
  field rewardAddr : Credential

data DCert : Set where
  delegate    : Credential → Maybe VDeleg → Maybe Credential → Coin → DCert
  regpool     : Credential → PoolParams → DCert
  retirepool  : Credential → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → DCert
  ccreghot    : Credential → Maybe Credential → DCert

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
    rewards      : RwdAddr ⇀ Coin

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
  rwds : RwdAddr ⇀ Coin
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

module _ (open PParams) where
\end{code}
\begin{code}
  cwitness : DCert → Credential
  cwitness (delegate c _ _ _)  = c
  cwitness (regpool c _)       = c
  cwitness (retirepool c _)    = c
  cwitness (regdrep c _ _)     = c
  cwitness (deregdrep c)       = c
  cwitness (ccreghot c _)      = c

  requiredDeposit : {A : Set} → PParams → Maybe A → Coin
  requiredDeposit pp (just _)  = pp .poolDeposit
  requiredDeposit pp nothing   = 0

  getDRepVote : GovVote → Maybe Credential
  getDRepVote record { role = DRep ; credential = credential }  = just credential
  getDRepVote _                                                 = nothing
\end{code}
\caption{Functions used for CERTS transition system}
\end{figure*}

\begin{figure*}[h]
\begin{code}
data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Set where
  DELEG-delegate :
    d ≡ requiredDeposit pp mv ⊔ requiredDeposit pp mc
    → mc ∈ mapˢ just (dom pools)
    ────────────────────────────────
    ⟦ pp , pools ⟧ᵈᵉ ⊢  ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ delegate c mv mc d ,DELEG⦈
                        ⟦ insertIfJust c mv vDelegs , insertIfJust c mc sDelegs , rwds ⟧ᵈ

data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Set where
  POOL-regpool : let open PParams pp ; open PoolParams poolParams in
    c ∉ dom pools
    ────────────────────────────────
    pp ⊢  ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool c poolParams ,POOL⦈
          ⟦ ❴ c , poolParams ❵ ∪ˡ pools , retiring ⟧ᵖ

  POOL-retirepool :
    pp ⊢  ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool c e ,POOL⦈
          ⟦ pools , ❴ c , e ❵ᵐ ∪ˡ retiring ⟧ᵖ

data _⊢_⇀⦇_,GOVCERT⦈_ : GovCertEnv → GState → DCert → GState → Set where
  GOVCERT-regdrep : let open PParams pp in
    (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
    ────────────────────────────────
    ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢  ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d an ,GOVCERT⦈
                                ⟦ ❴ c , e + drepActivity ❵ᵐ ∪ˡ dReps , ccKeys ⟧ᵛ

  GOVCERT-deregdrep :
    c ∈ dom dReps
    ────────────────────────────────
    Γ ⊢  ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ deregdrep c ,GOVCERT⦈
         ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧ᵛ

  GOVCERT-ccreghot :
    (c , nothing) ∉ ccKeys
    ────────────────────────────────
    Γ ⊢  ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ ccreghot c mc ,GOVCERT⦈
         ⟦ dReps , singletonᵐ c mc ∪ˡ ccKeys ⟧ᵛ
\end{code}
\caption{Auxiliary DELEG and POOL rules}
\end{figure*}

\begin{figure*}[h]
\begin{code}
data _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Set where
  CERT-deleg :
    ⟦ pp , PState.pools stᵖ ⟧ᵈᵉ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
    ────────────────────────────────
    ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ

  CERT-pool :
    pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
    ────────────────────────────────
    ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ

  CERT-vdel :
    Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
    ────────────────────────────────
    Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ

data _⊢_⇀⦇_,CERTBASE⦈_ : CertEnv → CertState → ⊤ → CertState → Set where
  CERT-base :
    let open PParams pp; open CertState st; open GState gState; open DState dState
        refresh = mapPartial getDRepVote (fromList vs)
    in mapˢ RwdAddr.stake (dom wdrls) ⊆ dom voteDelegs
    → wdrls ˢ ⊆ rewards ˢ
    ────────────────────────────────
    ⟦ e , pp , vs , wdrls ⟧ᶜ ⊢ st ⇀⦇ _ ,CERTBASE⦈ record st
      { gState = record gState
        { dreps = mapValueRestricted (const (e + drepActivity)) dreps refresh }
      ; dState = record dState { rewards = constMap (dom wdrls) 0 ∪ˡ rewards } }

_⊢_⇀⦇_,CERTS⦈_ : CertEnv → CertState → List DCert → CertState → Set
_⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ _⊢_⇀⦇_,CERTBASE⦈_ _⊢_⇀⦇_,CERT⦈_
\end{code}
\caption{CERTS rules}
\end{figure*}
