<!--
```agda
{-# OPTIONS --safe #-}

open import Data.Nat.Properties           using (+-0-monoid)
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
  constructor ⟦_,_⟧ᵖᶜ
  field
    blockPercentage : ℕ        -- percentage of max block space and each kind of ExUnits allowed for the tier (paper : percentage of txs (in (0,1])
    coeffRange : ℕ          -- coefficients in this tier (paper : threshold price/value (in (0,1]))

-- how many blocks/slots ago was this diversity policy posted -> (min delay -> PolicyClause)
-- min delay means "wait this number of blocks until maturity (paper delay (in R≥1))"  
DiversityPolicy = WaitTime ⇀ (WaitTime ⇀ PolicyClause)

record SDPolicy : Type where
  constructor ⟦_,_,_,_,_⟧ˢᵈᵖ
  field
    diversityPolicy : DiversityPolicy             -- diversity policy clauses
    pending : TxId ⇀ WaitTime        -- txs waiting to be processed together with how long they've been waiting
    totalSize : WaitTime ⇀ ℕ                        -- space occupied in each tier by txs processed so far
    totalFees : WaitTime ⇀ Coin                     -- total fees paid (separated by tier) by txs processed so far
    totalExUnits : WaitTime ⇀ ExUnits                   -- total ExUnits consumed (separated by tier) by txs processed so far
    -- amount tx is willing to wait

-- TODO what is the max delay across all valid policies - can we assume that it changes rarely and can be treated as constant?
-- clean up diversity policies that have been around for more than the max delay
-- increments all block/slot time passed by 1
cleanDP : PParams → DiversityPolicy → DiversityPolicy
cleanDP pp dp =
  let maxD = pp .PParams.maxDelay
  -- keep entries whose age (after +1) is still ≤ maxDelay, then bump all ages by 1
  in mapKeys suc (filterKeys (λ age → suc age ≤ maxD) dp)

-- Paper Mechanism 2, function UpdateTierSizes (lines 20–29).
-- pp         : PParams  (maxTiers = k, addTierPrice, removeTierPrice)
-- oldInner   : WaitTime ⇀ PolicyClause — current inner policy;
--              keys are delays (dᵢ), blockPercentage fields are tier sizes (Bᵢ)
-- totalFees  : WaitTime ⇀ Coin — fees accumulated per tier in the current block;
--              the last (max-key) tier's entry proxies p'ₘ from the paper
-- Returns the updated inner map (possibly one fewer/more tier, first and last Bᵢ adjusted)
updateTierSizes : PParams → (WaitTime ⇀ PolicyClause) → (WaitTime ⇀ Coin) → (WaitTime ⇀ PolicyClause)
updateTierSizes pp oldInner totalFees = go (setToList (dom oldInner))
  where
    go : List WaitTime → WaitTime ⇀ PolicyClause
    go []          = oldInner
    go ks@(k ∷ _) =
      let
        minKey   = foldr _⊓_ k ks         -- delay of tier 1 (lowest)
        maxKey   = foldr _⊔_ k ks         -- delay of tier m (highest)
        m        = length ks
        -- p'ₘ in the paper: fees at the last tier
        lastFees = M.fromMaybe 0 (lookupᵐ? totalFees maxKey)
        lastPC   = M.fromMaybe ⟦ 0 , 0 ⟧ᵖᶜ (lookupᵐ? oldInner maxKey)
        firstPC  = M.fromMaybe ⟦ 0 , 0 ⟧ᵖᶜ (lookupᵐ? oldInner minKey)
        bLast    = lastPC  .PolicyClause.blockPercentage
        bFirst   = firstPC .PolicyClause.blockPercentage
        -- Lines 21–24: m' = m - 1; B'₁ = B₁ + Bₘ  (remove last tier)
        removedInner =
          ❴ minKey , ⟦ bFirst + bLast , firstPC .PolicyClause.coeffRange ⟧ᵖᶜ ❵ᵐ
          ∪ˡ (oldInner ∣ ❴ maxKey ❵ ᶜ)
        -- Lines 25–28: m' = m + 1; B'ₘ' = αₘ'; B'₁ = B₁ - αₘ'  (add new tier)
        -- Line 10: d'ₘ' = (m' - 1) × d'ₘ'-1 = m × maxKey
        newTierPct = pp .PParams.newTierSize   -- αₘ' from paper params
        newDelay   = m * maxKey
        addedInner =
          ❴ minKey , ⟦ bFirst ∸ newTierPct , firstPC .PolicyClause.coeffRange ⟧ᵖᶜ ❵ᵐ
          ∪ˡ (oldInner ∣ ❴ minKey ❵ ᶜ)
          ∪ˡ ❴ newDelay , ⟦ newTierPct , 0 ⟧ᵖᶜ ❵ᵐ
      in
      if ⌊ 1 <? m ⌋ ∧ ⌊ lastFees <? pp .PParams.removeTierPrice ⌋
      then removedInner
      else if ⌊ m <? pp .PParams.maxTiers ⌋ ∧ ⌊ pp .PParams.addTierPrice <? lastFees ⌋
      then addedInner
      else oldInner

-- Single step of UpdateDelays (Mechanism 2, lines 14–18).
-- curDelay  : dᵢ₊₁ — current delay of tier i+1 (its wait-time key)
-- prevDelay : d'ᵢ  — already-updated delay of tier i (for line 18 constraint)
-- priceI    : p'ᵢ  — updated price (fees) of tier i, looked up by original key
-- priceI1   : p'ᵢ₊₁ — updated price of tier i+1
-- coeff     : γᵢ  — min price/delay ratio; from PolicyClause.coeffRange of tier i
-- pDecrease (line 17) is treated deterministically: delay always decreases when applicable
computeNewDelay : (curDelay prevDelay priceI priceI1 coeff : ℕ) → WaitTime
computeNewDelay curDelay prevDelay priceI priceI1 coeff =
  let -- Lines 14–17: if p'ᵢ₊₁ < γᵢ × p'ᵢ prices are too close → increase delay
      d' = if ⌊ priceI1 <? coeff * priceI ⌋
           then suc curDelay   -- line 15: d'ᵢ₊₁ = dᵢ₊₁ + 1
           else curDelay ∸ 1   -- line 17: d'ᵢ₊₁ = dᵢ₊₁ - 1
  -- Line 18: d'ᵢ₊₁ = max(d'ᵢ₊₁, γᵢ × d'ᵢ)  ensure delay constraint
  in d' ⊔ (coeff * prevDelay)

-- step origPrev newPrev remaining
-- origPrev : original key of tier i (for fee / coeff lookup in inner / fees)
-- newPrev  : d'ᵢ (updated delay of tier i, used for the max constraint)
step : (WaitTime ⇀ PolicyClause) → (WaitTime ⇀ Coin) → WaitTime → WaitTime → List (WaitTime × PolicyClause) → List (WaitTime × PolicyClause)
step inner fees _        _       []                        = []
step inner fees origPrev newPrev ((dᵢ₁ , pcᵢ₁) ∷ rest) =
  let pᵢ    = M.fromMaybe 0 (lookupᵐ? fees origPrev)
      pᵢ₁   = M.fromMaybe 0 (lookupᵐ? fees dᵢ₁)
      γᵢ    = M.fromMaybe ⟦ 0 , 0 ⟧ᵖᶜ (lookupᵐ? inner origPrev) .PolicyClause.coeffRange
      dᵢ₁'  = computeNewDelay dᵢ₁ newPrev pᵢ pᵢ₁ γᵢ
  in (dᵢ₁' , pcᵢ₁) ∷ step inner fees dᵢ₁ dᵢ₁' rest

-- Full UpdateDelays (Mechanism 2, lines 12–19):
-- iterates over the inner policy in sorted wait-time order, updating each tier's delay.
-- Fee lookups always use the original wait-time keys; d'ᵢ is threaded for the constraint.
-- setToList (inner ˢ) is assumed to yield entries sorted by wait-time key.
updateDelays : (WaitTime ⇀ PolicyClause) → (WaitTime ⇀ Coin) → (WaitTime ⇀ PolicyClause)
updateDelays inner fees = fromListᵐ (go (setToList (inner ˢ)))
  where
    go : List (WaitTime × PolicyClause) → List (WaitTime × PolicyClause)
    go []                   = []
    go ((d₁ , pc₁) ∷ rest) = (d₁ , pc₁) ∷ step inner fees d₁ d₁ rest  -- tier 1: delay unchanged

-- Paper Mechanism 2, function updateTierParameters (lines 1–11).
-- Applies updateDelays (lines 4–5) then updateTierSizes (lines 6–7).
-- Note: the paper guards each on (t mod dFreq = 0) and (t mod tFreq = 0) respectively;
-- the block counter t is not yet tracked in SDPolicy, so both updates are applied every block.
updateTierParameters : PParams → (WaitTime ⇀ PolicyClause) → (WaitTime ⇀ Coin) → (WaitTime ⇀ PolicyClause)
updateTierParameters pp inner fees =
  let inner₁ = updateDelays      inner  fees   -- lines 4–5: update delays
      inner₂ = updateTierSizes pp inner₁ fees   -- lines 6–7: update tier count and sizes
  in inner₂

-- Compute a new policy clause using PPs, the diversity policy with outer key 0, and
-- data about tier fullness in the block as recorded in sd.
-- Computation according to mechanism 2 on page 9 in tiered.pdf.
-- Returns a 1-entry map with (outer) key 0 and value = updated (waitTime, policyClause) pairs.
updateSD : PParams → SDPolicy → DiversityPolicy
updateSD pp sd =
  let open SDPolicy sd
      oldInner = M.fromMaybe ∅ᵐ (lookupᵐ? diversityPolicy 0)
      newInner = updateTierParameters pp oldInner totalFees
  in ❴ 0 , newInner ❵ᵐ

-- scale an ExUnits value by a natural number via iterated addition
scaleExUnits : ℕ → ExUnits → ExUnits
scaleExUnits 0       _ = Monoid.ε (ExUnit-CommutativeMonoid .CommutativeMonoid.monoid)
scaleExUnits (suc n) x = x ◇ scaleExUnits n x

-- check that the tiers current diversity policy (i.e one indexed by wait time 1) is satisfied by block's tiers and can be updated
-- i.e. for waitTime w in each PolicyClause "diversityPolicy sd" (taken at WaitTime 0), the values of "totalSize sd" and "totalExUnits sd" corresponding to the key w
-- should not exceed the blockPercentage allowed by the policy clause
-- do not check anything about coeffRange
sdChecks : PParams → SDPolicy → Set
sdChecks pp sd = checkAll (lookupᵐ? (sd .SDPolicy.diversityPolicy) 1)
  where
    checkClause : WaitTime → PolicyClause → Set
    checkClause w pc =
      let pct = pc .PolicyClause.blockPercentage
          sz  = M.fromMaybe 0      (lookupᵐ? (sd .SDPolicy.totalSize)     w)
          eu  = M.fromMaybe (Monoid.ε (ExUnit-CommutativeMonoid .CommutativeMonoid.monoid)) (lookupᵐ? (sd .SDPolicy.totalExUnits)   w)
      -- size check:    totalSize[w] * 100 ≤ blockPercentage * maxBlockSize
      -- ExUnits check: blockPercentage * maxBlockExUnits ≥ᵉ 100 * totalExUnits[w]
      in sz * 100 ≤ pct * pp .PParams.maxBlockSize
       × scaleExUnits pct (pp .PParams.maxBlockExUnits) ≥ᵉ scaleExUnits 100 eu
    checkFrom : ℕ → (WaitTime ⇀ PolicyClause) → Set
    checkFrom 0             inner = case lookupᵐ? inner 0 of λ where
                                      nothing   → ⊤
                                      (just pc) → checkClause 0 pc
    checkFrom (suc n) inner = checkFrom n inner
                                  × (case lookupᵐ? inner (suc n) of λ where
                                       nothing   → ⊤
                                       (just pc) → checkClause (suc n) pc)

    checkAll : Maybe (WaitTime ⇀ PolicyClause) → Set
    checkAll nothing      = ⊤
    checkAll (just inner) = checkFrom (pp .PParams.maxDelay) inner

-- clean up pending txs that have been pending for more than the max delay
-- increment all wait times by 1
-- include incoming IDs with wait time 0
updatePending : PParams → (TxId ⇀ WaitTime) → ℙ TxId → (TxId ⇀ WaitTime)
updatePending pp m incoming =
  let maxD = pp .PParams.maxDelay
      -- remove entries that have waited ≥ maxDelay, then bump remaining by 1
      bumped  = mapValues suc (m ∣^' (λ w → suc w ≤ maxD))
      -- new arrivals start at wait time 0 (existing entries take priority via ∪ˡ)
      newOnes = setToMap (mapˢ (λ id → (id , 0)) incoming)
  in bumped ∪ˡ newOnes

-- Update-EIP1559(p, f)
-- price fullness targetLoad = price * (1000 + 125 * (fullness - targetLoad) / targetLoad)

-- updateTierParameters : ℕ → SDPolicy → WaitTime → (WaitTime ⇀ PolicyClause)
-- updateTierParameters noTiers ⟦ dp , pn , ts , tf, tex ⟧ˢᵈᵖ curBl = 


private variable
  incomingIds : ℙ TxId
  sd sd' : SDPolicy
  pp : PParams

-- Diversity policy and pending txs update rule
-- input is IDs of txs in the block with the tier info
data _⊢_⇀⦇_,DIVUP⦈_ : PParams → SDPolicy → ℙ TxId → SDPolicy → Type where

  DIVUP-r :
    let open SDPolicy sd
    in
    ∙ sdChecks pp sd 
      ────────────────────────────────
      pp ⊢ ⟦ diversityPolicy , pending , totalSize , totalFees , totalExUnits ⟧ˢᵈᵖ ⇀⦇ incomingIds ,DIVUP⦈ ⟦ (cleanDP pp diversityPolicy) ∪ˡ (updateSD pp sd) , updatePending pp pending incomingIds , ∅ᵐ , ∅ᵐ , ∅ᵐ ⟧ˢᵈᵖ
```
-->

