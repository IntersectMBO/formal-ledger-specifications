---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/CheckedInsertion.lagda.md
---

# Checked insertion: two validations plus footprint disjointness {#sec:ledgers-checked-insertion}

The [insertion theorem](Ledger.Conway.Specification.Ledger.Properties.Insertion.md)
buys mempool insertion from two validations plus two *syntactic* transaction
classes: the inserted transaction must be a `SimpleTx` (no certificates,
withdrawals, or governance) and every suffix transaction must be `SpendOnly`
(no reference inputs, collateral inside the spending inputs, phase-2 valid).
Those classes are blanket restrictions: they exclude whole categories of
otherwise-unproblematic traffic — a suffix transaction with a reference
input, an inserted transaction with a delegation certificate — even when no
actual conflict exists.

This module replaces both classes with a **pairwise, checkable compatibility
relation** `QueueCompat`: the inserted transaction and each suffix
transaction may have arbitrary certificate, withdrawal, vote, reference-input
and collateral components, so long as their *footprints are disjoint*.  Every
field of `QueueCompat` is a disjointness (or containment) of syntactically
computable sets, so a mempool can discharge the whole `All (QueueCompat tx)`
hypothesis against aggregate indices of the queue — disjointness from a
union of footprints is equivalent to the pairwise conjunction — and *discard*
the incoming transaction the moment any index reports a conflict.  Governance
is the one place a blanket condition survives, and only on one side:
`GovDomStable` (no proposals, no DRep (de)registration) is required of every
*suffix* transaction, because a proposal created in the suffix has a
`GovActionID` that does not exist until it is applied and so offers no key to
check against.  On the *inserted* side it turns out to be pairwise after all —
of `tx`'s governance content only `deregdrep` acts destructively (it can
orphan a suffix vote, and it can falsify a suffix delegation's
registered-delegatee premise), and both effects are keyed:
`disjDregVotes` and `disjDregDelegs`.

The result sits strictly between its two neighbours:

* versus **Insertion** — same two validations, but `SimpleTx`/`SpendOnly`
  are weakened to `QueueCompat` (each old class makes the corresponding
  footprints empty, so the old theorem is the degenerate case);
* versus **Independence** — same pairwise-disjointness style, but the two
  validations let the UTxO conditions be much weaker than `FullIndep`:
  no output-disjointness at all (validation #1 pins the inserted
  transaction's reads before the suffix's outputs exist), and consumption
  conflicts are needed in only *one* direction (validation #2 certifies the
  inserted transaction's reads survived the suffix, so only the suffix's
  **non-consumption reads** — reference inputs, detached collateral, and
  the unconsumed inputs of phase-2-invalid transactions — need protecting
  from the inserted transaction's consumption).  Phase-2 validity is
  required nowhere: `isValid = false` transactions are admissible to
  either role.

<!--
```agda
{-# OPTIONS --with-K #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Specification.Ledger.Properties.CheckedInsertion
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Utxo txs abs using (UTxOState)
open import Ledger.Conway.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Reorder txs abs
  using (Indep; GovDomStable; _≈ᶜ_; LEDGERS-utxo≈; LEDGERS-fees≈; LEDGERS-don≈)
open import Ledger.Conway.Specification.Ledger.Properties.Insertion txs abs
  using (LEDGERS-cong; LEDGERS-++)

open import Data.List.Properties using (++-identityʳ)
import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; ↭-reflexive)
  renaming (trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
  using (shift)

private variable
  Γ : LEnv
  s s₀ s₁ s₂ s₃ s′ s″ : LState
  tx t : Tx
  txs1 txs2 l : List Tx
```
-->

## The compatibility relation

The footprints, as in the independence module — `spends` is validity-blind
(inputs if phase-2 valid, collateral if not), so no validity information
about the *inserted* transaction is needed:

```agda
private
  ins refs colls : Tx → ℙ TxIn
  ins   t = t .Tx.body .TxBody.txIns
  refs  t = t .Tx.body .TxBody.refInputs
  colls t = t .Tx.body .TxBody.collateralInputs

  spends : Tx → ℙ TxIn
  spends t = ins t ∪ colls t

  reads : Tx → ℙ TxIn
  reads t = ins t ∪ refs t ∪ colls t

  -- What a transaction actually removes from the UTxO, by phase-2 outcome.
  -- Suffix transactions may be `isValid = false`: they still read all of
  -- `ins ∪ refs ∪ colls` (the containment premises fire either way) but
  -- consume only their collateral.
  consumed : Tx → ℙ TxIn
  consumed t = if t .Tx.isValid then ins t else colls t

  wdrlCreds : Tx → ℙ Credential
  wdrlCreds t = mapˢ RewardAddress.stake (dom (t .Tx.body .TxBody.txWithdrawals))

  certTargets : Tx → ℙ Credential
  certTargets t = fromList (mapMaybe cwitness (t .Tx.body .TxBody.txCerts))

  -- The DRep credentials a transaction DE-registers.  Registration is
  -- deliberately excluded: `regdrep` only grows `dom (DRepsOf cs)`, and
  -- `rmOrphanDRepVotes` filters `gvDRep` by membership in that set, so a
  -- larger set drops strictly fewer votes.  Only removal can turn a suffix
  -- vote into an orphan, so only `deregdrep` needs a conflict key.
  dregCreds : Tx → ℙ Credential
  dregCreds t = fromList (mapMaybe dregCred (t .Tx.body .TxBody.txCerts))
    where
      dregCred : DCert → Maybe Credential
      dregCred (deregdrep c _) = just c
      dregCred _               = nothing

  -- The DRep-role credentials a transaction votes with.  `rmOrphanDRepVotes`
  -- rewrites only the `gvDRep` component of each `GovActionState`, so CC and
  -- SPO voters are untouched by (de)registration and need no key.
  voterCreds : Tx → ℙ Credential
  voterCreds t = fromList (mapMaybe drepCred (t .Tx.body .TxBody.txGovVotes))
    where
      drepCred : GovVote → Maybe Credential
      drepCred v with v .GovVote.voter
      ... | ⟦ DRep , c ⟧ᵍᵛ = just c
      ... | _              = nothing

  -- The DRep credentials a transaction DELEGATES to.  `DELEG-delegate`
  -- requires a credential delegatee to be *registered* (its premise reads
  -- the `delegatees` environment, instantiated to `dom (DRepsOf stᵍ)`), so
  -- like a vote it is anti-monotone in DRep removal.  Delegations to the
  -- predefined `abstain`/`no-confidence` targets need no registration and
  -- hence no key.
  delegateeCreds : Tx → ℙ Credential
  delegateeCreds t = fromList (mapMaybe delegateeCred (t .Tx.body .TxBody.txCerts))
    where
      delegateeCred : DCert → Maybe Credential
      delegateeCred (delegate _ (just (vDelegCredential c)) _ _) = just c
      delegateeCred _                                            = nothing

record QueueCompat (tx t : Tx) : Type where
  field
    -- certificate targets, deposit keys, vote targets (as in Reorder)
    indep         : Indep tx t
    -- The inserted transaction must not deregister a DRep that a suffix
    -- transaction votes with — one half of the pairwise replacement for the
    -- old blanket `GovDomStable tx` hypothesis, covering the governance
    -- interactions that survive confining proposals and DRep certificates
    -- to the urgent lane.
    -- Without it the two orders genuinely differ: with `tx` last, the suffix
    -- vote is recorded and then filtered out by `tx`'s own
    -- `rmOrphanDRepVotes`; with `tx` inserted first, a trailing suffix vote is
    -- recorded *after* the filter has run and survives into the final state.
    disjDregVotes : disjoint (dregCreds tx) (voterCreds t)
    -- ... and must not deregister a DRep that a suffix transaction
    -- DELEGATES to: `DELEG-delegate` demands the delegatee be registered,
    -- so the removal falsifies the suffix premise just as it orphans votes.
    -- Together with `disjDregVotes` this completes the pairwise replacement
    -- of the old blanket `GovDomStable tx` hypothesis.
    disjDregDelegs : disjoint (dregCreds tx) (delegateeCreds t)
    -- withdrawal credentials, against each other and the other's certificates
    disjWdrls     : disjoint (wdrlCreds tx) (wdrlCreds t)
    disjWdrlCert₁ : disjoint (wdrlCreds tx) (certTargets t)
    disjWdrlCert₂ : disjoint (wdrlCreds t)  (certTargets tx)
    -- the inserted transaction's consumption avoids the suffix transaction's
    -- non-consumption reads: anything both touch must be something `t`
    -- itself consumes (so the end validation's spent-inputs-never-resurrect
    -- argument covers it).  For a valid `t` the uncovered reads are
    -- `refs t ∪ (colls t ∖ ins t)`; for an invalid `t` they are
    -- `refs t ∪ (ins t ∖ colls t)` — the validity dependence lives inside
    -- `consumed`, so `isValid = false` suffix transactions need no separate
    -- treatment and no admission ban.
    consCovered   : ∀ {i : TxIn} → i ∈ spends tx → i ∈ reads t → i ∈ consumed t
```

Why nothing more is needed:

* **No output conditions.**  Validation #1 fires `tx` at the insertion
  point, *before* any suffix output exists, so `tx` cannot read them; the
  suffix's own runs already witness that it never reads `tx`'s outputs
  (they are fresh by replay protection and absent from the given runs).
* **No consumption-vs-consumption condition.**  If `tx` and some suffix `t`
  consumed the same input, `t` removed it and a spent input never
  resurrects, so validation #2 (at the end of the suffix) would have
  failed.  The two validations are exactly a *consumption conflict
  detector*; `consCovered` supplies the one thing they cannot see — reads
  that consume nothing and therefore leave no trace in the UTxO.
* **No validity condition, on either side.**  `spends` makes the inserted
  transaction's condition validity-blind, and `consumed` makes the suffix
  condition validity-*aware*: an `isValid = false` suffix transaction is
  admissible like any other, it just exposes a different (larger)
  non-consumption read set, `refs ∪ (ins ∖ colls)` instead of
  `refs ∪ (colls ∖ ins)`.
* **Governance is lane-restricted on the suffix side, pairwise on the
  inserted side.**  `GovDomStable` remains a hypothesis on every *suffix*
  transaction, and that restriction is what makes the rest tractable: a
  proposal created by a suffix transaction would have a `GovActionID` that
  does not exist until it is applied, so an inserted transaction voting on it
  has no key to be checked disjoint against.  Confining proposals and DRep
  certificates to the inserted (urgent) lane removes that case by
  construction.

  On the *inserted* side `GovDomStable tx` is **not** required.  Sorting
  `tx`'s governance content by its effect on the state a suffix transaction
  reads:

  | `tx` carries | effect | needs a key? |
  |---|---|---|
  | proposal | `dom govSt` **grows** | no — a suffix vote on a different action keeps its premise |
  | `regdrep` | `dom dreps` **grows** | no — `rmOrphanDRepVotes` filters strictly less |
  | `deregdrep` | `dom dreps` **shrinks** | **yes** — `disjDregVotes`, `disjDregDelegs` |

  Only removal from `dom dreps` can change what the filter drops or falsify
  a registered-delegatee premise (`DELEG-delegate` requires a credential
  delegatee to be registered), so only `deregdrep` needs a footprint:
  disjointness against the suffix's DRep *voters* and *delegatees*.  Votes
  themselves are pairwise (`disjVotes` inside `Indep`) and stay admissible
  on both sides, in either lane.

A mempool discharges `All (QueueCompat tx) txs2` in O(|footprint of tx|):
maintain counted union-indices of the queue's cert targets, deposit keys,
vote targets, DRep voters and delegatees, withdrawal credentials, and
non-consumption reads
(`reads t` minus `consumed t`, computed per transaction at admission — the
mempool knows `isValid` and applies the transaction accordingly);
disjointness from each union is equivalent to the pairwise `All`, and
over-approximation (e.g. indexing all of `reads t`) merely causes spurious
discards, never unsoundness.

## The single-step obligation

```agda
postulate
  -- Crossing tx over a queue transaction t, in both directions, under
  -- pairwise footprint disjointness instead of syntactic classes:
  --   * `tx` past `t` (first conclusion): tx's UTxO reads are present at
  --     `s` (its containment premises) and again after the whole suffix
  --     (the end validation), and a spent input never resurrects, so `t`
  --     removed none of them; `t`'s outputs are fresh and cannot shadow.
  --     tx's certificate/withdrawal premises read only its own cert
  --     targets, deposit keys and withdrawal credentials, all disjoint
  --     from `t`'s writes by `indep`/`disjWdrls`/`disjWdrlCert₂`; GovDomStable t
  --     keeps `dom dreps` and `dom govSt` constant so tx's votes and their
  --     premises transport.
  --   * `t` past `tx` (second conclusion): whatever `t` reads and also
  --     consumes was avoided by tx (else the end validation had failed, as
  --     above); its non-consumption reads — `reads t` outside `consumed t`,
  --     in either phase-2 outcome of `t` — are avoided by `consCovered`.
  --     `t`'s certificate/withdrawal premises read targets disjoint from
  --     tx's cert/wdrl writes by `indep`/`disjWdrls`/`disjWdrlCert₁`.  No
  --     blanket governance restriction on tx is needed: its proposals and
  --     `regdrep` only grow `dom govSt` / `dom dreps`, which `t`'s premises
  --     read monotonically, and its `deregdrep` is kept away from `t`'s
  --     DRep voters (`disjDregVotes`) and delegatees (`disjDregDelegs`), so
  --     `t`'s votes survive tx's orphan-vote filter and `t`'s delegations
  --     keep their registered-delegatee premise.  (If
  --     `t .Tx.isValid ≡ false`, its step is the collateral-only LEDGER
  --     case: no CERTS/GOVS component fires at all, so the cert-side
  --     conditions are needed only in the valid case — the record states
  --     them on the body regardless, a sound over-approximation.)
  -- Discharge obligations beyond Insertion's LEDGER-defer: the certificate
  -- component is no longer trivial on either side, so this needs the
  -- window-form transport of the CERTS premises (the `LEDGERS-cert≈`
  -- frontier), not only the UTXOW stack.  NOTE the zero-deposit `reg c 0`
  -- subtlety: its `cwitness` is `nothing`, so `certTargets` misses it and
  -- the crossing of its rewards-initialization write must instead be
  -- covered by `indep .disjDeposits` (certDepositKey is total on `reg`)
  -- when this postulate is discharged.
  LEDGER-defer-checked :
      GovDomStable t
    → QueueCompat tx t
    → Γ ⊢ s  ⇀⦇ tx ,LEDGER⦈ s′    -- tx validated at s (the insertion point)
    → Γ ⊢ s  ⇀⦇ t ,LEDGER⦈ s″     -- head of the suffix, without tx
    → Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s₁    -- the rest of the suffix
    → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂    -- tx validated again at the end
    → (∃[ s₃ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s₃))   -- tx also fires right after t …
    × (∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t  ,LEDGER⦈ s₃))   -- … and t re-fires after tx
```

## The shift lemma

`LEDGERS-reorder` is a *general* permutation theorem, which is why it demands
`GovDomStable` of every element and `AllPairs Indep` of every pair of the list
it permutes.  This module performs one permutation only — `shift`, moving `tx`
from the back of `txs2 ++ [ tx ]` to the front, past each suffix transaction
and past no other pair.  Of the thirteen fields of `_≈ˡ_`, only three consume
the governance hypothesis — deposits, governance state, and certificate state
(the latter covering all eight certificate-side fields); the rest follow from
the permutation alone (`LEDGERS-utxo≈`, `LEDGERS-fees≈`, `LEDGERS-don≈`, plus
the replay-protection facts they rest on).  Specialising those three
components to the `shift` permutation drops both of `LEDGERS-reorder`'s
over-strong hypotheses at once: `GovDomStable` is needed on the suffix only,
and pairwise independence is needed only between `tx` and each suffix
element, which `QueueCompat.indep` already supplies.  The governance content
of `tx` is then constrained only by `disjDregVotes`/`disjDregDelegs`, per the
table above: proposals and `regdrep` grow `dom govSt` / `dom dreps` and need
nothing, `deregdrep` shrinks `dom dreps` and needs disjointness from the
suffix's DRep voters and delegatees.

**These are genuine holes.**  The existing proofs transport suffix premises
across a *constant* `dom govSt` / `dom dreps`; these need "grows", "grows",
and "shrinks away from the suffix's voters and delegatees" respectively.
(`LEDGERS-cert≈` is already a postulate upstream, so only two of the three
add to the trust base.)

```agda
postulate
  shift-deposits≈ :
      Allᴸ.All GovDomStable txs2
    → Allᴸ.All (QueueCompat tx) txs2
    → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁
    → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
    → UTxOState.deposits (LState.utxoSt s₁) ˢ ≡ᵉ UTxOState.deposits (LState.utxoSt s₂) ˢ

  shift-govSt≈ :
      Allᴸ.All GovDomStable txs2
    → Allᴸ.All (QueueCompat tx) txs2
    → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁
    → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
    → LState.govSt s₁ ≈ᵍ LState.govSt s₂

  shift-cert≈ :
      Allᴸ.All GovDomStable txs2
    → Allᴸ.All (QueueCompat tx) txs2
    → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁
    → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
    → LState.certState s₁ ≈ᶜ LState.certState s₂
```

The shift-specialised counterpart of `LEDGERS-reorder` is then a mechanical
assembly — the exact mirror of `LEDGERS-reorder`'s record, with the three
components above substituted and the remaining fields supplied by the
permutation-only lemmas applied to the `shift` permutation:

```agda
LEDGERS-shift-≈ :
    Allᴸ.All GovDomStable txs2
  → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
  → s₁ ≈ˡ s₂
LEDGERS-shift-≈ {txs2 = txs2} {tx = tx} ngs qcs st₁ st₂ = record
  { utxo≈      = LEDGERS-utxo≈ shiftPerm st₁ st₂
  ; fees≈      = LEDGERS-fees≈ shiftPerm st₁ st₂
  ; deposits≈  = shift-deposits≈ ngs qcs st₁ st₂
  ; donations≈ = LEDGERS-don≈ shiftPerm st₁ st₂
  ; govSt≈     = shift-govSt≈ ngs qcs st₁ st₂
  ; vDelegs≈ = cert .vd≈ ; sDelegs≈ = cert .sd≈ ; rewards≈ = cert .rw≈
  ; pools≈   = cert .pl≈ ; fPools≈  = cert .fp≈ ; retiring≈ = cert .rt≈
  ; dreps≈   = cert .dr≈ ; ccKeys≈  = cert .cck≈ }
  where
    open _≈ᶜ_
    shiftPerm : txs2 ++ tx ∷ [] ↭ tx ∷ txs2
    shiftPerm = ↭-trans (shift tx txs2 [])
                        (↭-reflexive (cong (tx ∷_) (++-identityʳ txs2)))
    cert = shift-cert≈ ngs qcs st₁ st₂
```

## The checked insertion theorem

The induction is Insertion's `hoist`, with the syntactic classes swapped for
the per-pair hypotheses, `Indep tx t` now supplied by `QueueCompat` instead
of vacuously by `SimpleTx`, and the two-element exchange compared by the
two-element instance of `LEDGERS-shift-≈` — so nothing at all is required of
`tx` itself:

```agda
private
  hoist :
      Allᴸ.All GovDomStable txs2
    → Allᴸ.All (QueueCompat tx) txs2
    → Γ ⊢ s ⇀⦇ txs2 ,LEDGERS⦈ s₁      -- the suffix, without tx
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′         -- validation #1: here
    → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂        -- validation #2: at the end
    → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ txs2 ,LEDGERS⦈ s₃)
  hoist _ _ (BS-base Id-nop) _ _ = -, BS-base Id-nop
  hoist {txs2 = t ∷ ts} {tx = tx} (ngt Allᴸ.∷ ngs) (qc Allᴸ.∷ qcs)
        (BS-ind t-step rest) tx-mid tx-end =
    let ((_ , tx-step₂) , (_ , t-step₂)) =
          LEDGER-defer-checked ngt qc tx-mid t-step rest tx-end
        e = LEDGERS-shift-≈ {txs2 = t ∷ []} {tx = tx}
              (ngt Allᴸ.∷ Allᴸ.[]) (qc Allᴸ.∷ Allᴸ.[])
              (BS-ind t-step (BS-ind tx-step₂ (BS-base Id-nop)))
              (BS-ind tx-mid (BS-ind t-step₂ (BS-base Id-nop)))
        (_ , ts-run)      = hoist ngs qcs rest tx-step₂ tx-end
        (_ , ts-run′ , _) = LEDGERS-cong ts-run e
    in -, BS-ind t-step₂ ts-run′

insert-checked :
    Allᴸ.All GovDomStable txs2
  → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀      -- the prefix (no conditions)
  → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁      -- the suffix
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′         -- validation #1: at the insertion point
  → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂         -- validation #2: at the end of the queue
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃)
insert-checked ngs qcs pre suf tx-mid tx-end =
  let (_ , suf′) = hoist ngs qcs suf tx-mid tx-end
  in -, LEDGERS-++ pre (BS-ind tx-mid suf′)
```

## Corollary: insertion changes nothing observable

Shifting `tx` across the whole suffix shows the inserted run ends `≈ˡ`-equal
to appending `tx` at the back — the state validation #2 already reached,
which is what lets a mempool adopt that state in O(1).  The comparison is
`LEDGERS-shift-≈`, so no condition among the suffix transactions themselves
is needed, and none on `tx` beyond `QueueCompat`:

```agda
insert-checked-≈ :
    Allᴸ.All GovDomStable txs2
  → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀
  → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′
  → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
insert-checked-≈ {txs2 = txs2} {tx = tx} ngs qcs pre suf tx-mid tx-end =
  let (s₃ , suf′) = hoist ngs qcs suf tx-mid tx-end
      full = BS-ind tx-mid suf′
      cmp  = LEDGERS-++ suf (BS-ind tx-end (BS-base Id-nop))
  in s₃ , LEDGERS-++ pre full , LEDGERS-shift-≈ ngs qcs cmp full
```

## Per-lane packaging: `Cpri` and `Cstd`

With `GovDomStable tx` gone, the hypotheses sort cleanly by *whose* property
they are, which is how a two-lane mempool maintains them:

* nothing at all is required of the **urgent lane** — neither of the incoming
  transaction nor of the standing urgent queue (`insert-checked-≈` imposes no
  condition whatsoever on the prefix `txs1`);
* `All GovDomStable txs2` is an invariant of the **standard queue**,
  established once per standard admission;
* `All (QueueCompat tx) txs2` is the **cross-lane** condition — the only one
  recomputed per urgent admission, discharged in `O(|footprint of tx|)`
  against the queue's counted union-indices.

```agda
-- Cpri: everything required of the INCOMING urgent transaction.  Exactly the
-- three checks a mempool performs at `addTx Urgent`:
--
--   (1) it validates at its insertion point — the back of the urgent queue;
--   (2) it validates at the back of the standard queue;
--   (3) its footprint conflicts with no standard transaction.
--
-- No shape restriction appears: any governance content is admissible in the
-- urgent lane, because (3) is what constrains it.  Nothing is required of the
-- urgent transactions already queued ahead of `tx` either — the theorem
-- imposes no condition whatsoever on the prefix `txs1`.
record Cpri (Γ : LEnv) (s₀ s₁ s₂ : LState) (tx : Tx) (txs2 : List Tx) : Type where
  field
    validMid   : ∃[ s′ ] (Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′)   -- (1)
    validEnd   : Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂             -- (2)
    noConflict : Allᴸ.All (QueueCompat tx) txs2       -- (3)

-- Cstd: the STANDARD QUEUE's invariant.  For each of its transactions:
--   (1) it validates at its insertion point — which is just the queue being
--       sequentially valid, already witnessed by the `LEDGERS` premise below,
--       so it needs no field here;
--   (2) it carries no governance action that never commutes — action
--       proposals and DRep (de)registration.  Votes are permitted; see
--       `GovDomStable`.
--
-- Deliberately NO pairwise conflict condition.  A standard transaction is only
-- ever appended and validated at the place it will actually be applied.
-- Nothing reorders it, so it owes commutation to nothing — and it may freely
-- conflict with urgent transactions, which are applied ahead of it regardless.
-- That is ordinary FIFO ordering, not a reordering that needs licensing.
record Cstd (txs : List Tx) : Type where
  field
    govDomStable : Allᴸ.All GovDomStable txs
```

No within-lane condition appears anywhere.  `shift` swaps only pairs
involving `tx`, never two members of `txs2` with each other, so the
shift-specialised components need just `All (QueueCompat tx) txs2` — the
standard queue never has to be independent with itself.  Conflict detection
lives solely in `Cpri.noConflict`, at the cross-lane scope.  Order inside a
lane is preserved, so UTxO-level dependencies there (one queued transaction
spending another's output) are handled by ordinary sequential validation, not
by a pairwise relation — nothing like `FullIndep`'s `disjOuts` is demanded,
which would ban dependent transaction chains outright.

The corollary in that shape — `insert-checked-≈` with its hypotheses
repackaged into the two lane records:

```agda
reorder-urgent-≈ :
    Cpri Γ s₀ s₁ s₂ tx txs2             -- incoming urgent tx: 2 validations + no conflicts
  → Cstd txs2                           -- standard queue invariants
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀         -- the urgent queue runs to s₀
  → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁         -- the standard queue runs s₀ → s₁
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
reorder-urgent-≈ cp cs pre suf =
  insert-checked-≈ (cs .Cstd.govDomStable) (cp .Cpri.noConflict) pre suf
                   (cp .Cpri.validMid .proj₂) (cp .Cpri.validEnd)
```

Read back into mempool terms: `txs1` is `urgentTxs`, `txs2` is `standardTxs`,
and `tx` is the incoming urgent transaction, which enters *after* all of
`urgentTxs` and *in front of* `standardTxs`.  `Cpri` is precisely the mempool's
admission test, and `s₂` is the state its second validation already computed.
The conclusion is what lets the node adopt `s₂` and leave the standard tier
alone.

Nothing here is new trust: the module's postulates are `LEDGER-defer-checked`
and the three shift components (`shift-deposits≈`, `shift-govSt≈`,
`shift-cert≈` — the last already postulated upstream as `LEDGERS-cert≈`),
and everything from `hoist` to `reorder-urgent-≈` is assembled from them.
