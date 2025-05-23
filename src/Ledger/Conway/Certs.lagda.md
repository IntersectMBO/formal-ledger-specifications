# Certificates {#sec:certificates}

<div class="agda-hidden-source">

```agda

{-# OPTIONS --safe #-}

open import Ledger.Prelude renaming (filterˢ to filter)
open import Ledger.Conway.Types.GovStructure
open import Ledger.Conway.Types.Numeric.UnitInterval

module Ledger.Conway.Certs (gs : _) (open GovStructure gs) where

open import Tactic.Derive.DecEq

open import Ledger.Conway.GovernanceActions gs
open RwdAddr
open PParams
```

</div>



### Deposit types

 *Derived types* 
```agda

data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

Deposits  = DepositPurpose ⇀ Coin
Rewards   = Credential ⇀ Coin
DReps     = Credential ⇀ Epoch
```
 
<div class="agda-hidden-source">

```agda

record HasDeposits {a} (A : Type a) : Type a where
  field DepositsOf : A → Deposits
open HasDeposits ⦃...⦄ public

record HasRewards {a} (A : Type a) : Type a where
  field RewardsOf : A → Rewards
open HasRewards  ⦃...⦄ public

record HasDReps {a} (A : Type a) : Type a where
  field DRepsOf : A → DReps
open HasDReps    ⦃...⦄ public

instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])
```

</div>


### Stake pool parameter definitions



```agda

record PoolParams : Type where
  field
    owners          : ℙ KeyHash
    cost            : Coin
    margin          : UnitInterval
    pledge          : Coin
    rewardAccount   : Credential
```
 
### Delegation definitions

 
```agda

data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Maybe Coin → DCert
  regpool     : KeyHash → PoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → Coin → DCert
  ccreghot    : Credential → Maybe Credential → DCert
```
 
<div class="agda-hidden-source">

```agda

  -- The `reg` cert is deprecated in Conway, but it's still present in this era
  -- for backwards compatibility. This has been added to the spec to make
  -- conformance testing work properly. We don't talk about this certificate
  -- in the pdf because it has been deprecated and we want to discourage people
  -- from using it.
  reg         : Credential → Coin → DCert
```

</div>
 
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


<div class="agda-hidden-source">

```agda

-- The implementation requires the `reg` cert to be witnessed only if the
-- deposit is set. There didn't use to be a field for the deposit, but that was
-- added in the Conway era to make it easier to determine, just by looking at
-- the transaction, how much deposit was paid for that certificate.
cwitness (reg _ zero)        = nothing
cwitness (reg c (suc _))     = just c
```

</div>
 
### Types used for CERTS transition system

 
```agda

record CertEnv : Type where
  field
    epoch     : Epoch
    pp        : PParams
    votes     : List GovVote
    wdrls     : RwdAddr ⇀ Coin
    coldCreds : ℙ Credential
```
 
<div class="agda-hidden-source">

```agda

record HasWdrls {a} (A : Type a) : Type a where
  field wdrlsOf : A → RwdAddr ⇀ Coin
open HasWdrls ⦃...⦄ public

instance
  HasWdrls-CertEnv : HasWdrls CertEnv
  HasWdrls-CertEnv .wdrlsOf = CertEnv.wdrls
```

</div>


```agda


record DState : Type where
```
 
<div class="agda-hidden-source">

```agda

  constructor ⟦_,_,_⟧ᵈ
```

</div>
 
```agda

  field
    voteDelegs   : Credential ⇀ VDeleg
    stakeDelegs  : Credential ⇀ KeyHash
    rewards      : Credential ⇀ Coin
```


<div class="agda-hidden-source">

```agda

record HasDState {a} (A : Type a) : Type a where
  field DStateOf : A → DState
open HasDState ⦃...⦄ public

record HasVDelegs {a} (A : Type a) : Type a where
  field voteDelegsOf : A → Credential ⇀ VDeleg
open HasVDelegs ⦃...⦄ public

instance
  HasVDelegs-DState : HasVDelegs DState
  HasVDelegs-DState .voteDelegsOf = DState.voteDelegs

  HasRewards-DState : HasRewards DState
  HasRewards-DState .RewardsOf = DState.rewards
```

</div>
 
```agda


record PState : Type where
  field
    pools     : KeyHash ⇀ PoolParams
    retiring  : KeyHash ⇀ Epoch
```
 
<div class="agda-hidden-source">

```agda

record HasPState {a} (A : Type a) : Type a where
  field PStateOf : A → PState
open HasPState ⦃...⦄ public
```

</div>


```agda


record GState : Type where
```
 
<div class="agda-hidden-source">

```agda

  constructor ⟦_,_⟧ᵛ
```

</div>
 
```agda

  field
    dreps      : DReps
    ccHotKeys  : Credential ⇀ Maybe Credential
```


<div class="agda-hidden-source">

```agda

record HasGState {a} (A : Type a) : Type a where
  field GStateOf : A → GState
open HasGState ⦃...⦄ public

instance
  HasDReps-GState : HasDReps GState
  HasDReps-GState .DRepsOf = GState.dreps
```

</div>
 
```agda


record CertState : Type where
```
 
<div class="agda-hidden-source">

```agda

  constructor ⟦_,_,_⟧ᶜˢ
```

</div>


```agda

  field
    dState : DState
    pState : PState
    gState : GState
```
 
<div class="agda-hidden-source">

```agda

record HasCertState {a} (A : Type a) : Type a where
  field CertStateOf : A → CertState
open HasCertState ⦃...⦄ public

instance
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
```

</div>
 
```agda


record DelegEnv : Type where
  field
    pparams       : PParams
    pools         : KeyHash ⇀ PoolParams
    delegatees    : ℙ Credential

GovCertEnv  = CertEnv
PoolEnv     = PParams
```


<div class="agda-hidden-source">

```agda

rewardsBalance : DState → Coin
rewardsBalance ds = ∑[ x ← DState.rewards ds ] x

instance
  HasCoin-CertState : HasCoin CertState
  HasCoin-CertState .getCoin = rewardsBalance ∘ CertState.dState
```

</div>



<div class="agda-hidden-source">

```agda

instance
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
  sDelegs stakeDelegs    : Credential ⇀ KeyHash
  ccKeys ccHotKeys       : Credential ⇀ Maybe Credential
  vDelegs voteDelegs     : Credential ⇀ VDeleg
  pools                  : KeyHash ⇀ PoolParams
  retiring               : KeyHash ⇀ Epoch
  wdrls                  : RwdAddr ⇀ Coin

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
  poolParams  : PoolParams
  pp          : PParams
  mv          : Maybe VDeleg

  stᵈ stᵈ' : DState
  stᵍ stᵍ' : GState
  stᵖ stᵖ' : PState
  cc : ℙ Credential
```

</div>


## Changes Introduced in Conway Era

### Delegation

Registered credentials can now delegate to a DRep as well as to a stake
pool. This is achieved by giving the
`delegate`{.agdainductiveconstructor} certificate two optional fields,
corresponding to a DRep and stake pool.

Stake can be delegated for voting and block production simultaneously,
since these are two separate features. In fact, preventing this could
weaken the security of the chain, since security relies on high
participation of honest stake holders.

### Removal of Pointer Addresses, Genesis Delegations and MIR Certificates

Support for pointer addresses, genesis delegations and MIR certificates
is removed (see and ). In `DState`{.agdadatatype}, this means that the
four fields relating to those features are no longer present, and
`DelegEnv`{.agdadatatype} contains none of the fields it used to in the
Shelley era (see ).

Note that pointer addresses are still usable, only their staking
functionality has been retired. So all funds locked behind pointer
addresses are still accessible, they just don’t count towards the stake
distribution anymore. Genesis delegations and MIR certificates have been
superceded by the new governance mechanisms, in particular the
`TreasuryWdrl`{.agdainductiveconstructor} governance action in case of
the MIR certificates.

### Explicit Deposits

Registration and deregistration of staking credentials are now required
to explicitly state the deposit that is being paid or refunded. This
deposit is used for checking correctness of transactions with
certificates. Including the deposit aligns better with other design
decisions such as having explicit transaction fees and helps make this
information visible to light clients and hardware wallets.

While not shown in the figures, the old certificates without explicit
deposits will still be supported for some time for backwards
compatibility.

## Governance Certificate Rules

The rules for transition systems dealing with individual certificates
are defined in
[Auxiliary DELEG transition system][], 
[Auxiliary POOL transition system][],
and [Auxiliary GOVCERT transition system][].


??? note "Conway specifics"


    ['Auxiliary DELEG transition system'](Ledger.Conway.Certs.md#auxiliary-deleg-transition-system) and ['Auxiliary GOVCERT transition system'](Ledger.Conway.Certs.md#auxiliary-govcert-transition-system).


GOVCERT deals with the new certificates relating to DReps and the
constitutional committee.

- `GOVCERTregdrep`{.agdainductiveconstructor} registers (or
  re-registers) a DRep. In case of registration, a deposit needs to be
  paid. Either way, the activity period of the DRep is reset.

- `GOVCERTderegdrep`{.agdainductiveconstructor} deregisters a DRep.

- `GOVCERTccreghot`{.agdainductiveconstructor} registers a “hot”
  credential for constitutional committee members.[^1] We check that the
  cold key did not previously resign from the committee. We allow this
  delegation for any cold credential that is either part of
  `EnactState`{.agdarecord} or is is a proposal. This allows a newly
  elected member of the constitutional committee to immediately delegate
  their vote to a hot key and use it to vote. Since votes are counted
  after previous actions have been enacted, this allows constitutional
  committee members to act without a delay of one epoch.


### Types for the transition systems relating to certificates



<div class="agda-hidden-source">

```agda

data
```

</div>
 
```agda

  _⊢_⇀⦇_,DELEG⦈_     : DelegEnv    → DState     → DCert       → DState     → Type
```
 
<div class="agda-hidden-source">

```agda

data
```

</div>


```agda

  _⊢_⇀⦇_,POOL⦈_      : PoolEnv     → PState     → DCert       → PState     → Type
```
 
<div class="agda-hidden-source">

```agda

data
```

</div>
 
```agda

  _⊢_⇀⦇_,GOVCERT⦈_   : GovCertEnv  → GState     → DCert       → GState     → Type
```


<div class="agda-hidden-source">

```agda

data
```

</div>
 
```agda

  _⊢_⇀⦇_,CERT⦈_      : CertEnv     → CertState  → DCert       → CertState  → Type
```
 
<div class="agda-hidden-source">

```agda

data
```

</div>


```agda

  _⊢_⇀⦇_,CERTBASE⦈_  : CertEnv     → CertState  → ⊤           → CertState  → Type
```
 
<div class="agda-hidden-source">

```agda

module _ where  -- achieves uniform (but perhaps misleading) alignment of type signatures in fig
```

</div>
 
```agda

  _⊢_⇀⦇_,CERTS⦈_     : CertEnv     → CertState  → List DCert  → CertState  → Type
```


<div class="agda-hidden-source">

```agda

  _⊢_⇀⦇_,CERTS⦈_ = ReflexiveTransitiveClosureᵇ' {_⊢_⇀⟦_⟧ᵇ_ = _⊢_⇀⦇_,CERTBASE⦈_} {_⊢_⇀⦇_,CERT⦈_}
```

</div>


### Auxiliary DELEG transition system



<div class="AgdaSuppressSpace">


<div class="agda-hidden-source">

```agda

data _⊢_⇀⦇_,DELEG⦈_ where
```

</div>
 
```agda

  DELEG-delegate :
    let Γ = ⟦ pp , pools , delegatees ⟧
    in
    ∙ (c ∉ dom rwds → d ≡ pp .keyDeposit)
    ∙ (c ∈ dom rwds → d ≡ 0)
    ∙ mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
        fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
    ∙ mkh ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
      ────────────────────────────────
      Γ ⊢  ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ delegate c mv mkh d ,DELEG⦈
           ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧

  DELEG-dereg :
    ∙ (c , 0) ∈ rwds
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ dereg c md ,DELEG⦈
        ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧

  DELEG-reg :
    ∙ c ∉ dom rwds
    ∙ d ≡ pp .keyDeposit ⊎ d ≡ 0
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢
        ⟦ vDelegs , sDelegs , rwds ⟧ ⇀⦇ reg c d ,DELEG⦈
        ⟦ vDelegs , sDelegs , rwds ∪ˡ ❴ c , 0 ❵ ⟧
```


</div>


### Auxiliary POOL transition system



<div class="AgdaSuppressSpace">


<div class="agda-hidden-source">

```agda

data _⊢_⇀⦇_,POOL⦈_ where
```

</div>
 
```agda

  POOL-regpool :
    ∙ kh ∉ dom pools
      ────────────────────────────────
      pp ⊢  ⟦ pools , retiring ⟧ ⇀⦇ regpool kh poolParams ,POOL⦈
            ⟦ ❴ kh , poolParams ❵ ∪ˡ pools , retiring ⟧

  POOL-retirepool :
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ ⇀⦇ retirepool kh e ,POOL⦈ ⟦ pools , ❴ kh , e ❵ ∪ˡ retiring ⟧
```


</div>


### Auxiliary GOVCERT transition system



<div class="AgdaSuppressSpace">


<div class="agda-hidden-source">

```agda

data _⊢_⇀⦇_,GOVCERT⦈_ where
```

</div>
 
```agda

  GOVCERT-regdrep :
    let Γ = ⟦ e , pp , vs , wdrls , cc ⟧
    in
    ∙ (d ≡ pp .drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps)
      ────────────────────────────────
      Γ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ regdrep c d an ,GOVCERT⦈
          ⟦ ❴ c , e + pp .drepActivity ❵ ∪ˡ dReps , ccKeys ⟧

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ deregdrep c d ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ dReps , ccKeys ⟧ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys ⟧
```


</div>

[CERTS rules][] assembles the CERTS
transition system by bundling the previously defined pieces together
into the CERT system, and then taking the reflexive-transitive closure
of CERT together with CERTBASE as the base case. CERTBASE does the
following:

- check the correctness of withdrawals and ensure that withdrawals only
  happen from credentials that have delegated their voting power;

- set the rewards of the credentials that withdrew funds to zero;

- and set the activity timer of all DReps that voted to
  `drepActivity`{.agdafield} epochs in the future.


### CERTS rules


*CERT transitions*

<div class="AgdaSuppressSpace">


<div class="agda-hidden-source">

```agda

data _⊢_⇀⦇_,CERT⦈_ where
```

</div>
 
```agda

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
```


</div>

*CERTBASE transition*

<div class="AgdaSuppressSpace">


<div class="agda-hidden-source">

```agda

data _⊢_⇀⦇_,CERTBASE⦈_ where
```

</div>
 
```agda

  CERT-base :
    let refresh          = mapPartial getDRepVote (fromList vs)
        refreshedDReps   = mapValueRestricted (const (e + pp .drepActivity)) dReps refresh
        wdrlCreds        = mapˢ stake (dom wdrls)
        validVoteDelegs  = voteDelegs ∣^ (  mapˢ (credVoter DRep) (dom dReps)
                                        ∪ fromList (noConfidenceRep ∷ abstainRep ∷ []) )
    in
    ∙ filter isKeyHash wdrlCreds ⊆ dom voteDelegs
    ∙ mapˢ (map₁ stake) (wdrls ˢ) ⊆ rewards ˢ
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢
        ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧
        , stᵖ
        , ⟦ dReps , ccHotKeys ⟧
        ⟧ ⇀⦇ _ ,CERTBASE⦈
        ⟦ ⟦ validVoteDelegs , stakeDelegs , constMap wdrlCreds 0 ∪ˡ rewards ⟧
        , stᵖ
        , ⟦ refreshedDReps , ccHotKeys ⟧
        ⟧
```


</div>

[^1]: By “hot” and “cold” credentials we mean the following: a cold
    credential is used to register a hot credential, and then the hot
    credential is used for voting. The idea is that the access to the
    cold credential is kept in a secure location, while the hot
    credential is more conveniently accessed. If the hot credential is
    compromised, it can be changed using the cold credential.
