# Tiered fees and block diversity

This module and the changes it depends on are additions on top of the upstream
`master` formal-ledger-specifications. They introduce a two-tier, block-type-aware
fee/diversity scheme (urgent tier = 0, standard tier = 1; Endorser Blocks vs Ranking
Blocks), matching the CIP "Urgency signalling for Cardano transactions". The changes
made relative to the `master` starting point are, per file:

- **Transaction** (`Transaction.lagda.md`) — new tier primitives: `TierNo`,
  `urgentTier`/`standardTier`, `WaitTime`, `BlockType` (`EB`/`RB`) and the
  `TxTier` record, which carries `tierNo` only — a transaction declares a tier
  but no coefficient. `TxBody` gains `tier : TxTier` and
  `feeChangeAddr : Maybe RewardAddress`; `Tx` gains `actualTier : TierNo` (the tier
  the tx is actually placed in, ≤ `body.tier.tierNo`).
  **Fixed point:** tier coefficients are fractional, represented as naturals scaled by
  `tierScale = 10 ^ tierDec`. A stored coefficient `c` denotes the real number
  `c / tierScale`, and `tierScale` is therefore both the representation of `1.0` and the
  absolute coefficient floor. `tierDec` is deliberately **not** a protocol parameter:
  changing it would silently reinterpret every coefficient already stored on chain.

- **Abstract** (`Abstract.lagda.md`) — `AbstractFunctions` (now `Type₁`) gains the
  abstract EB machinery: the `Endorsement` type, and the checks
  `checkEndorsements : KeyHash → List Endorsement → Bool` and
  `checkEBID : KeyHash → KeyHash → Bool` (whether an id resolves to a block with a
  given body hash). EB ids are `KeyHash`es. The age escape no longer lives here: it was
  a chain-history oracle (`ebOverdue : Slot → Bool`) needing unbounded lookback, and is
  now the `rbsSinceCert` counter in `SDPolicy` compared against the `ebAgeEscape`
  protocol parameter.

- **PParams** (`PParams.lagda.md`) — new protocol parameters. `ebAgeEscape` (K, in
  Ranking Blocks) and the Endorser Block capacities `maxEBSize` / `maxEBExUnits` join the
  network group; the controller calibration — `urgentTarget`, `standardTarget`,
  `maxChangeDenominator`, and the per-lane window lengths `urgentWindowSize` /
  `standardWindowSize` — joins the economic group. All of them also join the security
  group, since they set the fee every RB transaction must cover and decide when an EB
  certificate may consume RB space. The window length is **per lane** because the two
  controllers are specified over windows of different lengths (5 urgent, 20 standard); a
  single shared parameter cannot express that.

- **Tiers** (`Tiers.lagda.md`, this module — entirely new) — the diversity policy.
  A `PolicyClause` is one **utilisation sample** for one tier: usage (`size`,
  `refScriptSize`, `exUnits`) together with the capacity it is charged against
  (`capSize`, `capExUnits`) and the coefficient in force. `SDPolicy` holds
  `currentClause` (in-progress accumulation for the block being processed),
  `diversityPolicy : TierNo ⇀ List PolicyClause` (each lane's window of finalized
  clauses, most recent first) and `rbsSinceCert` (the age-escape counter).

  Carrying the capacity in each clause is what makes the controllers computable from the
  chain alone. A state retaining only past coefficients would not: a moving average of
  past coefficients has no input signal and can never respond to load. `updateTiers` is
  therefore a real update — windowed utilisation from the usage/capacity fields, fed
  through the bounded-step controller of `stepCoeff` — and no longer a stub.

  `sdChecks` is the block-level rule: for an RB, the urgent tier must fit within the RB
  limits (RBs are urgent-only, enforced per transaction by `tierFeeCheck RB`); for an EB,
  the **announcement threshold**, where a non-empty certified EB qualifies once any one
  dimension reaches `max(1 − urgentTarget, 1/2)` of the corresponding RB limit. This is
  the ledger-side complement of the mempool's `underHalfRB` EB-suppression rule
  (`MempoolLeiosPricing.lagda.md` in `ouroboros-consensus`) — an EB is suppressed there
  iff rejected here. NOTE the "qualify on any one dimension" quantifier is still up for
  discussion. The **age escape** bounds the threshold: a below-threshold EB is accepted
  once `ebAgeEscape` Ranking Blocks have passed since a certificate last entered the
  chain, so a thin standard lane cannot be starved indefinitely.

  `DIVUP` runs once per payload-bearing block: check `sdChecks`, fill in capacities,
  prepend the finalized clause to its lane's window, set that clause's coefficient from
  the window's utilisation, update `rbsSinceCert`, and reset `currentClause`. The block
  joins its own window before the update reads it, so a block's utilisation sets the
  coefficient that prices the *next* block — a one-block lag, matching the reference
  simulator (`Sim.hs` records the block, then runs `priceStep` over that history). Its
  environment is `PParams × BlockType` (the slot is no longer needed, the age escape
  being counted in blocks rather than slots).

  **Known divergence from the CIP.** The CIP takes a lane's utilisation to be the
  *maximum* of its byte ratio and its ExUnits ratio. Comparing ratios across dimensions
  needs each ExUnits component as a number, and the abstract `ExUnits` interface exposes
  only the relation `_≥ᵉ_`, which is a `Type` and so cannot be branched on inside a
  function. The step *magnitude* is therefore driven by the byte dimension; ExUnits still
  constrains block admission relationally in `sdChecks`. Closing this needs numeric
  projections on `ExUnits`.

- **UTxO** (`Utxo.lagda.md`) — `UTxOEnv` gains `blockType`; `UTxOState` gains
  `policyState : SDPolicy` and `feeRewards : Credential ⇀ Coin` (pending fee-change
  credits). The fee of a valid (`Scripts-Yes`) tx is **checked on the claimed tier** but
  **charged/refunded on the actual tier**:
    * the admission gate (`tierFeeCheck`) uses the *claimed* coefficient
      the ACTUAL tier's quote — `minfeeAt actualCoeff minfee ≤ txFee`;
    * the fee pot always keeps exactly `minfee`;
    * with `actualCoeff = rawCoeff dp actualTier` (the coefficient in force for the tier
      the tx actually landed in — EB ⇒ standard, RB ⇒ urgent) and
      `actualFee = minfeeAt actualCoeff minfee`: *with* a `feeChangeAddr`, the treasury
      gets the actual-tier premium `actualFee − minfee` and `txFee − actualFee` is
      refunded to the address; *without* one, the whole `txFee − minfee` goes to the
      treasury (no actual-tier discount — the excess is forfeited).
  So an urgent-claimed tx bumped into an EB is charged the *standard* fee only if it names a
  change address. The split always sums to `txFee`, so `produced` need only account the
  full `txFee` and no longer depends on `BlockType`. In the `Scripts-No` case (script
  validation fails) the collected collateral now settles the **same way** as `txFee` does
  above — `minfee` to the pot, the actual-tier premium to the treasury, the remainder to
  `feeChangeAddr` or the treasury — rather than being swept into the fee pot in full.
  Sweeping it interacts badly with a maximum-fee `txFee`, since collateral is
  `collateralPercentage * txFee` and a transaction posting headroom would forfeit
  collateral proportional to a ceiling it was never charged. New helpers `processTxTiers` (accumulate this
  tx's usage into `currentClause`) and `tierFeeCheck` (the block-type rule only: RB
  requires every tx to be urgent tier — `tier.tierNo ≡ urgentTier` and
  `actualTier ≡ urgentTier`; EB places txs of any tier). `checkPolicyState` is gone
  with the declared coefficient. The single fee constraint,
  `minfeeAt actualCoeff minfee ≤ txFee`, is a `UTXO-inductive` premise, where
  `actualCoeff` is in scope. The `UTXOS`/`UTXO` rules thread
  `policyState`/`feeRewards` and add the tier premises.

  Every coefficient→amount conversion goes through the single helper
  `minfeeAt c base = ⌊ base · c / tierScale ⌋`. Comparisons between two coefficients are
  on the same fixed-point scale and need no conversion.

  Note: **users always pay at least `minfee` to the pot; the check is on the claimed
  tier but the actual fee (and any refund) is on the tier the tx lands in — and only a
  stated `feeChangeAddr` lets the excess above the actual-tier fee come back rather than
  be donated to the treasury.**

  (Resolved) *Refund asymmetry.* Nothing above `minfee` is forfeited to the fee
  pot / block producer — the excess is either refunded (change address) or donated to
  the treasury.

  Placement premises: a tx may land in its claimed tier or a *less urgent* one (an
  urgent tx can be bumped into an EB, where it is charged the cheaper standard fee and
  so gets more refunded), never a more urgent one. Encoded in `UTXO-inductive` as
  `tier.tierNo ≤ actualTier` (with `urgent = 0 < standard = 1`). The actual-tier refund
  `txFee − minfeeAt actualCoeff minfee` is non-negative directly, by the fee premise.

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
import Data.Nat as N
import Data.Nat.DivMod as ND
import Data.List as L

open import Ledger.Prelude
open import Ledger.Prelude.Numeric using (UnitInterval; fromUnitInterval)
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

-- Definition 2 (Diversity policy clause). Fixed 2 tiers: urgentTier (0) and standardTier (1).
--
-- A PolicyClause is ONE UTILISATION SAMPLE for one tier: the numerator (`size`,
-- `exUnits`) and the denominator (`capSize`, `capExUnits`) that this tier's
-- controller charges that sample against, together with the coefficient that was
-- in force while the block was processed. The capacity fields are what make each
-- controller's signal reconstructible from the chain alone — without them the
-- state retains only past coefficients, which is not the data the update rule
-- needs (a moving average of past coefficients has no input signal at all and
-- can never respond to load).
--
-- `refScriptSize` is carried for the EB announcement threshold (`sdChecks`)
-- only; neither controller reads it, so it has no capacity counterpart here (it
-- is compared directly against pp.maxRefScriptSizePerBlock).
--
-- The capacities differ by tier:
--  * urgent   — always the RB urgent reservation capacity, whatever the block
--    type. Because Ranking Blocks are urgent-only at every load, that reservation
--    is the whole Ranking Block, i.e. pp.maxBlockSize / pp.maxBlockExUnits. So the
--    urgent signal asks how many Ranking Blocks' worth of urgent traffic a payload
--    carried, not how full an Endorser Block was.
--  * standard — the producing block's own capacity: the full RB limits for a
--    non-certificate Ranking Block (contributed even when the block is empty,
--    since standard traffic cannot occupy an RB at all), and the EB limits for a
--    certified Endorser Block.
record PolicyClause : Type where
  constructor ⟦_,_,_,_,_,_⟧ᵖᶜ
  field
    -- The three usage fields are sums, over this tier's transactions in this
    -- block, of accounting functions the ledger already has -- not new
    -- measures.  A one-byte disagreement here is a chain split at certificate
    -- validation, so being exact matters:
    --   size          Σ txsize.  Per-transaction, so block-body framing and any
    --                 other whole-block serialisation overhead are excluded.
    --   refScriptSize Σ refScriptsSize.  Reference SCRIPTS only, no datums,
    --                 matching maxRefScriptSizePerBlock.  Set-deduplicated
    --                 within a transaction, summed across transactions.
    --   exUnits       Σ totExUnits.  Budgets DECLARED in redeemers, not units
    --                 consumed -- the ledger charges declared, and so does this.
    -- Attribution is by the transaction's actualTier, not the tier it claimed.
    coeff         : ℕ        -- fixed-point tier coefficient (scaled by tierScale)
    size          : ℕ        -- Σ txsize, this tier, this block
    refScriptSize : ℕ        -- Σ refScriptsSize, this tier, this block
    exUnits       : ExUnits  -- Σ totExUnits, this tier, this block
    capSize       : ℕ        -- byte capacity this sample is charged against
    capExUnits    : ExUnits  -- ExUnits capacity this sample is charged against

-- The empty clause: no usage, no capacity, coefficient floored. Used to reset
-- `currentClause` between blocks and to seed the policy at mechanism activation.
εᵖᶜ : PolicyClause
εᵖᶜ = ⟦ tierScale , 0 , 0 , εᵉ , 0 , εᵉ ⟧ᵖᶜ

-- tier number (urgentTier=0, standardTier=1) → that tier's window of finalized
-- clauses, most recent first, truncated to windowSize(tier) entries.
DiversityPolicy = TierNo ⇀ List PolicyClause

record SDPolicy : Type where
  constructor ⟦_,_,_⟧ˢᵈᵖ
  field
    -- In-progress accumulation for the block currently being processed. Each tx
    -- adds its size / refScriptSize / exUnits to the clause for its tier; the
    -- coeff and capacity fields are filled in at block finalization (DIVUP).
    currentClause   : TierNo ⇀ PolicyClause
    -- Finalized clauses from the most recent payload-bearing blocks, per tier.
    -- A clause is appended only when a transaction payload is applied — for a
    -- non-certificate Ranking Block or a certified Endorser Block — so
    -- certificate-carrying RBs and bare announcements never produce one. "One
    -- clause per payload application" is therefore exactly the notion of a
    -- sample that both controllers use, and neither window has to filter the
    -- list it is given.
    diversityPolicy : DiversityPolicy
    -- Ranking Blocks seen since an EB certificate last entered the chain. This
    -- is the age escape counter (K in the CIP): carrying it as state rather
    -- than recovering it by walking back the chain makes the escape decidable
    -- in O(1) per block. Reset to 0 whenever a certificate is accepted.
    rbsSinceCert    : ℕ

-- The coefficient currently in force for a tier: the `coeff` of the most recent
-- finalized clause. Falls back to the floor when the window is empty, which can
-- only happen before the policy is seeded.
rawCoeff : DiversityPolicy → TierNo → ℕ
rawCoeff dp t with lookupᵐ? dp t
... | just (c ∷ _) = c .PolicyClause.coeff
... | _            = tierScale

-- The actual lovelace fee owed at fixed-point coefficient `c` over a base
-- minimum fee: minfeeAt(c) = ⌊ base · c / tierScale ⌋. This is the SINGLE place
-- a coefficient is turned into an amount. Comparisons between two coefficients
-- are on the same fixed-point scale and need no conversion; only quantities
-- mixing a coefficient with a Coin go through here.
--
-- Since every coefficient is ≥ tierScale (the floor, maintained by stepCoeff),
-- minfeeAt c base ≥ base — which is what keeps the treasury share
-- `minfeeAt c base ∸ base` in the UTXOS fee split from underflowing.
-- Rounds UP: the ledger never collects less than the quote.  At the floor
-- c = tierScale the division is exact, so minfeeAt tierScale base ≡ base and a
-- standard lane at rest charges exactly the ordinary minimum fee.  Form the
-- product first and divide once; dividing first or rounding at an intermediate
-- step gives a different integer, and every node must agree on this to the
-- lovelace.
minfeeAt : ℕ → Coin → Coin
minfeeAt c base = ((base * c) + tierScale ∸ 1) ND./ tierScale

private
  -- Scalar multiple of an ExUnits value, built from the commutative monoid. The
  -- abstract ExUnits interface exposes only `_≥ᵉ_` and the monoid — no numeric
  -- projection — so `n ·ᵉ x` is how a capacity gets scaled for the threshold
  -- comparisons below.
  _·ᵉ_ : ℕ → ExUnits → ExUnits
  zero  ·ᵉ _ = εᵉ
  suc n ·ᵉ x = x ◇ (n ·ᵉ x)

  -- Numerator and denominator of a target utilisation, as naturals. A
  -- UnitInterval is a ℚ in [0,1], so its numerator is non-negative.
  tgtNum tgtDen : UnitInterval → ℕ
  tgtNum u = ℤ.∣ ℚ.↥ (fromUnitInterval u) ∣
  tgtDen u = ℚ.↧ₙ (fromUnitInterval u)

  -- Per-tier calibration lookups. urgentTier ≡ 0, standardTier ≡ 1.
  targetOf : PParams → TierNo → UnitInterval
  targetOf pp zero = pp .PParams.urgentTarget
  targetOf pp _    = pp .PParams.standardTarget

  windowOf : PParams → TierNo → ℕ
  windowOf pp zero = pp .PParams.urgentWindowSize
  windowOf pp _    = pp .PParams.standardWindowSize

  clausesOf : DiversityPolicy → TierNo → List PolicyClause
  clausesOf dp t = M.fromMaybe [] (lookupᵐ? dp t)

  -- Windowed BYTE utilisation for one tier, as the pair (used , avail):
  --   used  = Σ min(size, capSize)   avail = Σ capSize
  -- Per-sample capping is what makes the urgent signal a count of
  -- Ranking-Block-loads rather than a raw ratio, and it bounds the ratio at 1
  -- without a separate clamp (so used ≤ avail always holds).
  windowBytes : List PolicyClause → ℕ × ℕ
  windowBytes []       = 0 , 0
  windowBytes (c ∷ cs) =
    let sz  = c .PolicyClause.size
        cap = c .PolicyClause.capSize
        ua  = windowBytes cs
    in (proj₁ ua + (sz N.⊓ cap)) , (proj₂ ua + cap)

  -- coeff' = max(tierScale, ⌊ coeff · mult / den ⌋), holding the coefficient
  -- when there is no signal (den ≡ 0). Matching on `suc` supplies the NonZero
  -- instance that ℕ division requires.
  applyStep : ℕ → ℕ → ℕ → ℕ
  applyStep coeff _    zero      = coeff
  applyStep coeff mult (suc d-1) = ((coeff * mult) ND./ (suc d-1)) N.⊔ tierScale

  -- The controller update of the CIP's "Computing the windowed utilisation",
  -- evaluated entirely in natural-number arithmetic:
  --   coeff' = max(F, ⌊ coeff · (C·p·D + q·N − p·C) / (C·p·D) ⌋)
  -- with F = tierScale the absolute coefficient floor, target = p/q and D the
  -- max-change denominator. Because N ≤ C (per-sample capping) and D ≥ 1
  -- (paramsWellFormed), the multiplier C·p·D + q·N − p·C is never negative, so
  -- the truncated subtraction below never silently clamps a real value.
  --
  -- The outer max with `tierScale` is a LEDGER INVARIANT, not merely a
  -- controller recommendation: the fee split in UTXOS sends
  -- `minfeeAt actualCoeff ∸ minfee` to the treasury, which would underflow if a
  -- coefficient were ever allowed below the floor.
  --
  -- NOTE (divergence from the CIP, deliberate): the CIP takes utilisation to be
  -- the MAXIMUM of the byte ratio and the ExUnits ratio. Comparing ratios across
  -- dimensions needs each ExUnits component as a number, and the abstract
  -- ExUnits interface offers only the relation `_≥ᵉ_`, which is a Type and so
  -- cannot be branched on in a function. The step MAGNITUDE is therefore driven
  -- by the byte dimension here; ExUnits still constrains block admission
  -- relationally in `sdChecks`. Closing this gap needs numeric projections on
  -- ExUnits.
  stepCoeff : PParams → TierNo → ℕ → ℕ × ℕ → ℕ
  stepCoeff pp t coeff (N' , C) =
    let p   = tgtNum (targetOf pp t)
        q   = tgtDen (targetOf pp t)
        d   = pp .PParams.maxChangeDenominator
        den = C * p * d
    in applyStep coeff (den + q * N' ∸ p * C) den

  -- Capacity a sample is charged against, by tier and block type.
  --  * urgent (0): always the RB urgent reservation. Ranking Blocks are
  --    urgent-only at every load, so the reservation is the whole RB.
  --  * standard: the producing block's own capacity — full RB limits for a
  --    non-certificate RB (contributed even when empty, since standard traffic
  --    cannot occupy an RB), EB limits for a certified EB.
  capSizeOf : PParams → BlockType → TierNo → ℕ
  capSizeOf pp _  zero = pp .PParams.maxBlockSize
  capSizeOf pp RB _    = pp .PParams.maxBlockSize
  capSizeOf pp EB _    = pp .PParams.maxEBSize

  capExOf : PParams → BlockType → TierNo → ExUnits
  capExOf pp _  zero = pp .PParams.maxBlockExUnits
  capExOf pp RB _    = pp .PParams.maxBlockExUnits
  capExOf pp EB _    = pp .PParams.maxEBExUnits

-- Sum of a `currentClause` field across both tiers — the totals the EB
-- announcement threshold is measured against.
curSize curRefScriptSize : SDPolicy → ℕ
curSize sd = tot urgentTier + tot standardTier
  where tot = λ t → PolicyClause.size (M.fromMaybe εᵖᶜ (lookupᵐ? (sd .SDPolicy.currentClause) t))
curRefScriptSize sd = tot urgentTier + tot standardTier
  where tot = λ t → PolicyClause.refScriptSize (M.fromMaybe εᵖᶜ (lookupᵐ? (sd .SDPolicy.currentClause) t))

curExUnits : SDPolicy → ExUnits
curExUnits sd = tot urgentTier ◇ tot standardTier
  where tot = λ t → PolicyClause.exUnits (M.fromMaybe εᵖᶜ (lookupᵐ? (sd .SDPolicy.currentClause) t))

-- Block-level diversity checks, per block type. Totals are read from
-- `currentClause`, the in-progress accumulation for the block being processed.
--
--  * RB blocks: Ranking Blocks are urgent-only (enforced per transaction by
--    `tierFeeCheck RB` in Utxo.lagda.md), so the meaningful check is that the
--    urgent tier fits within the RB limits.
--
--  * EB blocks: the ENDORSER BLOCK ANNOUNCEMENT THRESHOLD. A non-empty certified
--    EB qualifies when any one dimension — tx-body size, reference-script size,
--    or the ExUnits budget — reaches `thresholdFraction` of the corresponding RB
--    limit, where
--        thresholdFraction = max(1 − urgentTarget, 1/2).
--    With urgentTarget = p/q, `x ≥ thresholdFraction · L` unfolds to the pair of
--    integer bounds `q·x ≥ (q−p)·L` and `2·x ≥ L`, which is how `reaches` below
--    encodes it — no division, and no rounding question. The fraction follows the
--    urgent target because the resource a certificate displaces is a
--    non-certificate Ranking Block carrying urgent traffic: a lower urgent target
--    runs RBs deliberately emptier, so certificates must be rarer and qualifying
--    EBs correspondingly fuller.
--
--    The check is a DISJUNCTION over dimensions (qualifying in one dimension is
--    enough), the exact complement of the mempool's `underHalfRB` suppression
--    rule (MempoolLeiosPricing.lagda.md in ouroboros-consensus) — so an EB is
--    suppressed there iff it is rejected here. NOTE: "qualify on any one
--    dimension" versus "on every dimension" is still open for discussion.
--
--    AGE ESCAPE: the threshold is bounded, so a persistently thin standard lane
--    cannot be starved indefinitely. A below-threshold EB is accepted once
--    `ebAgeEscape` (K) Ranking Blocks have been produced since a certificate last
--    entered the chain — counted by `rbsSinceCert`, plus one for the
--    certificate-bearing RB now being validated, matching the CIP's half-open
--    interval `(lastCertificateRb, R]`. Counting in Ranking Blocks rather than
--    slots measures the escape in the same resource it relieves (RB space
--    consumed by certificates), and holding the count in state makes it decidable
--    in O(1) rather than by unbounded lookback. The EB must still be non-empty.
sdChecks : PParams → SDPolicy → BlockType → Set
sdChecks pp sd EB =
  let szTot = curSize sd
      rsTot = curRefScriptSize sd
      euTot = curExUnits sd
      p = tgtNum (pp .PParams.urgentTarget)
      q = tgtDen (pp .PParams.urgentTarget)
      -- x reaches max((q−p)/q, 1/2) of the limit L
      reaches   = λ x L → (q * x ≥ (q ∸ p) * L) × (2 * x ≥ L)
      reachesᵉ  = λ x L → ((q ·ᵉ x) ≥ᵉ ((q ∸ p) ·ᵉ L)) × ((2 ·ᵉ x) ≥ᵉ L)
  in -- non-empty
     (szTot > 0)
   × ( reaches  szTot (pp .PParams.maxBlockSize)
     ⊎ reaches  rsTot (pp .PParams.maxRefScriptSizePerBlock)
     ⊎ reachesᵉ euTot (pp .PParams.maxBlockExUnits)
     ⊎ (suc (sd .SDPolicy.rbsSinceCert) ≥ pp .PParams.ebAgeEscape) )
sdChecks pp sd RB =
  let cur = M.fromMaybe εᵖᶜ (lookupᵐ? (sd .SDPolicy.currentClause) urgentTier)
  in cur .PolicyClause.size          ≤ pp .PParams.maxBlockSize
   × cur .PolicyClause.refScriptSize ≤ pp .PParams.maxRefScriptSizePerBlock
   × pp .PParams.maxBlockExUnits     ≥ᵉ cur .PolicyClause.exUnits

-- Finalize one tier's clause and prepend it to that tier's window:
--  1. fill in the capacity fields from the block type, giving p₀ (its `coeff`
--     still carries whatever `currentClause` held and is not yet meaningful);
--  2. prepend p₀ and truncate to windowSize(t), giving the window
--     P = [p₀, p₁, …, p_{k−1}] most recent first;
--  3. set p₀'s `coeff` by applying the controller update to p₁'s `coeff` at the
--     utilisation of P.
--
-- The finalized block joins its OWN window before the update reads it, so the
-- lag is exactly one block: this block's utilisation sets the coefficient that
-- prices the next block.  This matches the reference simulator, which records
-- the block into `_simRecentBlocks` and only then runs `priceStep` over that
-- history (`Sim.hs`, `step`).
--
-- No circularity: `windowBytes` reads only the `size` and `capSize` fields, so
-- p₀'s stale `coeff` cannot influence the value being computed for it.  And
-- determinism does not depend on the ordering — every transaction in the block
-- has been applied by this point, so the utilisation is settled either way.
finalizeTier : PParams → BlockType → SDPolicy → TierNo → List PolicyClause
finalizeTier pp bt sd t =
  let dp   = sd .SDPolicy.diversityPolicy
      cur  = M.fromMaybe εᵖᶜ (lookupᵐ? (sd .SDPolicy.currentClause) t)
      -- (1) p₀ with capacities filled in, coeff not yet set
      p₀   = record cur { capSize    = capSizeOf pp bt t
                        ; capExUnits = capExOf   pp bt t
                        }
      -- (2) the window this block now belongs to
      win  = L.take (windowOf pp t) (p₀ ∷ clausesOf dp t)
      -- (3) update p₁'s coefficient at the window's utilisation.  p₁'s coeff is
      -- `rawCoeff dp t`: the head of the window BEFORE p₀ was prepended.
      cl   = record p₀ { coeff = stepCoeff pp t (rawCoeff dp t) (windowBytes win) }
  in L.take (windowOf pp t) (cl ∷ clausesOf dp t)

updateTiers : PParams → BlockType → SDPolicy → DiversityPolicy
updateTiers pp bt sd =
  fromListᵐ ( (urgentTier   , finalizeTier pp bt sd urgentTier)
            ∷ (standardTier , finalizeTier pp bt sd standardTier)
            ∷ [] )

-- Ranking Blocks seen since a certificate, after this block. A certified EB is
-- reached only via the certificate rule in BBODY, so processing one means a
-- certificate was just accepted: reset. A non-certificate Ranking Block
-- increments.
bumpRbs : BlockType → ℕ → ℕ
bumpRbs EB _ = 0
bumpRbs RB n = suc n

private variable
  sd sd' : SDPolicy
  pp : PParams
  bt : BlockType

-- Diversity policy update rule: the CIP's "additional post-transaction-application
-- validation", run once per payload-bearing block.
--  1. check the block qualifies (RB limits, or the EB announcement threshold);
--  2. fill in each tier's capacities and prepend the finalized clause to that
--     tier's window, then set its coefficient from the windowed utilisation —
--     the block is in its own window (see `finalizeTier`);
--  3. update the age-escape counter;
--  4. reset `currentClause` so it can accumulate the next block's totals.
data _⊢_⇀⦇_,DIVUP⦈_ : PParams × BlockType → SDPolicy → ⊤ → SDPolicy → Type where

  DIVUP-r :
    let open SDPolicy sd
        dp' = updateTiers pp bt sd
        n'  = bumpRbs bt rbsSinceCert
    in
    ∙ sdChecks pp sd bt
      ────────────────────────────────
      (pp , bt) ⊢ ⟦ currentClause , diversityPolicy , rbsSinceCert ⟧ˢᵈᵖ ⇀⦇ tt ,DIVUP⦈ ⟦ ∅ᵐ , dp' , n' ⟧ˢᵈᵖ
```
-->

