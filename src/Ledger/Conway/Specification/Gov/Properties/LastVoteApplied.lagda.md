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
open import Data.List.Relation.Unary.Any using (here; there)

open GovActionState using (votes)
open GovVotes using (gvCC ; gvDRep ; gvSPO)
open GovVote using (gid)
open GovEnv using (txid ; epoch)
open PParams using (govActionLifetime)
```
-->

*Informally*.

When a voter casts a vote on a governance action, that vote is recorded on the action
in the resulting `GovState`{.AgdaFunction}.  There is one subtlety: a voter (a
`GovVoter`{.AgdaRecord}, i.e. a role together with a credential) may vote on the same
action more than once within a single block, in which case only the *last* such vote is
kept.  We therefore state the property in terms of the last vote a voter casts.

*Formally*.

We first define what it means to read back the vote a voter recorded on an action,
and the last vote a voter casts in a list of `GOV`{.AgdaDatatype} signals.

```agda
-- The vote (if any) that `voter` recorded on a single GovActionState.
votedOn : GovActionState → GovVoter → Maybe Vote
votedOn gaSt ⟦ CC   , c  ⟧ᵍᵛ = lookupᵐ? (gaSt .votes .gvCC) c
votedOn gaSt ⟦ DRep , c  ⟧ᵍᵛ = lookupᵐ? (gaSt .votes .gvDRep) c
votedOn gaSt ⟦ SPO  , kh ⟧ᵍᵛ = lookupᵐ? (gaSt .votes .gvSPO) kh

-- Find the GovActionState associated with an action id in a GovState.
lookupGAState : GovState → GovActionID → Maybe GovActionState
lookupGAState [] aid = nothing
lookupGAState ((aid' , gaSt) ∷ s) aid = case aid ≟ aid' of λ where
  (yes _) → just gaSt
  (no  _) → lookupGAState s aid

-- The vote (if any) recorded for `voter` on action `aid` in `s`.
recordedVote : GovState → GovActionID → GovVoter → Maybe Vote
recordedVote s aid voter = case lookupGAState s aid of λ where
  nothing     → nothing
  (just gaSt) → votedOn gaSt voter

-- Fold step keeping the most recent vote that `voter` cast on action `aid`.
stepVote : GovVoter → GovActionID → Maybe Vote → GovVote ⊎ GovProposal → Maybe Vote
stepVote voter aid acc (inj₁ gv) with GovVoterOf gv ≟ voter | gv .gid ≟ aid
... | yes _ | yes _ = just (VoteOf gv)
... | _     | _     = acc
stepVote voter aid acc (inj₂ _)  = acc

-- The last vote `voter` cast on action `aid` in a list of GOV signals.
lastVoteOn : GovVoter → GovActionID → List (GovVote ⊎ GovProposal) → Maybe Vote
lastVoteOn voter aid = foldl (stepVote voter aid) nothing
```

**Theorem**.

The following is the type that codifies the property we wish to prove.

```agda
last-vote-applied-to-GA : Type
last-vote-applied-to-GA =
  {Γ      : GovEnv}
  {s s'   : GovState}
  {vps    : List (GovVote ⊎ GovProposal) }
  {aid    : GovActionID}
  {voter  : GovVoter}
  {v      : Vote}
  → Γ .txid ≢ proj₁ aid
  → Γ ⊢ s ⇀⦇ vps ,GOVS⦈ s'
  → lastVoteOn voter aid vps ≡ just v
  → recordedVote s' aid voter ≡ just v
```

**Proof**.

The proof (that `last-vote-applied-to-GA` is inhabited) has two ingredients.

1.  A handful of *per-step* facts describing how a single `GOV`{.AgdaDatatype} signal
    changes the vote that `recordedVote`{.AgdaFunction} reads back: a vote on the targeted
    action and voter records it; any other vote, or a proposal, leaves it untouched.
2.  An induction on the `GOVS`{.AgdaDatatype} derivation that chains these per-step facts
    into the `foldl`{.AgdaFunction} that `lastVoteOn`{.AgdaFunction} computes.

### 1. Fold and per-step lemmas

The base case is a single `GOV`{.AgdaDatatype} vote step: the cast vote is recorded on
the targeted action.

```agda
vote-applied-to-GA : Type
vote-applied-to-GA = ∀ {Γ k s s'} {gv : GovVote}
  → (Γ , k) ⊢ s ⇀⦇ inj₁ gv ,GOV⦈ s'
  → recordedVote s' (gv .gid) (GovVoterOf gv) ≡ just (VoteOf gv)
```

Voting for `(aid , voter)` on an action that is present records exactly `v`.

```agda
opaque
  unfolding addVote

  recordedVote-addVote :
    {s      : GovState}
    {aid    : GovActionID}
    {ast    : GovActionState}
    {voter  : GovVoter}
    {v      : Vote}
    → (aid , ast) ∈ fromList s → recordedVote (addVote s aid voter v) aid voter ≡ just v

  recordedVote-addVote {s} {aid} {ast} {voter} {v} p = go voter s (Equivalence.from ∈-fromList p)
    where
    go : (w : GovVoter) (t : GovState) → (aid , ast) ∈ˡ t
       → recordedVote (addVote t aid w v) aid w ≡ just v
    go w ((aid' , g') ∷ t) mem with aid ≟ aid'
    ... | yes refl rewrite dec-yes (aid ≟ aid) refl .proj₂ with w
    ...   | ⟦ CC   , c  ⟧ᵍᵛ = lookupᵐ?-insert (gvCC   (votes g')) c  v
    ...   | ⟦ DRep , c  ⟧ᵍᵛ = lookupᵐ?-insert (gvDRep (votes g')) c  v
    ...   | ⟦ SPO  , kh ⟧ᵍᵛ = lookupᵐ?-insert (gvSPO  (votes g')) kh v
    go w ((aid' , g') ∷ t) mem | no aid≢ with mem
    ...   | here refl = ⊥-elim (aid≢ refl)
    ...   | there m   = go w t m
```

The base case follows immediately: a `GOV-Vote`{.AgdaInductiveConstructor} step exists
only when the voted action is present, which is the premise `recordedVote-addVote` needs.

```agda
vote-applied : vote-applied-to-GA
vote-applied (GOV-Vote (aid∈s , _)) = recordedVote-addVote aid∈s
```

Once a matching vote appears, `foldl stepVote` produces that vote regardless of the
starting accumulator (a later matching vote overrides, a non-match keeps the accumulator).
In particular, starting from `nothing`{.AgdaInductiveConstructor} (as `lastVoteOn`{.AgdaFunction}
does) can be replaced by starting from any accumulator.

```agda
foldl-stepVote-nothing : ∀ {voter aid} (vps : List (GovVote ⊎ GovProposal)) (acc : Maybe Vote) {v}
  → foldl (stepVote voter aid) nothing vps ≡ just v
  → foldl (stepVote voter aid) acc   vps ≡ just v
foldl-stepVote-nothing [] acc ()
foldl-stepVote-nothing (inj₂ p ∷ vps) acc h = foldl-stepVote-nothing vps acc h
foldl-stepVote-nothing {voter} {aid} (inj₁ gv ∷ vps) acc h
  with GovVote.voter gv ≟ voter | gv .gid ≟ aid
... | yes _ | yes _ = h
... | yes _ | no  _ = foldl-stepVote-nothing vps acc h
... | no  _ | yes _ = foldl-stepVote-nothing vps acc h
... | no  _ | no  _ = foldl-stepVote-nothing vps acc h
```

Two per-step facts say a `GOV`{.AgdaDatatype} step that does *not* match `(aid , voter)`
leaves its recorded vote unchanged.  First, voting on a *different action*:

```agda
opaque
  unfolding addVote

  lookupGAState-addVote-≢ : ∀ s aid₀ {voter₀ v₀ aid} → aid₀ ≢ aid
    → lookupGAState (addVote s aid₀ voter₀ v₀) aid ≡ lookupGAState s aid
  lookupGAState-addVote-≢ [] aid₀ ne = refl
  lookupGAState-addVote-≢ ((aid'' , g'') ∷ s) aid₀ {voter₀} {v₀} {aid} ne with aid ≟ aid''
  ... | no  _    = lookupGAState-addVote-≢ s aid₀ {voter₀} {v₀} {aid} ne
  ... | yes refl with aid ≟ aid₀
  ...   | yes refl = ⊥-elim (ne refl)
  ...   | no  _    = refl

  recordedVote-addVote-≢gid :
    {s : GovState} {aid₀ : GovActionID} {voter₀ : GovVoter} {v₀ : Vote} {aid : GovActionID} {voter : GovVoter}
    → aid₀ ≢ aid
    → recordedVote (addVote s aid₀ voter₀ v₀) aid voter ≡ recordedVote s aid voter
  recordedVote-addVote-≢gid {s} {aid₀} {voter₀} {v₀} {aid} {voter} ne
    rewrite lookupGAState-addVote-≢ s aid₀ {voter₀} {v₀} {aid} ne = refl
```

Second, a vote on the *same action* by a *different voter*.  Once the voted entry is
located, the recorded vote for `voter`{.AgdaBound} reads role `voter`{.AgdaBound}'s
credential map.  A vote by `voter₀ ≢ voter`{.AgdaBound} either touches a different role's
map (the read map is untouched — `refl`{.AgdaInductiveConstructor}) or the same role at a
different credential (`lookupᵐ?-insert-≢`{.AgdaFunction}, the credentials differing because
the voters do).

```agda
  recordedVote-addVote-≢voter :
    {s : GovState} {aid : GovActionID} {voter₀ : GovVoter} {v₀ : Vote} {voter : GovVoter}
    → voter₀ ≢ voter
    → recordedVote (addVote s aid voter₀ v₀) aid voter ≡ recordedVote s aid voter
  recordedVote-addVote-≢voter {s} {aid} {voter₀} {v₀} {voter} ne = go voter₀ voter s ne
    where
    go : (w₀ w : GovVoter) (t : GovState) → w₀ ≢ w
       → recordedVote (addVote t aid w₀ v₀) aid w ≡ recordedVote t aid w
    go w₀ w [] ne′ = refl
    go w₀ w ((aid' , g') ∷ t) ne′ with aid ≟ aid'
    ... | no  _    = go w₀ w t ne′
    ... | yes refl rewrite dec-yes (aid ≟ aid) refl .proj₂ with w₀ | w
    ...   | ⟦ CC   , c₀  ⟧ᵍᵛ | ⟦ DRep , c  ⟧ᵍᵛ = refl
    ...   | ⟦ CC   , c₀  ⟧ᵍᵛ | ⟦ SPO  , kh ⟧ᵍᵛ = refl
    ...   | ⟦ DRep , c₀  ⟧ᵍᵛ | ⟦ CC   , c  ⟧ᵍᵛ = refl
    ...   | ⟦ DRep , c₀  ⟧ᵍᵛ | ⟦ SPO  , kh ⟧ᵍᵛ = refl
    ...   | ⟦ SPO  , kh₀ ⟧ᵍᵛ | ⟦ CC   , c  ⟧ᵍᵛ = refl
    ...   | ⟦ SPO  , kh₀ ⟧ᵍᵛ | ⟦ DRep , c  ⟧ᵍᵛ = refl
    ...   | ⟦ CC   , c₀  ⟧ᵍᵛ | ⟦ CC   , c  ⟧ᵍᵛ =
      lookupᵐ?-insert-≢ (gvCC (votes g')) λ c₀≡c → ne′ (cong ⟦ CC   ,_⟧ᵍᵛ c₀≡c)
    ...   | ⟦ DRep , c₀  ⟧ᵍᵛ | ⟦ DRep , c  ⟧ᵍᵛ =
      lookupᵐ?-insert-≢ (gvDRep (votes g')) λ c₀≡c → ne′ (cong ⟦ DRep ,_⟧ᵍᵛ c₀≡c)
    ...   | ⟦ SPO  , kh₀ ⟧ᵍᵛ | ⟦ SPO  , kh ⟧ᵍᵛ =
      lookupᵐ?-insert-≢ (gvSPO (votes g')) λ kh₀≡kh → ne′ (cong ⟦ SPO  ,_⟧ᵍᵛ kh₀≡kh)
```

The third per-step fact concerns a `GOV-Propose`{.AgdaInductiveConstructor} step.  Proposing
adds a fresh action via `insertGovAction`{.AgdaFunction}, a priority-ordered insert.  Looking
up *any other* id is unaffected, since the new entry carries the fresh id and
`insertGovAction`{.AgdaFunction} preserves the relative order of the existing entries.  This
is where the freshness hypothesis is consumed: the proposed id `(txid , k)`{.AgdaBound}
differs from `aid`{.AgdaBound}.

```agda
lookupGAState-insertGovAction-≢ : ∀ s (p : GovActionID × GovActionState) {aid} → proj₁ p ≢ aid
  → lookupGAState (insertGovAction s p) aid ≡ lookupGAState s aid
lookupGAState-insertGovAction-≢ []                 (aid₀ , ast₀) {aid} ne with aid ≟ aid₀
... | yes refl = ⊥-elim (ne refl)
... | no  _    = refl
lookupGAState-insertGovAction-≢ ((gaID , astH) ∷ s) (aid₀ , ast₀) {aid} ne
  with govActionPriority (GovActionTypeOf astH) ≤? govActionPriority (GovActionTypeOf ast₀)
lookupGAState-insertGovAction-≢ ((gaID , astH) ∷ s) (aid₀ , ast₀) {aid} ne | yes _
  with aid ≟ gaID
... | yes refl = refl
... | no  _    = lookupGAState-insertGovAction-≢ s (aid₀ , ast₀) ne
lookupGAState-insertGovAction-≢ ((gaID , astH) ∷ s) (aid₀ , ast₀) {aid} ne | no  _
  with aid ≟ aid₀
... | yes refl = ⊥-elim (ne refl)
... | no  _    = refl

recordedVote-addAction-≢ :
  {s : GovState }
  {e : Epoch }
  {aid₀ : GovActionID }
  {addr : RewardAddress }
  {a : GovAction }
  {prev : NeedsHash (gaType a) }
  {aid : GovActionID }
  {voter : GovVoter}
  → aid₀ ≢ aid
  → recordedVote (addAction s e aid₀ addr a prev) aid voter ≡ recordedVote s aid voter
recordedVote-addAction-≢ {s} {e} {aid₀} {addr} {a} {prev} {aid} ne
  rewrite lookupGAState-insertGovAction-≢ s (mkGovStatePair e aid₀ addr a prev) {aid} ne = refl

```

### 2. Lifting to a block: induction on the <span class="AgdaDatatype">GOVS</span> derivation

Lifting to a whole block (the `GOVS`{.AgdaDatatype} closure of `GOV`{.AgdaDatatype}),
the last vote a voter casts on an action is the one recorded in the resulting state.

This needs one precondition: the action `aid`{.AgdaBound} being voted on must not have been
*created by the current transaction*, i.e. `Γ .txid ≢ proj₁ aid`.  Without
it the claim is false.  Indeed, suppose a `GOV-Propose`{.AgdaInductiveConstructor} in
the same block yields a fresh action with id `(txid , k)`; if that collides with a
pre-existing `aid`{.AgdaBound} it is inserted (by priority) ahead of the voted entry
and shadows it, so `recordedVote`{.AgdaFunction} no longer sees the vote.

Fortunately, `Γ .txid ≢ proj₁ aid` holds for every state reachable in the
ledger (actions already in `s`{.AgdaBound} carry the ids of *earlier* transactions),
so the condition only rules out voting on an action proposed within the very same
transaction.[^1]

The lifting is a direct induction on the `GOVS`{.AgdaDatatype} derivation.  At each step one
of the per-step facts above rewrites the accumulator — a vote splits (via
`voter ≟`/`gid ≟`) into the three `recordedVote-addVote*`{.AgdaFunction} facts, and a proposal
uses `recordedVote-addAction-≢`{.AgdaFunction} (where the freshness hypothesis is consumed);
`cong`{.AgdaFunction} threads the equation through the remaining fold while the induction
hypothesis supplies the tail.

Inducting on the derivation — rather than on the bare list of signals divorced from
the state — is what makes the matching-vote case provable: the
`GOV-Vote`{.AgdaInductiveConstructor} rule carries the proof that the voted action is
present, which `recordedVote-addVote`{.AgdaFunction} requires.  (A pure fold over the
signals could not know this, and indeed the claim is *false* without it: a matching
vote on an action absent from the state would be reported by
`stepVote`{.AgdaFunction} yet not recorded.)

```agda
lift-GOVS :
  {Γ      : GovEnv}
  {n      : ℕ}
  {s s'   : GovState}
  {vps    : List (GovVote ⊎ GovProposal)}
  {aid    : GovActionID}
  {voter  : GovVoter}
  → Γ .txid ≢ proj₁ aid
  → _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⦇_,GOV⦈_} (Γ , n) s vps s'
  → recordedVote s' aid voter ≡ foldl (stepVote voter aid) (recordedVote s aid voter) vps
lift-GOVS fresh (BS-base Id-nop) = refl
lift-GOVS {aid = aid} {voter} fresh
  (BS-ind {sigs = sigs} (GOV-Vote {aid = aid₁} {voter = voter₁} (m∈ , _)) rest)
  with voter₁ ≟ voter | aid₁ ≟ aid
... | yes refl | yes refl = trans  (lift-GOVS fresh rest)
                                   (cong (λ acc → foldl (stepVote voter aid) acc sigs) (recordedVote-addVote m∈))
... | no  v≢   | yes refl = trans  (lift-GOVS fresh rest)
                                   (cong (λ acc → foldl (stepVote voter aid) acc sigs) (recordedVote-addVote-≢voter v≢))
... | yes _    | no  a≢   = trans  (lift-GOVS fresh rest)
                                   (cong (λ acc → foldl (stepVote voter aid) acc sigs) (recordedVote-addVote-≢gid a≢))
... | no  _    | no  a≢   = trans  (lift-GOVS fresh rest)
                                   (cong (λ acc → foldl (stepVote voter aid) acc sigs) (recordedVote-addVote-≢gid a≢))
lift-GOVS {Γ = Γ} {n = n} {s = s} {aid = aid} {voter} fresh
  (BS-ind {sigs = sigs} (GOV-Propose _) rest) =
    trans  (lift-GOVS fresh rest)
           (cong (λ acc → foldl (stepVote voter aid) acc sigs) (recordedVote-addAction-≢ {s} λ eq → fresh (cong proj₁ eq)) )
```

Finally, both claims follow.  The lifted statement combines `lift-GOVS`{.AgdaFunction} with
`foldl-stepVote-nothing`{.AgdaFunction} (the last vote in the block survives folding from any
starting accumulator).

```agda
last-vote-applied : last-vote-applied-to-GA
last-vote-applied {s = s} {vps = vps} {aid = aid} {voter} fresh govs lvo =
  trans (lift-GOVS fresh govs)
        (foldl-stepVote-nothing vps (recordedVote s aid voter) lvo)
```

[^1]: This is a potential TODO item: formally prove the claim, "`GovEnv.txid Γ ≢ proj₁ aid` holds for every state reachable in the ledger."
