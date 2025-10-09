---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ratify.lagda.md
---

# Ratification {#sec:ratification}

<!--
```agda

{-# OPTIONS --safe #-}

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ; _⊔_)
open import Data.Nat.Properties hiding (_≟_; _≤?_)

open import Ledger.Prelude hiding (_∧_; _∨_; _⊔_) renaming (filterᵐ to filter; ∣_∣ to _↓)
open import Ledger.Conway.Specification.Transaction hiding (Vote)

module Ledger.Conway.Specification.Ratify (txs : _) (open TransactionStructure txs) where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)
```
-->

Governance actions are ratified through on-chain votes. Different kinds
of governance actions have different ratification requirements but
always involve at least two of the three governance bodies.

A successful motion of no-confidence, election of a new constitutional
committee, a constitutional change, or a hard-fork delays ratification
of all other governance actions until the first epoch after their
enactment. This gives a new constitutional committee enough time to vote
on current proposals, re-evaluate existing proposals with respect to a
new constitution, and ensures that the (in principle arbitrary) semantic
changes caused by enacting a hard-fork do not have unintended
consequences in combination with other actions.

## Ratification Requirements {#sec:ratification-requirements}

The section on [Voting Functions](Ledger.Conway.Specification.Ratify.md#sec:voting-functions)
details the ratification requirements for each governance action
scenario. For a governance action to be ratified, all of these
requirements must be satisfied, on top of other conditions that are
explained further down. The `threshold`{.AgdaFunction} function is
defined as a table, with a row for each type of
`GovAction`{.AgdaDatatype} and a column for each of the three governing bodies
(or "governance roles")---`CC`{.AgdaInductiveConstructor},
`DRep`{.AgdaInductiveConstructor} and `SPO`{.AgdaInductiveConstructor}, in that order.

The meaning of the symbols are as follows.

+  `vote`{.AgdaFunction} `x`{.AgdaBound}: For an action to pass, the fraction of
   stake associated with yes votes with respect to that associated with yes and
   no votes must exceed the threshold `x`{.AgdaBound}.

+  `─`{.AgdaFunction}: The governance role does not participate in voting.

+  `✓`{.AgdaFunction}: The constitutional committee needs to approve an
   action, with the threshold assigned to it.

+  `✓†`{.AgdaFunction}: Voting is possible, but the action will never be
   enacted.  This is equivalent to `vote`{.AgdaFunction} `2` (or any other
   number above `1`).

Two rows in this table contain functions that compute the
`DRep`{.AgdaInductiveConstructor} and `SPO`{.AgdaInductiveConstructor}
thresholds simultaneously---namely, the
`UpdateCommittee`{.AgdaInductiveConstructor} and
`ChangePParams`{.AgdaInductiveConstructor} rows.

For `UpdateCommittee`{.AgdaInductiveConstructor}, there can be different
thresholds depending on whether the system is in a state of no-confidence or not.
This information is provided via the `ccThreshold`{.AgdaBound} argument; if the
system is in a state of no-confidence, then `ccThreshold`{.AgdaBound} is set to
`nothing`{.AgdaInductiveConstructor}.

In case of the `ChangePParams`{.AgdaInductiveConstructor} action, the thresholds
further depend on what groups the action is associated with.
`pparamThreshold`{.AgdaFunction} associates a pair of thresholds to each
individual group. Since an individual update can contain multiple groups, the actual
thresholds are then given by taking the maximum of all those thresholds.

Note that each protocol parameter belongs to exactly one of the four groups that have
a `DRep`{.AgdaInductiveConstructor} threshold, so a `DRep`{.AgdaInductiveConstructor}
vote will always be required. A protocol parameter may or may not be in the
`SecurityGroup`{.AgdaInductiveConstructor}, so an `SPO`{.AgdaInductiveConstructor}
vote may not be required.

Finally, each of the `Pₓ`{.AgdaFunction} and `Qₓ`{.AgdaFunction} in the section on
[Voting Functions](Ledger.Conway.Specification.Ratify.md#sec:voting-functions) are
protocol parameters.

## Voting Functions {#sec:voting-functions}

<!--
```agda
private
  ∣_∣_∣_∣ : {A : Type} → A → A → A → GovRole → A
  ∣ q₁ ∣ q₂ ∣ q₃ ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

  ∣_∥_∣ : {A : Type} → A → A × A → GovRole → A
  ∣ q₁ ∥ (q₂ , q₃) ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

```
-->

```agda
threshold : PParams → Maybe ℚ → GovAction → GovRole → Maybe ℚ
threshold pp ccThreshold ga =
  case  ga ↓ of λ where
        (NoConfidence        , _       ) → ∣ ─   ∣ vote P1      ∣ vote Q1  ∣
        (UpdateCommittee     , _       ) → ∣ ─   ∥ P/Q2a/b                 ∣
        (NewConstitution     , _       ) → ∣ ✓   ∣ vote P3      ∣ ─        ∣
        (TriggerHardFork     , _       ) → ∣ ✓   ∣ vote P4      ∣ vote Q4  ∣
        (ChangePParams       , update  ) → ∣ ✓   ∥ P/Q5 update             ∣
        (TreasuryWithdrawal  , _       ) → ∣ ✓   ∣ vote P6      ∣ ─        ∣
        (Info                , _       ) → ∣ ✓†  ∣ ✓†           ∣ ✓†       ∣
          where
```
<!--
```agda
          open PParams pp
          open DrepThresholds drepThresholds
          open PoolThresholds poolThresholds
```
-->
```agda
          vote : ℚ → Maybe ℚ
          vote = just

          defer : ℚ
          defer = ℚ.1ℚ ℚ.+ ℚ.1ℚ

          maxThreshold : ℙ (Maybe ℚ) → Maybe ℚ
          maxThreshold x = foldl _∨_ nothing (proj₁ $ finiteness x)
            where
            _∨_ : Maybe ℚ → Maybe ℚ → Maybe ℚ
            just x  ∨ just y  = just (x ⊔ y)
            just x  ∨ nothing = just x
            nothing ∨ just y  = just y
            nothing ∨ nothing = nothing

          ─ ✓ ✓† : Maybe ℚ
          ─  = nothing
          ✓  = maybe just ✓† ccThreshold
          ✓† = vote defer

          P/Q2a/b : Maybe ℚ × Maybe ℚ
          P/Q2a/b =  case ccThreshold of λ where
                     (just _)  → (vote P2a , vote Q2a)
                     nothing   → (vote P2b , vote Q2b)

          pparamThreshold : PParamGroup → Maybe ℚ × Maybe ℚ
          pparamThreshold NetworkGroup     = (vote P5a  , ─        )
          pparamThreshold EconomicGroup    = (vote P5b  , ─        )
          pparamThreshold TechnicalGroup   = (vote P5c  , ─        )
          pparamThreshold GovernanceGroup  = (vote P5d  , ─        )
          pparamThreshold SecurityGroup    = (─         , vote Q5  )

          P/Q5 : PParamsUpdate → Maybe ℚ × Maybe ℚ
          P/Q5 ppu = maxThreshold (mapˢ (proj₁ ∘ pparamThreshold) (updateGroups ppu))
                   , maxThreshold (mapˢ (proj₂ ∘ pparamThreshold) (updateGroups ppu))

canVote : PParams → GovAction → GovRole → Type
canVote pp a r = Is-just (threshold pp nothing a r)
```

## Protocol Parameters and Governance Actions {#sec:protocol-parameters-and-governance-actions}

Voting thresholds for protocol parameters can be set by group, and we do
not require that each protocol parameter governance action be confined
to a single group. In case a governance action carries updates for
multiple parameters from different groups, the maximum threshold of all
the groups involved will apply to any given such governance action.

The purpose of the `SecurityGroup`{.AgdaInductiveConstructor} is to add
an additional check to security-relevant protocol parameters. Any
proposal that includes a change to a security-relevant protocol
parameter must also be accepted by at least half of the SPO stake.

## Ratification Types and Functions {#sec:ratification-types-and-functions}

This section defines some types and functions used in the `RATIFY`{.AgdaDatatype}
transition system.

```agda
record StakeDistrs : Type where
  field
    stakeDistrVDeleg  : VDeleg  ⇀ Coin
    stakeDistrPools   : KeyHash ⇀ Coin

record RatifyEnv : Type where
  field
    stakeDistrs   : StakeDistrs
    currentEpoch  : Epoch
    dreps         : Credential ⇀ Epoch
    ccHotKeys     : Credential ⇀ Maybe Credential
    treasury      : Treasury
    pools         : KeyHash ⇀ StakePoolParams
    delegatees    : VoteDelegs

record RatifyState : Type where
  field
    es       : EnactState
    removed  : ℙ (GovActionID × GovActionState)
    delay    : Bool
```

<!--
```agda
record HasRatifyState {a} (A : Type a) : Type a where
  field RatifyStateOf : A → RatifyState
open HasRatifyState ⦃...⦄ public

instance
  HasEnactState-RatifyState : HasEnactState RatifyState
  HasEnactState-RatifyState .EnactStateOf = RatifyState.es

  HasTreasury-RatifyEnv : HasTreasury RatifyEnv
  HasTreasury-RatifyEnv .TreasuryOf = RatifyEnv.treasury
```
-->

As mentioned earlier, most governance actions must include a
`GovActionID`{.AgdaDatatype} for the most recently enacted action of the given type.
Consequently, two actions of the same type can be enacted at the same time, but they
must be *deliberately* designed to do so.

<!--
```agda
instance
  unquoteDecl HasCast-StakeDistrs HasCast-RatifyEnv HasCast-RatifyState = derive-HasCast
    (   (quote StakeDistrs , HasCast-StakeDistrs)
    ∷   (quote RatifyEnv , HasCast-RatifyEnv)
    ∷ [ (quote RatifyState , HasCast-RatifyState) ])
```
-->

## Vote Counting {#sec:vote-counting}

This section defines the `acceptedBy`{.AgdaFunction} predicate for each of the
governing bodies. Given the current state of the votes and other parts
of the system these functions calculate whether a governance action is
ratified by the corresponding body.

### Constitutional Committee (CC) Vote Counting {#sec:cc-vote-counting}

This subsection defines the `acceptedByCC`{.AgdaFunction} predicate, which
utilizes the following auxiliary definitions.

+  `castVotes`{.AgdaFunction}: This map contains the votes that have been
   cast by members of the `CC`{.AgdaInductiveConstructor} and are
   part of the `GovActionState`{.AgdaDatatype} `gaSt`{.AgdaBound}.

+  `getCCHotCred`{.AgdaFunction}: This function maps a `Credential`{.AgdaDatatype}
   and an `Epoch`{.AgdaDatatype} to the hot key corresponding to the given
   credential, in case this has not expired.

+  `actualVote`{.AgdaFunction}: This function sets the default vote for
   `CC`{.AgdaInductiveConstructor} members.  If the given
   `CC`{.AgdaInductiveConstructor} member's term has expired, if they have not
   yet registered a hot key, or if they have resigned, then
   `actualVote`{.AgdaFunction} returns `abstain`{.AgdaInductiveConstructor}; if none
   of these conditions is met, then

    +  if the `CC`{.AgdaInductiveConstructor} member has voted, then that
       vote is returned;

    +  if the `CC`{.AgdaInductiveConstructor} member has not voted, then
       the default value `no`{.AgdaInductiveConstructor} is returned.

+  `actualVotes`{.AgdaFunction}: This map contains the actual votes of
   the `CC`{.AgdaInductiveConstructor}.  If the commitee does not exists then it is
   the empty map, otherwise,

    +  if the number of `CC`{.AgdaInductiveConstructor} members with a registered hot
       key is greater than the protocol parameter `ccMinSize`{.AgdaBound}, then
       `actualVote`{.AgdaFunction} is returned (as a map), otherwise,

    +  all commitee members vote `no`{.AgdaInductiveConstructor}.

+  `mT`{.AgdaFunction}: This is the threshold of the `CC`{.AgdaInductiveConstructor}.
   It may be `nothing`{.AgdaInductiveConstructor}.

+  `stakeDistr`{.AgdaFunction} computes the stake distribution.  Note that every
   constitutional committe member has a stake of 1, giving them equal voting power.
   However, just as with other delegation, multiple `CC`{.AgdaInductiveConstructor}
   members can delegate to the same hot key, giving a single vote with that hot key
   the power of those multiple voting stakes.

+  `acceptedStake`{.AgdaFunction}: This is the portion of `CC`{.AgdaInductiveConstructor}
   stake that voted `yes`{.AgdaInductiveConstructor}.

+  `totalStake`{.AgdaFunction}: This is the portion of `CC`{.AgdaInductiveConstructor}
   stake that voted either `yes`{.AgdaInductiveConstructor} or `no`{.AgdaInductiveConstructor}.

In addition, it must be the case that either

+  the size of the `CC`{.AgdaInductiveConstructor} is greater than
   `ccMinSize`{.AgdaBound}, or

+  the threshold function returns `nothing`{.AgdaInductiveConstructor}.

```agda
acceptedByCC : RatifyEnv → EnactState → GovActionState → Type
acceptedByCC Γ eSt gaSt =
  (acceptedStake /₀ totalStake) ≥ t
  × (maybe (λ (m , _) → lengthˢ m) 0 (proj₁ cc) ≥ ccMinSize ⊎ Is-nothing mT)
  where
```
<!--
```agda
  open EnactState eSt using (cc; pparams)
  open RatifyEnv Γ
  open PParams (proj₁ pparams)
  open GovActionState gaSt
  open GovVotes votes using (gvCC)
```
-->
```agda
  castVotes : Credential ⇀ Vote
  castVotes = gvCC

  getCCHotCred : Credential × Epoch → Maybe Credential
  getCCHotCred (c , e) =
    if currentEpoch > e
    then nothing -- credential has expired
    else case lookupᵐ? ccHotKeys c of λ where
      (just (just c'))  → just c'
      _                 → nothing -- hot key not registered or resigned

  actualVote : Credential → Epoch → Vote
  actualVote c e = case getCCHotCred (c , e) of λ where
    (just c')  → maybe id Vote.no (lookupᵐ? castVotes c')
    _          → Vote.abstain

  actualVotes : Credential ⇀ Vote
  actualVotes = case proj₁ cc of λ where
    nothing         →  ∅
    (just (m , _))  →  if ccMinSize ≤ lengthˢ (mapFromPartialFun getCCHotCred (m ˢ))
                       then mapWithKey actualVote m
                       else constMap (dom m) Vote.no

  mT : Maybe ℚ
  mT = threshold (proj₁ pparams) (proj₂ <$> (proj₁ cc)) action CC

  t : ℚ
  t = maybe id 0ℚ mT

  stakeDistr : Credential ⇀ Coin
  stakeDistr = constMap (dom actualVotes) 1

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistr ∣ actualVotes ⁻¹ Vote.yes ] x
  totalStake     = ∑[ x ← stakeDistr ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x
```

### DRep Vote Counting {#sec:dreps-vote-counting}

This section defines the predicate `acceptedByDRep`{.AgdaFunction}, which depends on
the following auxiliary definitions.

+  `activeDReps`{.AgdaFunction}: This set contains all
   `DReps`{.AgdaInductiveConstructor} whose term has not expired.

+  `predeterminedDRepVotes`{.AgdaFunction}: This map collects the predetermined votes
   for the `VDeleg`{.AgdaDatatype}; it depends on the governance action at hand.

+  `defaultDRepCredentialVote`{.AgdaFunction}: This map sets the default vote to
   `no`{.AgdaInductiveConstructor} for all the active `DReps`{.AgdaInductiveConstructor}.

+  `actualVotes`{.AgdaFunction}: This map joins together in order of preference: the
   votes cast, the default votes and the predetermined votes.

+  `acceptedStake`{.AgdaFunction}: This is the portion of
   `DRep`{.AgdaInductiveConstructor} voting stake that voted `yes`{.AgdaInductiveConstructor}.

+  `totalStake`{.AgdaFunction}: This the portion of `DRep`{.AgdaInductiveConstructor}
   voting stake that voted `yes`{.AgdaInductiveConstructor} or `no`{.AgdaInductiveConstructor}.

```agda
acceptedByDRep : RatifyEnv → EnactState → GovActionState → Type
acceptedByDRep Γ eSt gaSt = (acceptedStake /₀ totalStake) ≥ t
  where
```
<!--
```agda
  open EnactState eSt using (cc; pparams)
  open RatifyEnv Γ
  open PParams (proj₁ pparams)
  open StakeDistrs stakeDistrs
  open GovActionState gaSt
  open GovVotes votes using (gvDRep)
```
-->
```agda
  castVotes : VDeleg ⇀ Vote
  castVotes = mapKeys vDelegCredential gvDRep

  activeDReps : ℙ Credential
  activeDReps = dom (filter (λ (_ , e) → currentEpoch ≤ e) dreps)

  predeterminedDRepVotes : VDeleg ⇀ Vote
  predeterminedDRepVotes = case gaType action of λ where
      NoConfidence → ❴ vDelegAbstain , Vote.abstain ❵ ∪ˡ ❴ vDelegNoConfidence , Vote.yes ❵
      _            → ❴ vDelegAbstain , Vote.abstain ❵ ∪ˡ ❴ vDelegNoConfidence , Vote.no  ❵

  defaultDRepCredentialVotes : VDeleg ⇀ Vote
  defaultDRepCredentialVotes = constMap (mapˢ vDelegCredential activeDReps) Vote.no

  actualVotes : VDeleg ⇀ Vote
  actualVotes  = castVotes ∪ˡ defaultDRepCredentialVotes
                             ∪ˡ predeterminedDRepVotes

  t : ℚ
  t = maybe id 0ℚ (threshold (proj₁ pparams) (proj₂ <$> (proj₁ cc)) action DRep)

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistrVDeleg ∣ actualVotes ⁻¹ Vote.yes ] x
  totalStake     = ∑[ x ← stakeDistrVDeleg ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x
```

### Stake Pool Operator (SPO) Vote Counting {#sec:spo-vote-counting}

This section defines the predicate `acceptedBySPO`{.AgdaFunction}, which uses the
following auxiliary definitions.

+  `castVotes`{.AgdaFunction}: This map contains the votes that have been
   cast by members of the SPO body and have been collected as part of the
   `GovActionState`{.AgdaDatatype} `gaSt`{.AgdaBound}.

+  `defaultVote`{.AgdaFunction}: This map sets a default vote to all SPOs
   who didn't vote, with the default depending on the given action, and
   whether the SPO has delegated their vote to one of the default
   `DReps`{.AgdaInductiveConstructor}.

+  `actualVotes`{.AgdaFunction}: This map combines the votes cast by SPOs
   with `defaultVote`{.AgdaBound} using a left-biased union making cast
   votes take precedence over default votes.

+  `t`{.AgdaFunction}: This rational number is the threshold used to calculate
   whether the action is ratified by the SPO body.

+  `acceptedStake`{.AgdaFunction}: This is the portion of SPO stake that
   voted `yes`{.AgdaInductiveConstructor}; it is computed using the stake
   distribution `stakeDistrPools`{.AgdaField} provided in the environment.

+  `totalStake`{.AgdaFunction}: This is the portion of SPO stake that voted
  either `yes`{.AgdaInductiveConstructor} or `no`{.AgdaInductiveConstructor};
  it is computed using the stake distribution `stakeDistrPools`{.AgdaField}
  provided in the environment.

Let us discuss in more detail the way SPO votes are counted, as the ledger
specification's handling of this has evolved in response to community feedback.
Previously, if an SPO did not vote, then it would be counted as having voted
`abstain`{.AgdaInductiveConstructor} by default.  Members of the SPO community found
this behavior counterintuitive and requested that non-voters be assigned a
`no`{.AgdaInductiveConstructor} vote by default, with the caveat that an SPO could
change its default setting by delegating its reward account credential to an
`AlwaysNoConfidence` `DRep`{.AgdaInductiveConstructor} or an `AlwaysAbstain`
`DRep`{.AgdaInductiveConstructor}.  (This change applies only after the bootstrap
period; during the bootstrap period the logic is unchanged; see the section on
[Bootstrapping the Governance System](ConwayBootstrap.md#sec:conway-bootstrap-gov).)

To be precise, the agreed upon specification is the following: an SPO that did not
vote is assumed to have voted `no`{.AgdaInductiveConstructor}, except under the
following circumstances:

+  if the SPO has delegated its reward credential to an `AlwaysNoConfidence`
  `DRep`{.AgdaInductiveConstructor}, then their default vote is
  `yes`{.AgdaInductiveConstructor} for `NoConfidence`{.AgdaInductiveConstructor}
  proposals and `no`{.AgdaInductiveConstructor} for other proposals;

+  if the SPO has delegated its reward credential to an `AlwaysAbstain`
   `DRep`{.AgdaInductiveConstructor}, then its default vote is
   `abstain`{.AgdaInductiveConstructor} for all proposals.

It is important to note that the credential that can now be used to configure
*default* voting behavior is the credential used to withdraw staking rewards, which
is not the same as the credential that is used for standard voting.

```agda
acceptedBySPO : RatifyEnv → EnactState → GovActionState → Type
acceptedBySPO Γ eSt gaSt = (acceptedStake /₀ totalStake) ≥ t
  where
```
<!--
```agda
  open EnactState eSt using (cc; pparams)
  open RatifyEnv Γ
  open StakeDistrs stakeDistrs
  open GovActionState gaSt
  open GovVotes votes using (gvSPO)
```
-->
```agda
  castVotes : KeyHash ⇀ Vote
  castVotes = gvSPO

  defaultVote : KeyHash → Vote
  defaultVote kh = case lookupᵐ? pools kh of λ where
    nothing   → Vote.no
    (just  p) → case lookupᵐ? delegatees (StakePoolParams.rewardAccount p) , gaType action of
      λ where
      ( _                        , TriggerHardFork  )  → Vote.no
      ( just vDelegNoConfidence  , NoConfidence     )  → Vote.yes
      ( just vDelegAbstain       , _                )  → Vote.abstain
      _                                                → Vote.no

  actualVotes : KeyHash ⇀ Vote
  actualVotes = castVotes ∪ˡ mapFromFun defaultVote (dom stakeDistrPools)

  t : ℚ
  t = maybe id 0ℚ (threshold (proj₁ pparams) (proj₂ <$> (proj₁ cc)) action SPO)

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistrPools ∣ actualVotes ⁻¹ Vote.yes ] x
  totalStake     = ∑[ x ← stakeDistrPools ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x
```


## Ratification Functions

We first define the `accepted`{.AgdaFunction} and `expired`{.AgdaFunction} functions,
which are used in the rules of the `RATIFY`{.AgdaDatatype} transition system.

<!--
```agda
abstract
```
-->
```agda
  accepted : RatifyEnv → EnactState → GovActionState → Type
  accepted Γ es gs = acceptedByCC Γ es gs × acceptedByDRep Γ es gs × acceptedBySPO Γ es gs

  expired : Epoch → GovActionState → Type
  expired current record { expiresIn = expiresIn } = expiresIn < current
```

Next, we define functions that deal with delays and the acceptance criterion for
ratification.

A given action can either be delayed if the action contained in
`EnactState`{.AgdaRecord} isn’t the one the given action is building on top of, which
is checked by `verifyPrev`{.AgdaFunction}, or if a previous action was a
`delayingAction`{.AgdaFunction}.

Note that `delayingAction`{.AgdaFunction} affects the future; specifically, whenever
a `delayingAction`{.AgdaFunction} is accepted all future actions are delayed.
`delayed`{.AgdaFunction} then expresses whether an action is delayed.  This happens
either because the previous action doesn’t match the current one, or because the
previous action was a delaying one.  This information is passed in as an argument.

<!--
```agda
open EnactState
```
-->
```agda
verifyPrev : (a : GovActionType) → NeedsHash a → EnactState → Type
verifyPrev NoConfidence        h es  = h ≡ es .cc .proj₂
verifyPrev UpdateCommittee     h es  = h ≡ es .cc .proj₂
verifyPrev NewConstitution     h es  = h ≡ es .constitution .proj₂
verifyPrev TriggerHardFork     h es  = h ≡ es .pv .proj₂
verifyPrev ChangePParams       h es  = h ≡ es .pparams .proj₂
verifyPrev TreasuryWithdrawal  _ _   = ⊤
verifyPrev Info                _ _   = ⊤

delayingAction : GovActionType → Bool
delayingAction NoConfidence        = true
delayingAction UpdateCommittee     = true
delayingAction NewConstitution     = true
delayingAction TriggerHardFork     = true
delayingAction ChangePParams       = false
delayingAction TreasuryWithdrawal  = false
delayingAction Info                = false

delayed : (a : GovActionType) → NeedsHash a → EnactState → Bool → Type
delayed gaTy h es d = ¬ verifyPrev gaTy h es ⊎ d ≡ true

acceptConds : RatifyEnv → RatifyState → GovActionID × GovActionState → Type
acceptConds Γ stʳ (id , st) =
  accepted Γ es st
  × ¬ delayed (gaType action) prevAction es delay
  × ∃[ es' ]  ⟦ id , treasury , currentEpoch ⟧ ⊢ es ⇀⦇ action ,ENACT⦈ es'
```

<!--
```agda
    where open RatifyEnv Γ
          open RatifyState stʳ
          open GovActionState st

abstract
  verifyPrev? : ∀ a h es → Dec (verifyPrev a h es)
  verifyPrev? NoConfidence        h es = dec
  verifyPrev? UpdateCommittee     h es = dec
  verifyPrev? NewConstitution     h es = dec
  verifyPrev? TriggerHardFork     h es = dec
  verifyPrev? ChangePParams       h es = dec
  verifyPrev? TreasuryWithdrawal  h es = dec
  verifyPrev? Info                h es = dec

  delayed? : ∀ a h es d → Dec (delayed a h es d)
  delayed? a h es d = let instance _ = ⁇ verifyPrev? a h es in dec

  Is-nothing? : ∀ {A : Set} {x : Maybe A} → Dec (Is-nothing x)
  Is-nothing? {x = x} = All.dec (const $ no id) x
    where import Data.Maybe.Relation.Unary.All as All

  accepted? : ∀ Γ es st → Dec (accepted Γ es st)
  accepted? Γ es st = acceptedByCC? Γ es st ×-dec acceptedByDRep? Γ es st ×-dec acceptedBySPO? Γ es st
    where
    acceptedByCC? : ∀ Γ es st → Dec (acceptedByCC Γ es st)
    acceptedByCC? _ _ _ = _ ℚ.≤? _ ×-dec (_ ≥? _ ⊎-dec Is-nothing?)

    acceptedByDRep? : ∀ Γ es st → Dec (acceptedByDRep Γ es st)
    acceptedByDRep? _ _ _ = _ ℚ.≤? _

    acceptedBySPO? : ∀ Γ es st → Dec (acceptedBySPO Γ es st)
    acceptedBySPO? _ _ _ = _ ℚ.≤? _

  expired? : ∀ e st → Dec (expired e st)
  expired? e st = ¿ expired e st ¿

private variable
  Γ : RatifyEnv
  es es' : EnactState
  a : GovActionID × GovActionState
  removed : ℙ (GovActionID × GovActionState)
  d : Bool

open RatifyEnv
open GovActionState
```
-->

## The <span class="AgdaDatatype">RATIFY</span> Transition System

We now define the `RATIFY`{.AgdaDatatype} transition system,
which is constructed via three rules.

+  `RATIFYAccept`{.AgdaInductiveConstructor} checks if the votes for a given
   `GovAction`{.AgdaDatatype} meet the threshold required for acceptance, that the
   action is accepted and not delayed, and `RATIFYAccept`{.AgdaInductiveConstructor}
   ratifies the action.

+  `RATIFYReject`{.AgdaInductiveConstructor} asserts that the given
   `GovAction`{.AgdaDatatype} is not `accepted`{.AgdaFunction} and
   `expired`{.AgdaFunction}; it removes the governance action.

+  `RATIFYContinue`{.AgdaInductiveConstructor} covers the remaining cases and keeps
   the `GovAction`{.AgdaDatatype} around for further voting.

Note that all governance actions eventually either get accepted and enacted via
`RATIFYAccept`{.AgdaInductiveConstructor} or rejected via
`RATIFYReject`{.AgdaInductiveConstructor}.  If an action satisfies all criteria to be
accepted but cannot be enacted anyway, it is kept around and tried again at the next
epoch boundary.

We never remove actions that do not attract sufficient
`yes`{.AgdaInductiveConstructor} votes before they expire, even if it is clear to an
outside observer that this action will never be enacted.  Such an action will simply
continue to be checked every epoch until it expires.

```agda
data _⊢_⇀⦇_,RATIFY⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Type
  where

  RATIFY-Accept :
    let treasury       = TreasuryOf Γ
        e              = Γ .currentEpoch
        (gaId , gaSt)  = a
        action         = GovActionOf gaSt
    in
    ∙ acceptConds Γ ⟦ es , removed , d ⟧ a
    ∙ ⟦ gaId , treasury , e ⟧ ⊢ es ⇀⦇ action ,ENACT⦈ es'
      ────────────────────────────────
      Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es' , ❴ a ❵ ∪ removed , delayingAction (gaType action) ⟧

  RATIFY-Reject :
    let e              = Γ .currentEpoch
        (gaId , gaSt)  = a
    in
    ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ a
    ∙ expired e gaSt
      ────────────────────────────────
      Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es , ❴ a ❵ ∪ removed , d ⟧

  RATIFY-Continue :
     let e              = Γ .currentEpoch
         (gaId , gaSt)  = a
     in
     ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ a
     ∙ ¬ expired e gaSt
       ────────────────────────────────
       Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es , removed , d ⟧
```

Finally, the `RATIFIES`{.AgdaDatatype} transition system is defined as the "reflexive
transitive closure" of the `RATIFY`{.AgdaDatatype} rule.

```agda
_⊢_⇀⦇_,RATIFIES⦈_ : RatifyEnv → RatifyState → List (GovActionID × GovActionState) → RatifyState → Type
_⊢_⇀⦇_,RATIFIES⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,RATIFY⦈_}
```
