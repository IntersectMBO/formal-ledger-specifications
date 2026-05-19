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

-- Definition 2 (Diversity policy clause). Fixed 2 tiers: fastTier (0) and slowTier (1).
record PolicyClause : Type where
  constructor ⟦_⟧ᵖᶜ
  field
    -- blockPercentageSize    : ℕ        -- byte allocation for this tier (use pp.maxBlockSize instead)
    -- blockPercentageExUnits : ExUnits  -- ExUnits allocation for this tier (use pp.maxBlockExUnits instead)
    coeffRange             : ℕ        -- price/delay ratio constraint (γᵢ in paper)

-- tier number (fastTier=0, slowTier=1) → PolicyClause
DiversityPolicy = TierNo ⇀ PolicyClause

record SDPolicy : Type where
  constructor ⟦_,_,_,_⟧ˢᵈᵖ
  field
    diversityPolicy : DiversityPolicy  -- policy clause per tier
    totalSize       : TierNo ⇀ ℕ      -- bytes consumed per tier so far in this block
    totalFees       : TierNo ⇀ Coin   -- fees paid per tier so far in this block
    totalExUnits    : TierNo ⇀ ExUnits -- ExUnits consumed per tier so far in this block

-- Check that the slow tier (1) is within the RB block limits from protocol parameters.
-- For EB blocks no check is performed; for RB blocks totalSize/totalExUnits of the
-- slow tier must not exceed pp.maxBlockSize / pp.maxBlockExUnits.
sdChecks : PParams → SDPolicy → BlockType → Set
sdChecks pp sd EB = ⊤
sdChecks pp sd RB =
  let sz = M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalSize)    slowTier)
      eu = M.fromMaybe εᵉ  (lookupᵐ? (sd .SDPolicy.totalExUnits) slowTier)
  in sz ≤ pp .PParams.maxBlockSize
   × pp .PParams.maxBlockExUnits ≥ᵉ eu

-- TODO: compute updated diversity policy from current policy and per-tier block stats
updateTiers : PParams → SDPolicy → DiversityPolicy
updateTiers pp sd = sd .SDPolicy.diversityPolicy

private variable
  sd sd' : SDPolicy
  pp : PParams
  bt : BlockType

-- Diversity policy update rule.
-- Checks that the current slow tier is within RB block capacity (EB blocks skip),
-- then applies updateTiers, resetting per-block stats.
data _⊢_⇀⦇_,DIVUP⦈_ : PParams × BlockType → SDPolicy → ⊤ → SDPolicy → Type where

  DIVUP-r :
    let open SDPolicy sd
        dp' = updateTiers pp sd
    in
    ∙ sdChecks pp sd bt
      ────────────────────────────────
      (pp , bt) ⊢ ⟦ diversityPolicy , totalSize , totalFees , totalExUnits ⟧ˢᵈᵖ ⇀⦇ tt ,DIVUP⦈ ⟦ dp' , ∅ᵐ , ∅ᵐ , ∅ᵐ ⟧ˢᵈᵖ
```
-->

