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

-- Deposit Types
data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

Deposits : Type
Deposits = DepositPurpose ⇀ Coin

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
  -- The `reg` cert is deprecated in Conway, but it's still present in this era
  -- for backwards compatibility. This has been added to the spec to make
  -- conformance testing work properly. We don't talk about this certificate
  -- in the docs because it has been deprecated and we want to discourage people
  -- from using it.
  reg         : Credential → Coin → DCert

cwitness : DCert → Maybe Credential
cwitness (delegate c _ _ _)  = just c
cwitness (dereg c _)         = just c
cwitness (regpool kh _)      = just $ KeyHashObj kh
cwitness (retirepool kh _)   = just $ KeyHashObj kh
cwitness (regdrep c _ _)     = just c
cwitness (deregdrep c _)     = just c
cwitness (ccreghot c _)      = just c

-- The implementation requires the `reg` cert to be witnessed only if the
-- deposit is set. There didn't use to be a field for the deposit, but that was
-- added in the Conway era to make it easier to determine, just by looking at
-- the transaction, how much deposit was paid for that certificate.
cwitness (reg _ zero)        = nothing
cwitness (reg c (suc _))     = just c


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

record PState : Type where
  field
    pools     : Pools
    fPools    : Pools
    retiring  : KeyHash ⇀ Epoch

record GState : Type where
  constructor ⟦_,_⟧ᵛ
  field
    dreps      : DReps
    ccHotKeys  : Credential ⇀ Maybe Credential

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
record HasDeposits {a} (A : Type a) : Type a where
  field DepositsOf : A → Deposits
open HasDeposits ⦃...⦄ public

instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])

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

  HasPools-PState : HasPools PState
  HasPools-PState .PoolsOf = PState.pools

  HasRetiring-PState : HasRetiring PState
  HasRetiring-PState .RetiringOf = PState.retiring

  HasDReps-GState : HasDReps GState
  HasDReps-GState .DRepsOf = GState.dreps

  HasCCHotKeys-GState : HasCCHotKeys GState
  HasCCHotKeys-GState .CCHotKeysOf = GState.ccHotKeys

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

-- Auxiliary DELEG transition system --
data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Type where

  DELEG-delegate :
    ∙ (c ∉ dom rwds → d ≡ pp .keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mvd ∈ mapˢ (just ∘ vDelegCredential) delegatees ∪
            fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ delegate c mvd mkh d ,DELEG⦈ ⟦ insertIfJust c mvd vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ dereg c md ,DELEG⦈ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧

  DELEG-reg :
    ∙ c ∉ dom rwds
    ∙ d ≡ pp .keyDeposit ⊎ d ≡ 0
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ reg c d ,DELEG⦈ ⟦ vDelegs , sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧



isPoolRegistered : Pools -> KeyHash -> Maybe StakePoolParams
isPoolRegistered ps kh = lookupᵐ? ps kh

-- Auxiliary POOL transition system --
data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Type where

  POOL-regpool :
    let
      fPool' =
        if isPoolRegistered pools kh
          then ❴ kh , poolParams ❵ ∪ˡ fPools
          else fPools
     in
    ────────────────────────────────
    pp ⊢ ⟦ pools
         , fPools
         , retiring
         ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈ ⟦
           pools ∪ˡ ❴ kh , poolParams ❵
         , fPool'
         , retiring ∣  ❴ kh ❵ ᶜ
         ⟧

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools
         , fPools
         , retiring
         ⟧ ⇀⦇ retirepool kh e ,POOL⦈ ⟦
           pools
         , fPools
         , ❴ kh , e ❵ ∪ˡ retiring
         ⟧


-- Auxiliary GOVCERT transition system --
data _⊢_⇀⦇_,GOVCERT⦈_ : CertEnv → GState → DCert → GState → Type where

  GOVCERT-regdrep :
    ∙ (d ≡ pp .drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ regdrep c d an ,GOVCERT⦈ ⟦ ❴ c , e + pp .drepActivity ❵ ∪ˡ dReps , ccKeys ⟧

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ deregdrep c d ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys ⟧

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

  CERT-vdel :
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
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ , stᵖ , ⟦ dReps , ccHotKeys ⟧ ⟧ ⇀⦇ _ ,PRE-CERT⦈ ⟦ ⟦ voteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards ⟧ , stᵖ , ⟦ refreshedDReps , ccHotKeys ⟧ ⟧


-- POST-CERT Transition Rule --

data _⊢_⇀⦇_,POST-CERT⦈_ : CertEnv → CertState → ⊤ → CertState → Type where

  CERT-post :
    let activeVDelegs = mapˢ vDelegCredential (dom (DRepsOf stᵍ))
                         ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])
    in
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ , stᵖ , stᵍ ⟧ ⇀⦇ _ ,POST-CERT⦈ ⟦ ⟦ voteDelegs ∣^ activeVDelegs , stakeDelegs , rewards ⟧ , stᵖ , stᵍ ⟧


-- CERTS Transition System --

_⊢_⇀⦇_,CERTS⦈_  : CertEnv → CertState  → List DCert  → CertState  → Type
_⊢_⇀⦇_,CERTS⦈_ = RunTraceAfterAndThen _⊢_⇀⦇_,PRE-CERT⦈_ _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_
```
