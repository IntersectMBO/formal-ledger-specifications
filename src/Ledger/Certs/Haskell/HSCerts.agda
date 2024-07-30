{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.Certs.Haskell.HSCerts (gs : _) (open GovStructure gs) where

open import Tactic.Derive.DecEq

open import Ledger.GovernanceActions gs
open RwdAddr

data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

Deposits = DepositPurpose ⇀ Coin

instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])

record PoolParams : Type where
  field
    rewardAddr : Credential

data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Coin → DCert
  regpool     : KeyHash → PoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → DCert
  ccreghot    : Credential → Maybe Credential → DCert

cwitness : DCert → Credential
cwitness (delegate c _ _ _)  = c
cwitness (dereg c _)         = c
cwitness (regpool kh _)      = KeyHashObj kh
cwitness (retirepool kh _)   = KeyHashObj kh
cwitness (regdrep c _ _)     = c
cwitness (deregdrep c)       = c
cwitness (ccreghot c _)      = c

record CertEnv : Type where
  constructor ⟦_,_,_,_,_⟧ᶜ
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : RwdAddr ⇀ Coin
    deposits  : Deposits

record DState : Type where
  constructor ⟦_,_,_⟧ᵈ
  field
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ KeyHash
    rewards      : Credential ⇀ Coin

record PState : Type where
  constructor ⟦_,_⟧ᵖ
  field
    pools     : KeyHash ⇀ PoolParams
    retiring  : KeyHash ⇀ Epoch

record GState : Type where
  constructor ⟦_,_⟧ᵛ
  field
    dreps      : Credential ⇀ Epoch
    ccHotKeys  : Credential ⇀ Maybe Credential

record CertState : Type where
  constructor ⟦_,_,_⟧ᶜˢ
  field
    dState : DState
    pState : PState
    gState : GState

record DelegEnv : Type where
  constructor ⟦_,_,_⟧ᵈᵉ
  field
    pparams  : PParams
    pools    : KeyHash ⇀ PoolParams
    deposits : Deposits

GovCertEnv  = CertEnv
PoolEnv     = PParams

private variable
  an : Anchor
  dReps dReps' : Credential ⇀ Epoch
  pools : KeyHash ⇀ PoolParams
  vDelegs : Credential ⇀ VDeleg
  sDelegs : Credential ⇀ KeyHash
  retiring : KeyHash ⇀ Epoch
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
  dreps : Credential ⇀ Epoch
  ccHotKeys : Credential ⇀ Maybe Credential
  voteDelegs : Credential ⇀ VDeleg
  stakeDelegs : Credential ⇀ KeyHash
  rewards : Credential ⇀ Coin
  deps : Deposits

data
  _⊢_⇀⦇_,DELEG⦈_     : DelegEnv → DState → DCert → DState → Type
data
  _⊢_⇀⦇_,POOL⦈_      : PoolEnv → PState → DCert → PState → Type
data
  _⊢_⇀⦇_,GOVCERT⦈_   : GovCertEnv → GState → DCert → GState → Type
data
  _⊢_⇀⦇_,CERT⦈_      : CertEnv → CertState → DCert → CertState → Type
data
  _⊢_⇀⦇_,CERTBASE⦈_  : CertEnv → CertState → ⊤ → CertState → Type
module _ where
  _⊢_⇀⦇_,CERTS⦈_     : CertEnv → CertState → List DCert → CertState → Type
  _⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ _⊢_⇀⦇_,CERTBASE⦈_ _⊢_⇀⦇_,CERT⦈_

data _⊢_⇀⦇_,DELEG⦈_ where
  DELEG-delegate : let open PParams pp in
    ∙ (c ∉ dom rwds → d ≡ keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools , deps ⟧ᵈᵉ ⊢
        ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ delegate c mv mkh d ,DELEG⦈
        ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧ᵈ

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
    ∙ (CredentialDeposit c , d) ∈ deps
      ────────────────────────────────
      ⟦ pp , pools , deps ⟧ᵈᵉ ⊢  ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ dereg c d ,DELEG⦈
                          ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ

data _⊢_⇀⦇_,POOL⦈_ where
  POOL-regpool :
    ∙ kh ∉ dom pools
      ────────────────────────────────
      pp ⊢  ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool kh poolParams ,POOL⦈
            ⟦ ❴ kh , poolParams ❵ ∪ˡ pools , retiring ⟧ᵖ

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool kh e ,POOL⦈ ⟦ pools , ❴ kh , e ❵ ∪ˡ retiring ⟧ᵖ

data _⊢_⇀⦇_,GOVCERT⦈_ where
  GOVCERT-regdrep : ∀ {pp} → let open PParams pp in
    ∙ (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , deps ⟧ᶜ ⊢  ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d an ,GOVCERT⦈
                                  ⟦ ❴ c , e + drepActivity ❵ ∪ˡ dReps , ccKeys ⟧ᵛ

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ deregdrep c ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧ᵛ

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys ⟧ᵛ

data _⊢_⇀⦇_,CERT⦈_ where
  CERT-deleg :
    ∙ ⟦ pp , PState.pools stᵖ , deps ⟧ᵈᵉ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , deps ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , deps ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ

  CERT-vdel :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
      Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ

data _⊢_⇀⦇_,CERTBASE⦈_ where
  CERT-base :
    let open PParams pp
        refresh         = mapPartial getDRepVote (fromList vs)
        refreshedDReps  = mapValueRestricted (const (e + drepActivity)) dreps refresh
        wdrlCreds       = mapˢ stake (dom wdrls)
    in
    ∙ wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , deps ⟧ᶜ ⊢ ⟦
        ⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ , stᵖ , ⟦ dreps , ccHotKeys ⟧ᵛ ⟧ᶜˢ ⇀⦇ _ ,CERTBASE⦈ ⟦
        ⟦ voteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards ⟧ᵈ
        , stᵖ
        , ⟦ refreshedDReps , ccHotKeys ⟧ᵛ ⟧ᶜˢ
