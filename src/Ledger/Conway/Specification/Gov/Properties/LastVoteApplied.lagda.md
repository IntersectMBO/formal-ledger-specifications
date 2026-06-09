---
source_branch: master
source_path: src/Ledger/Conway/Specification/Gov/Properties/LastVoteApplied.lagda.md
---

## Claim: A voter's vote is applied to the governance action {#clm:LastVoteApplied}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Gov.Properties.LastVoteApplied
  (gs : GovStructure) (open GovStructure gs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Conway.Specification.Gov gs
```
-->

*Informally*.

When a voter casts a vote on a governance action, that vote is recorded on the action
in the resulting `GovState`{.AgdaFunction}.  There is one subtlety: a voter (a
`GovVoter`{.AgdaRecord}, i.e. a role together with a credential) may vote on the same
action more than once within a single block, in which case only the *last* such vote is
kept.  We therefore state the property in terms of the last vote a voter casts.

*Formally*.

We first define what it means to read back the vote a voter has recorded on an action,
and the last vote a voter casts in a list of `GOV`{.AgdaDatatype} signals.

```agda
-- The vote (if any) that `voter` has recorded in a single GovActionState.
votedOn : GovActionState → GovVoter → Maybe Vote
votedOn gaSt ⟦ CC   , c  ⟧ᵍᵛ = lookupᵐ? (GovVotes.gvCC   (GovActionState.votes gaSt)) c
votedOn gaSt ⟦ DRep , c  ⟧ᵍᵛ = lookupᵐ? (GovVotes.gvDRep (GovActionState.votes gaSt)) c
votedOn gaSt ⟦ SPO  , kh ⟧ᵍᵛ = lookupᵐ? (GovVotes.gvSPO  (GovActionState.votes gaSt)) kh

-- Find the GovActionState associated with an action id in a GovState.
lookupGAState : GovState → GovActionID → Maybe GovActionState
lookupGAState []                  aid = nothing
lookupGAState ((aid' , gaSt) ∷ s) aid = case aid ≟ aid' of λ where
  (yes _) → just gaSt
  (no  _) → lookupGAState s aid

-- The vote (if any) recorded for `voter` on action `aid` in `s`.
recordedVote : GovState → GovActionID → GovVoter → Maybe Vote
recordedVote s aid voter = case lookupGAState s aid of λ where
  nothing     → nothing
  (just gaSt) → votedOn gaSt voter

-- Fold step keeping the most recent vote `voter` cast on action `aid`.
stepVote : GovVoter → GovActionID → Maybe Vote → GovVote ⊎ GovProposal → Maybe Vote
stepVote voter aid acc (inj₂ _)  = acc
stepVote voter aid acc (inj₁ gv) with GovVote.voter gv ≟ voter | GovVote.gid gv ≟ aid
... | yes _ | yes _ = just (GovVote.vote gv)
... | _     | _     = acc

-- The last vote `voter` cast on action `aid` in a list of GOV signals.
lastVoteOn : GovVoter → GovActionID → List (GovVote ⊎ GovProposal) → Maybe Vote
lastVoteOn voter aid = foldl (stepVote voter aid) nothing
```

The base case is a single `GOV`{.AgdaDatatype} vote step: the cast vote is recorded on
the targeted action.

```agda
vote-applied-to-GA : Type
vote-applied-to-GA = ∀ {Γ k s s'} {gv : GovVote}
  → (Γ , k) ⊢ s ⇀⦇ inj₁ gv ,GOV⦈ s'
  → recordedVote s' (GovVote.gid gv) (GovVote.voter gv) ≡ just (GovVote.vote gv)
```

Lifting to a whole block (the `GOVS`{.AgdaFunction} closure of `GOV`{.AgdaDatatype}),
the last vote a voter casts on an action is the one recorded in the resulting state.

```agda
last-vote-applied-to-GA : Type
last-vote-applied-to-GA = ∀ {Γ s s' vps} {aid : GovActionID} {voter : GovVoter} {v : Vote}
  → Γ ⊢ s ⇀⦇ vps ,GOVS⦈ s'
  → lastVoteOn voter aid vps ≡ just v
  → recordedVote s' aid voter ≡ just v
```

*Proof*. (coming soon)
