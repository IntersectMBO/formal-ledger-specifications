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
  constructor ⟦_,_,_⟧ᵖᶜ
  field
    blockPercentageSize    : ℕ        -- byte allocation for this tier
    blockPercentageExUnits : ExUnits  -- ExUnits allocation for this tier
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

-- Check that the slow tier (1) is within its allocated size and ExUnits.
-- The fast tier (0) may be overfull and is not checked.
sdChecks : PParams → SDPolicy → Set
sdChecks pp sd =
  case lookupᵐ? (sd .SDPolicy.diversityPolicy) slowTier of λ where
    nothing   → ⊤
    (just pc) →
      let sz = M.fromMaybe 0   (lookupᵐ? (sd .SDPolicy.totalSize)    slowTier)
          eu = M.fromMaybe εᵉ  (lookupᵐ? (sd .SDPolicy.totalExUnits) slowTier)
      in sz ≤ pc .PolicyClause.blockPercentageSize
       × pc .PolicyClause.blockPercentageExUnits ≥ᵉ eu

-- TODO: compute updated diversity policy from current policy and per-tier block stats
updateTiers : PParams → SDPolicy → DiversityPolicy
updateTiers pp sd = sd .SDPolicy.diversityPolicy

private variable
  sd sd' : SDPolicy
  pp : PParams

-- Diversity policy update rule.
-- Checks that the current slow tier is within capacity, then applies updateTiers.
-- The resulting policy must exactly partition maxBlockSize and maxBlockExUnits
-- between the two tiers.
data _⊢_⇀⦇_,DIVUP⦈_ : PParams → SDPolicy → ⊤ → SDPolicy → Type where

  DIVUP-r :
    let open SDPolicy sd
        dp' = updateTiers pp sd
        sz0 = M.fromMaybe 0   (M.map PolicyClause.blockPercentageSize    (lookupᵐ? dp' fastTier))
        sz1 = M.fromMaybe 0   (M.map PolicyClause.blockPercentageSize    (lookupᵐ? dp' slowTier))
        eu0 = M.fromMaybe εᵉ  (M.map PolicyClause.blockPercentageExUnits (lookupᵐ? dp' fastTier))
        eu1 = M.fromMaybe εᵉ  (M.map PolicyClause.blockPercentageExUnits (lookupᵐ? dp' slowTier))
    in
    ∙ sdChecks pp sd
    ∙ sz0 + sz1 ≡ pp .PParams.maxBlockSize
    ∙ eu0 ◇ eu1 ≡ pp .PParams.maxBlockExUnits
      ────────────────────────────────
      pp ⊢ ⟦ diversityPolicy , totalSize , totalFees , totalExUnits ⟧ˢᵈᵖ ⇀⦇ tt ,DIVUP⦈ ⟦ dp' , ∅ᵐ , ∅ᵐ , ∅ᵐ ⟧ˢᵈᵖ
```
-->

