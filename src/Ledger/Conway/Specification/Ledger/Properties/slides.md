# Three Mempool Specifications

All under `ouroboros-consensus/src/ouroboros-consensus/Ouroboros/Consensus/Mempool/`:

- **`Mempool.lagda.md`** — Praos-era mempool. Current implementation.
  Single sequence of transactions, single ledger state, `snapshotTxsAfter`
  streaming to peers, fairness FIFO for remote vs. local admission.

- **`MempoolLeios.lagda.md`** — Linear Leios adaptation, aligned with
  CIP-164. Still a single lane. Adds `heldEB` with speculative `ebLedger`,
  `seeRBBody`, `seeRBCert` (Scenario A / B), `discardEB`, extended
  `syncWithLedger`, and `forgeBlock` returning `(RB, Maybe EB)`. EBs reach
  the ledger via a vote certificate carried in a later RB — RBs never
  contain an EB directly.

- **`MempoolLeiosPricing.lagda.md`** — Tiered-pricing extension on top of
  Leios. Two lanes (priority, regular). Lane-aware admission, forging, and
  peer exchange. Includes a light-load EB-suppression rule and a
  priority-fee refund for priority txs that end up in an EB.

Each file is self-contained. The pricing doc marks its deltas from Leios
with `-- CHG:` / `-- NEW:` comments in the Agda block.

---

# Pricing Mempool: Key Changes vs. Leios

- **Two lanes.** `priorityTxs` destined for the RB body, `regularTxs` for
  the announced EB. Separate caps: `prioCap` (one RB `TxMeasure`) and
  `regCap` (CIP-164 per-EB caps: `S_EB`, `S_EB-tx`, per-EB Plutus).

- **Layered ledger stack.** `ledger` (chain tip) → `ebLedger : Maybe`
  (with `heldEB` applied) → `priorityUpdatedLedger` (priorities on top)
  → `regularUpdatedLedger` (regulars on top). Each new tx validates
  against its lane's post-state.

- **Priority admission cascades.** `addTx Priority t` validates against
  `priorityUpdatedLedger`, then unconditionally revalidates `regularTxs`
  on the new post-state. Commutativity-based option-1 admission is
  tracked as a future variant, pending the WIP proof at
  `IntersectMBO/formal-ledger-specifications:polina/commutativity`.

- **Scenario B zero-cost rename.** When a cert for our `heldEB` lands,
  both lanes' working states are preserved bit-identically; only the
  ledger-stack fields shift. O(1) transition.

- **`forgeBlock` reapplies against `ledger`.** Safe to call regardless of
  `heldEB`. Priority overflow (priority txs that don't fit `prioCap`)
  flows into the EB body ahead of regulars.

- **Priority-fee refund.** A priority tx landing in an EB body has paid
  the higher tier without receiving priority service; the ledger refunds
  the priority-vs-regular differential based on the tx's lane tag.

- **EB suppression under light load.** No EB when
  `seqSize (priorityTxs ++ regularTxs) ≤ prioCap / 2` in every
  dimension. EBs only earn their keep under real load pressure.

- **Peer exchange.** Inbound routes by lane tag on each tx.
  Outbound pulls priority-first: keep asking peers for priority txs;
  fall back to regulars only when priority requests come back empty.
  `snapshotTxsAfter` becomes a per-lane cursor pair.

- **Explicit `discardEB`.** The pricing model's one expensive undo of a
  prior `addEB` — cascades through both lanes.

---

# Reordering Commutativity: What We Have

In `Reorder.lagda.md` (Conway ledger, branch `polina/commutativity`):

- **Statement (net-effect form).** If two transaction lists are permutations
  of one another, both execute successfully via `LEDGERS`, every pair is
  `Indep`endent, and no transaction submits proposals or DRep
  (de)registrations (`NoGov` — governance *votes* are allowed!), the two
  final `LState`s agree — up to the structural equality `≈ˡ` (`≡ᵉ` on maps,
  `≈ᵍ` on the governance list: same spine, vote maps up to `≡ᵉ`).
  Matches Vinogradova & Sorokin, LSFA'24, Thm 5.2.1: both executions are
  *given*, and each state field is compared as a function of the tx *set*.
  **No assumption on the phase-2 `isValid` tags**: invalid transactions
  (`LEDGER-I`, collateral consumption) are covered.

- **`Indep` is minimal and explicit.** Three disjointness conditions per
  pair, all computed from the transactions themselves: overwriting-certificate
  targets (`cwitness`), deposit-map keys (`certDepositKey` — total on `reg`,
  catching `reg c 0`), and vote targets (`disjVotes`: distinct
  *(action, voter)* pairs — same-target votes are last-wins).  A spec **bug
  fix** fell out of this work: the `UTXO` rule was missing the
  implementation's `collateralInputs ⊆ dom utxo` check (Babbage
  `validateBadInputsUTxO`); with it fixed, *no* collateral condition is
  needed — both-sequence validity excludes every collateral race.
  The old disjoint-inputs/withdrawals conditions are *gone* too.

- **Proven: the entire `UTxOState`, mixed validity.**
  `utxo` via the order-free closed form `(u₀ ∪ ⋃added) ∖ ⋃removed` (invalid
  txs remove collateral, add nothing);
  `fees`/`donations` as permutation-invariant sums — an invalid tx's fee
  delta (its reachable collateral balance) is pinned to the *initial* UTxO
  by `collSafe`;
  `deposits` via a new *locality* framework (`MapCommutativity.agda`):
  each certificate's deposit update is a single-key map operation
  (`∪⁺`/`∪ˡ`/delete), any two ops local at distinct keys commute
  (`local-comm`), and a generic locally-commuting-`foldl` engine lifts
  this through the fold and the permutation (invalid txs are the identity).

- **Trust base of the theorem: exactly four postulates.** Replay
  protection (outputs pairwise disjoint and fresh; removed keys disjoint
  from later-added) and the single open field obligation (`LEDGERS-cert≈`).
  Separately, five "flatten-to-scalar" model axioms (value summation,
  script-integrity hash, Plutus evaluation, `refScriptsSize`, script
  lookup) support the fully-proven `UTXOW` congruence stack — the honest
  answer to *what the abstract set interface cannot see*.

---

# What Doesn't Commute → What We Assume

Per-pair (`Indep`), all computable from the two transactions alone:

- **Overwriting cert-map writes** (`delegate`, `regpool`, `retirepool`,
  `ccreghot`: last-/first-wins with per-tx values)
  → `disjCertCreds`: disjoint `cwitness` targets.
- **Deposit add vs. remove at one key** (`reg c 0` + `dereg c`; `reg c 0` is
  invisible to `cwitness`)
  → `disjDeposits`: disjoint `certDepositKey` targets.
- **Same-target votes** (last-wins insert into an action's vote map)
  → `disjVotes`: disjoint *(action, voter)* pairs.

Global (`NoGov`):

- **Proposals** append to the `govSt` list — position is semantically
  meaningful (ratification order/lineage) → `NoProp`: no proposals.
- **DRep (de)registration** changes `dom dreps`, which re-filters *all*
  existing votes every step (`rmOrphanDRepVotes`) — a global effect
  disjointness cannot fix → `NoDRepCert`.

Assumed *facts* (postulates, not conditions): replay protection — outputs
pairwise disjoint & fresh, removed keys disjoint from later-added
(Cor 5.1.2, hash injectivity).

**Not** assumed: disjoint inputs, withdrawals, collateral, validity tags —
both-sequence validity covers all of those.

---

# What Is Left, and the Final Aim

- **Proven: `govSt`, votes-only.** Per transaction, governance is an
  `addVote` fold behind `rmOrphanDRepVotes`; the filter reads only
  `dom dreps` (constant under `NoDRepCert`, proved by CERTS inversion),
  registered votes pass through it, and `disjVotes` commutes the folds.
  `LEDGERS-govSt≈` is now a theorem, not a postulate.

- **Still open: the certificate state.** A pure per-pair swap is provably
  *false* for the certificate maps — e.g. `reg c 0` vs `dereg c`, or
  withdrawal-zeroing vs `dereg` — the counterexamples are excluded only by
  both-sequence *validity*. So this last field needs a validity-aware
  net-effect argument, not more disjointness. All the map-commutation
  bricks, `≈ᶜ` machinery, and the per-certificate congruence pipeline are
  already proven as ingredients.

- **Housekeeping done.** Everything not specific to reordering (insert/
  `∪ˡ`/restriction algebra, generic congruences, permutation-invariant
  folds, the `foldl-↭` engine, the `∪⁺` locality framework) is staged in
  `GeneralLemmas.lagda.md` / `MapCommutativity.agda` next to the proof,
  ready for library integration.

- **The aim.** Discharge `cert≈`/`govSt≈` and then weaken `Indep` further:
  even when transactions *do* interact, any ordering that is itself valid
  should produce the same state — the guarantee resting on validity of
  the ordering, not on independence.
