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
                                   ; _⊢_⇀⦇_,POOL⦈_
                                   ; _⊢_⇀⦇_,GOVCERT⦈_
                                   ; _⊢_⇀⦇_,CERTBASE⦈_
                                   ; _⊢_⇀⦇_,CERT⦈_
                                   ; _⊢_⇀⦇_,CERTS⦈_
                                   )

open import Tactic.Derive.DecEq

open import Ledger.GovernanceActions gs
open RwdAddr


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
    ddeps        : Deposits

record GState : Type where
  constructor ⟦_,_,_⟧ᵛ
  field
    dreps      : Credential ⇀ Epoch
    ccHotKeys  : Credential ⇀ Maybe Credential
    gdeps      : Deposits

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

updateCertDeposits  : PParams → List DCert → (DepositPurpose ⇀ Coin)
                    → DepositPurpose ⇀ Coin
updateCertDeposits _   []              deposits = deposits
updateCertDeposits pp  (cert ∷ certs)  deposits
  = (updateCertDeposits pp certs deposits ∪⁺ certDeposit cert pp) ∣ certRefund cert ᶜ

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
  deps                : Deposits
  vs                  : List GovVote
  poolParams          : PoolParams
  wdrls               : RwdAddr ⇀ Coin

data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Type where
  DELEG-delegate : let open PParams pp in
    ∙ (c ∉ dom rwds → d ≡ keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools , deps ⟧ᵈᵉ ⊢
        record { voteDelegs = vDelegs
               ; stakeDelegs = sDelegs
               ; rewards = rwds
               ; ddeps = deps
               }
        ⇀⦇ delegate c mv mkh d ,DELEG⦈
        record { voteDelegs = insertIfJust c mv vDelegs
               ; stakeDelegs = insertIfJust c mkh sDelegs
               ; rewards = rwds ∪ˡ ❴ c , 0 ❵
               ; ddeps = updateCertDeposit pp (delegate c mv mkh d) deps
               }

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
    ∙ (CredentialDeposit c , d) ∈ deps
      ────────────────────────────────
      ⟦ pp , pools , deps ⟧ᵈᵉ ⊢
        record { voteDelegs = vDelegs
               ; stakeDelegs = sDelegs
               ; rewards = rwds
               ; ddeps = deps
               }
        ⇀⦇ dereg c d ,DELEG⦈
        record { voteDelegs = vDelegs ∣ ❴ c ❵ ᶜ
               ; stakeDelegs = sDelegs ∣ ❴ c ❵ ᶜ
               ; rewards = rwds ∣ ❴ c ❵ ᶜ
               ; ddeps = updateCertDeposit pp (dereg c d) deps
               }

data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Type where
  POOL-regpool :
    ∙ kh ∉ dom pools
      ────────────────────────────────
      pp ⊢  ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool kh poolParams ,POOL⦈
            ⟦ ❴ kh , poolParams ❵ ∪ˡ pools , retiring ⟧ᵖ

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool kh e ,POOL⦈ ⟦ pools , ❴ kh , e ❵ ∪ˡ retiring ⟧ᵖ


data _⊢_⇀⦇_,GOVCERT⦈_ : GovCertEnv → GState → DCert → GState → Type where
  GOVCERT-regdrep : ∀ {pp} → let open PParams pp in
    ∙ (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , deps ⟧ᶜ ⊢
        record { dreps = dReps
               ; ccHotKeys = ccKeys
               ; gdeps = deps
               }
        ⇀⦇ regdrep c d an ,GOVCERT⦈
        record { dreps = ❴ c , e + drepActivity ❵ ∪ˡ dReps
               ; ccHotKeys = ccKeys
               ; gdeps = updateCertDeposit pp (regdrep c d an ) deps
               }

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      Γ ⊢ record { dreps = dReps
                 ; ccHotKeys = ccKeys
                 ; gdeps = deps
                 }
          ⇀⦇ deregdrep c ,GOVCERT⦈
          record { dreps = dReps ∣ ❴ c ❵ ᶜ
                 ; ccHotKeys = ccKeys
                 ; gdeps = updateCertDeposit pp (deregdrep c) deps
                 }

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
      ────────────────────────────────
      Γ ⊢ record { dreps = dReps
                 ; ccHotKeys = ccKeys
                 ; gdeps = deps
                 }
          ⇀⦇ ccreghot c mc ,GOVCERT⦈
          record { dreps = dReps
                 ; ccHotKeys = ❴ c , mc ❵ ∪ˡ ccKeys
                 ; gdeps = updateCertDeposit pp (ccreghot c mc) deps
                 }

data _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Type where
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

data _⊢_⇀⦇_,CERTBASE⦈_ : CertEnv → CertState → ⊤ → CertState → Type where
  CERT-base :
    let open PParams pp
        refresh         = mapPartial getDRepVote (fromList vs)
        refreshedDReps  = mapValueRestricted (const (e + drepActivity)) dreps refresh
        wdrlCreds       = mapˢ stake (dom wdrls)
        updatedDDeps    = deps -- TODO: replace with actual updated ddeps
        updatedGDeps    = deps -- TODO: replace with actual updated gdeps
    in
    ∙ wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , deps ⟧ᶜ ⊢
        record { dState = record { voteDelegs = voteDelegs
                                 ; stakeDelegs = stakeDelegs
                                 ; rewards = rewards
                                 ; ddeps = deps
                                 }
               ; pState = stᵖ
               ; gState = record { dreps = dreps
                                 ; ccHotKeys = ccHotKeys
                                 ; gdeps = deps
                                 }
               }
        ⇀⦇ _ ,CERTBASE⦈
        record { dState = record { voteDelegs = voteDelegs
                                 ; stakeDelegs = stakeDelegs
                                 ; rewards = constMap wdrlCreds 0 ∪ˡ rewards
                                 ; ddeps = updatedDDeps
                                 }
               ; pState = stᵖ
               ; gState = record { dreps = refreshedDReps
                                 ; ccHotKeys = ccHotKeys
                                 ; gdeps = updatedGDeps
                                 }
               }
