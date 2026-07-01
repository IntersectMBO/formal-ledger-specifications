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
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Base txs abs
open import Ledger.Conway.Specification.Gov govStructure using (GovState; GovStateOf)
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Ratify govStructure
open import Ledger.Conway.Specification.RewardUpdate txs abs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Prelude hiding (All; any?; all?)

open import Data.List.Relation.Unary.All using (All; []; _∷_)

open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
import Data.List.Membership.Propositional.Properties as ListProp
open import Data.List.Relation.Unary.Any using (here; there)

open GovActionState
open Block
open RatifyEnv using (currentEpoch)
open RatifyState using (removed)
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

Five preconditions are needed.

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

+  `<⇒sucᵉ≤`{.Agda} asserts that
   `sucᵉ`{.AgdaFunction} is the *least* element strictly above a given epoch:
   `e < e' → sucᵉ e ≤ e'`{.Agda}.  This property holds for the concrete
   `ℕ`{.AgdaDatatype} epoch structure but is not yet an axiom of
   `EpochStructure`{.AgdaRecord}; it is taken as a hypothesis here until the
   axiom is added upstream.

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

-- Successor is the least element strictly above.  This holds for the
-- concrete ℕ epoch structure but is not yet an axiom of EpochStructure.
SucIsLeast : Type
SucIsLeast = ∀ {e e' : Epoch} → e < e' → sucᵉ e ≤ e'
```

The property asserts that every held governance action deposit is eventually
refunded, which we express formally as the following type definition.

**Theorem**.

```agda
GADepositsEventuallyRefunded : Type
GADepositsEventuallyRefunded =
    SucIsLeast
  → ∀ {cs : ChainState} {gaid : GovActionID} {gaSt : GovActionState}
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

We want to show that the `GADepositsEventuallyRefunded` type is inhabited.

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

  -- RATIFY / RATIFIES lemmas ----------------------

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

  -- GovernanceUpdate lemma ----------------------------

  -- If (gaid, gaSt) ∈ removed(fut), then after GovernanceUpdate
  -- the action is not in govSt'.
  govUpdate-removes : ∀ {ls : LState} {fut : RatifyState}
    {gaid : GovActionID} {gaSt gaSt' : GovActionState}
    → (gaid , gaSt) ∈ removed fut
    → (gaid , gaSt') ∉ˡ GovernanceUpdate.govSt' ls fut
  govUpdate-removes {ls} {fut} {gaid} {gaSt} {gaSt'} inRem inGovSt' =
    gaid∉ gaid∈
    where
    open LState ls using (govSt)
    P = λ (x : GovActionID × GovActionState)
        → proj₁ x ∉ mapˢ proj₁ (GovernanceUpdate.removed' ls fut)
    gaid∉ : gaid ∉ mapˢ proj₁ (GovernanceUpdate.removed' ls fut)
    gaid∉ = proj₂ (ListProp.∈-filter⁻ (¿ P ¿¹) {xs = govSt} inGovSt')
    gaid∈ : gaid ∈ mapˢ proj₁ (GovernanceUpdate.removed' ls fut)
    gaid∈ = ∈-map .to ((gaid , gaSt) , refl , ∈-∪ .to (inj₁ inRem))

  -- Deposit-absence preservation ----------------------

  -- GA keys never appear in certDeposit or certRefund.
  GA∉dom-certDep : ∀ {gaid} cert pp → GovActionDeposit gaid ∉ dom (certDeposit cert pp ˢ)
  GA∉dom-certDep {gaid} (delegate c d k v) pp h with from dom∈ h
  ... | _ , p with from ∈-singleton p
  ...   | ()
  GA∉dom-certDep {gaid} (reg c v) pp h with from dom∈ h
  ... | _ , p with from ∈-singleton p
  ...   | ()
  GA∉dom-certDep {gaid} (regpool kh p) pp h with from dom∈ h
  ... | _ , q with from ∈-singleton q
  ...   | ()
  GA∉dom-certDep {gaid} (regdrep c v a) pp h with from dom∈ h
  ... | _ , p with from ∈-singleton p
  ...   | ()
  GA∉dom-certDep (dereg _ _)      _ h = Properties.∉-∅ (proj₁ dom∅ h)
  GA∉dom-certDep (deregdrep _ _)  _ h = Properties.∉-∅ (proj₁ dom∅ h)
  GA∉dom-certDep (retirepool _ _) _ h = Properties.∉-∅ (proj₁ dom∅ h)
  GA∉dom-certDep (ccreghot _ _)   _ h = Properties.∉-∅ (proj₁ dom∅ h)

  -- Map-operation helpers (specialised to Deposits).
  ∉-dom-∪⁺ᵈ : ∀ {m n : Deposits} {x : DepositPurpose}
    → x ∉ dom (m ˢ) → x ∉ dom (n ˢ) → x ∉ dom ((m ∪⁺ n) ˢ)
  ∉-dom-∪⁺ᵈ h₁ h₂ h = case from ∈-∪ (proj₁ dom∪⁺≡∪dom h) of λ where
    (inj₁ x) → h₁ x ; (inj₂ x) → h₂ x

  ∉-dom-∪ˡᵈ : ∀ {m n : Deposits} {x : DepositPurpose}
    → x ∉ dom (m ˢ) → x ∉ dom (n ˢ) → x ∉ dom ((m ∪ˡ n) ˢ)
  ∉-dom-∪ˡᵈ {m} {n} h₁ h₂ h = case from ∈-∪ (proj₁ (dom∪ˡ≡∪dom {m = m} {m' = n}) h) of λ where
    (inj₁ x) → h₁ x ; (inj₂ x) → h₂ x

  ∉-dom-resᶜᵈ : ∀ {m : Deposits} {S : ℙ DepositPurpose} {x : DepositPurpose}
    → x ∉ dom (m ˢ) → x ∉ dom ((m ∣ S ᶜ) ˢ)
  ∉-dom-resᶜᵈ h h' = h (res-comp-domᵐ h')

  -- updateCertDeposits preserves GA-deposit absence.
  updCertDeps-GA-absent : ∀ {gaid : GovActionID} pp (certs : List DCert) (deps : Deposits)
    → GovActionDeposit gaid ∉ dom (deps ˢ)
    → GovActionDeposit gaid ∉ dom (updateCertDeposits pp certs deps ˢ)
  updCertDeps-GA-absent pp [] deps h = h
  updCertDeps-GA-absent {gaid} pp (delegate c d k v ∷ cs) deps h =
    updCertDeps-GA-absent pp cs (deps ∪⁺ certDeposit (delegate c d k v) pp) (∉-dom-∪⁺ᵈ h (GA∉dom-certDep {gaid} (delegate c d k v) pp))
  updCertDeps-GA-absent {gaid} pp (reg c v ∷ cs) deps h =
    updCertDeps-GA-absent pp cs (deps ∪⁺ certDeposit (reg c v) pp) (∉-dom-∪⁺ᵈ h (GA∉dom-certDep {gaid} (reg c v) pp))
  updCertDeps-GA-absent {gaid} pp (regpool kh p ∷ cs) deps h =
    updCertDeps-GA-absent pp cs (deps ∪ˡ certDeposit (regpool kh p) pp)
      (∉-dom-∪ˡᵈ {m = deps} {n = certDeposit (regpool kh p) pp} h (GA∉dom-certDep {gaid} (regpool kh p) pp))
  updCertDeps-GA-absent {gaid} pp (regdrep c v a ∷ cs) deps h =
    updCertDeps-GA-absent pp cs (deps ∪⁺ certDeposit (regdrep c v a) pp) (∉-dom-∪⁺ᵈ h (GA∉dom-certDep {gaid} (regdrep c v a) pp))
  updCertDeps-GA-absent {gaid} pp (dereg c v ∷ cs) deps h =
    updCertDeps-GA-absent pp cs (deps ∣ certRefund (dereg c v) ᶜ) (∉-dom-resᶜᵈ {m = deps} h)
  updCertDeps-GA-absent {gaid} pp (deregdrep c v ∷ cs) deps h =
    updCertDeps-GA-absent pp cs (deps ∣ certRefund (deregdrep c v) ᶜ) (∉-dom-resᶜᵈ {m = deps} h)
  updCertDeps-GA-absent pp (retirepool _ _ ∷ cs) deps h = updCertDeps-GA-absent pp cs deps h
  updCertDeps-GA-absent pp (ccreghot _ _ ∷ cs) deps h = updCertDeps-GA-absent pp cs deps h

  -- GovActionDeposit is injective.
  GovActionDeposit-inj : ∀ {a b} → GovActionDeposit a ≡ GovActionDeposit b → a ≡ b
  GovActionDeposit-inj refl = refl

  -- updateProposalDeposits with fresh TxId preserves GA absence.
  updPropDeps-GA-absent : ∀ {gaid : GovActionID}
    (props : List GovProposal) (txid : TxId) (gaDep : Coin) (deps : Deposits)
    → txid ≢ proj₁ gaid
    → GovActionDeposit gaid ∉ dom (deps ˢ)
    → GovActionDeposit gaid ∉ dom (updateProposalDeposits props txid gaDep deps ˢ)
  updPropDeps-GA-absent [] _ _ _ _ h = h
  updPropDeps-GA-absent {gaid} (_ ∷ ps) txid gaDep deps txid≢ notIn =
    ∉-dom-∪⁺ᵈ {m = updateProposalDeposits ps txid gaDep deps}
      (updPropDeps-GA-absent ps txid gaDep deps txid≢ notIn) newKey∉
    where
    newKey∉ : GovActionDeposit gaid ∉ dom (❴ GovActionDeposit (txid , length ps) , gaDep ❵ ˢ)
    newKey∉ h with from dom∈ h
    ... | _ , p with from ∈-singleton p
    ...   | eq = txid≢ (cong proj₁ (GovActionDeposit-inj (cong proj₁ (sym eq))))

  -- Combined: updateDeposits with fresh TxId preserves GA absence.
  updateDeposits-GA-absent : ∀ {gaid : GovActionID} pp (txb : TxBody) (deps : Deposits)
    → TxBody.txId txb ≢ proj₁ gaid
    → GovActionDeposit gaid ∉ dom (deps ˢ)
    → GovActionDeposit gaid ∉ dom (updateDeposits pp txb deps ˢ)
  updateDeposits-GA-absent {gaid} pp txb deps txid≢ notIn =
    let open TxBody txb
    in updCertDeps-GA-absent pp txCerts
         (updateProposalDeposits txGovProposals txId (PParams.govActionDeposit pp) deps)
         (updPropDeps-GA-absent txGovProposals txId (PParams.govActionDeposit pp) deps txid≢ notIn)

  -- ── Per-LEDGER-step deposit absence preservation ──────────

  -- Abbreviation.
  GA∉ : GovActionID → LState → Type
  GA∉ gaid ls = GovActionDeposit gaid ∉ dom (DepositsOf ls)

  LEDGER-GA-absent : ∀ {Γ ls tx ls'} {gaid : GovActionID}
    → Γ ⊢ ls ⇀⦇ tx ,LEDGER⦈ ls'
    → TxIdOf tx ≢ proj₁ gaid
    → GA∉ gaid ls → GA∉ gaid ls'
  -- Valid tx, scripts pass: deposits updated via updateDeposits.
  LEDGER-GA-absent {Γ} {ls} {tx}
    (LEDGER-V⋯ refl (UTXOW-UTXOS (Scripts-Yes _)) _ _) txid≢ h =
    let open LEnv Γ renaming (pparams to pp)
        open Tx tx renaming (body to txb)
    in updateDeposits-GA-absent pp txb (DepositsOf ls) txid≢ h
  -- Invalid tx, scripts fail: deposits unchanged (collateral only).
  LEDGER-GA-absent (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) _ h = h

  -- Lift to LEDGERS (RTC of LEDGER) using FreshId for the tx list.
  LEDGERS-GA-absent : ∀ {Γ ls txs ls'} {gaid : GovActionID}
    → Γ ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
    → All (λ tx → TxIdOf tx ≢ proj₁ gaid) txs
    → GA∉ gaid ls → GA∉ gaid ls'
  LEDGERS-GA-absent (BS-base Id-nop) _ h = h
  LEDGERS-GA-absent (BS-ind step rest) (fresh ∷ freshRest) h =
    LEDGERS-GA-absent rest freshRest (LEDGER-GA-absent step fresh h)

  -- ── Per-CHAIN-step deposit absence preservation ───────────

  -- Through a single CHAIN step, if the deposit is absent and FreshId
  -- holds for the block, the deposit stays absent.  The deposits go
  -- through GovernanceUpdate ∣_ᶜ (only removes), POOLREAP ∣_ᶜ (only
  -- removes PoolDeposit keys), and LEDGERS/updateDeposits (FreshId
  -- prevents GA-key addition).
  -- EPOCH preserves GA-deposit absence (deposits only shrink via ∣_ᶜ).
  EPOCH-GA-absent : ∀ {eps eps'} {e : Epoch} {gaid : GovActionID}
    → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    → GovActionDeposit gaid ∉ dom (DepositsOf eps)
    → GovActionDeposit gaid ∉ dom (DepositsOf eps')
  EPOCH-GA-absent {eps} (EPOCH (_ , POOLREAP , _)) h =
    let open EpochState eps
        open RatifyState fut renaming (es to futES)
        govUpd  = GovernanceUpdate.updates ls fut
        utxoSt' = Pre-POOLREAPUpdate.utxoSt' ls futES govUpd
    in ∉-dom-resᶜᵈ {m = UTxOState.deposits utxoSt'} (∉-dom-resᶜᵈ {m = UTxOState.deposits (LState.utxoSt ls)} h)

  CHAIN-GA-absent : ∀ {cs b cs₁} {gaid : GovActionID}
    → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs₁
    → All (λ tx → TxIdOf tx ≢ proj₁ gaid) (ts b)
    → GA∉ gaid (LStateOf cs)
    → GA∉ gaid (LStateOf cs₁)
  CHAIN-GA-absent ( CHAIN ( _
    , TICK ((NEWEPOCH-New (_ , epochStep)) , _)
    , BBODY-Block-Body (_ , _ , _ , ledgers)
    )) fresh h =
    LEDGERS-GA-absent ledgers fresh (EPOCH-GA-absent epochStep h)
  CHAIN-GA-absent ( CHAIN ( _
    , TICK (NEWEPOCH-Not-New _ , _)
    , BBODY-Block-Body (_ , _ , _ , ledgers)
    )) fresh h =
    LEDGERS-GA-absent ledgers fresh h
  CHAIN-GA-absent ( CHAIN ( _
    , TICK ((NEWEPOCH-No-Reward-Update (_ , epochStep)) , _)
    , BBODY-Block-Body (_ , _ , _ , ledgers)
    )) fresh h =
    LEDGERS-GA-absent ledgers fresh (EPOCH-GA-absent epochStep h)

  -- Lift to CHAINStar: deposit stays absent through a sequence of blocks.
  CHAINStar-GA-absent : ∀ {cs bs cs'} {gaid : GovActionID}
    → CHAINStar cs bs cs'
    → FreshId gaid bs
    → GA∉ gaid (LStateOf cs)
    → GA∉ gaid (LStateOf cs')
  CHAINStar-GA-absent []* _ h = h
  CHAINStar-GA-absent (step ∷* rest) (freshB ∷ freshRest) h =
    CHAINStar-GA-absent rest freshRest (CHAIN-GA-absent step freshB h)

```
-->

The proof assembles the above lemmas via induction on `CHAINStar`{.AgdaDatatype}.
The domain-specific sub-lemmas are proved; the remaining work is connecting them
through the nested derivation structure of `CHAIN`{.AgdaDatatype}.

**Base case** (`[]*`{.AgdaInductiveConstructor}).
Vacuous: `≤e<sucᵉsucᵉ⇒⊥`{.AgdaFunction} derives `⊥`{.AgdaDatatype} from the
contradictory epoch bounds.

**Inductive step** (`step ∷* rest`{.Agda}).
Pattern-match on `CHAIN`{.AgdaDatatype} to extract
`TICK`{.AgdaDatatype} (`NEWEPOCH`{.AgdaDatatype}) and
`BBODY`{.AgdaDatatype} (`LEDGERS`{.AgdaDatatype}).

+  **Two-epoch pipeline (epochs `sucᵉ (expiresIn)`{.Agda} and
   `sucᵉ (sucᵉ (expiresIn))`{.Agda}).**
   At epoch `sucᵉ (expiresIn)`{.Agda},
   `ratifies-expired∈⇒in-removed`{.AgdaFunction} places the action in
   `removed`{.AgdaField} of the new `RatifyState`{.AgdaRecord}.
   At epoch `sucᵉ (sucᵉ (expiresIn))`{.Agda},
   `govUpdate-removes`{.AgdaFunction} filters it out of
   `govSt'`{.AgdaFunction}, and the deposit is removed by
   `Pre-POOLREAPUpdate`{.AgdaModule}'s domain restriction.

+  **Deposit stays absent.** Once the deposit is absent, it stays absent
   through the rest of the `CHAINStar`{.AgdaDatatype}:

   -  `EPOCH`{.AgdaDatatype}'s `GovernanceUpdate`{.AgdaModule} and
      `POOLREAP`{.AgdaDatatype} use domain restriction complement
      (`∣_ᶜ`{.AgdaFunction}), which only *removes* keys
      (`∉-dom-resᶜᵈ`{.AgdaFunction}).

   -  `LEDGER`{.AgdaDatatype} applies `updateDeposits`{.AgdaFunction},
      which preserves GA-deposit absence when the transaction's
      `TxId`{.AgdaDatatype} differs from `proj₁ gaid`{.Agda}
      (`updateDeposits-GA-absent`{.AgdaFunction}).
      `FreshId`{.AgdaFunction} ensures this for every transaction.

+  **Action survives (IH case).** If the epoch has not yet advanced past
   `sucᵉ (sucᵉ (expiresIn))`{.Agda}, the action remains in
   `GovState`{.AgdaFunction} with the same `expiresIn`{.AgdaField}
   (since `LEDGER`{.AgdaDatatype} only adds or modifies entries, and
   `EPOCH`{.AgdaDatatype} does not remove non-expired actions).
   `SucIsLeast`{.AgdaFunction} yields
   `LastEpochOf cs₁ ≤ expiresIn gaSt`{.Agda}, and the inductive
   hypothesis applies.

   Connecting these facts to the derivation requires unpacking five levels of
   transition constructors
   (`CHAIN`{.AgdaDatatype}/`TICK`{.AgdaDatatype}/`NEWEPOCH`{.AgdaDatatype}/`BBODY`{.AgdaDatatype}/`LEDGERS`{.AgdaDatatype}).
   This assembly is deferred to a follow-up. (coming soon)

---

[^1]: See [`CHAIN-govDepsMatch`][Chain.Properties.GovDepsMatch] for the proof.
