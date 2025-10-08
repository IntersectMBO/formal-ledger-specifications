---
source_branch: master
source_path: src/Ledger/Conway/Specification/Gov/Actions.lagda.md
---

# Gov Actions {#sec:governance-actions}

We introduce the following distinct bodies with specific functions in
the new governance framework:

1.  a constitutional committee (henceforth called `CC`{.AgdaInductiveConstructor});

2.  a group of delegate representatives (henceforth called `DReps`{.AgdaInductiveConstructor});

3.  the stake pool operators (henceforth called `SPOs`{.AgdaInductiveConstructor}).

<!--
```agda
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

open import Tactic.Derive.Show

open import Ledger.Prelude as P hiding (yes; no)
open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Gov.Actions (gs : _) (open GovStructure gs) where
```
-->

## Gov actions

```agda
data GovRole : Type where
  CC DRep SPO : GovRole

GovRoleCredential : GovRole → Type
GovRoleCredential CC   = Credential
GovRoleCredential DRep = Credential
GovRoleCredential SPO  = KeyHash

record GovVoter : Type where
  constructor ⟦_,_⟧ᵍᵛ
  field
    gvRole       : GovRole
    gvCredential : GovRoleCredential gvRole

data VDeleg : Type where
  vDelegCredential   : Credential → VDeleg
  vDelegAbstain      : VDeleg
  vDelegNoConfidence : VDeleg

GovActionID VoteDelegs : Type
GovActionID  = TxId × ℕ
VoteDelegs   = Credential ⇀ VDeleg

record Anchor : Type where
  field
    url   : String
    hash  : DocHash

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
record HasVoteDelegs {a} (A : Type a) : Type a where
  field VoteDelegsOf : A → VoteDelegs
open HasVoteDelegs ⦃...⦄ public

record HasGovActionType (A : Type) : Type where
  field GovActionTypeOf : A → GovActionType
open HasGovActionType ⦃...⦄ public
```
-->


```agda
GovActionData : GovActionType → Type
GovActionData NoConfidence        = ⊤
GovActionData UpdateCommittee     = (Credential ⇀ Epoch) × ℙ Credential × ℚ
GovActionData NewConstitution     = DocHash × Maybe ScriptHash
GovActionData TriggerHardFork     = ProtVer
GovActionData ChangePParams       = PParamsUpdate
GovActionData TreasuryWithdrawal  = Withdrawals
GovActionData Info                = ⊤

record GovAction : Type where
  constructor ⟦_,_⟧ᵍᵃ
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

  unquoteDecl Show-GovRole = derive-Show [ (quote GovRole , Show-GovRole) ]
```
-->

Section [Gov actions](Ledger.Conway.Specification.Gov.Actions.md#gov-actions)
defines several data types used to represent governance actions. The
type `DocHash`{.AgdaField} is abstract but in the implementation it will
be instantiated with a 32-bit hash type (like, e.g., `ScriptHash`{.AgdaFunction}).
We keep it separate because it is used for a different purpose.

- `GovActionID`{.AgdaDatatype}: a unique identifier for a governance
  action, consisting of the `TxId`{.AgdaDatatype} of the proposing
  transaction and an index to identify a proposal within a transaction;

- `GovRole`{.AgdaDatatype}: one of three available voter roles defined above
  (`CC`{.AgdaInductiveConstructor}, `DRep`{.AgdaInductiveConstructor},
  `SPO`{.AgdaInductiveConstructor});

- `VDeleg`{.AgdaDatatype}: voter delegation is denoted by one of three ways to
   delegate votes
   1. credential (`vDelegCredential`{.AgdaInductiveConstructor}),
   2. abstention (`vDelegAbstain`{.AgdaInductiveConstructor}),
   3. no confidence (`vDelegNoConfidence`{.AgdaInductiveConstructor}).

- `Anchor`{.AgdaRecord}: a url and a document hash;

- `GovAction`{.AgdaDatatype}: one of seven possible actions (see
  Section [Gov Actions](Ledger.Conway.Specification.Gov.Actions.md#fig:types-of-governance-actions)
  for definitions);

The governance actions carry the following information:

- `UpdateCommittee`{.AgdaInductiveConstructor}: a map of credentials and
  terms to add and a set of credentials to remove from the committee;

- `NewConstitution`{.AgdaInductiveConstructor}: a hash of the new
  constitution document and an optional proposal policy;

- `TriggerHardFork`{.AgdaInductiveConstructor}: the protocol version of
  the epoch to hard fork into;

- `ChangePParams`{.AgdaInductiveConstructor}: the updates to the
  parameters; and

- `TreasuryWithdrawal`{.AgdaInductiveConstructor}: a map of withdrawals.

## Table: Types of governance actions {#fig:types-of-governance-actions}

| **Action** | **Description** |
|:---|:---|
| `NoConfidence`{.AgdaInductiveConstructor} | a motion to create a *state of no-confidence* in the current constitutional committee |
| `UpdateCommittee`{.AgdaInductiveConstructor} | changes to the members of the constitutional committee and/or to its signature threshold and/or terms |
| `NewConstitution`{.AgdaInductiveConstructor} | a modification to the off-chain Constitution and the proposal policy script |
| `TriggerHardFork`{.AgdaInductiveConstructor} | triggers a non-backwards compatible upgrade of the network; requires a prior software upgrade |
| `ChangePParams`{.AgdaInductiveConstructor} | a change to *one or more* updatable protocol parameters, excluding changes to major protocol versions (“hard forks”) |
| `TreasuryWithdrawal`{.AgdaInductiveConstructor} | movements from the treasury |
| `Info`{.AgdaInductiveConstructor} | an action that has no effect on-chain, other than an on-chain record |

## Hash Protection {#sec:hash-protection}

For some governance actions, in addition to obtaining the necessary
votes, enactment requires that the following condition is also
satisfied: the state obtained by enacting the proposal is in fact the
state that was intended when the proposal was submitted. This is
achieved by requiring actions to unambiguously link to the state they
are modifying via a pointer to the previous modification. A proposal can
only be enacted if it contains the of the previously enacted proposal
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

Types related to this hash protection scheme are defined in
Section [NeedsHash and HashProtected types](Ledger.Conway.Specification.Gov.Actions.md#needshash-and-hashprotected-types).


### NeedsHash and HashProtected types

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


## Vote and proposal types

```agda

data Vote : Type where
  yes no abstain  : Vote

record GovVote : Type where
  field
    gid         : GovActionID
    voter       : GovVoter
    vote        : Vote
    anchor      : Maybe Anchor

record GovProposal : Type where
  field
    action      : GovAction
    prevAction  : NeedsHash (gaType action)
    policy      : Maybe ScriptHash
    deposit     : Coin
    returnAddr  : RwdAddr
    anchor      : Anchor

record GovVotes : Type where
  field
    gvCC   : Credential ⇀ Vote
    gvDRep : Credential ⇀ Vote
    gvSPO  : KeyHash ⇀ Vote

record GovActionState : Type where
  field
    votes       : GovVotes
    returnAddr  : RwdAddr
    expiresIn   : Epoch
    action      : GovAction
    prevAction  : NeedsHash (gaType action)
```

<!--
```agda

instance
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


## Votes and Proposals


### Gov helper function

```agda
isGovVoterDRep : GovVoter → Maybe Credential
isGovVoterDRep ⟦ DRep , c ⟧ᵍᵛ = just c
isGovVoterDRep _              = nothing

isGovVoterCredential : GovVoter → Maybe Credential
isGovVoterCredential ⟦ CC   , c ⟧ᵍᵛ = just c
isGovVoterCredential ⟦ DRep , c ⟧ᵍᵛ = just c
isGovVoterCredential _              = nothing

proposedCC : GovAction → ℙ Credential
proposedCC ⟦ UpdateCommittee , (x , _ , _) ⟧ᵍᵃ  = dom x
proposedCC _                                    = ∅
```

The data type `Vote`{.AgdaDatatype} represents the different voting options:
`yes`{.AgdaInductiveConstructor}, `no`{.AgdaInductiveConstructor}, or
`abstain`{.AgdaInductiveConstructor}.

For a `Vote`{.AgdaDatatype} to be cast, it must be packaged together with further
information, such as who votes and for which governance action.  This information is
combined in the `GovVote`{.AgdaRecord} record. An optional `Anchor`{.AgdaRecord} can
be provided to give context about why a vote was cast in a certain manner.

To propose a governance action, a `GovProposal`{.AgdaRecord} needs to be
submitted.  Beside the proposed action, it contains:

- a pointer to the previous action if required (see
  Section [Gov Actions](Ledger.Conway.Specification.Gov.Actions.md#sec:hash-protection)),

- a pointer to the proposal policy if one is required,

- a deposit, which will be returned to `returnAddr`{.AgdaField}, and

- an `Anchor`{.AgdaRecord}, providing further information about the
  proposal.

While the deposit is held, it is added to the deposit pot, similar to
stake key deposits. It is also counted towards the voting stake (but not
the block production stake) of the reward address to which it will be
returned, so as not to reduce the submitter’s voting power when voting
on their own (and competing) actions. For a proposal to be valid, the
deposit must be set to the current value of
`govActionDeposit`{.AgdaField}. The deposit will be returned when the
action is removed from the state in any way.

`GovActionState`{.AgdaRecord} is the state of an individual governance
action. It contains the individual votes, its lifetime, and information
necessary to enact the action and to repay the deposit.
