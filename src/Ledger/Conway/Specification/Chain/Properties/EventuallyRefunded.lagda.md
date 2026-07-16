---
source_branch: master
source_path: src/Ledger/Conway/Specification/Chain/Properties/EventuallyRefunded.lagda.md
---

## Claim: Governance action deposits are eventually refunded {#clm:EventuallyRefunded}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract using (AbstractFunctions)
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

module Ledger.Conway.Specification.Chain.Properties.EventuallyRefunded
  (txs : TransactionStructure ) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Prelude

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov govStructure using (GovStateOf)
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Base txs abs

open GovActionState using (expiresIn)
```
-->

*Informally*.

Every governance action carries a deposit (a `GovActionDeposit`{.AgdaInductiveConstructor}
entry in the `UTxOState`{.AgdaRecord}) which is held only while the action is part of
the governance state.  Each action also records an `expiresIn`{.AgdaField} epoch in
its `GovActionState`{.AgdaRecord}.

Once that epoch has passed, the `EPOCH`{.AgdaDatatype} transition (run as part of
`CHAIN`{.AgdaDatatype} whenever a block advances the epoch) removes the action from
the governance state and refunds its deposit.

Hence, for every `ChainState`{.AgdaRecord} `cs`{.AgdaBound} satisfying
`govDepsMatch`{.AgdaFunction} and every governance action `gaid`{.AgdaBound} whose
`GovActionState`{.AgdaRecord} `gaSt`{.AgdaBound} is present in the governance state and
not yet expired, once the chain has progressed two epochs past `expiresIn`{.AgdaField}
`gaSt`{.AgdaBound} (i.e. `sucᵉ`{.AgdaFunction} (`sucᵉ`{.AgdaFunction}
(`expiresIn`{.AgdaField} `gaSt`{.AgdaBound})) `≤`{.AgdaFunction}
`LastEpochOf`{.AgdaField} `cs'`{.AgdaBound}), the deposit is no longer in the deposit
pot.

Two epochs are needed because the `EPOCH`{.AgdaDatatype} transition uses a
pipeline: at epoch `sucᵉ`{.AgdaFunction} (`expiresIn`{.AgdaField}
`gaSt`{.AgdaBound}), `RATIFIES`{.AgdaDatatype} marks the expired action for removal
(adding it to `removed`{.AgdaField}); at the *following* epoch, the
`GovernanceUpdate`{.AgdaModule} actually filters the action out of the governance state
and strips its deposit from the deposit pot.  The deposit may therefore still be held
at any state whose last epoch is at most `sucᵉ`{.AgdaFunction}
(`expiresIn`{.AgdaField} `gaSt`{.AgdaBound}) — the *refund deadline* — and is gone at
every reachable state beyond it.

Four preconditions are needed.

+  `govDepsMatch`{.AgdaFunction} ensures that every
   `GovActionDeposit`{.AgdaInductiveConstructor} entry has a corresponding
   `GovActionState`{.AgdaRecord} in the governance state (from which we read
   `expiresIn`{.AgdaField}).  Without it, "orphan" deposit entries would never be
   removed.  The predicate is a known `CHAIN`{.AgdaDatatype} invariant.[^1]

+  The membership witness
   `(gaid , gaSt) ∈ fromList (GovStateOf cs)`{.Agda}
   identifies the `GovActionState`{.AgdaRecord} whose `expiresIn`{.AgdaField} field
   determines the deadline.

+  `LastEpochOf cs ≤ expiresIn gaSt`{.Agda} ensures the action has not yet expired
   relative to the last processed epoch.  This rules out unreachable states in which an
   expired action is still present in the governance state—something
   `govDepsMatch`{.AgdaFunction} alone does not prevent.

+  The per-state invariant `InvariantAt`{.AgdaFunction}, imposed at every state
   reached along the chain extension (via the generic `RTC-All`{.AgdaFunction}
   combinator), asserts that either the deposit has already been refunded, or the
   refund deadline has not yet passed.  This is an invariant of reachable chain
   states: the pipeline strips the deposit at the epoch boundary that ends the
   deadline, and the deposit cannot reappear afterwards because a
   `GovActionID`{.AgdaDatatype} contains the `TxId`{.AgdaDatatype} of the proposing
   transaction, which is a cryptographic hash and hence never reused in practice.

   Its formal derivation from the `CHAIN`{.AgdaDatatype} rule is future work.[^2]
   It requires the `rrm` premise of  `CHAIN-govDepsMatch`{.AgdaFunction}, tracking of
   the action through `LEDGERS`{.AgdaDatatype} and the `RATIFIES`{.AgdaDatatype}
   pipeline, and an abstract `TxId`{.AgdaDatatype}-freshness assumption (the formal
   specification does not enforce `TxId`{.AgdaDatatype} freshness syntactically).

*Formally*.

We first record what it means for a governance action deposit to still be held in a
chain state, and we define the per-state invariant.  Chain extension along a list of
blocks is the `CHAINS`{.AgdaFunction} transition system — the reflexive-transitive
closure of `CHAIN`{.AgdaDatatype} — and the invariant is imposed at every state
reached along a `CHAINS`{.AgdaFunction} trace by the generic
`RTC-All`{.AgdaFunction} combinator.

```agda
-- The deposits of `cs` still holds the deposit for governance action `gaid`.
gaDepositInPot : ChainState → GovActionID → Type
gaDepositInPot cs gaid = GovActionDeposit gaid ∈ dom (DepositsOf cs)

-- Either the deposit has already been refunded, or the refund deadline —
-- one epoch past expiry, owing to the ratification pipeline — has not yet
-- passed.  This holds at every reachable chain state (see prose above);
-- deriving it formally from the CHAIN rule is future work (Issue #1260).
InvariantAt : GovActionID → GovActionState → ChainState → Type
InvariantAt gaid gaSt cs =
    (¬ gaDepositInPot cs gaid)
  ⊎ (LastEpochOf cs ≤ sucᵉ (expiresIn gaSt))
```

We express the claim formally as the following type.

```agda
GADepositsEventuallyRefunded : Type
GADepositsEventuallyRefunded =
  {cs    : ChainState}
  {gaid  : GovActionID}
  {gaSt  : GovActionState}
  → govDepsMatch (LStateOf cs)
  → (gaid , gaSt) ∈ fromList (GovStateOf (LStateOf cs))
  → LastEpochOf cs ≤ expiresIn gaSt
  →  {bs   : List Block}
     {cs'  : ChainState}
     → (chain : _ ⊢ cs ⇀⦇ bs ,CHAINS⦈ cs')
     → RTC-All (InvariantAt gaid gaSt) chain
     → sucᵉ (sucᵉ (expiresIn gaSt)) ≤ LastEpochOf cs'
     → ¬ gaDepositInPot cs' gaid
```

**Proof**.

The preconditions place all of the chain-dynamics content in the
`RTC-All`{.AgdaFunction} premise, which constrains every state reached along the
chain extension — in particular the final one, which `RTC-All-last`{.AgdaFunction}
extracts.  The proof therefore only has to read off the invariant at the final state
and compare epochs.  If the block list is empty, the final state *is* the initial
state, and the not-yet-expired bound `LastEpochOf cs ≤ expiresIn gaSt`{.Agda}
contradicts the cutoff `sucᵉ (sucᵉ (expiresIn gaSt)) ≤ LastEpochOf cs`{.Agda}.
Otherwise, the invariant at the final state either yields the refund outright, or
asserts `LastEpochOf cs' ≤ sucᵉ (expiresIn gaSt)`{.Agda}, which again contradicts
the cutoff.

<!--
```agda
private
  module Ep = HasPreorder preoEpoch

  -- Slot-level <-trans, accessed explicitly to avoid instance-resolution issues.
  <-transˢ : ∀ {x y z : Slot} → x < y → y < z → x < z
  <-transˢ = HasPartialOrder.<-trans (HasDecPartialOrder.hasPartialOrder DecPo-Slot)

  -- a ≤ b and sucᵉ b ≤ a is absurd, because b < sucᵉ b (e<sucᵉ).
  ≤e<sucᵉ⇒⊥ : ∀ {a b : Epoch} → a ≤ b → sucᵉ b ≤ a → ⊥
  ≤e<sucᵉ⇒⊥ {_} {b} p q =
    case Ep.≤-trans q p of λ where
      (inj₁ h) → Ep.<-irrefl refl (<-transˢ (e<sucᵉ {b}) h)
      (inj₂ h) → Ep.<-irrefl (sym h) (e<sucᵉ {b})

  -- Corollary: a ≤ b and sucᵉ (sucᵉ b) ≤ a is also absurd.
  ≤e<sucᵉsucᵉ⇒⊥ : ∀ {a b : Epoch} → a ≤ b → sucᵉ (sucᵉ b) ≤ a → ⊥
  ≤e<sucᵉsucᵉ⇒⊥ {_} {b} p q =
    ≤e<sucᵉ⇒⊥ p (Ep.≤-trans (inj₁ (e<sucᵉ {sucᵉ b})) q)
```
-->

```agda
gaDepositsEventuallyRefunded : GADepositsEventuallyRefunded
gaDepositsEventuallyRefunded _ _ notexp (BS-base Id-nop) _ cutoff =
  ⊥-elim (≤e<sucᵉsucᵉ⇒⊥ notexp cutoff)
gaDepositsEventuallyRefunded {gaid = gaid} {gaSt = gaSt} _ _ _
  chain@(BS-ind _ _) inv cutoff =
    case RTC-All-last (InvariantAt gaid gaSt) chain inv of λ where
      (inj₁ refunded)       → refunded
      (inj₂ withinDeadline) → ⊥-elim (≤e<sucᵉ⇒⊥ withinDeadline cutoff)
```

The following table summarises the preconditions and their status.

| # | Precondition | Status |
|---|--------------|--------|
| 1 | `govDepsMatch`{.AgdaFunction} | Known `CHAIN`{.AgdaDatatype} invariant[^1] |
| 2 | `GovState`{.AgdaFunction} membership | Identifies the action |
| 3 | `LastEpochOf cs ≤ expiresIn gaSt`{.Agda} | Action not yet expired |
| 4 | `RTC-All (InvariantAt gaid gaSt)`{.Agda} | Holds for reachable states; formal derivation is future work[^2] |

---

[^1]: See [`CHAIN-govDepsMatch`][Chain.Properties.GovDepsMatch] for the proof.
[^2]: See Issue #1260.
