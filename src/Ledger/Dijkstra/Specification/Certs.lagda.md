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
```

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
    epoch           : Epoch
    pp              : PParams
    votes           : List GovVote
    wdrls           : Withdrawals
    coldCreds       : ℙ Credential
    directDeposits  : DirectDeposits

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
    fPools    : Pools
    retiring  : Retiring
    deposits  : KeyHash ⇀ Coin

record GState : Type where
  constructor ⟦_,_,_⟧ᵛ
  field
    dreps      : DReps
    ccHotKeys  : CCHotKeys
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

  HasDirectDeposits-CertEnv : HasDirectDeposits CertEnv
  HasDirectDeposits-CertEnv .DirectDepositsOf = CertEnv.directDeposits

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
  dd                     : DirectDeposits
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

Since it underpins both `applyDirectDeposits`{.AgdaFunction} and
`applyWithdrawals`{.AgdaFunction}, the `applyToRewards`{.AgdaFunction} function
bears explaining.  Given three arguments —
a binary function `f` (e.g., addition or subtraction),
a map `m` from `RewardAddress`{.AgdaDatatype} to `Coin`{.AgdaDatatype} (e.g.,
direct deposits or withdrawals), and
a `Rewards` map (of account balances) — for each `(addr , amt)`, the
`applyToRewards`{.AgdaFunction} function does the following:

1.  Look up `stake addr` in the accumulator.
2.  If found with current balance `bal`, replace the entry with `(stake addr, f bal amt)`.
    *Note*. since `∪ˡ` is left-biased, the fresh singleton wins at `stake addr` and all
    other entries of `acc` are preserved; no explicit complement restriction is needed.
3.  If not found (defensive; the caller's precondition will rule this out), return `acc`
    unchanged; this keeps `applyToRewards` total.

```agda
applyToRewards : (Coin → Coin → Coin) → (RewardAddress ⇀ Coin) → Rewards → Rewards
applyToRewards f m rwds =
  foldl (λ acc (addr , amt) → maybe (λ bal → ❴ stake addr , f bal amt ❵ ∪ˡ acc) acc (lookupᵐ? acc (stake addr)))
        rwds
        (setToList (m ˢ))

rewardsBalance : DState → Coin
rewardsBalance ds = ∑[ x ← RewardsOf ds ] x

applyDirectDeposits : DirectDeposits → Rewards → Rewards
applyDirectDeposits = applyToRewards _+_
```

The `POST-CERT`{.AgdaDatatype} rule calls `applyDirectDeposits`{.AgdaFunction} to
credit each transaction's direct deposits to its account balances after certificate
processing.  See *Direct Deposit Application (CIP-159)* below for details.

```agda
applyWithdrawals : Withdrawals → Rewards → Rewards
applyWithdrawals = applyToRewards _∸_
```

In the Dijkstra era, CIP-159 allows **partial withdrawals**: a transaction may
withdraw any amount up to the current account balance.
`applyWithdrawals`{.AgdaFunction} subtracts each withdrawal amount from the
corresponding account balance.  Full withdrawals remain valid as a special case
(where the withdrawn amount equals the balance, leaving a zero balance).

The `PRE-CERT`{.AgdaDatatype} rule calls `applyWithdrawals`{.AgdaFunction}
to process withdrawals as part of certificate processing.

<!--
```agda
instance
  HasCoin-CertState : HasCoin CertState
  HasCoin-CertState .getCoin = rewardsBalance ∘ DStateOf

  unquoteDecl DecEq-StakePoolParams = derive-DecEq
    ((quote StakePoolParams , DecEq-StakePoolParams) ∷ [])
  unquoteDecl DecEq-DCert = derive-DecEq
    ((quote DCert , DecEq-DCert) ∷ [])
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
    ∙ (c , d) ∈ deposits
    ∙ md ≡ nothing ⊎ md ≡ just d
      ────────────────────────────────
      ⟦ pp , pools , delegatees ⟧ ⊢ ⟦ vDelegs , sDelegs , rwds , deposits ⟧ ⇀⦇ dereg c md ,DELEG⦈ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ , deposits ∣ ❴ c ❵ ᶜ ⟧


isPoolRegistered : Pools -> KeyHash -> Maybe StakePoolParams
isPoolRegistered ps kh = lookupᵐ? ps kh

-- Auxiliary POOL transition system --
data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Type where

  POOL-reg :
    ∙ Is-nothing (isPoolRegistered pools kh)
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
    ∙ Is-just (isPoolRegistered pools kh)
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
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ dReps , ccKeys , deposits ⟧ ⇀⦇ regdrep c d an ,GOVCERT⦈ ⟦ ❴ c , e + pp .drepActivity ❵ ∪ˡ dReps , ccKeys , deposits ∪⁺ ❴ c , d ❵ ⟧

  GOVCERT-deregdrep :
    ∙ c ∈ dom dReps
    ∙ (c , d) ∈ deposits
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ dReps , ccKeys , deposits ⟧ ⇀⦇ deregdrep c d ,GOVCERT⦈ ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys , deposits ∣ ❴ c ❵ ᶜ ⟧

  GOVCERT-ccreghot :
    ∙ (c , nothing) ∉ ccKeys
    ∙ c ∈ cc
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ dReps , ccKeys , deposits ⟧ ⇀⦇ ccreghot c mc ,GOVCERT⦈ ⟦ dReps , ❴ c , mc ❵ ∪ˡ ccKeys , deposits ⟧

-- CERT Transition System --
data _⊢_⇀⦇_,CERT⦈_  : CertEnv → CertState → DCert → CertState → Type where

  CERT-deleg :
    ∙ ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧

  CERT-pool :
    ∙ pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ' , stᵍ ⟧

  CERT-gov :
    ∙ Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
      ────────────────────────────────
      Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ , stᵖ , stᵍ' ⟧
```

## PRE-CERT Transition Rule

### Withdrawal Processing

The `PRE-CERT`{.AgdaDatatype} rule processes withdrawals before certificate
evaluation.  In the Dijkstra era, CIP-159 extends the withdrawal semantics from an
"all-or-nothing" model (where the withdrawn amount must equal the full account
balance) to a "partial withdrawal" model (where any amount up to the full balance
may be withdrawn).

The precondition checks that each withdrawal targets a registered account and that
the withdrawal amount does not exceed the account's current balance.  The effect
subtracts the withdrawal amounts from the corresponding account balances via
`applyWithdrawals`{.AgdaFunction}.

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
    ∙ wdrlCreds ⊆ dom rewards
    ∙ ∀[ (addr , amt) ∈ wdrls ˢ ] amt ≤ maybe id 0 (lookupᵐ? rewards (stake addr))
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ , stᵖ , ⟦ dReps , ccHotKeys , deposits' ⟧ ⟧ ⇀⦇ _ ,PRE-CERT⦈ ⟦ ⟦ voteDelegs , stakeDelegs , applyWithdrawals wdrls rewards , deposits ⟧ , stᵖ , ⟦ refreshedDReps , ccHotKeys , deposits' ⟧ ⟧
```

**TODO**: Version restriction (deferred).  CIP-159 specifies that partial withdrawals are
only permitted in transactions without Plutus v1–v3 scripts (i.e., `legacyMode ≡ false`).
Enforcing this requires threading `legacyMode` into `CertEnv`, which in turn requires
changes to the `SUBLEDGER` and `LEDGER` rules.  This restriction will be added in a
follow-up issue.

## POST-CERT Transition Rule

### Direct Deposit Application (CIP-159)

The `POST-CERT`{.AgdaDatatype} rule applies CIP-159 direct deposits to the
threaded `CertState`{.AgdaRecord} after all individual `CERT`{.AgdaDatatype} steps
for the transaction have run, alongside its existing `voteDelegs`{.AgdaField}
filtering.  Specifically:

+  `voteDelegs`{.AgdaField} is restricted to credentials that delegate to a
   currently-registered `DRep`{.AgdaInductiveConstructor} (or to the abstain /
   no-confidence pseudo-DReps).
+  `rewards`{.AgdaField} is augmented by `directDeposits`{.AgdaField} via
   `∪⁺`{.AgdaFunction} (union with addition) — equivalently,
   `applyDirectDeposits directDeposits` is applied to the threaded
   `DState`{.AgdaRecord}.

The premise `dom directDeposits ⊆ dom rewards` ensures that
`applyDirectDeposits`{.AgdaFunction} does not silently re-introduce a credential
into `rewards`{.AgdaField} that was deregistered earlier in the same
transaction's `CERT`{.AgdaDatatype} steps (and is therefore no longer present in
`voteDelegs`{.AgdaField}, `stakeDelegs`{.AgdaField}, or `deposits`{.AgdaField}),
which would produce an inconsistent `DState`{.AgdaRecord}.  The check is
performed against the post-`CERT`{.AgdaDatatype} `rewards`{.AgdaField} of the
*same* transaction, so deregistrations performed by *prior* sub-transactions in
the same batch are correctly accounted for: a sub-transaction whose deposit
targets a credential deregistered earlier in the batch will fail this premise.

The phantom-asset prohibition of CIP-159 — that withdrawals in one
sub-transaction may not draw from deposits made by an earlier sub-transaction in
the same batch — is enforced separately in the `Utxo`{.AgdaModule} module by the
`NoPhantomWithdrawals`{.AgdaFunction} predicate, which bounds *batch-wide*
withdrawal totals (per reward address) by the `accountBalances`{.AgdaField} field
of `UTxOEnv`{.AgdaRecord} / `SubUTxOEnv`{.AgdaRecord} — the *pre-batch* snapshot
`RewardsOf certState₀`{.AgdaBound}.  Because `accountBalances`{.AgdaField} is
fixed at the pre-batch value and never updated by direct deposit application,
the phantom-asset prohibition holds regardless of the per-transaction
`rewards`{.AgdaField} updates done by `POST-CERT`{.AgdaDatatype}.


```agda
data _⊢_⇀⦇_,POST-CERT⦈_ : CertEnv → CertState → ⊤ → CertState → Type where

  CERT-post :
    let activeVDelegs = mapˢ vDelegCredential (dom (DRepsOf stᵍ))
                         ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])
    in
    ∙ mapˢ stake (dom dd) ⊆ dom rewards
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ , stᵖ , stᵍ ⟧ ⇀⦇ _ ,POST-CERT⦈ ⟦ ⟦ voteDelegs ∣^ activeVDelegs , stakeDelegs , applyDirectDeposits dd rewards , deposits ⟧ , stᵖ , stᵍ ⟧



-- CERTS Transition System --

_⊢_⇀⦇_,CERTS⦈_  : CertEnv → CertState  → List DCert  → CertState  → Type
_⊢_⇀⦇_,CERTS⦈_ = RunTraceAfterAndThen _⊢_⇀⦇_,PRE-CERT⦈_ _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_
```
