<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Specification.RewardUpdate
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude

open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Rewards txs abs
```
-->

# Reward Update Transition

The Reward Update Transition calculates a new `RewardUpdate`{.AgdaDatatype} to
apply in an epoch transition.

The environment consists of the produced blocks and the epoch state. The state
is an optional reward update.

There are three transition cases, one that computes a new reward update, one
that leaves the rewards update unchanged as it has not yet been applied and
finally one that leaves the reward update unchanged as the transition was
started too early.

The signal of the transition rule RUPD is the current slot `s`{.AgdaBound}.

The execution of the transition role is as follows:

* If the current reward update is empty and `s`{.AgdaBound} is greater than the
  sum of the first slot of its epoch and the duration
  `RandomnessStabilisationWindowᶜ`{.AgdaBound}, then a new rewards update is
  calculated and the state is updated.
* If the current reward update is not `nothing`{.AgdaInductiveConstructor}, i.e.
  a reward update has already been calculated but not yet applied, then the
  state is not updated.
* If the current reward update is empty and `s`{.AgdaBound} is less than or
  equal to the sum of the first slot of its epoch and the duration
  `RandomnessStabilisationWindowᶜ`{.AgdaBound}, then the state is not updated.

```agda
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
```


# Chain Tick Transition

The Chain Tick Transition performs some chain level upkeep. The environment
consists of a set of genesis keys, and the state is the epoch specific state
necessary for the `NEWEPOCH`{.AgdaDatatype} transition.

Two transitions are done:

* The `NEWEPOCH`{.AgdaDatatype} transition performs any state change needed if
  it is the first block of a new epoch.
* The `RUPD`{.AgdaDatatype} creates the reward update if it is late enough in
  the epoch. Note that for every block header, either `NEWEPOCH`{.AgdaDatatype}
  or `RUPD`{.AgdaDatatype} will be the identity transition.

```agda
data _⊢_⇀⦇_,TICK⦈_
  : ⊤ → NewEpochState → Slot → NewEpochState → Type where

  TICK : ∀ {slot nes nes' ru''} →
    let open NewEpochState in
    ∙ tt ⊢ nes ⇀⦇ epoch slot ,NEWEPOCH⦈ nes'
    ∙ (nes .bprev , nes .epochState) ⊢ (nes' .ru) ⇀⦇ slot ,RUPD⦈ ru''
      ────────────────────────────────
      tt ⊢ nes ⇀⦇ slot ,TICK⦈ record nes' { ru = ru'' }
```
