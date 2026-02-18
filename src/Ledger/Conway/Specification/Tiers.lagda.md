<!--
```agda
{-# OPTIONS --safe #-}

open import Algebra              using (CommutativeMonoid)
open import Data.Nat.Properties  using (+-0-monoid)
import Data.Maybe as M
import Data.Sum.Relation.Unary.All as Sum
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



-- Definition 2 (Diversity policy clause)
record PolicyClause : Type where
  constructor ⟦_,_,_,_⟧ᵖᶜ
  field
    blockSpaceSize : ℕ        -- max amount of block space allowed for tier (paper : percentage of txs (in (0,1])
    blockPercentageFees : ℕ       -- max percentage of total block fee for tier (paper : percentage of txs (in (0,1])
    waitTime : WaitTime     -- wait this number of blocks until maturity (paper delay (in R≥1)) TODO should this be slots?
    coeffRange : ℕ          -- coefficients in this tier (paper : threshold price/value (in (0,1]))

-- how many blocks/slots ago was this diversity policy posted -> PolicyClause
DiversityPolicy = WaitTime ⇀ PolicyClause

record SDPolicy : Type where
  constructor ⟦_,_,_,_⟧ˢᵈᵖ
  field
    diversityPolicy : DiversityPolicy             -- diversity policy clauses
    pending : TxId ⇀ WaitTime        -- txs waiting to be processed together with how long they've been waiting
    totalSize : TierNo ⇀ ℕ                        -- space occupied in each tier by txs processed so far
    totalFees : TierNo ⇀ Coin                     -- total fees paid (separated by tier) by txs processed so far

-- TODO define this 
-- TODO what is the max delay (across all valid policies)?
-- clean up diversity policies that have been around for more than the max delay
-- increments all block/slot time passed by 1
cleanDP : DiversityPolicy → DiversityPolicy
cleanDP dp = dp

-- TODO define this 
-- compute a new policy clause plc based on PPs, current policy clauses, and data about tx tiers in this block
-- returns 1-entry map (currentTime , plc)
updateSD : PParams → SDPolicy → TxId ⇀ TxTier → DiversityPolicy
updateSD pp sd trxs = (sd .SDPolicy.diversityPolicy)

-- TODO define
-- check that current diversity policy is satisfied by block's tiers and can be updated
sdChecks : PParams → SDPolicy → TxId ⇀ TxTier → Set
sdChecks pp sd trxs = ⊤

-- TODO define
-- clean up pending txs that have been waiting for more than the max delay
-- increment all wait times by 1
-- include incoming IDs with wait times 0
updatePending : (TxId ⇀ WaitTime) → ℙ TxId → (TxId ⇀ WaitTime)
updatePending m incoming  = m 

private variable
  incomingIds : ℙ TxId
  sd sd' : SDPolicy
  pp : PParams
  trxs : TxId ⇀ TxTier

-- Diversity policy and pending txs update rule
-- input is IDs of txs in the block with the tier info
data _⊢_⇀⦇_,DIVUP⦈_ : PParams → SDPolicy → ((TxId ⇀ TxTier) × ℙ TxId) → SDPolicy → Type where

  DIVUP-r :
    let open SDPolicy sd
    in
    ∙ sdChecks pp sd trxs
      ────────────────────────────────
      pp ⊢ ⟦ diversityPolicy , pending , totalSize , totalFees ⟧ˢᵈᵖ ⇀⦇ (trxs , incomingIds) ,DIVUP⦈ ⟦ (cleanDP diversityPolicy) ∪ˡ (updateSD pp sd trxs) , updatePending pending incomingIds , totalSize , totalFees ⟧ˢᵈᵖ
```


    -- Tier configuration
    k : ℕ  -- Maximum number of tiers
    
    -- Update frequencies
    dFreq : ℕ  -- How often to update delays
    tFreq : ℕ  -- How often to update tier count
    
    -- EIP-1559 parameters
    targetLoad : ℝ  -- For Update-EIP1559 (typically 0.5)
    
    -- Tier management thresholds
    addTierPrice : ℝ  -- Threshold to add new tier
    removeTierPrice : ℝ  -- Threshold to remove tier
    

-->