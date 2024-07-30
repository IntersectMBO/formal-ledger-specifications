{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.Certs.Haskell
  (gs : _) (open GovStructure gs)
  where

open import Ledger.Certs gs hiding ( DCert
                                   ; CertEnv
                                   ; DState
                                   ; GState
                                   ; CertState
                                   ; GovCertEnv
                                   ; _⊢_⇀⦇_,DELEG⦈_
                                   ; _⊢_⇀⦇_,GOVCERT⦈_
                                   ; _⊢_⇀⦇_,CERTBASE⦈_
                                   ; _⊢_⇀⦇_,CERT⦈_
                                   ; _⊢_⇀⦇_,CERTS⦈_
                                   )

open import Tactic.Derive.DecEq

open import Ledger.GovernanceActions gs
open RwdAddr

open PParams

data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Coin → DCert
  regpool     : KeyHash → PoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → DCert
  ccreghot    : Credential → Maybe Credential → DCert

record CertEnv : Type where
  constructor ⟦_,_,_,_,_⟧ᶜ
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : RwdAddr ⇀ Coin
    deposits  : Deposits

record DState : Type where
  constructor ⟦_,_,_,_⟧ᵈ
  field
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ KeyHash
    rewards      : Credential ⇀ Coin
    ddeps     : Deposits

record GState : Type where
  constructor ⟦_,_,_⟧ᵛ
  field
    dreps      : Credential ⇀ Epoch
    ccHotKeys  : Credential ⇀ Maybe Credential
    gdeps  : Deposits

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

updateCertDeposits  : PParams → List DCert → (DepositPurpose ⇀ Coin)
                    → DepositPurpose ⇀ Coin
updateCertDeposits _   []              deposits = deposits
updateCertDeposits pp  (cert ∷ certs)  deposits
  = (updateCertDeposits pp certs deposits ∪⁺ certDeposit cert pp) ∣ certRefund cert ᶜ


-- updateProposalDeposits []        _     _      deposits  = deposits
-- updateProposalDeposits (_ ∷ ps)  txid  gaDep  deposits  =
--   updateProposalDeposits ps txid gaDep deposits
--   ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵

-- updateDeposits : PParams → Deposits → Deposits
-- updateDeposits pp = updateCertDeposits pp txcerts
--                         ∘ updateProposalDeposits txprop txid (pp .govActionDeposit)

private variable
  pools   : KeyHash ⇀ PoolParams
  vDelegs : Credential ⇀ VDeleg
  sDelegs : Credential ⇀ KeyHash
  rwds    : Credential ⇀ Coin
  c       : Credential
  d       : Coin
  mv      : Maybe VDeleg
  mkh     : Maybe KeyHash
  pp      : PParams
  deps    : Deposits

data
  _⊢_⇀⦇_,DELEG⦈_     : DelegEnv → DState → DCert → DState → Type
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
        record { voteDelegs = vDelegs
               ; stakeDelegs = sDelegs
               ; rewards = rwds
               ; ddeps = d
               }
        ⇀⦇ delegate c mv mkh d ,DELEG⦈
        record { voteDelegs = insertIfJust c mv vDelegs
               ; stakeDelegs = insertIfJust c mkh sDelegs
               ; rewards = rwds ∪ˡ ❴ c , 0 ❵
               ; ddeps = updateDeposits pp txb ds
               }

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
    ∙ (CredentialDeposit c , d) ∈ deps
      ────────────────────────────────
      ⟦ pp , pools , deps ⟧ᵈᵉ ⊢  ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ dereg c d ,DELEG⦈
                          ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ

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
