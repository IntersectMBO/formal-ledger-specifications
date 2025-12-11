---
source_branch: master
source_path: src/Ledger/Core/Specification/Gov/Actions.lagda.md
---

# Governance Actions {#sec:governance-actions}

This section defines several concepts and types used to represent governance actions.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Gov.Base

module Ledger.Core.Specification.Gov.Actions (gs : _) (open GovStructure gs) where

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

open import Tactic.Derive.Show

open import Ledger.Prelude as P hiding (yes; no)
```
-->

## Roles

There are three distinct roles with specific functions in the governance framework:

1. constitutional committee (henceforth called `CC`{.AgdaInductiveConstructor});

2. delegate representatives (henceforth called `DReps`{.AgdaInductiveConstructor});

3. stake pool operators (henceforth called `SPOs`{.AgdaInductiveConstructor}).

```agda
data GovRole : Type where
  CC DRep SPO : GovRole
```
<!--
```agda
instance
  unquoteDecl Show-GovRole = derive-Show [ (quote GovRole , Show-GovRole) ]
```
-->

Actors belonging to each governance role are identified by a type of
credential:

```agda
GovRoleCredential : GovRole → Type
GovRoleCredential CC   = Credential
GovRoleCredential DRep = Credential
GovRoleCredential SPO  = KeyHash
```

## Actions {#sec:actions}

A governance action is one of the seven types described in the table below:

| **Action** | **Description** |
|:---|:---|
| `NoConfidence`{.AgdaInductiveConstructor} | a motion to create a *state of no-confidence* in the current constitutional committee |
| `UpdateCommittee`{.AgdaInductiveConstructor} | changes to the members of the constitutional committee and/or to its signature threshold and/or terms |
| `NewConstitution`{.AgdaInductiveConstructor} | a modification to the off-chain Constitution and the proposal policy script |
| `TriggerHardFork`{.AgdaInductiveConstructor} | triggers a non-backwards compatible upgrade of the network; requires a prior software upgrade |
| `ChangePParams`{.AgdaInductiveConstructor} | a change to *one or more* updatable protocol parameters, excluding changes to major protocol versions (“hard forks”) |
| `TreasuryWithdrawal`{.AgdaInductiveConstructor} | movements from the treasury |
| `Info`{.AgdaInductiveConstructor} | an action that has no effect on-chain, other than an on-chain record |

```agda
data GovActionType : Type where
  NoConfidence        : GovActionType
  UpdateCommittee     : GovActionType
  NewConstitution     : GovActionType
  TriggerHardFork     : GovActionType
  ChangePParams       : GovActionType
  TreasuryWithdrawal  : GovActionType
  Info                : GovActionType
```
<!--
```agda
record HasGovActionType (A : Type) : Type where
  field GovActionTypeOf : A → GovActionType
open HasGovActionType ⦃...⦄ public
```
-->

Governance actions carry the following information:

- `UpdateCommittee`{.AgdaInductiveConstructor}: a map of credentials and terms to
  add and a set of credentials to remove from the committee;

- `NewConstitution`{.AgdaInductiveConstructor}: a hash of the new constitution
  document and an optional proposal policy;

- `TriggerHardFork`{.AgdaInductiveConstructor}: the protocol version of the epoch to
  hard fork into;

- `ChangePParams`{.AgdaInductiveConstructor}: the updates to the parameters;

- `TreasuryWithdrawal`{.AgdaInductiveConstructor}: a map of withdrawals.

```agda
GovActionData : GovActionType → Type
GovActionData NoConfidence        = ⊤
GovActionData UpdateCommittee     = (Credential ⇀ Epoch) × ℙ Credential × ℚ
GovActionData NewConstitution     = DocHash × Maybe ScriptHash
GovActionData TriggerHardFork     = ProtVer
GovActionData ChangePParams       = PParamsUpdate
GovActionData TreasuryWithdrawal  = Withdrawals
GovActionData Info                = ⊤
```

A governance action consist of a type of governance action together with the
necessary data:

```agda
record GovAction : Type where
```
<!--
```agda
  constructor ⟦_,_⟧ᵍᵃ
```
-->
```agda
  field
    gaType : GovActionType
    gaData : GovActionData gaType
```

<!--
```agda
open GovAction public

record HasGovAction (A : Type) : Type where
  field GovActionOf : A → GovAction
open HasGovAction ⦃...⦄ public

instance
  HasGovActionType-GovAction : HasGovActionType GovAction
  HasGovActionType-GovAction .GovActionTypeOf = GovAction.gaType

  HasCast-GovAction-Sigma : HasCast GovAction (Σ GovActionType GovActionData)
  HasCast-GovAction-Sigma .cast x = x .gaType , x .gaData
```
-->

Governance actions are uniquely identified by a `GovActionID`. This type
consists of the `TxId`{.AgdaDatatype} of the transaction that proposes the
governance action together with an index that identifies the proposal within the
transaction.
```agda
GovActionID : Type
GovActionID  = TxId × ℕ
```

## Votes

The `Vote`{.AgdaDatatype} type represents the three different voting options:
`yes`{.AgdaInductiveConstructor}, `no`{.AgdaInductiveConstructor}, and
`abstain`{.AgdaInductiveConstructor}.

```agda
data Vote : Type where
  yes no abstain  : Vote
```

For a `Vote`{.AgdaDatatype} to be cast, it must be packaged together with
further information, such as who votes `GovVoter`{.AgdaDatatype} and for which
governance action.  This information is combined in the `GovVote`{.AgdaRecord}
record. An optional `Anchor`{.AgdaRecord} can be provided to give context about
why a vote was cast in a certain manner.

```agda
record GovVoter : Type where
```
<!--
```agda
  constructor ⟦_,_⟧ᵍᵛ
```
-->
```agda
  field
    gvRole       : GovRole
    gvCredential : GovRoleCredential gvRole
```

```agda
record Anchor : Type where
  field
    url   : String
    hash  : DocHash
```

!!! info "`DocHash`{.AgdaField}"

    The type `DocHash`{.AgdaField} is abstract but in the implementation it is
    instantiated with a 32-bit hash type (like, e.g., `ScriptHash`{.AgdaFunction}).
    We keep it separate because it is used for a different purpose.


```agda
record GovVote : Type where
  field
    gid         : GovActionID
    voter       : GovVoter
    vote        : Vote
    anchor      : Maybe Anchor
```

Finally, we define the `GovVotes`{.AgdaRecord} type, an inhabitant of which is
comprised of three maps that collect the votes cast by members of each of the
three governance roles.

```agda
record GovVotes : Type where
  field
    gvCC   : Credential ⇀ Vote
    gvDRep : Credential ⇀ Vote
    gvSPO  : KeyHash ⇀ Vote
```

## Vote Delegation

The type `VDeleg`{.AgdaDatatype} represents the different ways in which
voting stake can be delegated:

1. to the credential of a `DRep` (`vDelegCredential`{.AgdaInductiveConstructor});
2. to an abstention (`vDelegAbstain`{.AgdaInductiveConstructor});
3. to a vote of no confidence (`vDelegNoConfidence`{.AgdaInductiveConstructor}).

```agda
data VDeleg : Type where
  vDelegCredential   : Credential → VDeleg
  vDelegAbstain      : VDeleg
  vDelegNoConfidence : VDeleg

VoteDelegs : Type
VoteDelegs   = Credential ⇀ VDeleg
```
<!--
```agda
record HasVoteDelegs {a} (A : Type a) : Type a where
  field VoteDelegsOf : A → VoteDelegs
open HasVoteDelegs ⦃...⦄ public
```
-->

## Hash Protection {#sec:hash-protection}

For some governance actions, in addition to obtaining the necessary
votes, enactment requires that the following condition is also
satisfied:

> the state obtained by enacting the proposal is in fact the state that was intended
> when the proposal was submitted.

This is achieved by requiring actions to unambiguously link to the state they
are modifying via a pointer to the previous modification. A proposal can
only be enacted if it contains the hash of the previously enacted proposal
modifying the same piece of state.
`NoConfidence`{.AgdaInductiveConstructor} and
`UpdateCommittee`{.AgdaInductiveConstructor} modify the same state,
while every other type of governance action has its own state that isn’t
shared with any other action. This means that the enactibility of a
proposal can change when other proposals are enacted.

However, not all types of governance actions require this strict
protection. For `TreasuryWithdrawal`{.AgdaInductiveConstructor} and
`Info`{.AgdaInductiveConstructor}, enacting them does not change the
state in non-commutative ways, so they can always be enacted.

The types we use to represent this hash protection scheme are as follows.

```agda
NeedsHash : GovActionType → Type
NeedsHash NoConfidence        = GovActionID
NeedsHash UpdateCommittee     = GovActionID
NeedsHash NewConstitution     = GovActionID
NeedsHash TriggerHardFork     = GovActionID
NeedsHash ChangePParams       = GovActionID
NeedsHash TreasuryWithdrawal  = ⊤
NeedsHash Info                = ⊤

HashProtected : Type → Type
HashProtected A = A × GovActionID
```

<!--
```agda
instance
  HasCast-HashProtected : ∀ {A : Type} → HasCast (HashProtected A) A
  HasCast-HashProtected .cast = proj₁

  HasCast-HashProtected-MaybeScriptHash : HasCast (HashProtected (DocHash × Maybe ScriptHash)) (Maybe ScriptHash)
  HasCast-HashProtected-MaybeScriptHash .cast = proj₂ ∘ proj₁
```
-->


## Governance Proposal Types {#sec:governance-proposal-types}

To propose a governance action, a `GovProposal`{.AgdaRecord} needs to be
submitted.  Beside the proposed action, it contains five other fields which we now
describe.

+  `prevAction`{.AgdaField}: a pointer to the previous action if required
   (see [Hash Protection](#sec:hash-protection));

+  `policy`{.AgdaField}: a pointer to the proposal policy if one is required;

+  `deposit`{.AgdaField}: a deposit, which will be returned to `returnAddr`{.AgdaField};

+  `returnAddr`{.AgdaField}: a reward address to which the deposit will be
   returned when the proposal is removed from the state;

+  `anchor`{.AgdaField}: a placeholder which may be used to provide further
   information about the proposal.

While the deposit is held, it is added to the deposit pot, similar to stake key
deposits.  It is also counted towards the voting stake (but not the block production
stake) of the reward address to which it will be returned, so as not to reduce the
submitter’s voting power when voting on their own (and competing) actions.  For a
proposal to be valid, the deposit must be set to the current value of
`govActionDeposit`{.AgdaField}.  The deposit will be returned when the action is
removed from the state in any way.

```agda
Policy : Type
Policy = Maybe ScriptHash

record GovProposal : Type where
  field
    action      : GovAction
    prevAction  : NeedsHash (gaType action)
    policy      : Policy
    deposit     : Coin
    returnAddr  : RewardAddress
    anchor      : Anchor
```

## Governance Action State {#sec:governance-action-state}

The `GovActionState`{.AgdaRecord} type represents the state of an individual
governance action.  It contains the individual votes, its lifetime, and information
necessary to enact the action and to repay the deposit.

```agda
record GovActionState : Type where
  field
    votes       : GovVotes
    returnAddr  : RewardAddress
    expiresIn   : Epoch
    action      : GovAction
    prevAction  : NeedsHash (gaType action)
```

<!--
```agda
record HasGovVoter {a} (A : Type a) : Type a where
  field GovVoterOf : A → GovVoter
open HasGovVoter ⦃...⦄ public

record HasVote {a} (A : Type a) : Type a where
  field VoteOf : A → Vote
open HasVote ⦃...⦄ public

record HasPolicy {a} (A : Type a) : Type a where
  field PolicyOf : A → Policy
open HasPolicy ⦃...⦄ public

instance
  HasGovVoter-GovVote : HasGovVoter GovVote
  HasGovVoter-GovVote .GovVoterOf = GovVote.voter

  HasVote-GovVote : HasVote GovVote
  HasVote-GovVote .VoteOf = GovVote.vote

  HasPolicy-GovProposal : HasPolicy GovProposal
  HasPolicy-GovProposal .PolicyOf = GovProposal.policy

  HasGovAction-GovProposal : HasGovAction GovProposal
  HasGovAction-GovProposal .GovActionOf = GovProposal.action

  HasGovAction-GovActionState : HasGovAction GovActionState
  HasGovAction-GovActionState .GovActionOf = GovActionState.action

  HasGovActionType-GovProposal : HasGovActionType GovProposal
  HasGovActionType-GovProposal .GovActionTypeOf = GovActionTypeOf ∘ GovActionOf

  HasGovActionType-GovActionState : HasGovActionType GovActionState
  HasGovActionType-GovActionState .GovActionTypeOf = GovActionTypeOf ∘ GovActionOf

instance
  unquoteDecl DecEq-GovActionType = derive-DecEq ((quote GovActionType , DecEq-GovActionType) ∷ [])
  unquoteDecl DecEq-GovRole       = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote          = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg        = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])

  DecEq-GovVoter : DecEq GovVoter
  DecEq-GovVoter ._≟_ ⟦ CC   , c ⟧ᵍᵛ ⟦ CC   , c' ⟧ᵍᵛ
    with c ≟ c'
  ... | P.yes p = P.yes (cong ⟦ CC ,_⟧ᵍᵛ p)
  ... | P.no ¬p = P.no (λ { refl → ¬p refl})
  DecEq-GovVoter ._≟_ ⟦ CC   , c ⟧ᵍᵛ ⟦ DRep , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ CC   , c ⟧ᵍᵛ ⟦ SPO  , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ DRep , c ⟧ᵍᵛ ⟦ CC   , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ DRep , c ⟧ᵍᵛ ⟦ DRep , c' ⟧ᵍᵛ
    with c ≟ c'
  ... | P.yes p = P.yes (cong ⟦ DRep ,_⟧ᵍᵛ p)
  ... | P.no ¬p = P.no (λ { refl → ¬p refl})
  DecEq-GovVoter ._≟_ ⟦ DRep , c ⟧ᵍᵛ ⟦ SPO  , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ SPO  , c ⟧ᵍᵛ ⟦ CC   , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ SPO  , c ⟧ᵍᵛ ⟦ DRep , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ SPO  , c ⟧ᵍᵛ ⟦ SPO  , c' ⟧ᵍᵛ
    with c ≟ c'
  ... | P.yes p = P.yes (cong ⟦ SPO ,_⟧ᵍᵛ p)
  ... | P.no ¬p = P.no (λ { refl → ¬p refl})

  unquoteDecl HasCast-GovVote = derive-HasCast [ (quote GovVote , HasCast-GovVote) ]

  unquoteDecl Show-VDeleg = derive-Show [ (quote VDeleg , Show-VDeleg) ]
```
-->

## Governance Helper Functions {#sec:governance-helper-functions}

```agda
isGovVoterDRep : GovVoter → Maybe Credential
isGovVoterDRep ⟦ DRep , c ⟧ᵍᵛ = just c
isGovVoterDRep _ = nothing

isGovVoterCredential : GovVoter → Maybe Credential
isGovVoterCredential ⟦ CC   , c ⟧ᵍᵛ = just c
isGovVoterCredential ⟦ DRep , c ⟧ᵍᵛ = just c
isGovVoterCredential _ = nothing

proposedCC : GovAction → ℙ Credential
proposedCC ⟦ UpdateCommittee , (x , _ , _) ⟧ᵍᵃ = dom x
proposedCC _ = ∅
```

```agda
DReps : Type
DReps = Credential ⇀ Epoch
```

<!--
```agda
record HasDReps {a} (A : Type a) : Type a where
  field DRepsOf : A → DReps
open HasDReps ⦃...⦄ public
```
-->

The following function takes a type `A`{.AgdaDatatype} with an associated set of
`DReps`{.AgdaDatatype}, and an epoch `e`{.AgdaBound}, and returns the
`DReps`{.AgdaDatatype} of `A`{.AgdaDatatype} that expire in epoch `e`{.AgdaBound} or
later.

```agda
activeInEpoch : Epoch → Credential × Epoch → Type
activeInEpoch e (_ , expEpoch) = e ≤ expEpoch

activeDRepsOf : {A : Type} ⦃ _ : HasDReps A ⦄ → A → Epoch → DReps
activeDRepsOf a e = filterᵐ (activeInEpoch e) (DRepsOf a)
```
