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

In `Reorder.lagda.md` (Conway ledger, WIP branch `polina/commutativity`):

- **Statement.** Two blocks whose transaction lists are permutations of
  one another, both applied successfully via `LEDGERS`, reach the *same*
  final `LState` — up to extensional set-equality `≈ˡ`, not propositional
  `≡` (the set model is `List`-backed, so `≡` is too strong). Matches
  Vinogradova & Sorokin, LSFA'24, Thm 5.2.1.

- **Proven.** Full `UTxO` commutation (`utxo-comm`); the certificate
  map-algebra (`insert` commutes on distinct keys); and the congruence
  bricks — `UTXO-cong`, `UTXOS-cong`, and the `UTXOW` pieces
  (`refScripts`, `txscripts`, `credsNeeded`, `languages`, …).

- **Isolated as model axioms.** Five "flatten-to-scalar" facts (value
  summation, script-integrity hash, Plutus evaluation, `refScriptsSize`,
  script lookup) — each collapses a `UTxO`-derived *set* into a scalar or
  serialised value. This is the honest answer to *what does not commute*.

---

# What Is Left, and the Final Aim

- **Still open.** Two sound obligations remain postulated: `LEDGER-cong`
  (`LEDGER` respects `≈ˡ`) and `LEDGER-swap` (independent transactions
  commute). All building blocks exist; the `UTXOW-cong` / `CERTS-cong`
  / `GOVS-cong` assembly that discharges them is not yet written.

- **Current scope is conservative.** We require the two transactions to
  be *fully independent* — disjoint inputs, certificates, and
  withdrawals, and governance-free (the `Indep` predicate). Only then do
  we claim their order does not matter.

- **The aim.** Drop full independence. Even when transactions *do*
  interact, *any* ordering that is itself valid should produce the same
  state update (given no governance actions are included, etc.). The
  guarantee should rest on validity of the ordering, not on independence.
