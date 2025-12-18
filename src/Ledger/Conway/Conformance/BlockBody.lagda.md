```agda
{-# OPTIONS --safe #-}
open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.BlockBody
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Conformance.Equivalence txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert
open import Ledger.Conway.Conformance.Equivalence.Deposits txs abs
open import Ledger.Conway.Conformance.Ledger txs abs using (_⊢_⇀⦇_,LEDGERS⦈_)

open import Ledger.Conway.Specification.Ledger txs abs
  using (LState)
open import Ledger.Conway.Specification.BlockBody txs abs
  using (BHBody; BHeader; Block) public
open import Ledger.Conway.Specification.Rewards txs abs


BBodyEnv : Type
BBodyEnv = EnactState × Acnt

BBodyState : Type
BBodyState = LState × BlocksMade

incrBlocks : KeyHash → BlocksMade → BlocksMade
incrBlocks hk b = b ∪⁺ singletonᵐ hk 1

data _⊢_⇀⦇_,BBODY⦈_
  : BBodyEnv → BBodyState → Block → BBodyState → Type where

  BBODY-Block-Body : ∀ {acnt ls lsᶜ' b block es} →
    let
      open BHeader
      open BHBody
      open Block
      open EnactState
      txs = block .ts
      bhb = block .bheader .bhbody
      hk = hash (bhb .bvkcold)
      pp = PParamsOf es
      Γ  = ⟦ bhb .slot , ∣ es .constitution ∣ , pp , es , TreasuryOf acnt ⟧
      lsᶜ = certDeposits ls ⊢conv ls
      ls' = conv lsᶜ'

     in
    ∙ block .bBodySize ≡ bhb .hBbsize
    ∙ block .bBodyHash ≡ bhb .bhash
    ∙ Γ ⊢ lsᶜ ⇀⦇ txs ,LEDGERS⦈ lsᶜ'
    ────────────────────────────────
    (es , acnt) ⊢ ls , b ⇀⦇ block ,BBODY⦈ (ls' , incrBlocks hk b)
```
