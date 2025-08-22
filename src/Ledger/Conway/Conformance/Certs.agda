{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Base
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Conformance.Certs
  (gs : _) (open GovStructure gs)
  where


open import Ledger.Conway.Specification.Gov.Actions gs
private module Certs = Ledger.Conway.Specification.Certs gs
open Certs public
  hiding (DState; GState; CertState; HasCast-DState; HasCast-GState; HasCast-CertState;
          _⊢_⇀⦇_,POOL⦈_; _⊢_⇀⦇_,DELEG⦈_; _⊢_⇀⦇_,GOVCERT⦈_;
          _⊢_⇀⦇_,CERT⦈_; _⊢_⇀⦇_,CERTBASE⦈_; _⊢_⇀⦇_,CERTS⦈_; ⟦_,_,_⟧ᵈ)
open RwdAddr

record DState : Type where
  constructor ⟦_,_,_,_⟧ᵈ
  field
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ KeyHash
    rewards      : Credential ⇀ Coin
    deposits     : Deposits

record GState : Type where
  constructor ⟦_,_,_⟧ᵛ
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

instance
  unquoteDecl HasCast-DState HasCast-GState HasCast-CertState = derive-HasCast
    (   (quote DState , HasCast-DState)
    ∷   (quote GState , HasCast-GState)
    ∷ [ (quote CertState , HasCast-CertState) ])

certDeposit : DCert → PParams → Deposits
certDeposit (delegate c _ _ v) _   = ❴ CredentialDeposit c , v ❵
certDeposit (regdrep c v _)    _   = ❴ DRepDeposit c , v ❵
certDeposit (reg c v)          pp  = ❴ CredentialDeposit c , pp .PParams.keyDeposit ❵
certDeposit _                  _   = ∅
-- handled in the Utxo module:
-- certDeposit (regpool kh _)     pp  = ❴ PoolDeposit kh , pp .poolDeposit ❵

certRefund : DCert → ℙ DepositPurpose
certRefund (dereg c _)      = ❴ CredentialDeposit c ❵
certRefund (deregdrep c _)  = ❴ DRepDeposit c ❵
certRefund _                = ∅

updateCertDeposit  : PParams → DCert → Deposits → Deposits
updateCertDeposit pp (delegate c _ _ v) deposits = deposits ∪⁺ ❴ CredentialDeposit c , v ❵
updateCertDeposit pp (reg c _)          deposits = deposits ∪⁺ ❴ CredentialDeposit c , pp .PParams.keyDeposit ❵
updateCertDeposit pp (regdrep c v _)    deposits = deposits ∪⁺ ❴ DRepDeposit c , v ❵
updateCertDeposit pp (dereg c _)        deposits = deposits ∣ ❴ CredentialDeposit c ❵ ᶜ
updateCertDeposit pp (deregdrep c _)    deposits = deposits ∣ ❴ DRepDeposit c ❵ ᶜ
updateCertDeposit pp (regpool kh _)     deposits = deposits ∪⁺ ❴ PoolDeposit kh , pp .PParams.poolDeposit ❵
updateCertDeposit _ (retirepool _ _)    deposits = deposits
updateCertDeposit _ (ccreghot _ _)      deposits = deposits
-- updateCertDeposit pp cert deposits
--   = (deposits ∪⁺ certDeposit cert pp) ∣ certRefund cert ᶜ

private variable
  rwds rewards           : Credential ⇀ Coin
  dReps                  : Credential ⇀ Epoch
  sDelegs stakeDelegs    : Credential ⇀ KeyHash
  ccKeys ccHotKeys       : Credential ⇀ Maybe Credential
  vDelegs voteDelegs     : Credential ⇀ VDeleg
  pools                  : KeyHash ⇀ StakePoolParams
  retiring               : KeyHash ⇀ Epoch
  wdrls                  : RwdAddr ⇀ Coin

  an             : Anchor
  Γ              : CertEnv
  d              : Coin
  md             : Maybe Coin
  c              : Credential
  mc             : Maybe Credential
  delegatees cc  : ℙ Credential
  dCert          : DCert
  dep ddep gdep  : Deposits
  e              : Epoch
  vs             : List GovVote
  kh             : KeyHash
  mkh            : Maybe KeyHash
  poolParams     : StakePoolParams
  pp             : PParams
  mv             : Maybe VDeleg

  stᵈ stᵈ' : DState
  stᵍ stᵍ' : GState
  stᵖ stᵖ' : PState

data _⊢_⇀⦇_,POOL⦈_  : PoolEnv → PState → DCert → PState → Type
data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Type

data _⊢_⇀⦇_,POOL⦈_ where
  POOL-regpool :
    ∙ kh ∉ dom pools
      ────────────────────────────────
      pp ⊢  ⟦ pools , retiring ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈
            ⟦ ❴ kh , poolParams ❵ ∪ˡ pools , retiring ⟧

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ ⇀⦇ retirepool kh e ,POOL⦈ ⟦ pools , ❴ kh , e ❵ ∪ˡ retiring ⟧

data _⊢_⇀⦇_,DELEG⦈_ where
  DELEG-delegate : let open PParams pp in
    ∙ (c ∉ dom rwds → d ≡ keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
        fromList
          ( nothing
          ∷ just abstainRep
          ∷ just noConfidenceRep
          ∷ []
          )
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢
      ⟦ vDelegs , sDelegs , rwds , dep ⟧
      ⇀⦇ delegate c mv mkh d ,DELEG⦈
      ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵
      , updateCertDeposit pp (delegate c mv mkh d) dep ⟧

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
    ∙ (CredentialDeposit c , d) ∈ dep
    ∙ md ≡ nothing ⊎ md ≡ just d
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢
      ⟦ vDelegs , sDelegs , rwds , dep ⟧
      ⇀⦇ dereg c md ,DELEG⦈
      ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ
      , updateCertDeposit pp (dereg c md) dep ⟧

  DELEG-reg : let open PParams pp in
    ∙ c ∉ dom rwds
    ∙ d ≡ keyDeposit ⊎ d ≡ 0
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢
        ⟦ vDelegs , sDelegs , rwds , dep ⟧ ⇀⦇ reg c d ,DELEG⦈
        ⟦ vDelegs , sDelegs , rwds ∪ˡ ❴ c , 0 ❵
        , updateCertDeposit pp (reg c d) dep ⟧

data _⊢_⇀⦇_,GOVCERT⦈_ : GovCertEnv → GState → DCert → GState → Type where
  GOVCERT-regdrep : ∀ {pp} → let open PParams pp in
    ∙ (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢
      ⟦ dReps , ccKeys , dep ⟧
        ⇀⦇ regdrep c d an ,GOVCERT⦈
      ⟦ ❴ c , e + drepActivity ❵ ∪ˡ dReps , ccKeys
      , updateCertDeposit pp (regdrep c d an ) dep ⟧

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
    ∙ (DRepDeposit c , d) ∈ dep
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys , dep ⟧
          ⇀⦇ deregdrep c d ,GOVCERT⦈
          ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys , updateCertDeposit pp (deregdrep c d) dep ⟧

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys , dep ⟧
          ⇀⦇ ccreghot c mc ,GOVCERT⦈
          ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys , updateCertDeposit pp (ccreghot c mc) dep ⟧

data _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Type where
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

data _⊢_⇀⦇_,CERTBASE⦈_ : CertEnv → CertState → ⊤ → CertState → Type where
  CERT-base :
    let open PParams pp
        refresh         = mapPartial getDRepVote (fromList vs)
        refreshedDReps  = mapValueRestricted (const (e + drepActivity)) dReps refresh
        wdrlCreds       = mapˢ stake (dom wdrls)
        validVoteDelegs  = voteDelegs ∣^ (mapˢ (credVoter DRep) (dom dReps) ∪ fromList (noConfidenceRep ∷ abstainRep ∷ []))
    in
    ∙ filterˢ isKeyHash wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢
      ⟦ ⟦ voteDelegs , stakeDelegs , rewards , ddep ⟧
      , stᵖ
      , ⟦ dReps , ccHotKeys , gdep ⟧
      ⟧
      ⇀⦇ _ ,CERTBASE⦈
      ⟦ ⟦ validVoteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards , ddep ⟧
      , stᵖ
      , ⟦ refreshedDReps , ccHotKeys , gdep ⟧
      ⟧

_⊢_⇀⦇_,CERTS⦈_     : CertEnv → CertState → List DCert → CertState → Type
_⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ' {_⊢_⇀⟦_⟧ᵇ_ = _⊢_⇀⦇_,CERTBASE⦈_}{_⊢_⇀⦇_,CERT⦈_}
