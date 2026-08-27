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
open import Ledger.Dijkstra.Specification.Account gs
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
    rewardAccount   : RewardAddress
    vrf             : VRF
```

The pool state extends the registered parameters with the pool's Leios voting
key (CIP-0164): a BLS key together with the epoch it was registered in, from
which its expiry is computed.  The key is registered through a dedicated
certificate rather than `regpool`{.AgdaInductiveConstructor}, so it lives next
to — not inside — the registration parameters.

```agda
record BlsKeyState : Type where
  field
    key         : BlsVKey
    registered  : Epoch

record StakePoolState : Type where
  field
    params  : StakePoolParams
    blsKey  : Maybe BlsKeyState
```

```agda
CCHotKeys : Type
CCHotKeys = Credential ⇀ Maybe Credential

Pools : Type
Pools = KeyHash ⇀ StakePoolState

FPools : Type
FPools = KeyHash ⇀ StakePoolParams

Retiring : Type
Retiring = KeyHash ⇀ Epoch
```

Future pools (`FPools`{.AgdaDatatype}) carry only registration parameters:
voting keys live exclusively in the current pool state, so a pending
re-registration can never clobber one.

In the Dijkstra era, the `Rewards`{.AgdaDatatype} map represents
**account balances**, not just staking rewards.  An account's balance may increase
via staking rewards (at epoch boundaries) or via **direct deposits** (CIP-159).
Withdrawals decrease the balance.  The name `Rewards` is retained for backwards
compatibility.

```agda
Rewards : Type
Rewards = Credential ⇀ Coin

Stake : Type
Stake = Credential ⇀ Coin

StakeDelegs : Type
StakeDelegs = Credential ⇀ KeyHash

data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Coin → DCert
  regpool     : KeyHash → StakePoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regblskey   : KeyHash → BlsVKey → BlsPoP → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → Coin → DCert
  ccreghot    : Credential → Maybe Credential → DCert

cwitness : DCert → Maybe Credential
cwitness (delegate c _ _ _)  = just c
cwitness (dereg c _)         = just c
cwitness (regpool kh _)      = just $ KeyHashObj kh
cwitness (retirepool kh _)   = just $ KeyHashObj kh
cwitness (regblskey kh _ _)  = just $ KeyHashObj kh
cwitness (regdrep c _ _)     = just c
cwitness (deregdrep c _)     = just c
cwitness (ccreghot c _)      = just c

IsPoolRegistered : Pools → KeyHash → Type
IsPoolRegistered ps kh = kh ∈ dom ps

IsConwayCert : DCert → Type
IsConwayCert (regdrep _ _ _)           = ⊤
IsConwayCert (deregdrep _ _)           = ⊤
IsConwayCert (ccreghot _ _)            = ⊤
IsConwayCert (delegate _ (just _) _ _) = ⊤
IsConwayCert _                         = ⊥

record CertEnv : Type where
  field
    epoch           : Epoch
    pp              : PParams
    coldCredentials : ℙ Credential

record DState : Type where
  constructor ⟦_,_,_,_⟧ᵈ
  field
    voteDelegs   : VoteDelegs
    stakeDelegs  : StakeDelegs
    rewards      : Rewards
    deposits     : Credential ⇀ Coin

record PState : Type where
  field
    pools     : Pools
    fPools    : FPools
    retiring  : KeyHash ⇀ Epoch
    deposits  : KeyHash ⇀ Coin

record GState : Type where
  constructor ⟦_,_,_⟧ᵛ
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

record PoolEnv : Type where
  field
    epoch           : Epoch
    pp              : PParams

record GovCertEnv : Type where
  field
    epoch           : Epoch
    pp              : PParams
    coldCredentials : ℙ Credential
```

<!--
```agda
open StakePoolParams
open StakePoolState using (params; blsKey)

IsConwayCert? : IsConwayCert ⁇¹
IsConwayCert? {x} .dec with x
... | regdrep _ _ _ = yes tt
... | deregdrep _ _ = yes tt
... | ccreghot _ _  = yes tt
... | delegate _ (just _) _ _ = yes tt
... | delegate _ nothing  _ _ = no (λ ())
... | dereg _ _ = no (λ ())
... | regpool _ _ = no (λ ())
... | retirepool _ _ = no (λ ())
... | regblskey _ _ _ = no (λ ())

record HasDeposits (A : Type) {K : Type} : Type where
  field DepositsOf : A → K ⇀ Coin
open HasDeposits ⦃...⦄ public

record HasCCHotKeys {a} (A : Type a) : Type a where
  field CCHotKeysOf : A → CCHotKeys
open HasCCHotKeys ⦃...⦄ public

record HasColdCredentials {a} (A : Type a) : Type a where
  field ColdCredentialsOf : A → ℙ Credential
open HasColdCredentials ⦃...⦄ public

record HasPools {a} (A : Type a) : Type a where
  field PoolsOf : A → Pools
open HasPools ⦃...⦄ public

record HasFuturePools {a} (A : Type a) : Type a where
  field FuturePoolsOf : A → FPools
open HasFuturePools ⦃...⦄ public

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

record HasEpoch {a} (A : Type a) : Type a where
  field EpochOf : A → Epoch
open HasEpoch ⦃...⦄ public

record HasVotes {a} (A : Type a) : Type a where
  field VotesOf : A → List GovVote
open HasVotes ⦃...⦄ public

instance
  HasPParams-CertEnv : HasPParams CertEnv
  HasPParams-CertEnv .PParamsOf = CertEnv.pp

  HasPParams-GovCertEnv : HasPParams GovCertEnv
  HasPParams-GovCertEnv .PParamsOf = GovCertEnv.pp

  HasColdCredentials-GovCertEnv : HasColdCredentials GovCertEnv
  HasColdCredentials-GovCertEnv .ColdCredentialsOf = GovCertEnv.coldCredentials

  HasColdCredentials-CertEnv : HasColdCredentials CertEnv
  HasColdCredentials-CertEnv .ColdCredentialsOf = CertEnv.coldCredentials

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

  HasFuturePools-PState : HasFuturePools PState
  HasFuturePools-PState .FuturePoolsOf = PState.fPools

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

  HasEpoch-GovCertEnv : HasEpoch GovCertEnv
  HasEpoch-GovCertEnv .EpochOf = GovCertEnv.epoch

  HasEpoch-CertEnv : HasEpoch CertEnv
  HasEpoch-CertEnv .EpochOf = CertEnv.epoch

  unquoteDecl HasCast-BlsKeyState HasCast-StakePoolState HasCast-CertEnv HasCast-DState HasCast-PState HasCast-GState HasCast-CertState HasCast-DelegEnv HasCast-PoolEnv HasCast-GovCertEnv = derive-HasCast
    (   (quote BlsKeyState , HasCast-BlsKeyState)
    ∷   (quote StakePoolState , HasCast-StakePoolState)
    ∷   (quote CertEnv , HasCast-CertEnv)
    ∷   (quote DState , HasCast-DState)
    ∷   (quote PState , HasCast-PState)
    ∷   (quote GState , HasCast-GState)
    ∷   (quote CertState , HasCast-CertState)
    ∷   (quote PoolEnv , HasCast-PoolEnv)
    ∷   (quote GovCertEnv , HasCast-GovCertEnv)
    ∷ [ (quote DelegEnv , HasCast-DelegEnv) ])


private variable
  rwds rewards           : Rewards
  dReps                  : DReps
  sDelegs stakeDelegs    : StakeDelegs
  ccKeys ccHotKeys       : CCHotKeys
  vDelegs voteDelegs     : VoteDelegs
  pools                  : Pools
  fPools                 : FPools
  retiring               : Retiring
  A                      : Type
  deposits deposits'     : A ⇀ Coin
  depositsᵍ depositsᵍ'    : Credential ⇀ Coin
  depositsᵈ depositsᵈ'    : Credential ⇀ Coin

  an          : Anchor
  Γ           : CertEnv
  d           : Coin
  c           : Credential
  mc          : Maybe Credential
  delegatees  : ℙ Credential
  dCert       : DCert
  e e'        : Epoch
  vs          : List GovVote
  kh          : KeyHash
  mkh         : Maybe KeyHash
  poolParams  : StakePoolParams
  vk          : BlsVKey
  pop         : BlsPoP
  pp          : PParams
  mvd         : Maybe VDeleg

  stᵈ stᵈ' : DState
  stᵍ stᵍ' : GState
  stᵖ stᵖ' : PState
  stᶜ stᶜ' : CertState
  cc : ℙ Credential
```
-->

```agda
rewardsBalance : DState → Coin
rewardsBalance ds = ∑[ x ← RewardsOf ds ] x
```

## Cert-State Deposit Accounting

Functions in this section compute the effect that a `DCert`{.AgdaRecord} list has on
the three deposit fields (`DState.deposits`{.AgdaField}, `PState.deposits`{.AgdaField},
`GState.deposits`{.AgdaField}) carried by a `CertState`{.AgdaRecord}.

In Dijkstra, delegation and `DRep` (de)registration certificates carry their deposit explicitly, so new and refunded deposits can be computed from the certificate list alone.  The exception is pool registration: `regpool`{.AgdaInductiveConstructor} carries no deposit, and whether it charges `poolDeposit`{.AgdaField} depends on whether the pool is already registered. `newCertDeposits` therefore additionally takes the set of registered pool keys (`pools : ℙ KeyHash`), and threads it through the certificate list, charging each newly registered pool exactly once.

```agda
module _ (pp : PParams) where

  newCertDeposits : ℙ KeyHash → List DCert → Coin
  newCertDeposits pools = proj₁ ∘ foldl addNewCertDeposit (0 , pools)
    where
      addNewCertDeposit : Coin × ℙ KeyHash → DCert → Coin × ℙ KeyHash
      addNewCertDeposit (dep , pools) (delegate _ _ _ d) = dep + d , pools
      addNewCertDeposit (dep , pools) (regpool kh _)     =
        if kh ∈ pools
          then (dep , pools)
          else (dep + pp .poolDeposit , pools ∪ ❴ kh ❵)
      addNewCertDeposit (dep , pools) (regdrep _ d _) = dep + d , pools
      addNewCertDeposit acc           _               = acc

  refundCertDeposits : List DCert → Coin
  refundCertDeposits = foldl addRefundCertDeposit 0
    where
      addRefundCertDeposit : Coin → DCert → Coin
      addRefundCertDeposit acc (dereg _ d)     = acc + d
      addRefundCertDeposit acc (deregdrep _ d) = acc + d
      addRefundCertDeposit acc _               = acc
```

<!--
```agda
instance
  HasCoin-CertState : HasCoin CertState
  HasCoin-CertState .getCoin = rewardsBalance ∘ DStateOf

  unquoteDecl DecEq-StakePoolParams = derive-DecEq
    ((quote StakePoolParams , DecEq-StakePoolParams) ∷ [])
  unquoteDecl DecEq-BlsKeyState = derive-DecEq
    ((quote BlsKeyState , DecEq-BlsKeyState) ∷ [])
  unquoteDecl DecEq-StakePoolState = derive-DecEq
    ((quote StakePoolState , DecEq-StakePoolState) ∷ [])
  unquoteDecl DecEq-DCert = derive-DecEq
    ((quote DCert , DecEq-DCert) ∷ [])
```
-->

# Auxiliary Transition Systems

## `DELEG`{.AgdaDatatype} Transition System

```agda
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
    ∙ (c , d) ∈ deposits
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds , deposits ⟧ ⇀⦇ dereg c d ,DELEG⦈ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ , deposits ∣ ❴ c ❵ ᶜ ⟧
```

## `POOL`{.AgdaDatatype} Transition System

Helpers to read and update the Leios voting key of a pool, and to apply pending
future re-registrations at the epoch boundary: `applyFPools`{.AgdaFunction}
updates only the parameters of already registered pools, so registered voting
keys survive parameter re-registration.

```agda
poolVrfs : Pools → ℙ VRF
poolVrfs ps = mapˢ (vrf ∘ params) (range ps)

poolBlsKey : Pools → KeyHash → Maybe BlsKeyState
poolBlsKey ps kh = lookupᵐ? ps kh >>= blsKey

installBlsKey : KeyHash → BlsKeyState → Pools → Pools
installBlsKey kh k = mapWithKey λ kh' s → if kh' ≡ kh then record s { blsKey = just k } else s

applyFPools : FPools → Pools → Pools
applyFPools fps = mapWithKey λ kh s → case lookupᵐ? fps kh of λ where
  (just p) → record s { params = p }
  nothing  → s
```

```agda
data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Type where

  POOL-reg :
    ∙ ¬ (IsPoolRegistered pools kh)
    ∙ ¬ (poolParams .vrf ∈ poolVrfs pools ∪ mapˢ vrf (range fPools))
    ∙ NetworkIdOf (poolParams .rewardAccount) ≡ NetworkId
    ∙ pp .minPoolCost ≤ poolParams .cost
    ────────────────────────────────
    ⟦ e , pp ⟧ ⊢ ⟦ pools
                 , fPools
                 , retiring
                 , deposits
                 ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈ ⟦
                   pools ∪ˡ ❴ kh , ⟦ poolParams , nothing ⟧ ❵
                 , fPools
                 , retiring
                 , deposits ∪ˡ ❴ kh , pp .poolDeposit ❵
                 ⟧

  POOL-rereg :
    ∙ IsPoolRegistered pools kh
    ∙ ¬ (poolParams .vrf ∈ poolVrfs (pools ∣ ❴ kh ❵ ᶜ) ∪ mapˢ vrf (range (fPools ∣ ❴ kh ❵ ᶜ)))
    ∙ NetworkIdOf (poolParams .rewardAccount) ≡ NetworkId
    ∙ pp .minPoolCost ≤ poolParams .cost
    ────────────────────────────────
    ⟦ e , pp ⟧ ⊢ ⟦ pools
                 , fPools
                 , retiring
                 , deposits
                 ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈ ⟦
                   pools
                 , ❴ kh , poolParams ❵ ∪ˡ fPools
                 , retiring ∣ ❴ kh ❵ ᶜ
                 , deposits
                 ⟧

  POOL-regblskey :
    ∙ IsPoolRegistered pools kh
    ∙ isValidPoP vk pop
    ────────────────────────────────
    ⟦ e , pp ⟧ ⊢ ⟦ pools
                 , fPools
                 , retiring
                 , deposits
                 ⟧ ⇀⦇ regblskey kh vk pop ,POOL⦈ ⟦
                   installBlsKey kh ⟦ vk , e ⟧ pools
                 , fPools
                 , retiring
                 , deposits
                 ⟧

  POOL-retirepool :
    ∙ IsPoolRegistered pools kh
    ∙ e < e'
    ∙ e' ≤ e + pp .Emax
    ────────────────────────────────
    ⟦ e , pp ⟧ ⊢ ⟦ pools
                 , fPools
                 , retiring
                 , deposits
                 ⟧ ⇀⦇ retirepool kh e' ,POOL⦈ ⟦
                   pools
                 , fPools
                 , ❴ kh , e' ❵ ∪ˡ retiring
                 , deposits
                 ⟧
```

## `GOVCERT`{.AgdaDatatype} Transition System

```agda
data _⊢_⇀⦇_,GOVCERT⦈_ : GovCertEnv → CertState → DCert → CertState → Type where

  GOVCERT-regdrep :
    ∙ (d ≡ pp .drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      ⟦ e , pp , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , ⟦ dReps , ccKeys , depositsᵍ ⟧ ⟧ ⇀⦇ regdrep c d an ,GOVCERT⦈ ⟦ stᵈ , stᵖ , ⟦ ❴ c , e + pp .drepActivity ❵ ∪ˡ dReps , ccKeys , depositsᵍ ∪⁺ ❴ c , d ❵ ⟧ ⟧

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
    ∙ (c , d) ∈ depositsᵍ
      ────────────────────────────────
      ⟦ e , pp , cc ⟧ ⊢ ⟦ ⟦ vDelegs , sDelegs , rwds , depositsᵈ ⟧ , stᵖ , ⟦ dReps , ccKeys , depositsᵍ ⟧ ⟧ ⇀⦇ deregdrep c d ,GOVCERT⦈ ⟦ ⟦ vDelegs ∣^ ❴ vDelegCredential c ❵ ᶜ , sDelegs , rwds , depositsᵈ ⟧ , stᵖ , ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys , depositsᵍ ∣ ❴ c ❵ ᶜ ⟧ ⟧

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , ⟦ dReps , ccKeys , depositsᵍ ⟧ ⟧ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ stᵈ , stᵖ , ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys , depositsᵍ ⟧ ⟧
```

# `CERT`{.AgdaDatatype} Transition System

```agda
data _⊢_⇀⦇_,CERT⦈_  : CertEnv → CertState → DCert → CertState → Type where

  CERT-deleg :
    ∙ ⟦ pp , PoolsOf stᵖ , dom (DRepsOf stᵍ) ⟧ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧

  CERT-pool :
    ∙ ⟦ e , pp ⟧ ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , cc ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧

  CERT-gov :
    ∙ ⟦ e , pp , cc ⟧ ⊢ stᶜ ⇀⦇ dCert ,GOVCERT⦈ stᶜ'
      ────────────────────────────────
      ⟦ e , pp , cc ⟧ ⊢ stᶜ ⇀⦇ dCert ,CERT⦈ stᶜ'
```

# `CERTS`{.AgdaDatatype} Transition System

```agda
_⊢_⇀⦇_,CERTS⦈_  : CertEnv → CertState  → List DCert  → CertState  → Type
_⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,CERT⦈_}
```
