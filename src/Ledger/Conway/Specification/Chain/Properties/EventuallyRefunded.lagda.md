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
open import Ledger.Prelude hiding (All; any?; all?)

open import Data.List.Relation.Unary.All using (All; []; _∷_)

open GovActionState
open Block
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
not yet expired, once the chain has progressed past `expiresIn`{.AgdaField}
`gaSt`{.AgdaBound}, the deposit is no longer in the deposit pot.

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
    → sucᵉ (expiresIn gaSt) ≤ LastEpochOf cs'
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

```
-->

(coming soon)

---

[^1]: See [`CHAIN-govDepsMatch`][Chain.Properties.GovDepsMatch] for the proof.
