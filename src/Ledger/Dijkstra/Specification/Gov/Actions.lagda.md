---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Gov/Actions.lagda.md
---

# Governance Actions {#sec:governance-actions}

This section defines several concepts and types used to represent governance actions.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base

module Ledger.Dijkstra.Specification.Gov.Actions (gs : _) (open GovStructure gs) where

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

open import Tactic.Derive.Show

open import Ledger.Prelude as P hiding (yes; no)
```
-->

## Roles and Actions

There are three governance roles and actors of role are identified by a type of
credential.  A governance action is one of the seven types.

```agda
data GovRole : Type where
  CC DRep SPO : GovRole

GovRoleCredential : GovRole → Type
GovRoleCredential CC   = Credential
GovRoleCredential DRep = Credential
GovRoleCredential SPO  = KeyHash

data GovActionType : Type where
  NoConfidence        : GovActionType
  UpdateCommittee     : GovActionType
  NewConstitution     : GovActionType
  TriggerHardFork     : GovActionType
  ChangePParams       : GovActionType
  TreasuryWithdrawal  : GovActionType
  Info                : GovActionType

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

open GovAction public

-- Governance actions are uniquely identified by a `GovActionID`.
GovActionID : Type
GovActionID  = TxId × ℕ

data Vote : Type where
  yes no abstain  : Vote

record GovVoter : Type where
  constructor ⟦_,_⟧ᵍᵛ
  field
    gvRole       : GovRole
    gvCredential : GovRoleCredential gvRole

record Anchor : Type where
  -- context about why a vote was cast in a certain manner
  field
    url   : String
    hash  : DocHash -- abstract but instantiated with 32-bit hash type

record GovVote : Type where
  field
    gid         : GovActionID
    voter       : GovVoter
    vote        : Vote
    anchor      : Maybe Anchor

record GovVotes : Type where
  -- collects votes cast by members of each of the governance roles
  field
    gvCC   : Credential ⇀ Vote
    gvDRep : Credential ⇀ Vote
    gvSPO  : KeyHash ⇀ Vote

-- Vote Delegation
data VDeleg : Type where
  vDelegCredential   : Credential → VDeleg
  vDelegAbstain      : VDeleg
  vDelegNoConfidence : VDeleg

VoteDelegs : Type
VoteDelegs   = Credential ⇀ VDeleg

-- Hash Protection
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

Policy : Type
Policy = Maybe ScriptHash

record GovProposal : Type where
  field
    action      : GovAction
    prevAction  : NeedsHash (gaType action)  -- pointer to previous action
    policy      : Policy                     -- pointer to optional proposal policy
    deposit     : Coin                       -- to be returned to returnAddr
    returnAddr  : RewardAddress              -- reward address;  dep returned here when prop is removed
    anchor      : Anchor                     -- placeholder for further information about the proposal


-- state of an individual governance action
record GovActionState : Type where
  field
    votes       : GovVotes
    returnAddr  : RewardAddress
    expiresIn   : Epoch
    action      : GovAction
    prevAction  : NeedsHash (gaType action)

-- Governance Helper Functions
isGovVoterDRep : GovVoter → Maybe Credential
isGovVoterDRep ⟦ DRep , c ⟧ᵍᵛ = just c
isGovVoterDRep _ = nothing

govVoterCredential : GovVoter → Credential
govVoterCredential ⟦ CC   , c  ⟧ᵍᵛ = c
govVoterCredential ⟦ DRep , c  ⟧ᵍᵛ = c
govVoterCredential ⟦ SPO  , kh ⟧ᵍᵛ = KeyHashObj kh

proposedCC : GovAction → ℙ Credential
proposedCC ⟦ UpdateCommittee , (x , _ , _) ⟧ᵍᵃ = dom x
proposedCC _ = ∅

DReps : Type
DReps = Credential ⇀ Epoch
```

<!--
```agda
record HasGovActionType (A : Type) : Type where
  field GovActionTypeOf : A → GovActionType
open HasGovActionType ⦃...⦄ public

record HasVoteDelegs {a} (A : Type a) : Type a where
  field VoteDelegsOf : A → VoteDelegs
open HasVoteDelegs ⦃...⦄ public

record HasGovAction (A : Type) : Type where
  field GovActionOf : A → GovAction
open HasGovAction ⦃...⦄ public

record HasGovVoter {a} (A : Type a) : Type a where
  field GovVoterOf : A → GovVoter
open HasGovVoter ⦃...⦄ public

record HasGovVotes {a} (A : Type a) : Type a where
  field GovVotesOf : A → GovVotes
open HasGovVotes ⦃...⦄ public

record HasVote {a} (A : Type a) : Type a where
  field VoteOf : A → Vote
open HasVote ⦃...⦄ public

record HasPolicy {a} (A : Type a) : Type a where
  field PolicyOf : A → Policy
open HasPolicy ⦃...⦄ public

record HasDReps {a} (A : Type a) : Type a where
  field DRepsOf : A → DReps
open HasDReps ⦃...⦄ public

instance
  HasGovActionType-GovAction : HasGovActionType GovAction
  HasGovActionType-GovAction .GovActionTypeOf = GovAction.gaType

  HasCast-GovAction-Sigma : HasCast GovAction (Σ GovActionType GovActionData)
  HasCast-GovAction-Sigma .cast x = x .gaType , x .gaData

  HasCast-HashProtected : ∀ {A : Type} → HasCast (HashProtected A) A
  HasCast-HashProtected .cast = proj₁

  HasCast-HashProtected-MaybeScriptHash : HasCast (HashProtected (DocHash × Maybe ScriptHash)) (Maybe ScriptHash)
  HasCast-HashProtected-MaybeScriptHash .cast = proj₂ ∘ proj₁

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

  HasGovVotes-GovActionState : HasGovVotes GovActionState
  HasGovVotes-GovActionState .GovVotesOf = GovActionState.votes

  unquoteDecl Show-GovRole        = derive-Show [ (quote GovRole , Show-GovRole) ]
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

```agda
-- return the DReps of A that expire in epoch e or later
activeInEpoch : Epoch → Credential × Epoch → Type
activeInEpoch e (_ , expEpoch) = e ≤ expEpoch

activeDRepsOf : {A : Type} ⦃ _ : HasDReps A ⦄ → A → Epoch → DReps
activeDRepsOf a e = filterᵐ (activeInEpoch e) (DRepsOf a)
```
