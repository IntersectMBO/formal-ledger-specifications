---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/RewardUpdate.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction
module Ledger.Dijkstra.Specification.RewardUpdate
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Rewards txs abs

RUpdEnv : Type
RUpdEnv = BlocksMade × EpochState

data _⊢_⇀⦇_,RUPD⦈_
  : RUpdEnv → Maybe RewardUpdate → Slot → Maybe RewardUpdate → Type where

  RUPD-Create-Reward-Update : ∀ {b es s} {ru' : RewardUpdate} →
    let
      ru' = createRUpd SlotsPerEpochᶜ b es MaxLovelaceSupplyᶜ
    in
    ∙ s > firstSlot (epoch s) + RandomnessStabilisationWindow
    ────────────────────────────────
    (b , es) ⊢ nothing ⇀⦇ s ,RUPD⦈ just ru'

  RUPD-Reward-Update-Exists : ∀ {b es s ru} →
    ────────────────────────────────
    (b , es) ⊢ just ru ⇀⦇ s ,RUPD⦈ just ru

  RUPD-Reward-Too-Early : ∀ {b es s} →
    ∙ ¬ s > firstSlot (epoch s) + RandomnessStabilisationWindow
    ────────────────────────────────
    (b , es) ⊢ nothing ⇀⦇ s ,RUPD⦈ nothing

data _⊢_⇀⦇_,TICK⦈_
  : ⊤ → NewEpochState → Slot → NewEpochState → Type where

  TICK : ∀ {slot nes nes' ru''} →
    let open NewEpochState in
    ∙ tt ⊢ nes ⇀⦇ epoch slot ,NEWEPOCH⦈ nes'
    ∙ (nes .bprev , nes .epochState) ⊢ (nes' .ru) ⇀⦇ slot ,RUPD⦈ ru''
      ────────────────────────────────
      tt ⊢ nes ⇀⦇ slot ,TICK⦈ record nes' { ru = ru'' }
```
