---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/LastVoteApplied.lagda.md
---

## Theorem: The last vote is applied at the LEDGER level {#thm:LEDGER-LastVoteApplied}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Ledger.Properties.LastVoteApplied
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov govStructure
open import Ledger.Conway.Specification.Gov.Actions govStructure
  using () renaming (Vote to Vote')
open import Ledger.Conway.Specification.Gov.Properties.LastVoteApplied govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Data.List.Properties using (foldl-++)

private
  GOVS' = _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⦇_,GOV⦈_}
```
-->

This module lifts the `GOVS`{.AgdaDatatype}-level `last-vote-applied`{.AgdaFunction}
property to the `LEDGER`{.AgdaDatatype} rule, **without** the freshness premise
`TxIdOf tx ≢ proj₁ aid`{.AgdaBound}.

The key insight is that `txgov`{.AgdaFunction} places all proposals before all votes:

    txgov txb = map inj₂ txGovProposals ++ map inj₁ txGovVotes

During the proposals phase, `lastVoteOn`{.AgdaFunction} is unaffected (proposals are
no-ops for `stepVote`{.AgdaFunction}).  During the votes phase, no proposals occur, so
`recordedVote-addAction-≢`{.AgdaFunction} — the only lemma that consumes the freshness
assumption — is never invoked.

### Helper lemmas

Proposals don't change the `foldl`{.AgdaFunction} `stepVote`{.AgdaFunction} accumulator.

```agda
stepVote-proposals : ∀ {voter aid} acc (props : List GovProposal)
  → foldl (stepVote voter aid) acc (map inj₂ props) ≡ acc
stepVote-proposals acc [] = refl
stepVote-proposals acc (p ∷ props) = stepVote-proposals acc props
```

Split an indexed-closure derivation at a list concatenation.

```agda
split-GOVS :
  (xs   : List (GovVote ⊎ GovProposal))
  {ys   : List (GovVote ⊎ GovProposal)}
  {Γ    : GovEnv}
  {n    : ℕ}
  {s s' : GovState}
  → GOVS' (Γ , n) s (xs ++ ys) s'
  → ∃[ s₁ ] ∃[ n' ] (GOVS' (Γ , n) s xs s₁ × GOVS' (Γ , n') s₁ ys s')
split-GOVS [] d = _ , _ , BS-base Id-nop , d
split-GOVS (x ∷ xs) (BS-ind step rest) =
  let s₁ , n' , first , second = split-GOVS xs rest
  in  s₁ , n' , BS-ind step first , second
```

Votes-only variant of `lift-GOVS`{.AgdaFunction}: when the signal list consists only
of votes, the `GOV-Propose`{.AgdaInductiveConstructor} case never fires, so no freshness
assumption is needed.

```agda
lift-GOVS-votes :
  {Γ     : GovEnv}
  {n     : ℕ}
  {s s'  : GovState}
  {aid   : GovActionID}
  {voter : GovVoter}
  (vs : List GovVote)
  → GOVS' (Γ , n) s (map inj₁ vs) s'
  → recordedVote s' aid voter
    ≡ foldl (stepVote voter aid) (recordedVote s aid voter) (map inj₁ vs)
lift-GOVS-votes [] (BS-base Id-nop) = refl
lift-GOVS-votes {aid = aid} {voter} (v ∷ vs)
  (BS-ind (GOV-Vote {aid = aid₁} {voter = voter₁} (m∈ , _)) rest)
  with voter₁ ≟ voter | aid₁ ≟ aid
... | yes refl | yes refl =
  trans (lift-GOVS-votes vs rest)
    (cong (λ a → foldl (stepVote voter aid) a (map inj₁ vs)) (recordedVote-addVote m∈))
... | no  v≢ | yes refl =
  trans (lift-GOVS-votes vs rest)
    (cong (λ a → foldl (stepVote voter aid) a (map inj₁ vs)) (recordedVote-addVote-≢voter v≢))
... | yes _ | no a≢ =
  trans (lift-GOVS-votes vs rest)
    (cong (λ a → foldl (stepVote voter aid) a (map inj₁ vs)) (recordedVote-addVote-≢gid a≢))
... | no _ | no a≢ =
  trans (lift-GOVS-votes vs rest)
    (cong (λ a → foldl (stepVote voter aid) a (map inj₁ vs)) (recordedVote-addVote-≢gid a≢))
```

### Main theorem

At the `LEDGER`{.AgdaDatatype} level, the last vote a voter casts on an action is
recorded.

```agda
LEDGER-last-vote-applied :
  {Γ     : LEnv}
  {s s'  : LState}
  {tx    : Tx}
  {aid   : GovActionID}
  {voter : GovVoter}
  {v     : Vote'}
  → Tx.isValid tx ≡ true
  → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
  → lastVoteOn voter aid (txgov (Tx.body tx)) ≡ just v
  → recordedVote (GovStateOf s') aid voter ≡ just v
LEDGER-last-vote-applied {tx = tx} {aid} {voter} {v} refl (LEDGER-V⋯ _ _ _ govs) lvo
  with split-GOVS (map inj₂ (GovProposalsOf tx)) govs
... | s₁ , _ , _ , votes-d = trans  (lift-GOVS-votes votes votes-d)
                                    (foldl-stepVote-nothing (map inj₁ votes) _ lvo')
  where
  props : List GovProposal
  props = GovProposalsOf tx

  votes : List GovVote
  votes = GovVotesOf tx

  -- Proposals don't affect lastVoteOn, so the vote comes from the votes phase
  lvo' : foldl (stepVote voter aid) nothing (map inj₁ votes) ≡ just v
  lvo' = subst  (_≡ just v)
                (trans (foldl-++ (stepVote voter aid) nothing (map inj₂ props) (map inj₁ votes))
                       (cong (λ a → foldl (stepVote voter aid) a (map inj₁ votes))
                             (stepVote-proposals nothing props)))
                lvo

LEDGER-last-vote-applied refl (LEDGER-I⋯ () _) _
```
