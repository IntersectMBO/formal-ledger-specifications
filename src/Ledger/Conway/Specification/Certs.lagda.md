---
source_branch: master
source_path: src/Ledger/Conway/Specification/Certs.lagda.md
---

# Certificates {#sec:certificates}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Gov.Base

module Ledger.Conway.Specification.Certs (gs : _) (open GovStructure gs) where

open import Ledger.Prelude renaming (filterˢ to filter)

open import Ledger.Core.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Core.Specification.Certs gs public
open RewardAddress
open PParams

private variable
  an                  : Anchor
  dReps               : DReps
  ccKeys ccHotKeys    : CCHotKeys
  c                   : Credential
  cc                  : ℙ Credential
  d                   : Coin
  delegatees          : ℙ Credential
  e                   : Epoch
  Γ                   : CertEnv
  kh                  : KeyHash
  mc                  : Maybe Credential
  md                  : Maybe Coin
  mkh                 : Maybe KeyHash
  mvd                 : Maybe VDeleg
  pools fPools        : Pools
  poolParams          : StakePoolParams
  pp                  : PParams
  retiring            : Retiring
  rwds rewards        : Rewards
  sDelegs stakeDelegs : StakeDelegs
  stᵈ stᵈ'            : DState
  stᵍ stᵍ'            : GState
  stᵖ stᵖ'            : PState
  vDelegs voteDelegs  : VoteDelegs
  dCert               : DCert
  vs                  : List GovVote
  wdrls               : Withdrawals
```
-->

## Changes Introduced in the Conway Era

### Delegation

Registered credentials can now delegate to a `DRep`{.AgdaInductiveConstructor}
as well as to a stake pool.  This is achieved by giving the
`delegate`{.AgdaInductiveConstructor} certificate two optional fields,
corresponding to a `DRep`{.AgdaInductiveConstructor} and stake pool.

Stake can be delegated for voting and block production simultaneously,
since these are two separate features. In fact, preventing this could
weaken the security of the chain, since security relies on high
participation of honest stake holders.

### Removal of Pointer Addresses, Genesis Delegations and MIR Certificates

Support for pointer addresses, genesis delegations and MIR certificates
is removed (see [CIP-1694](https://cips.cardano.org/cip-1694) and
[CKB+23](#cip1694)). In `DState`{.AgdaDatatype}, this means that the
four fields relating to those features are no longer present, and
`DelegEnv`{.AgdaDatatype} contains none of the fields it used to in the
Shelley era (see [CVG19, ](#shelley-ledger-spec)).

Note that pointer addresses are still usable, only their staking
functionality has been retired. So all funds locked behind pointer
addresses are still accessible, they just don’t count towards the stake
distribution anymore. Genesis delegations and MIR certificates have been
superceded by the new governance mechanisms, in particular the
`TreasuryWithdrawal`{.AgdaInductiveConstructor} governance action in
case of the MIR certificates.

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
Sections [Auxiliary `DELEG`{.AgdaDatatype} Transition System](#auxiliary-deleg-transition-system),
[Auxiliary `POOL`{.AgdaDatatype} transition system](#auxiliary-pool-transition-system), and
[Auxiliary `GOVCERT`{.AgdaDatatype} transition system](#auxiliary-govcert-transition-system).

`GOVCERT`{.AgdaDatatype} deals with the new certificates relating to
`DReps`{.AgdaInductiveConstructor} and the constitutional committee.

+  `GOVCERT-regdrep`{.AgdaInductiveConstructor} registers (or
   re-registers) a `DRep`{.AgdaInductiveConstructor}.  In case of registration,
   a deposit needs to be paid.  Either way, the activity period of the
   `DRep`{.AgdaInductiveConstructor} is reset.

+  `GOVCERT-deregdrep`{.AgdaInductiveConstructor} deregisters a
   `DRep`{.AgdaInductiveConstructor}.

+  `GOVCERT-ccreghot`{.AgdaInductiveConstructor} registers a "hot"
   credential for constitutional committee members.[^1] We check that the
   cold key did not previously resign from the committee. We allow this
   delegation for any cold credential that is either part of
   `EnactState`{.AgdaRecord} or a proposal. This allows a newly
   elected member of the constitutional committee to immediately delegate
   their vote to a hot key and use it to vote. Since votes are counted
   after previous actions have been enacted, this allows constitutional
   committee members to act without a delay of one epoch.


### Auxiliary DELEG transition system

```agda
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
```


### Auxiliary POOL transition system

??? info "Differences with the Shelley Specification"

       We are deviating in style from the Shelley specification here. In the
       Shelley specification (Figure 25), the POOL transition system has three rules.
       Here we use a single rule to register and to reregister pools, which is the way
       in which the Haskell implementation does it as well.

       Note, in particular, how the regpool rule only sets the pool parameters of
       the current epoch only if the pool is not already registered. And conversely,
       the future pool parameters are updated only if the pool is already registered.

```agda
isPoolRegistered : Pools -> KeyHash -> Maybe StakePoolParams
isPoolRegistered ps kh = lookupᵐ? ps kh

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
```


### Auxiliary GOVCERT transition system

```agda
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
```

## The <span class="AgdaDatatype">CERTS</span> Transition System {#sec:the-certs-transition-system}

This section culminates in the definition of the `CERTS`{.AgdaDatatype} transition
system by bundling previously defined pieces together into a
`CERT`{.AgdaDatatype} transition rule which `CERTS`{.AgdaDatatype} runs on a sequence
of signals, keeping track of the certification state as it progresses.

### The <span class="AgdaDatatype">CERT</span> Transition System

```agda
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
```

### The <span class="AgdaFunction">PRE-CERT</span> Transition Rule

Here we define the `PRE-CERT`{.AgdaDatatype} transition rule.  This rule is applied
at the start of the `CERTS`{.AgdaDatatype} transition rule and handles the following
important housekeeping tasks:

+  check the correctness of withdrawals and ensure that withdrawals only
   happen from credentials that have delegated their voting power;

+  set the activity timer of all `DReps`{.AgdaInductiveConstructor} that voted
   to `drepActivity`{.AgdaField} epochs in the future;

+  set the rewards of the credentials that withdrew funds to zero.

Regarding the second item, if there is a new governance proposal to vote on in this transaction,
then expiry for all `DReps`{.AgdaInductiveConstructor} will be increased by
the number of dormant epochs.  However, the `PRE-CERT`{.AgdaDatatype} transition occurs in
`LEDGER`{.AgdaDatatype} *before* the `GOV`{.AgdaDatatype} rule, so it cannot validate
any governance proposal.  This is not a problem since the entire transaction will
fail if the proposal is not accepted in the `GOV`{.AgdaDatatype} rule.

<!--
```agda
open GovVote using (voter)
```
-->

```agda
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
```

### The <span class="AgdaFunction">POST-CERT</span> Transition Rule

The `POST-CERT`{.AgdaFunction} transition rule is applied at the end of the
`CERTS`{.AgdaDatatype} rule and it ensures that only valid registered
`DReps`{.AgdaInductiveConstructor} are included in the final `CertState`{.AgdaRecord}.

```agda
data _⊢_⇀⦇_,POST-CERT⦈_ : CertEnv → CertState → ⊤ → CertState → Type where

  CERT-post :
    let activeVDelegs = mapˢ vDelegCredential (dom (DRepsOf stᵍ))
                         ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])
    in
      ⟦ e , pp , vs , wdrls , cc ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ , stᵖ , stᵍ ⟧ ⇀⦇ _ ,POST-CERT⦈ ⟦ ⟦ voteDelegs ∣^ activeVDelegs , stakeDelegs , rewards ⟧ , stᵖ , stᵍ ⟧

_⊢_⇀⦇_,CERTS⦈_  : CertEnv → CertState  → List DCert  → CertState  → Type
_⊢_⇀⦇_,CERTS⦈_ = RunTraceAfterAndThen _⊢_⇀⦇_,PRE-CERT⦈_ _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_
```

# References {#references .unnumbered}

**\[CKB+23\]** <span id="cip1694" label="cip1694"></span> Jared Corduan
and Andre Knispel and Matthias Benkort and Kevin Hammond and Charles
Hoskinson and Samuel Leathers. *A First Step Towards On-Chain
Decentralized Governance*. 2023.

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.

[^1]: By "hot" and "cold" credentials we mean the following: a cold
    credential is used to register a hot credential, and then the hot
    credential is used for voting. The idea is that the access to the
    cold credential is kept in a secure location, while the hot
    credential is more conveniently accessed. If the hot credential is
    compromised, it can be changed using the cold credential.
