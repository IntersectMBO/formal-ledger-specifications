{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.Certs.Haskell
  (gs : _) (open GovStructure gs)
  where

open import Ledger.Certs gs hiding ( CertEnv
                                   ; DState
                                   ; GState
                                   ; CertState
                                   ; GovCertEnv
                                   ; _⊢_⇀⦇_,DELEG⦈_
                                   ; _⊢_⇀⦇_,GOVCERT⦈_
                                   ; _⊢_⇀⦇_,CERTBASE⦈_
                                   ; _⊢_⇀⦇_,CERT⦈_
                                   ; _⊢_⇀⦇_,CERTS⦈_
                                   ) public

open import Tactic.Derive.DecEq

open import Ledger.GovernanceActions gs
open RwdAddr

record CertEnv : Type where
  constructor ⟦_,_,_,_,_⟧ᶜ
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : RwdAddr ⇀ Coin
    deposits  : Deposits

record DState : Type where
  constructor ⟦_,_,_,_⟧ᵈᴴ
  field
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ KeyHash
    rewards      : Credential ⇀ Coin
    deposits     : Deposits

record GState : Type where
  constructor ⟦_,_,_⟧ᵛᴴ
  field
    dreps      : Credential ⇀ Epoch
    ccHotKeys  : Credential ⇀ Maybe Credential
    deposits   : Deposits

record CertState : Type where
  constructor ⟦_,_,_⟧ᶜˢ
  field
    dState : DState
    pState : PState
    gState : GState

GovCertEnv  = CertEnv

certDeposit : DCert → PParams → DepositPurpose ⇀ Coin
certDeposit (delegate c _ _ v) _   = ❴ CredentialDeposit c , v ❵
certDeposit (regdrep c v _)    _   = ❴ DRepDeposit c , v ❵
certDeposit _                  _   = ∅
-- handled in the Utxo module:
-- certDeposit (regpool kh _)     pp  = ❴ PoolDeposit kh , pp .poolDeposit ❵

certRefund : DCert → ℙ DepositPurpose
certRefund (dereg c _)    = ❴ CredentialDeposit c ❵
certRefund (deregdrep c)  = ❴ DRepDeposit c ❵
certRefund _              = ∅

updateCertDeposit  : PParams → DCert → (DepositPurpose ⇀ Coin)
                    → DepositPurpose ⇀ Coin
updateCertDeposit pp cert deposits
  = (deposits ∪⁺ certDeposit cert pp) ∣ certRefund cert ᶜ

private variable
  an                  : Anchor
  dReps               : Credential ⇀ Epoch
  pools               : KeyHash ⇀ PoolParams
  retiring            : KeyHash ⇀ Epoch
  vDelegs             : Credential ⇀ VDeleg
  sDelegs stakeDelegs : Credential ⇀ KeyHash
  rewards rwds        : Credential ⇀ Coin
  dreps               : Credential ⇀ Epoch
  voteDelegs          : Credential ⇀ VDeleg
  ccKeys ccHotKeys    : Credential ⇀ Maybe Credential
  dCert               : DCert
  c                   : Credential
  mc                  : Maybe Credential
  d                   : Coin
  e                   : Epoch
  kh kh'              : KeyHash
  mv                  : Maybe VDeleg
  mkh                 : Maybe KeyHash
  stᵍ stᵍ'            : GState
  stᵈ stᵈ'            : DState
  stᵖ stᵖ'            : PState
  Γ                   : CertEnv
  pp                  : PParams
  envDeposits         : Deposits
  dep gdep ddep       : Deposits
  vs                  : List GovVote
  poolParams          : PoolParams
  wdrls               : RwdAddr ⇀ Coin

data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Type where
  DELEG-delegate : let open PParams pp in
    ∙ (c ∉ dom rwds → d ≡ keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools , envDeposits ⟧ᵈᵉ ⊢
      ⟦ vDelegs , sDelegs , rwds , dep ⟧ᵈᴴ
      ⇀⦇ delegate c mv mkh d ,DELEG⦈
      ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵
      , updateCertDeposit pp (delegate c mv mkh d) dep ⟧ᵈᴴ

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
    ∙ (CredentialDeposit c , d) ∈ dep
      ────────────────────────────────
      ⟦ pp , pools , envDeposits ⟧ᵈᵉ ⊢
      ⟦ vDelegs , sDelegs , rwds , dep ⟧ᵈᴴ
      ⇀⦇ dereg c d ,DELEG⦈
      ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ
      , updateCertDeposit pp (dereg c d) dep ⟧ᵈᴴ


data _⊢_⇀⦇_,GOVCERT⦈_ : GovCertEnv → GState → DCert → GState → Type where
  GOVCERT-regdrep : ∀ {pp} → let open PParams pp in
    ∙ (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , envDeposits ⟧ᶜ ⊢
      ⟦ dReps , ccKeys , dep ⟧ᵛᴴ
        ⇀⦇ regdrep c d an ,GOVCERT⦈
      ⟦ ❴ c , e + drepActivity ❵ ∪ˡ dReps , ccKeys
      , updateCertDeposit pp (regdrep c d an ) dep ⟧ᵛᴴ

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys , dep ⟧ᵛᴴ
          ⇀⦇ deregdrep c ,GOVCERT⦈
          ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys , updateCertDeposit pp (deregdrep c) dep ⟧ᵛᴴ

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys , dep ⟧ᵛᴴ
          ⇀⦇ ccreghot c mc ,GOVCERT⦈
          ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys , updateCertDeposit pp (ccreghot c mc) dep ⟧ᵛᴴ

data _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Type where
  CERT-deleg :
    ∙ ⟦ pp , PState.pools stᵖ , envDeposits ⟧ᵈᵉ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , envDeposits ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , envDeposits ⟧ᶜ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ

  CERT-vdel :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
      Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ

data _⊢_⇀⦇_,CERTBASE⦈_ : CertEnv → CertState → ⊤ → CertState → Type where
  CERT-base :
    let open PParams pp
        refresh         = mapPartial getDRepVote (fromList vs)
        refreshedDReps  = mapValueRestricted (const (e + drepActivity)) dreps refresh
        wdrlCreds       = mapˢ stake (dom wdrls)
    in
    ∙ wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , envDeposits ⟧ᶜ ⊢
      ⟦ ⟦ voteDelegs , stakeDelegs , rewards , ddep ⟧ᵈᴴ
      , stᵖ
      , ⟦ dreps , ccHotKeys , gdep ⟧ᵛᴴ
      ⟧ᶜˢ
      ⇀⦇ _ ,CERTBASE⦈
      ⟦ ⟦ voteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards , ddep ⟧ᵈᴴ
      , stᵖ
      , ⟦ refreshedDReps , ccHotKeys , gdep ⟧ᵛᴴ
      ⟧ᶜˢ

_⊢_⇀⦇_,CERTS⦈_     : CertEnv → CertState → List DCert → CertState → Type
_⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ _⊢_⇀⦇_,CERTBASE⦈_ _⊢_⇀⦇_,CERT⦈_
