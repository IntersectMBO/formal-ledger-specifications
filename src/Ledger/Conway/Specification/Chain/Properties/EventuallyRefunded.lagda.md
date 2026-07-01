---
source_branch: master
source_path: src/Ledger/Conway/Specification/Chain/Properties/EventuallyRefunded.lagda.md
---

## Claim: Governance action deposits are eventually refunded {#clm:EventuallyRefunded}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Chain.Properties.EventuallyRefunded
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Base txs abs
open import Ledger.Conway.Specification.Gov govStructure using (GovState; GovStateOf)
open import Ledger.Conway.Specification.Ratify govStructure
open import Ledger.Prelude hiding (All; any?; all?)

open import Data.List.Relation.Unary.All using (All; []; _∷_)

open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Relation.Unary.Any using (here; there)

open GovActionState
open Block
open RatifyEnv using (currentEpoch)
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
and strips its deposit from the deposit pot.

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

+  `FreshId gaid bs`{.Agda} asserts that no transaction in the block list
   `bs`{.AgdaBound} has a `TxId`{.AgdaDatatype} equal to
   `proj₁`{.AgdaField} `gaid`{.AgdaBound}.  This prevents a new governance
   proposal from re-using the same `GovActionID`{.AgdaDatatype} after the original
   action has been removed.  In practice this always holds because
   `TxId`{.AgdaDatatype} is a cryptographic hash of the transaction body, but the
   formal specification does not enforce `TxId`{.AgdaDatatype} freshness
   syntactically.

*Formally*.

We first record what it means for a governance action deposit to still be held in a
chain state, and we close `CHAIN`{.AgdaDatatype} under composition along a list of
blocks.

```agda
-- The deposits of `cs` still holds the deposit for governance action `gaid`.
gaDepositInPot : ChainState → GovActionID → Type
gaDepositInPot cs gaid = GovActionDeposit gaid ∈ dom (DepositsOf cs)

-- Reflexive-transitive closure of CHAIN along a list of blocks.
data CHAINStar : ChainState → List Block → ChainState → Type where
  []*  : {cs : ChainState} → CHAINStar cs [] cs
  _∷*_ : {cs cs' cs'' : ChainState} {b : Block} {bs : List Block}
         → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
         → CHAINStar cs' bs cs''
         → CHAINStar cs (b ∷ bs) cs''

-- No block in bs contains a transaction whose TxId equals proj₁ gaid.
-- This rules out re-proposal of the same GovActionID, which the formal spec
-- does not prevent syntactically (TxId is abstract) but which cannot happen
-- in practice (TxId is a cryptographic hash of the transaction body).
FreshId : GovActionID → List Block → Type
FreshId gaid bs = All (λ b → All (λ tx → TxIdOf tx ≢ proj₁ gaid) (ts b)) bs
```

The property asserts that every held governance action deposit is eventually
refunded, which we express formally as the following type definition.

**Theorem**.

```agda
GADepositsEventuallyRefunded : Type
GADepositsEventuallyRefunded =
  ∀ {cs : ChainState} {gaid : GovActionID} {gaSt : GovActionState}
  → govDepsMatch (LStateOf cs)
  → (gaid , gaSt) ∈ fromList (GovStateOf (LStateOf cs))
  → LastEpochOf cs ≤ expiresIn gaSt
  → ∀ {bs : List Block} {cs' : ChainState}
    → CHAINStar cs bs cs'
    → FreshId gaid bs
    → sucᵉ (sucᵉ (expiresIn gaSt)) ≤ LastEpochOf cs'
    → ¬ gaDepositInPot cs' gaid
```

**Proof**.

We show that the `GADepositsEventuallyRefunded` type is inhabited.

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

  -- govDepsMatch lemmas: the GA deposits in the deposit pot correspond
  -- exactly to the GovState entries, so absence from dpMap (GovState)
  -- implies absence from the deposit pot.
  open Equivalence

  -- If govDepsMatch and the deposit is in the pot, GovActionDeposit gaid
  -- is in dpMap (i.e. gaid appears as proj₁ of some GovState entry).
  gdm-dep⇒dpMap : ∀ {ls : LState} {gaid : GovActionID} → govDepsMatch ls
    → (GovActionDeposit gaid ∈ dom (DepositsOf ls))
    → (GovActionDeposit gaid ∈ fromList (dpMap (GovStateOf ls)))
  gdm-dep⇒dpMap {ls} gdm dep = proj₁ gdm (∈-filter .to (refl , dep))

  -- Contrapositive: if gaid is absent from dpMap, the deposit is absent.
  gdm-¬dpMap⇒¬dep : ∀ {ls : LState} {gaid : GovActionID} → govDepsMatch ls
    → (GovActionDeposit gaid ∉ fromList (dpMap (GovStateOf ls)))
    → (GovActionDeposit gaid ∉ dom (DepositsOf ls))
  gdm-¬dpMap⇒¬dep {ls} gdm notMem dep = notMem (gdm-dep⇒dpMap {ls} gdm dep)

  -- ── RATIFY / RATIFIES lemmas ──────────────────────────────────

  -- Abbreviation for membership in the removed field.
  _∈ʳ_ : GovActionID × GovActionState → RatifyState → Type
  x ∈ʳ s = x ∈ RatifyState.removed s

  -- Single RATIFY step: an expired action is always added to removed.
  ratify-expired⇒in-removed :
    ∀ {Γ s s'} {a : GovActionID × GovActionState}
    → Γ ⊢ s ⇀⦇ a ,RATIFY⦈ s'
    → expired (currentEpoch Γ) (proj₂ a)
    → a ∈ʳ s'
  ratify-expired⇒in-removed (RATIFY-Accept _) _ = ∈-∪ .to (inj₁ (∈-singleton .to refl))
  ratify-expired⇒in-removed (RATIFY-Reject _) _ = ∈-∪ .to (inj₁ (∈-singleton .to refl))
  ratify-expired⇒in-removed (RATIFY-Continue (_ , notExp)) exp = ⊥-elim (notExp exp)

  -- RATIFY only grows the removed set.
  ratify-removed-mono :
    ∀ {Γ s s'} {a : GovActionID × GovActionState} {x : GovActionID × GovActionState}
    → Γ ⊢ s ⇀⦇ a ,RATIFY⦈ s' → x ∈ʳ s → x ∈ʳ s'
  ratify-removed-mono (RATIFY-Accept _)   h = ∈-∪ .to (inj₂ h)
  ratify-removed-mono (RATIFY-Reject _)   h = ∈-∪ .to (inj₂ h)
  ratify-removed-mono (RATIFY-Continue _) h = h

  -- RATIFIES (RTC) also only grows removed.
  ratifies-removed-mono :
    ∀ {Γ s s'} {as : List (GovActionID × GovActionState)} {x : GovActionID × GovActionState}
    → Γ ⊢ s ⇀⦇ as ,RATIFIES⦈ s' → x ∈ʳ s → x ∈ʳ s'
  ratifies-removed-mono (BS-base Id-nop) h = h
  ratifies-removed-mono (BS-ind step rest) h =
    ratifies-removed-mono rest (ratify-removed-mono step h)

  -- Main RATIFIES lemma: every expired action in the processed list
  -- ends up in the removed set of the output.
  ratifies-expired∈⇒in-removed :
    ∀ {Γ s s'} {as : List (GovActionID × GovActionState)}
      {a : GovActionID × GovActionState}
    → Γ ⊢ s ⇀⦇ as ,RATIFIES⦈ s'
    → a ∈ˡ as
    → expired (currentEpoch Γ) (proj₂ a)
    → a ∈ʳ s'
  ratifies-expired∈⇒in-removed (BS-ind step rest) (here refl) exp =
    ratifies-removed-mono rest (ratify-expired⇒in-removed step exp)
  ratifies-expired∈⇒in-removed (BS-ind step rest) (there mem) exp =
    ratifies-expired∈⇒in-removed rest mem exp

```
-->

(coming soon)

---

[^1]: See [`CHAIN-govDepsMatch`][Chain.Properties.GovDepsMatch] for the proof.
