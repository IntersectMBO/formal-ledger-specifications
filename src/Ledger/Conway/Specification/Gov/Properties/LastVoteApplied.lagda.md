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
open GovActionState using (votes)
open GovVotes
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
votedOn gaSt ⟦ CC   , c  ⟧ᵍᵛ = lookupᵐ? (votes gaSt .gvCC) c
votedOn gaSt ⟦ DRep , c  ⟧ᵍᵛ = lookupᵐ? (votes gaSt .gvDRep) c
votedOn gaSt ⟦ SPO  , kh ⟧ᵍᵛ = lookupᵐ? (votes gaSt .gvSPO) kh

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

*Proof*.

We build the proof in three steps.

1.  **Step 1**.  Replace a `GOVS`{.AgdaDatatype} derivation by the pure function it
    computes, so the rest is reasoning about ordinary folds rather than the
    transition system.
2.  **Step 2** (to come).  Show `recordedVote`{.AgdaFunction} of the resulting state
    is a `foldl`{.AgdaFunction} of `stepVote`{.AgdaFunction} over the signals.
3.  **Step 3** (to come).  Discharge `vote-applied-to-GA`{.AgdaFunction} and
    `last-vote-applied-to-GA`{.AgdaFunction} from Step 2.

### Step 1.  The `GOVS` closure computes a pure fold {#sec:lva-proof-step1}

A `GOVS`{.AgdaDatatype} derivation is the indexed reflexive-transitive closure of
`GOV`{.AgdaDatatype}.  We first replace such a derivation by the
`GovState`{.AgdaFunction} function it computes.  (This mirrors `STS→updateGovSt≡` in
`Ledger.Conway.Specification.Ledger.Properties.Base`.)

```agda
-- The GovState update performed by one GOV signal at trace position `k`:
-- a vote overrides the entry via `addVote`; a proposal appends a fresh action via
-- `addAction`.  These are, by construction, the outputs of the GOV-Vote and
-- GOV-Propose rules respectively.
applyVP : GovEnv → ℕ → GovState → GovVote ⊎ GovProposal → GovState
applyVP Γ k s (inj₁ gv) = addVote s (GovVote.gid gv) (GovVote.voter gv) (GovVote.vote gv)
applyVP Γ k s (inj₂ gp) =
  addAction s (PParams.govActionLifetime (PParamsOf Γ) +ᵉ GovEnv.epoch Γ)
              (GovEnv.txid Γ , k)
              (GovProposal.returnAddr gp) (GovProposal.action gp) (GovProposal.prevAction gp)

-- Fold the per-signal update across a whole block, threading the position index.
runGOVS : GovEnv → ℕ → GovState → List (GovVote ⊎ GovProposal) → GovState
runGOVS Γ k s [] = s
runGOVS Γ k s (vp ∷ vps) = runGOVS Γ (suc k) (applyVP Γ k s vp) vps

-- A GOVS derivation computes exactly `runGOVS`.  Induct on the closure; each
-- inductive step is definitionally the recursive call, because the GOV rule's
-- output state is `applyVP` applied to that signal.
GOVS→run≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ)
  {Γ : GovEnv} {s s' : GovState}
  → _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⦇_,GOV⦈_} (Γ , k) s vps s'
  → s' ≡ runGOVS Γ k s vps
GOVS→run≡ []               k (BS-base Id-nop)            = refl
GOVS→run≡ (inj₁ gv ∷ vps)  k (BS-ind (GOV-Vote    _) h)  = GOVS→run≡ vps (suc k) h
GOVS→run≡ (inj₂ gp ∷ vps)  k (BS-ind (GOV-Propose _) h)  = GOVS→run≡ vps (suc k) h
```

Since `Γ ⊢ s ⇀⦇ vps ,GOVS⦈ s'` unfolds to `… (Γ , 0) s vps s'`, instantiating
`GOVS→run≡`{.AgdaFunction} at `k = 0` lets Step 2 replace the abstract result state
`s'`{.AgdaBound} by `runGOVS Γ 0 s vps`{.AgdaFunction}.

### Step 2. <span class="AgdaFunction">recordedVote</span> is a <span class="AgdaFunction">foldl</span> of <span class="AgdaFunction">stepVote</span> over signal

TODO

### Step 3. Discharge <span class="AgdaFunction">vote-applied-to-GA</span> and <span class="AgdaFunction">last-vote-applied-to-GA</span>

TODO
