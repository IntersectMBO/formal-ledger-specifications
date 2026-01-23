---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs.lagda.md
---

# Certificates {#sec:certificates}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude renaming (filterˢ to filter)
open import Ledger.Prelude.Numeric.UnitInterval
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open RewardAddress
open PParams
```
-->

```agda
record StakePoolParams : Type where
  field
    owners          : ℙ KeyHash
    cost            : Coin
    margin          : UnitInterval
    pledge          : Coin
    rewardAccount   : Credential

-- Miscellaneous Type Aliases

CCHotKeys : Type
CCHotKeys = Credential ⇀ Maybe Credential

PoolEnv : Type
PoolEnv = PParams

Pools : Type
Pools = KeyHash ⇀ StakePoolParams

Retiring : Type
Retiring = KeyHash ⇀ Epoch

Rewards : Type
Rewards = Credential ⇀ Coin

Stake : Type
Stake = Credential ⇀ Coin

StakeDelegs : Type
StakeDelegs = Credential ⇀ KeyHash

-- Delegation Definitions
data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Maybe Coin → DCert
  regpool     : KeyHash → StakePoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → Coin → DCert
  ccreghot    : Credential → Maybe Credential → DCert

cwitness : DCert → Maybe Credential
cwitness (delegate c _ _ _)  = just c
cwitness (dereg c _)         = just c
cwitness (regpool kh _)      = just $ KeyHashObj kh
cwitness (retirepool kh _)   = just $ KeyHashObj kh
cwitness (regdrep c _ _)     = just c
cwitness (deregdrep c _)     = just c
cwitness (ccreghot c _)      = just c

-- Certification Types
record CertEnv : Type where
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : Withdrawals
    coldCreds : ℙ Credential

record DState : Type where
  constructor ⟦_,_,_⟧ᵈ
  field
    voteDelegs   : VoteDelegs
    stakeDelegs  : StakeDelegs
    rewards      : Rewards
    deposits     : Credential ⇀ Coin

record PState : Type where
  field
    pools     : Pools
    fPools    : Pools
    retiring  : KeyHash ⇀ Epoch
    deposits  : KeyHash ⇀ Coin

record GState : Type where
  constructor ⟦_,_⟧ᵛ
  field
    dreps      : DReps
    ccHotKeys  : Credential ⇀ Maybe Credential
    deposits   : Credential ⇀ Coin

record CertState : Type where
  constructor ⟦_,_,_⟧ᶜˢ
  field
    dState : DState
    pState : PState
    gState : GState

record DelegEnv : Type where
  field
    pparams       : PParams
    pools         : Pools
    delegatees    : ℙ Credential
```

<!--
```agda
record HasDeposits (A : Type) {K : Type} : Type where
  field DepositsOf : A → K ⇀ Coin
open HasDeposits ⦃...⦄ public

record HasCCHotKeys {a} (A : Type a) : Type a where
  field CCHotKeysOf : A → CCHotKeys
open HasCCHotKeys ⦃...⦄ public

record HasPools {a} (A : Type a) : Type a where
  field PoolsOf : A → Pools
open HasPools ⦃...⦄ public

record HasRetiring {a} (A : Type a) : Type a where
  field RetiringOf : A → Retiring
open HasRetiring ⦃...⦄ public

record HasRewards {a} (A : Type a) : Type a where
  field RewardsOf : A → Rewards
open HasRewards ⦃...⦄ public

record HasStake {a} (A : Type a) : Type a where
  field StakeOf : A -> Stake
open HasStake ⦃...⦄ public

record HasStakeDelegs {a} (A : Type a) : Type a where
  field StakeDelegsOf : A -> StakeDelegs
open HasStakeDelegs ⦃...⦄ public

record HasDState {a} (A : Type a) : Type a where
  field DStateOf : A → DState
open HasDState ⦃...⦄ public

record HasPState {a} (A : Type a) : Type a where
  field PStateOf : A → PState
open HasPState ⦃...⦄ public

record HasGState {a} (A : Type a) : Type a where
  field GStateOf : A → GState
open HasGState ⦃...⦄ public

record HasCertState {a} (A : Type a) : Type a where
  field CertStateOf : A → CertState
open HasCertState ⦃...⦄ public

instance
  HasPParams-CertEnv : HasPParams CertEnv
  HasPParams-CertEnv .PParamsOf = CertEnv.pp

  HasWithdrawals-CertEnv : HasWithdrawals CertEnv
  HasWithdrawals-CertEnv .WithdrawalsOf = CertEnv.wdrls

  HasVoteDelegs-DState : HasVoteDelegs DState
  HasVoteDelegs-DState .VoteDelegsOf = DState.voteDelegs

  HasStakeDelegs-DState : HasStakeDelegs DState
  HasStakeDelegs-DState .StakeDelegsOf = DState.stakeDelegs

  HasRewards-DState : HasRewards DState
  HasRewards-DState .RewardsOf = DState.rewards

  HasDeposits-DState : HasDeposits DState
  HasDeposits-DState .DepositsOf = DState.deposits

  HasPools-PState : HasPools PState
  HasPools-PState .PoolsOf = PState.pools

  HasDeposits-PState : HasDeposits PState
  HasDeposits-PState .DepositsOf = PState.deposits

  HasRetiring-PState : HasRetiring PState
  HasRetiring-PState .RetiringOf = PState.retiring

  HasDReps-GState : HasDReps GState
  HasDReps-GState .DRepsOf = GState.dreps

  HasCCHotKeys-GState : HasCCHotKeys GState
  HasCCHotKeys-GState .CCHotKeysOf = GState.ccHotKeys

  HasDeposits-GState : HasDeposits GState
  HasDeposits-GState .DepositsOf = GState.deposits

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

  HasCCHotKeys-CertState : HasCCHotKeys CertState
  HasCCHotKeys-CertState .CCHotKeysOf = CCHotKeysOf ∘ GStateOf

  HasPools-CertState : HasPools CertState
  HasPools-CertState .PoolsOf = PoolsOf ∘ PStateOf

  HasVoteDelegs-CertState : HasVoteDelegs CertState
  HasVoteDelegs-CertState .VoteDelegsOf = VoteDelegsOf ∘ DStateOf

  HasStakeDelegs-CertState : HasStakeDelegs CertState
  HasStakeDelegs-CertState .StakeDelegsOf = StakeDelegsOf ∘ DStateOf

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
  sDelegs stakeDelegs    : StakeDelegs
  ccKeys ccHotKeys       : CCHotKeys
  vDelegs voteDelegs     : VoteDelegs
  pools fPools           : Pools
  retiring               : Retiring
  wdrls                  : Withdrawals
  A                      : Type
  deposits deposits'     : A ⇀ Coin

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
  poolParams  : StakePoolParams
  pp          : PParams
  mvd         : Maybe VDeleg

  stᵈ stᵈ' : DState
  stᵍ stᵍ' : GState
  stᵖ stᵖ' : PState
  cc : ℙ Credential
```
-->


```agda
rewardsBalance : DState → Coin
rewardsBalance ds = ∑[ x ← RewardsOf ds ] x
```

<!--
```agda
instance
  HasCoin-CertState : HasCoin CertState
  HasCoin-CertState .getCoin = rewardsBalance ∘ DStateOf
```
-->

```agda
-- Auxiliary DELEG transition system --
data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Type where

  DELEG-delegate :
    ∙ (c ∉ dom rwds → d ≡ pp .keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mvd ∈ mapˢ (just ∘ vDelegCredential) delegatees ∪
            fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds , deposits ⟧ ⇀⦇ delegate c mvd mkh d ,DELEG⦈ ⟦ insertIfJust c mvd vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵ , deposits ∪⁺ ❴ c , d ❵ ⟧

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds , deposits ⟧ ⇀⦇ dereg c md ,DELEG⦈ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ , deposits ∣ ❴ c ❵ ᶜ ⟧


isPoolRegistered : Pools -> KeyHash -> Maybe StakePoolParams
isPoolRegistered ps kh = lookupᵐ? ps kh

-- Auxiliary POOL transition system --
data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Type where

  POOL-reg :
    ∙ Is-just (isPoolRegistered pools kh)
    ────────────────────────────────
    pp ⊢ ⟦ pools
         , fPools
         , retiring
         , deposits
         ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈ ⟦
           pools ∪ˡ ❴ kh , poolParams ❵
         , fPools
         , retiring
         , deposits ∪ˡ ❴ kh , pp .poolDeposit ❵
         ⟧

  POOL-rereg :
    ∙ Is-nothing (isPoolRegistered pools kh)
    ────────────────────────────────
    pp ⊢ ⟦ pools
         , fPools
         , retiring
         , deposits
         ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈ ⟦
           pools
         , ❴ kh , poolParams ❵ ∪ˡ fPools
         , retiring ∣ ❴ kh ❵ ᶜ
         , deposits
         ⟧

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools
         , fPools
         , retiring
         , deposits
         ⟧ ⇀⦇ retirepool kh e ,POOL⦈ ⟦
           pools
         , fPools
         , ❴ kh , e ❵ ∪ˡ retiring
         , deposits
         ⟧


-- Auxiliary GOVCERT transition system --
data _⊢_⇀⦇_,GOVCERT⦈_ : CertEnv → GState → DCert → GState → Type where

  GOVCERT-regdrep :
    ∙ (d ≡ pp .drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys , deposits ⟧ ⇀⦇ regdrep c d an ,GOVCERT⦈ ⟦ ❴ c , e + pp .drepActivity ❵ ∪ˡ dReps , ccKeys , deposits ∪⁺ ❴ c , d ❵ ⟧

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys , deposits ⟧ ⇀⦇ deregdrep c d ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys , deposits ∣ ❴ c ❵ ᶜ ⟧

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys , deposits ⟧ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys , deposits ⟧

-- CERT Transition System --
data _⊢_⇀⦇_,CERT⦈_  : CertEnv → CertState → DCert → CertState → Type where

  CERT-deleg :
    ∙ ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧

  CERT-gov :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
      Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧


-- PRE-CERT Transition Rule --

open GovVote using (voter)

data _⊢_⇀⦇_,PRE-CERT⦈_ : CertEnv → CertState → ⊤ → CertState → Type where

  CERT-pre :
    let refresh         = mapPartial (isGovVoterDRep ∘ voter) (fromList vs)
        refreshedDReps  = mapValueRestricted (const (e + pp .drepActivity)) dReps refresh
        wdrlCreds       = mapˢ stake (dom wdrls)
    in
    ∙ filter isKeyHash wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ , stᵖ , ⟦ dReps , ccHotKeys , deposits' ⟧ ⟧ ⇀⦇ _ ,PRE-CERT⦈ ⟦ ⟦ voteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards , deposits ⟧ , stᵖ , ⟦ refreshedDReps , ccHotKeys , deposits' ⟧ ⟧


-- POST-CERT Transition Rule --

data _⊢_⇀⦇_,POST-CERT⦈_ : CertEnv → CertState → ⊤ → CertState → Type where

  CERT-post :
    let activeVDelegs = mapˢ vDelegCredential (dom (DRepsOf stᵍ))
                         ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])
    in
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ , stᵖ , stᵍ ⟧ ⇀⦇ _ ,POST-CERT⦈ ⟦ ⟦ voteDelegs ∣^ activeVDelegs , stakeDelegs , rewards , deposits ⟧ , stᵖ , stᵍ ⟧


-- CERTS Transition System --

_⊢_⇀⦇_,CERTS⦈_  : CertEnv → CertState  → List DCert  → CertState  → Type
_⊢_⇀⦇_,CERTS⦈_ = RunTraceAfterAndThen _⊢_⇀⦇_,PRE-CERT⦈_ _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_
```
