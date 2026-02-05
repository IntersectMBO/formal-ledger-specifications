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

-- Definition 2 (Diversity policy)
record PolicyClause : Type where
  field
    blockSpace : ℕ       -- max amount of block space allowed for tier (paper : percentage of transactions (in (0,1])
    waitBlocks : ℕ     -- wait this number of blocks + 1 until maturity (paper delay (in R≥1))
    coeffRange : ℕ × ℕ       -- coefficients in this tier (paper : threshold price/value (in (0,1]))

DiversityPolicy : Type
DiversityPolicy = Ix ⇀ PolicyClause

record SDPolicy : Type where
  constructor ⟦_,_⟧ˢᵈᵖ
  field
    diversityPolicy : DiversityPolicy
    maturing : TxId ⇀ Ix 

-- TODO define this correctly
-- check that index in maturing of txid is right for the tier of the transaction and transaction has correct tier coefficient
checkTiers : TxId → TierCoeff → TxTiers → (TxId ⇀ Ix) → DiversityPolicy → Set
checkTiers txid tier tiers m dp = ⊤

-- TODO define this 
-- update diversity policy 
updateSD : DiversityPolicy → TxTiers → DiversityPolicy
updateSD sd tiers = sd

-- TODO define
-- check that current diversity policy is satisfied by block's tiers 
sdChecks : DiversityPolicy → TxTiers → Set
sdChecks sd tiers = ⊤

-- TODO define
-- add all incoming txs to m with ix = 0
-- increment all ixs by 1 in m
-- remove all txid in trs from m
updateMaturing : (TxId ⇀ Ix) → (ℙ TxId) → TxTiers → (TxId ⇀ Ix)
updateMaturing m incoming trs = m -- (m ∪ˡ (mkMap)) (mkMaturing trs))

-- TODO
-- check that incoming are not in maturing 
-- check that txs in tiers (except top tier) are in maturing
chkMaturing : (TxId ⇀ Ix) → (ℙ TxId) → TxTiers → Set
chkMaturing maturing incomingIds tiers  = ⊤

private variable
  incomingIds : ℙ TxId
  tiers : TxTiers
  sd sd' : SDPolicy

-- Diversity policy and maturing transactions update rule
data _⊢_⇀⦇_,DIVUP⦈_ : Type → SDPolicy → ((TxTiers) × (ℙ TxId)) → SDPolicy → Type where

  DIVUP-r :
    let open SDPolicy sd
    in
    ∙ sdChecks diversityPolicy tiers
    ∙ chkMaturing maturing incomingIds tiers 
      ────────────────────────────────
      ⊤ ⊢ sd ⇀⦇ (tiers , incomingIds) ,DIVUP⦈ ⟦ updateSD diversityPolicy tiers , updateMaturing maturing incomingIds tiers ⟧ˢᵈᵖ
```
-->