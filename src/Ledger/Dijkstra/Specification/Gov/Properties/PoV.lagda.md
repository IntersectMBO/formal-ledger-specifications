---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Gov/Properties/PoV.lagda.md
---

# Properties of `GOV`{.AgdaDatatype}: Governance Deposit Accounting {#sec:gov-properties-pov}

`rmOrphanDRepVotes`{.AgdaFunction} preserves total governance deposits.  A
`GOVS`{.AgdaDatatype} step grows that total by the deposits of its proposals.
`LEDGER-pov`{.AgdaFunction} uses both facts.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Gov.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.Nat.Base using () renaming (_+_ to infixl 6 _+ᴺ_)
open import Data.Nat.Properties using (+-assoc; +-identityʳ)
open import Data.Nat.Tactic.RingSolver using (solve-∀)

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs

open import Interface.STS
```
-->

## `proposalsOf`

The right injections of a list of sums, used (at `GovVote ⊎ GovProposal`) to extract
the proposals from a mixed `GOVS`{.AgdaDatatype} signal list.

```agda
proposalsOf : ∀ {A B : Type} → List (A ⊎ B) → List B
proposalsOf []            = []
proposalsOf (inj₁ _ ∷ xs) = proposalsOf xs
proposalsOf (inj₂ p ∷ xs) = p ∷ proposalsOf xs
```

`proposalsOf (GovProposals+Votes t)` recovers exactly the proposals of `t`, since
`GovProposals+Votes`{.AgdaFunction} lists all proposals (as right injections) before
all votes (as left injections).

```agda
proposalsOf-Proposals+Votes : ∀ {ℓ} (t : Tx ℓ)
  → proposalsOf (GovProposals+Votes t) ≡ ListOfGovProposalsOf t
proposalsOf-Proposals+Votes t = go (ListOfGovProposalsOf t) (ListOfGovVotesOf t)
  where
  drop-votes : ∀ {A B : Type} (vs : List A)
    → proposalsOf {A = A} {B = B} (map inj₁ vs) ≡ []
  drop-votes []       = refl
  drop-votes (_ ∷ vs) = drop-votes vs
  go : ∀ {A B : Type} (ps : List B) (vs : List A)
     → proposalsOf (map inj₂ ps ++ map inj₁ vs) ≡ ps
  go []       vs = drop-votes vs
  go (p ∷ ps) vs = cong (p ∷_) (go ps vs)
```

## Arithmetic helpers

The two pure `+`-rearrangements below are discharged by the reflective ring solver
(`Data.Nat.Tactic.RingSolver`), with the solver-facing statements written over the
raw natural-number addition `_+ᴺ_`; see `Ledger.Properties.PoV`{.AgdaModule} for
the solver conventions and the reason the overloaded `_+_` cannot appear in
solver-facing statements.

```agda
swap-head : ∀ a b c → a +ᴺ (b +ᴺ c) ≡ b +ᴺ (a +ᴺ c)
swap-head = solve-∀

rotate-in : ∀ a b c → a +ᴺ b +ᴺ c ≡ b +ᴺ (a +ᴺ c)
rotate-in = solve-∀
```

## `rmOrphanDRepVotes` preserves `coinFromGovDeposit`

`rmOrphanDRepVotes`{.AgdaFunction} maps over the list of governance actions, rewriting
only the `votes`{.AgdaField} field of each `GovActionState`{.AgdaRecord} (it filters
the `gvDRep`{.AgdaField} votes down to registered DReps).  The record update leaves
`deposit`{.AgdaField} definitionally unchanged in every cons cell, so a list
induction closes the proof.

```agda
rmOrphanDRepVotes-coinFromGovDeposit : ∀ (cs : CertState) (g : GovState)
  → coinFromGovDeposit (rmOrphanDRepVotes cs g) ≡ coinFromGovDeposit g
rmOrphanDRepVotes-coinFromGovDeposit cs []              = refl
rmOrphanDRepVotes-coinFromGovDeposit cs ((_ , gas) ∷ g) =
  cong (GovActionState.deposit gas +_) (rmOrphanDRepVotes-coinFromGovDeposit cs g)
```

## Accumulator shift for `govProposalsDeposits`

Each proposal adds one `govActionDeposit`{.AgdaField} to the fold accumulator.
The `GOVS`{.AgdaDatatype} induction uses the following identity to pull the
initial accumulator out of the fold.

```agda
govProposalsDeposits-acc : ∀ (pp : PParams) (acc : Coin) (ps : List GovProposal)
  → foldl (λ a _ → a + PParams.govActionDeposit pp) acc ps
    ≡ acc + govProposalsDeposits pp ps
govProposalsDeposits-acc pp acc []       = sym (+-identityʳ acc)
govProposalsDeposits-acc pp acc (_ ∷ ps) =
  trans (govProposalsDeposits-acc pp (acc + d) ps)
        (trans (+-assoc acc d (govProposalsDeposits pp ps))
               (cong (acc +_) (sym (govProposalsDeposits-acc pp d ps))))
  where d = PParams.govActionDeposit pp
```

## Per-step facts: `addVote` and `insertGovAction`

A `GOV-Vote`{.AgdaInductiveConstructor} step concludes in `addVote`{.AgdaFunction},
which maps over the state, rewriting only the `votes`{.AgdaField} field of the
matching action.  Whether or not an entry matches the voted action id, its
`deposit`{.AgdaField} is untouched, so `coinFromGovDeposit`{.AgdaFunction} is
preserved.  (`addVote`{.AgdaFunction} is `opaque`{.AgdaKeyword}, so the proof must
unfold it explicitly.)

```agda
opaque
  unfolding addVote

  addVote-coinFromGovDeposit :
    ∀ {s : GovState} {aid voter v}
    → coinFromGovDeposit (addVote s aid voter v) ≡ coinFromGovDeposit s
  addVote-coinFromGovDeposit {[]}                            = refl
  addVote-coinFromGovDeposit {(gid , gas) ∷ s} {aid} {voter} {v}
    with gid ≟ aid
  ... | yes _ = cong (GovActionState.deposit gas +_)
                     (addVote-coinFromGovDeposit {s} {aid} {voter} {v})
  ... | no  _ = cong (GovActionState.deposit gas +_)
                     (addVote-coinFromGovDeposit {s} {aid} {voter} {v})
```

A `GOV-Propose`{.AgdaInductiveConstructor} step concludes in
`addAction`{.AgdaFunction}, which is `insertGovAction`{.AgdaFunction} of a fresh
`GovActionState`{.AgdaRecord} pair carrying `deposit = pp .govActionDeposit`.
`insertGovAction`{.AgdaFunction} is a priority-ordered insertion; wherever the new
pair lands, `coinFromGovDeposit`{.AgdaFunction} grows by exactly its deposit.  The
proof is a list induction with a case split on the priority comparison: in the
*then* branch the new pair sinks past the head, so the head's deposit and the
inserted deposit swap places (`swap-head`{.AgdaFunction}); in the *else* branch the
list is extended in place and both sides agree definitionally.

```agda
insertGovAction-coinFromGovDeposit :
  ∀ {s : GovState} {p : GovActionID × GovActionState}
  → coinFromGovDeposit (insertGovAction s p)
    ≡ GovActionState.deposit (proj₂ p) + coinFromGovDeposit s
insertGovAction-coinFromGovDeposit {[]}                 {_}             = refl
insertGovAction-coinFromGovDeposit {(gaID₀ , gaSt₀) ∷ s} {gaID₁ , gaSt₁}
  with govActionPriority (GovActionTypeOf gaSt₀)
         ≤? govActionPriority (GovActionTypeOf gaSt₁)
... | yes _ =
  trans (cong (GovActionState.deposit gaSt₀ +_)
              (insertGovAction-coinFromGovDeposit {s} {gaID₁ , gaSt₁}))
        (swap-head (GovActionState.deposit gaSt₀)
                   (GovActionState.deposit gaSt₁)
                   (coinFromGovDeposit s))
... | no  _ = refl
```

## `GOVS` accounting

`GOVS`{.AgdaDatatype} is the *indexed* reflexive-transitive closure of
`GOV`{.AgdaDatatype}: the convenience wrapper fixes the index at `0`, but
`BS-ind`{.AgdaInductiveConstructor}'s tail runs at `suc n`, so the induction must be
stated over the primed relation `_⊢_⇀⟦_⟧ᵢ*'_`{.AgdaDatatype}, generalized over the
environment-index pair, and then specialized to `0`.  Per step,
`GOV-Vote`{.AgdaInductiveConstructor} preserves the deposit total
(`addVote-coinFromGovDeposit`{.AgdaFunction}, and its signal contributes no
proposal), while `GOV-Propose`{.AgdaInductiveConstructor} adds one
`govActionDeposit`{.AgdaField} on both sides
(`insertGovAction-coinFromGovDeposit`{.AgdaFunction} on the state side,
`govProposalsDeposits-acc`{.AgdaFunction} on the accounting side).

```agda
GOVSᵢ-coinFromGovDeposit :
  ∀ {Γ : GovEnv} {n : ℕ} {s s' : GovState} {sigs : List (GovVote ⊎ GovProposal)}
  → _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⦇_,GOV⦈_} (Γ , n) s sigs s'
  → coinFromGovDeposit s'
    ≡ coinFromGovDeposit s + govProposalsDeposits (PParamsOf Γ) (proposalsOf sigs)

GOVSᵢ-coinFromGovDeposit (BS-base Id-nop) = sym (+-identityʳ _)

GOVSᵢ-coinFromGovDeposit {Γ} (BS-ind {sigs = sigs} (GOV-Vote _) rest) =
  trans (GOVSᵢ-coinFromGovDeposit rest)
        (cong (_+ govProposalsDeposits (PParamsOf Γ) (proposalsOf sigs))
              addVote-coinFromGovDeposit)

GOVSᵢ-coinFromGovDeposit {Γ} {s = s} (BS-ind {sigs = sigs} (GOV-Propose _) rest) =
  trans (GOVSᵢ-coinFromGovDeposit rest)
  (trans (cong (_+ X) (insertGovAction-coinFromGovDeposit {s = s}))
  (trans (rotate-in dep (coinFromGovDeposit s) X)
         (cong (coinFromGovDeposit s +_)
               (sym (govProposalsDeposits-acc (PParamsOf Γ) dep (proposalsOf sigs))))))
  where
  X   = govProposalsDeposits (PParamsOf Γ) (proposalsOf sigs)
  dep = PParams.govActionDeposit (PParamsOf Γ)
```

Specializing to index `0` gives the statement in the shape that
`LEDGER-PoV`{.AgdaModule} consumes:

```agda
GOVS-coinFromGovDeposit :
  ∀ {Γ : GovEnv} {govSt govSt′ : GovState} {props : List (GovVote ⊎ GovProposal)}
  → Γ ⊢ govSt ⇀⦇ props ,GOVS⦈ govSt′
  → coinFromGovDeposit govSt′
    ≡ coinFromGovDeposit govSt + govProposalsDeposits (PParamsOf Γ) (proposalsOf props)
GOVS-coinFromGovDeposit = GOVSᵢ-coinFromGovDeposit
```
