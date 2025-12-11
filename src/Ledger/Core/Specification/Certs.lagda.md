---
source_branch: master
source_path: src/Ledger/Core/Specification/Certs.lagda.md
---

# Certificates {#sec:certificates}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Gov.Base

module Ledger.Core.Specification.Certs (gs : _) (open GovStructure gs) where

open import Ledger.Prelude renaming (filterˢ to filter)
open import Ledger.Prelude.Numeric.UnitInterval

open import Ledger.Core.Specification.Gov.Actions gs hiding (yes; no)
```
-->

## Stake Pool Parameter Definitions


```agda
record StakePoolParams : Type where
  field
    owners          : ℙ KeyHash
    cost            : Coin
    margin          : UnitInterval
    pledge          : Coin
    rewardAccount   : Credential
```


## Deposit Types

```agda
data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

Deposits : Type
Deposits = DepositPurpose ⇀ Coin
```

<!--
```agda
record HasDeposits {a} (A : Type a) : Type a where
  field DepositsOf : A → Deposits
open HasDeposits ⦃...⦄ public

instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])
```
-->


## Miscellaneous Type Aliases

```agda
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
```

<!--
```agda
record HasCCHotKeys {a} (A : Type a) : Type a where
  field CCHotKeysOf : A → CCHotKeys

record HasPools {a} (A : Type a) : Type a where
  field PoolsOf : A → Pools

record HasRetiring {a} (A : Type a) : Type a where
  field RetiringOf : A → Retiring

record HasRewards {a} (A : Type a) : Type a where
  field RewardsOf : A → Rewards

record HasStake {a} (A : Type a) : Type a where
  field StakeOf : A -> Stake

record HasStakeDelegs {a} (A : Type a) : Type a where
  field StakeDelegsOf : A -> StakeDelegs

open HasCCHotKeys ⦃...⦄ public
open HasPools ⦃...⦄ public
open HasRetiring ⦃...⦄ public
open HasRewards ⦃...⦄ public
open HasStake ⦃...⦄ public
open HasStakeDelegs ⦃...⦄ public
```
-->


## Delegation Definitions

```agda
data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Maybe Coin → DCert
  regpool     : KeyHash → StakePoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → Coin → DCert
  ccreghot    : Credential → Maybe Credential → DCert
```

<!--
```agda
  -- The `reg` cert is deprecated in Conway, but it's still present in this era
  -- for backwards compatibility. This has been added to the spec to make
  -- conformance testing work properly. We don't talk about this certificate
  -- in the docs because it has been deprecated and we want to discourage people
  -- from using it.
  reg         : Credential → Coin → DCert
```
-->

```agda
cwitness : DCert → Maybe Credential
cwitness (delegate c _ _ _)  = just c
cwitness (dereg c _)         = just c
cwitness (regpool kh _)      = just $ KeyHashObj kh
cwitness (retirepool kh _)   = just $ KeyHashObj kh
cwitness (regdrep c _ _)     = just c
cwitness (deregdrep c _)     = just c
cwitness (ccreghot c _)      = just c
```

<!--
```agda
-- The implementation requires the `reg` cert to be witnessed only if the
-- deposit is set. There didn't use to be a field for the deposit, but that was
-- added in the Conway era to make it easier to determine, just by looking at
-- the transaction, how much deposit was paid for that certificate.
cwitness (reg _ zero)        = nothing
cwitness (reg c (suc _))     = just c
```
-->


## Certification Types

```agda
record CertEnv : Type where
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : Withdrawals
    coldCreds : ℙ Credential

record DState : Type where
```

<!--
```agda
  constructor ⟦_,_,_⟧ᵈ
```
-->

```agda
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
```

<!--
```agda
  constructor ⟦_,_⟧ᵛ
```
-->

```agda
  field
    dreps      : DReps
    ccHotKeys  : Credential ⇀ Maybe Credential

record CertState : Type where
```

<!--
```agda
  constructor ⟦_,_,_⟧ᶜˢ
```
-->

```agda
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

  unquoteDecl HasCast-CertEnv HasCast-DState HasCast-PState HasCast-GState HasCast-CertState HasCast-DelegEnv = derive-HasCast
    (   (quote CertEnv , HasCast-CertEnv)
    ∷   (quote DState , HasCast-DState)
    ∷   (quote PState , HasCast-PState)
    ∷   (quote GState , HasCast-GState)
    ∷   (quote CertState , HasCast-CertState)
    ∷ [ (quote DelegEnv , HasCast-DelegEnv) ])

```
-->
