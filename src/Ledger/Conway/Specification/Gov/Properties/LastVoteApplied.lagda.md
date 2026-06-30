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
open import Data.List.Relation.Unary.Any using (Any; here; there)
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

This needs one precondition: the action `aid`{.AgdaBound} being voted on must not have been
*created by the current transaction*, i.e. `GovEnv.txid Γ ≢ proj₁ aid`{.AgdaBound}.  Without
it the claim is false — a `GOVPropose`{.AgdaInductiveConstructor} in the same block mints a
fresh action with id `(txid , k)`{.AgdaBound}; if that collides with a pre-existing
`aid`{.AgdaBound} it is inserted (by priority) ahead of the voted entry and shadows it, so
`recordedVote`{.AgdaFunction} no longer sees the vote.  The condition holds for every state
reachable in the ledger (actions already in `s`{.AgdaBound} carry the ids of *earlier*
transactions), so it only rules out voting on an action proposed within the very same
transaction.

```agda
last-vote-applied-to-GA : Type
last-vote-applied-to-GA = ∀ {Γ s s' vps} {aid : GovActionID} {voter : GovVoter} {v : Vote}
  → GovEnv.txid Γ ≢ proj₁ aid    -- `aid` was not created by the current transaction
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

**Remarks**.

1.  A `recordedVote` correspondence, like,

        recordedVote (runGOVS Γ k s vps) aid voter ≡ foldl (stepVote voter aid) (recordedVote s aid voter) vps

    is *not* a pure consequence of `runGOVS`; we have to induct on the derivation.

    It's **false** as a pure statement; counterexample:

    > take `s = []`, `vps = [ inj₁ (vote aid voter v) ]`.
    > Then `runGOVS … = addVote [] aid voter v = []` (no entry to modify), so
    > `recordedVote` is `nothing`, yet `lastVoteOn = just v`.

    To rule this out we assume the premise `(aid , ast) ∈ fromList s` of `GOV-Vote`
    (the voted action must exist).  That premise only lives in the *derivation*, so
    Step 2 must induct on the GOVS derivation, not on `runGOVS`.

2.  `last-vote-applied-to-GA`, as stated over an arbitrary `GovState`, isn't true; it
    needs a freshness guard.

    **Counterexample**.  Let `Γ.txid = T`, and let `s` already contain an action with
    id `(T, 5)` carrying voter's vote `v` (malformed but type-correct). Take

        vps = [ vote (T,5) voter v , propose-something ]

    where the proposal sits at trace position `5`, so it **re-mints** id `(T,5)` with
    empty votes. `insertGovAction` can place that empty entry ahead of the original
    (lower `govActionPriority`), so `lookupGAState` now finds the empty one →
    `recordedVote s' = nothing`, while `lastVoteOn = just v`.

    This is unreachable in practice (a real `s` never contains an action stamped with
    the *current* tx's id), which is exactly why it needs to be stated as a precondition.
    **The base case `vote-applied-to-GA` has no such issue — it's unconditionally true.**

```agda
lookupᵐ?-insert : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ (m : A ⇀ B) (k : A) (v : B)
  → lookupᵐ? (insert m k v) k ≡ just v
lookupᵐ?-insert m k v =
  ∈⇒lookup≡just (insert m k v) k (Properties.∈-∪⁺ (inj₁ (Equivalence.to ∈-singleton refl)))

opaque
  unfolding addVote
  lookupGAState-addVote-≢ : ∀ s aid₀ {voter₀ v₀ aid} → aid₀ ≢ aid
    → lookupGAState (addVote s aid₀ voter₀ v₀) aid ≡ lookupGAState s aid
  lookupGAState-addVote-≢ []                 aid₀ ne = refl
  lookupGAState-addVote-≢ ((aid'' , g'') ∷ s) aid₀ {voter₀} {v₀} {aid} ne with aid ≟ aid''
  ... | no  _    = lookupGAState-addVote-≢ s aid₀ {voter₀} {v₀} {aid} ne
  ... | yes refl with aid ≟ aid₀
  ...   | yes refl = ⊥-elim (ne refl)
  ...   | no  _    = refl

  recordedVote-addVote-≢gid : ∀ s aid₀ {voter₀ v₀ aid voter} → aid₀ ≢ aid
    → recordedVote (addVote s aid₀ voter₀ v₀) aid voter ≡ recordedVote s aid voter
  recordedVote-addVote-≢gid s aid₀ {voter₀} {v₀} {aid} {voter} ne
    rewrite lookupGAState-addVote-≢ s aid₀ {voter₀} {v₀} {aid} ne = refl


  recordedVote-addVote : (s : GovState) (aid : GovActionID) (ast : GovActionState)
    {voter : GovVoter} {v : Vote}
    → (aid , ast) ∈ fromList s
    → recordedVote (addVote s aid voter v) aid voter ≡ just v
  recordedVote-addVote s aid ast {voter} {v} p = go voter s (Equivalence.from ∈-fromList p)
    where
    go : (w : GovVoter) (t : GovState) → (aid , ast) ∈ˡ t
       → recordedVote (addVote t aid w v) aid w ≡ just v
    go w ((aid' , g') ∷ t) mem with aid ≟ aid'
    ... | no aid≢ = case mem of λ where
      (here refl) → ⊥-elim (aid≢ refl)
      (there m) → go w t m
    ... | yes refl rewrite dec-yes (aid ≟ aid) refl .proj₂ with w
    ...   | ⟦ CC   , c  ⟧ᵍᵛ = lookupᵐ?-insert (gvCC   (votes g')) c  v
    ...   | ⟦ DRep , c  ⟧ᵍᵛ = lookupᵐ?-insert (gvDRep (votes g')) c  v
    ...   | ⟦ SPO  , kh ⟧ᵍᵛ = lookupᵐ?-insert (gvSPO  (votes g')) kh v

-- The base case (already proved).
vote-applied : vote-applied-to-GA
vote-applied {s = s} (GOV-Vote {aid} {ast} (aid∈s , _)) = recordedVote-addVote s aid ast aid∈s
```

### Step 3. Discharge <span class="AgdaFunction">vote-applied-to-GA</span> and <span class="AgdaFunction">last-vote-applied-to-GA</span>

TODO
