# Tiered fees and block diversity

This module and the changes it depends on are additions on top of the upstream
`master` formal-ledger-specifications. They introduce a two-tier, block-type-aware
fee/diversity scheme (priority tier = 0, regular tier = 1; Endorser Blocks vs Ranking
Blocks). The changes made relative to the `master` starting point are, per file:

- **Transaction** (`Transaction.lagda.md`) — new tier primitives: `TierNo`,
  `priorityTier`/`regularTier`, `TierCoeff`, `WaitTime`, `BlockType` (`EB`/`RB`) and the
  `TxTier` record (`tierNo`, `tierCoeff`). `TxBody` gains `tier : TxTier` and
  `feeChangeAddr : Maybe RewardAddress`; `Tx` gains `actualTier : TierNo` (the tier
  the tx is actually placed in, ≤ `body.tier.tierNo`).

- **Abstract** (`Abstract.lagda.md`) — `AbstractFunctions` (now `Type₁`) gains the
  abstract EB machinery: the `Endorsement` type, and the checks
  `checkEndorsements : KeyHash → List Endorsement → Bool` and
  `checkEBID : KeyHash → KeyHash → Bool` (whether an id resolves to a block with a
  given body hash). EB ids are `KeyHash`es.

- **Tiers** (`Tiers.lagda.md`, this module — entirely new) — the diversity policy:
  `PolicyClause` (per-tier `coeffRange`), `DiversityPolicy = TierNo ⇀ PolicyClause`,
  `SDPolicy` (the policy plus per-block, per-tier accumulators `totalSize`,
  `totalRefScriptSize` and `totalExUnits`), the block-level `sdChecks` (RB must fit
  within `maxBlockSize`/`maxRefScriptSizePerBlock`/`maxBlockExUnits`; an EB must be ≥
  half of a full RB in every dimension — tx-body size, reference-script size, and
  ExUnits — summed across tiers), `updateTiers` (stub), and the `DIVUP` transition that
  recomputes the policy and resets the per-block accumulators.
  The EB half-RB check is the ledger-side counterpart of the mempool's `underHalfRB`
  EB-suppression rule (`MempoolLeiosPricing.lagda.md` in `ouroboros-consensus`), and is
  kept consistent with it on both previously-open points: (1) reference-script bytes are
  their own dimension here (`totalRefScriptSize`, checked against
  `maxRefScriptSizePerBlock`), matching the mempool's ref-script `Capacity` dimension;
  (2) the threshold is the fullness floor **`ebFloor` = ½ a full RB** per dimension (a
  design choice, not a CIP-164 requirement; SHOULD PROBABLY BE A PROTOCOL PARAMETER) —
  the EB check is `total ≥ ebFloor`, encoded as `2·total ≥ (full-RB limit)` until
  `ebFloor` is a parameter, so there is no rounding question once it is. The EB check is
  a **disjunction**: an EB is rejected only when below `ebFloor` in *every* dimension
  (valid as soon as ≥ `ebFloor` in one), the exact complement of the mempool's
  `underHalfRB`, which measures the same EB body against the same `ebFloor` — so an EB is
  suppressed there iff rejected here (measurement gap closed). NOTE the "small in every
  dimension" quantifier is probably up for discussion. `ebFloor` (the fullness *floor*,
  lower bound) is distinct from the CIP-164 per-EB *capacity* (`regularCap`/`S_EB`, upper
  bound), which the ledger does **not** yet enforce — TODO.

- **UTxO** (`Utxo.lagda.md`) — `UTxOEnv` gains `blockType`; `UTxOState` gains
  `policyState : SDPolicy` and `feeRewards : Credential ⇀ Coin` (pending fee-change
  credits). The fee of a valid (`Scripts-Yes`) tx is **checked on the claimed tier** but
  **charged/refunded on the actual tier**:
    * the admission gate (`tierFeeCheck`) uses the *claimed* coefficient
      `tier.tierCoeff` — `tier.tierCoeff · minfee ≤ txFee`;
    * the fee pot always keeps exactly `minfee`;
    * with `actualCoeff = coeffRange(dp[actualTier])` (the tier the tx actually landed
      in — EB ⇒ regular, RB ⇒ priority): *with* a `feeChangeAddr`, the treasury gets the
      actual-tier premium `(actualCoeff − 1)·minfee` and `txFee − actualCoeff·minfee` is
      refunded to the address; *without* one, the whole `txFee − minfee` goes to the
      treasury (no actual-tier discount — the excess is forfeited).
  So a priority-claimed tx bumped into an EB is charged the *regular* fee only if it names a
  change address. The split always sums to `txFee`, so `produced` need only account the
  full `txFee` and no longer depends on `BlockType`. In the `Scripts-No` case (script
  validation fails) the collateral is collected **in full** into the fee pot
  (`fees + cbalance (utxo ∣ collateralInputs)`) and no tier split / refund is made —
  `feeRewards` is carried through unchanged. New helpers `processTxTiers` (accumulate
  per-tier stats), `checkPolicyState` (tx coefficient matches the policy) and
  `tierFeeCheck` (`tier.tierCoeff·minfee ≤ txFee` in both block types, plus: RB requires
  every tx to be priority tier — `tier.tierNo ≡ priorityTier` and `actualTier ≡ priorityTier`; EB
  places txs of any tier). The `UTXOS`/`UTXO` rules thread `policyState`/`feeRewards`
  and add the tier premises.

  Note: **users always pay at least `minfee` to the pot; the check is on the claimed
  tier but the actual fee (and any refund) is on the tier the tx lands in — and only a
  stated `feeChangeAddr` lets the excess above the actual-tier fee come back rather than
  be donated to the treasury.**

  (Resolved) *Refund asymmetry.* Nothing above `minfee` is forfeited to the fee
  pot / block producer — the excess is either refunded (change address) or donated to
  the treasury.

  Placement premises: a tx may land in its claimed tier or a *lower-priority* one (a
  priority tx can be bumped into an EB, where it is charged the cheaper regular fee and
  so gets more refunded), never a higher-priority one. Encoded in `UTXO-inductive` as
  `tier.tierNo ≤ actualTier` and `coeffR ≤ tier.tierCoeff` (with `priority = 0 < regular = 1`,
  `priorityCoeff ≥ regularCoeff`). This also keeps the actual-tier refund `txFee − actualCoeff·minfee`
  non-negative, since `actualCoeff ≤ tier.tierCoeff` and the gate gives
  `tier.tierCoeff·minfee ≤ txFee`.

- **Ledger** (`Ledger.lagda.md`) — `LEnv` gains `blockType`, threaded into the
  `UTXOW` environment; after each tx the accumulated `feeRewards` are flushed into
  the delegation state's reward accounts and then cleared.

- **BlockBody** (`BlockBody.lagda.md`) — defines `EBID = KeyHash` and the `EBCert`
  record (`ebid`, `endorsements`). `BHBody` gains `blockType`. `Block` gains
  `ebCert : Maybe EBCert`, so a Ranking Block carries *either* a transaction list
  (`ebCert ≡ nothing`) *or* an EB certificate (`ebCert ≡ just c`). `BBODY` now has two
  rules: the tx-list rule runs `LEDGERS` + the `DIVUP` transition over the block's
  `policyState`; the EB-cert rule checks endorsements (`checkEndorsements`), confirms
  the id (`checkEBID`), and runs `BBODY` recursively on the resolved Endorser Block.

- **Epoch** (`Epoch.lagda.md`) — `applyRUpd` and the POOLREAP update are adjusted
  for the widened 6-field `UTxOState` (carry `policyState`, reset `feeRewards`).

> **TODO** (pre-existing on this branch): the `UTXO-inductive⋯` convenience pattern
> in `Utxo.lagda.md` lists two fewer premise names than the rule now has.

<!--
```agda
{-# OPTIONS --safe #-}

import Data.Maybe as M
import Data.Integer as ℤ
import Data.Rational as ℚ

open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Tiers
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Fees using (scriptsCost)
open import Ledger.Conway.Specification.Certs govStructure

private
  εᵉ : ExUnits
  εᵉ = Monoid.ε (ExUnit-CommutativeMonoid .CommutativeMonoid.monoid)

-- Definition 2 (Diversity policy clause). Fixed 2 tiers: priorityTier (0) and regularTier (1).
record PolicyClause : Type where
  constructor ⟦_⟧ᵖᶜ
  field
    -- blockPercentageSize    : ℕ        -- byte allocation for this tier (use pp.maxBlockSize instead)
    -- blockPercentageExUnits : ExUnits  -- ExUnits allocation for this tier (use pp.maxBlockExUnits instead)
    coeffRange             : ℕ        -- price/delay ratio constraint (γᵢ in paper)

-- tier number (priorityTier=0, regularTier=1) → PolicyClause
DiversityPolicy = TierNo ⇀ PolicyClause

record SDPolicy : Type where
  constructor ⟦_,_,_,_⟧ˢᵈᵖ
  field
    diversityPolicy    : DiversityPolicy  -- policy clause per tier
    totalSize          : TierNo ⇀ ℕ      -- tx-body bytes consumed per tier so far in this block
    totalRefScriptSize : TierNo ⇀ ℕ      -- reference-script bytes consumed per tier so far in this block
    totalExUnits       : TierNo ⇀ ExUnits -- ExUnits consumed per tier so far in this block

-- Block-level diversity checks, per block type. The dimensions match the mempool's
-- `underHalfRB` rule (MempoolLeiosPricing.lagda.md in ouroboros-consensus): tx-body
-- byte size, reference-script byte size, and ExUnits (the ≥ᵉ comparison covers both
-- the mem and CPU ExUnits dimensions pointwise).
--  * RB blocks: the regular tier (1) must fit within the RB limits, i.e. its totalSize /
--    totalRefScriptSize / totalExUnits must not exceed pp.maxBlockSize /
--    pp.maxRefScriptSizePerBlock / pp.maxBlockExUnits.
--  * EB blocks: an endorser block is rejected only when it is below the fullness floor
--    `ebFloor` in *every* dimension; equivalently, it is valid as soon as it reaches
--    `ebFloor` in *at least one* dimension (hence the disjunction below). `ebFloor` is a
--    lower bound = ½ a full RB per dimension, a design choice (not a CIP-164 requirement
--    beyond "no empty EBs") that SHOULD PROBABLY BE A PROTOCOL PARAMETER. Until it is, we
--    encode `total ≥ ebFloor` as `2·total ≥ (full-RB limit)` — `maxBlockSize`,
--    `maxRefScriptSizePerBlock`, `maxBlockExUnits` — to avoid ℕ / ExUnits division; once
--    `ebFloor` is a parameter the check is simply `total ≥ ebFloor` with no rounding.
--    This is the exact complement of the mempool's `underHalfRB` suppression, which also
--    measures the EB body against `ebFloor` (= ½ full RB) — so an EB is suppressed there
--    iff it is rejected here. NOTE: "reject only when small in every dimension" is
--    probably up for discussion — the alternative is requiring ≥ `ebFloor` in every
--    dimension (a conjunction).
--    (`ebFloor` is the fullness *floor*; distinct from the CIP-164 per-EB *capacity*
--    (`regularCap`/`S_EB`, an upper bound) which the ledger does not yet enforce — TODO.)
sdChecks : PParams → SDPolicy → BlockType → Set
sdChecks pp sd EB =
  let szTot = M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalSize)          priorityTier)
            + M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalSize)          regularTier)
      rsTot = M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalRefScriptSize) priorityTier)
            + M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalRefScriptSize) regularTier)
      euTot = M.fromMaybe εᵉ  (lookupᵐ? (sd .SDPolicy.totalExUnits)       priorityTier)
            ◇ M.fromMaybe εᵉ  (lookupᵐ? (sd .SDPolicy.totalExUnits)       regularTier)
  in (pp .PParams.maxBlockSize             ≤ 2 * szTot)
   ⊎ (pp .PParams.maxRefScriptSizePerBlock ≤ 2 * rsTot)
   ⊎ ((euTot ◇ euTot) ≥ᵉ pp .PParams.maxBlockExUnits)
sdChecks pp sd RB =
  let sz = M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalSize)          regularTier)
      rs = M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalRefScriptSize) regularTier)
      eu = M.fromMaybe εᵉ  (lookupᵐ? (sd .SDPolicy.totalExUnits)       regularTier)
  in sz ≤ pp .PParams.maxBlockSize
   × rs ≤ pp .PParams.maxRefScriptSizePerBlock
   × pp .PParams.maxBlockExUnits ≥ᵉ eu

-- TODO: compute updated diversity policy from current policy and per-tier block stats.
-- Must keep every tier coefficient ≥ 1: the fee split in the UTXOS rule (pot keeps
-- minfee, treasury gets (coeff−1)·minfee) relies on coeff ≥ 1 to preserve value, and
-- the coefficient-update logic is expected to guarantee this without a separate check.
updateTiers : PParams → SDPolicy → DiversityPolicy
updateTiers pp sd = sd .SDPolicy.diversityPolicy

private variable
  sd sd' : SDPolicy
  pp : PParams
  bt : BlockType

-- Diversity policy update rule.
-- Checks that the current regular tier is within RB block capacity (EB blocks skip),
-- then applies updateTiers, resetting per-block stats.
data _⊢_⇀⦇_,DIVUP⦈_ : PParams × BlockType → SDPolicy → ⊤ → SDPolicy → Type where

  DIVUP-r :
    let open SDPolicy sd
        dp' = updateTiers pp sd
    in
    ∙ sdChecks pp sd bt
      ────────────────────────────────
      (pp , bt) ⊢ ⟦ diversityPolicy , totalSize , totalRefScriptSize , totalExUnits ⟧ˢᵈᵖ ⇀⦇ tt ,DIVUP⦈ ⟦ dp' , ∅ᵐ , ∅ᵐ , ∅ᵐ ⟧ˢᵈᵖ
```
-->

