# Three Mempool Specifications

All under `ouroboros-consensus/src/ouroboros-consensus/Ouroboros/Consensus/Mempool/`:

- **`Mempool.lagda.md`** — Praos-era mempool. Current implementation.
  Single sequence of transactions, single ledger state, `snapshotTxsAfter`
  streaming to peers, fairness FIFO for remote vs. local admission.

- **`MempoolLeios.lagda.md`** — Linear Leios adaptation, aligned with
  CIP-164. Still a single tier. Adds `heldEB` with speculative `ebLedger`,
  `seeRBBody`, `seeRBCert` (Scenario A / B), `discardEB`, extended
  `syncWithLedger`, and `forgeBlock` returning `(RB, Maybe EB)`. EBs reach
  the ledger via a vote certificate carried in a later RB — RBs never
  contain an EB directly.

- **`MempoolLeiosPricing.lagda.md`** — Tiered-pricing extension on top of
  Leios. Two tiers (fast, slow). Tier-aware admission, forging, and
  peer exchange. Includes a light-load EB-suppression rule and a
  fast-fee refund for fast txs that end up in an EB.

Each file is self-contained. The pricing doc marks its deltas from Leios
with `-- CHG:` / `-- NEW:` comments in the Agda block.

---

# Pricing Mempool: Key Changes vs. Leios

- **Two tiers.** `fastTxs` destined for the RB body, `slowTxs` for
  the announced EB. Separate caps: `fastCap` (one RB `TxMeasure`) and
  `slowCap` (CIP-164 per-EB caps: `S_EB`, `S_EB-tx`, per-EB Plutus).

- **Layered ledger stack.** `ledger` (chain tip) → `ebLedger : Maybe`
  (with `heldEB` applied) → `fastUpdatedLedger` (fasts on top)
  → `slowUpdatedLedger` (slows on top). Each new tx validates
  against its tier's post-state.

- **Fast admission cascades.** `addTx Fast t` validates against
  `fastUpdatedLedger`, then unconditionally revalidates `slowTxs`
  on the new post-state. Commutativity-based option-1 admission is
  tracked as a future variant, pending the WIP proof at
  `IntersectMBO/formal-ledger-specifications:polina/commutativity`.

- **Scenario B zero-cost rename.** When a cert for our `heldEB` lands,
  both tiers' working states are preserved bit-identically; only the
  ledger-stack fields shift. O(1) transition.

- **`forgeBlock` reapplies against `ledger`.** Safe to call regardless of
  `heldEB`. Fast overflow (fast txs that don't fit `fastCap`)
  flows into the EB body ahead of slows.

- **Fee on an EB-landed fast tx.** The ledger charges/refunds on the tier
  the tx *actually* lands in (`actualTier`: EB ⇒ slow), not its claimed
  tier — but only if it named a `feeChangeAddr`: then it is charged the
  slow fee and refunded `txFee − slowCoeff·minfee`. With no change address
  it forfeits everything above `minfee` to the treasury. The admission
  check still used its *claimed* (fast) tier (`tier.tierCoeff·minfee ≤ txFee`).

- **EB suppression under light load.** No EB when the EB body is below
  `ebFloor` (= ½ a full RB) in every dimension. Exact complement of the
  ledger's `sdChecks EB`, measured on the same EB body.

- **Peer exchange.** Inbound routes by tier tag on each tx.
  Outbound pulls fast-first: keep asking peers for fast txs;
  fall back to slows only when fast requests come back empty.
  `snapshotTxsAfter` becomes a per-tier cursor pair.

- **Explicit `discardEB`.** The pricing model's one expensive undo of a
  prior `addEB` — cascades through both tiers.

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

---

# Ledger Changes: Tiered Fees & Block Diversity

Conway ledger, WIP branch `polina/dynamic`. Two tiers — `fastTier` (0) and
`slowTier` (1) — and two block types, Endorser (`EB`) and Ranking (`RB`). The
fee-change mechanism follows the draft CIP:
[cardano-foundation/CIPs#1218](https://github.com/cardano-foundation/CIPs/pull/1218).

- **Fee split.** The admission gate is on the *claimed* tier
  (`tier.tierCoeff·minfee ≤ txFee`), but the fee is charged/refunded on the
  tier the tx *actually* lands in — `actualCoeff = coeffRange(dp[actualTier])`,
  EB ⇒ slow, RB ⇒ fast. The pot always keeps `minfee`. With a `feeChangeAddr`:
  the treasury gets `(actualCoeff−1)·minfee` and `txFee − actualCoeff·minfee`
  is refunded to the address (so a fast-claimed tx bumped to an EB is charged
  the *slow* fee). With no `feeChangeAddr`: the whole `txFee − minfee` goes to
  the treasury — no actual-tier discount, the excess is forfeited. Refund
  credits accumulate in `feeRewards`, flushed into the reward accounts per tx
  in `LEDGER`. On script failure (`Scripts-No`) the full collateral is
  collected instead and no split/refund is made.

- **Tier admission by block type.** Both block types gate on
  `tier.tierCoeff·minfee ≤ txFee`. `RB` blocks additionally accept only
  fast-tier txs (both requested `tier.tierNo` and placed `actualTier` =
  `fastTier`); an `EB` places txs of any tier. The tier coefficient is thus a
  fast *signal* (you must be able to pay `coeff·minfee`), while what you
  ultimately keep-vs-donate is set by the split above.

- **EB size floor.** An `EB` must reach the fullness floor `ebFloor` in at
  least one dimension (summed across tiers; `SDPolicy` accumulators, `DIVUP`)
  — rejected only when below `ebFloor` in *every* dimension: `totalSize`,
  `totalRefScriptSize`, and `totalExUnits` (the `≥ᵉ` on ExUnits covers mem
  and CPU). `ebFloor` = **½ a full RB** per dimension (a design choice,
  candidate protocol parameter); until then encoded as `2·total ≥ (full-RB
  limit)`. Exact complement of the mempool's `underHalfRB` suppression —
  same four dimensions, same `ebFloor`, same EB body measured — so an EB is
  suppressed there iff rejected here. (The "small in *every* dimension"
  quantifier is probably up for discussion. `ebFloor` is a lower bound,
  distinct from the CIP-164 per-EB *capacity* `slowCap`, which the ledger
  doesn't yet enforce — TODO.)

- **Mempool-compatible.** These are exactly the ledger-side counterparts of
  the pricing-mempool tiers: the fast/slow split mirrors the
  fast/slow tier tag and its **tier sorting**, the EB-size floor is the
  exact complement of the mempool's light-load EB-suppression rule (same four
  dimensions, same `ebFloor` = ½ full RB, EB body measured on both sides),
  and the fast-fee refund is realised here as the `feeChangeAddr`
  overpayment credit.

- **Knobs to tune (not yet fixed).** The per-tier coefficients `coeffRange`
  (γᵢ; fast vs slow) live in the *ledger state* — `DiversityPolicy` inside
  `UTxOState.policyState`, not in protocol parameters — and are updated
  dynamically by `DIVUP`. The gap between the fast and slow coefficients sets
  how strong a **fast signal** costs; the `DIVUP` block-fit thresholds and
  the EB size floor drive **congestion control**. (A per-tier maturity delay
  `WaitTime` / `timeToWait` is stubbed but not yet wired in.) All of these are
  values we will have to tune to make fast signalling and congestion
  control behave well.

---

# Ledger Changes: RB Bodies & EB Certificates

A Ranking Block now carries **either** a transaction list **or** an EB
certificate — the `BBODY` rule has one case for each.

- **Transaction list** (`ebCert ≡ nothing`). Business as usual: run
  `LEDGERS` over the block's txs, update the diversity policy via `DIVUP`,
  credit the pool's block count.

- **EB certificate** (`ebCert ≡ just cert`). The RB endorses an Endorser
  Block instead of carrying txs. Check the endorsements
  (`checkEndorsements`), confirm the certificate's id resolves to the
  Endorser Block (`checkEBID`), then run `BBODY` recursively on that EB — its
  transactions are processed by the transaction-list case. Endorsement type
  and both checks are **abstract for now**.

- **Aligned with Leios.** In CIP-164 / Linear Leios an EB reaches the ledger
  via a vote certificate carried in a *later* RB — RBs never contain an EB
  body directly. The `ebCert` case models exactly that hand-off, so the
  ledger stays compatible with `MempoolLeios` and its pricing extension.

- **Open ends.** Block-count attribution for EB-certificate RBs, and
  requiring the resolved block to actually be an `EB`, are left to the
  abstract `checkEBID` / recursion for now (see TODOs in `BlockBody`). The
  `BBODY`/`UTXO` computational proofs need updating for the new rules and
  premises.
