---
source_branch: master
source_path: src/Ledger/Conway/Conformance/Epoch.lagda.md
---
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Conformance.Equivalence txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert
open import Ledger.Conway.Conformance.Equivalence.Deposits txs abs
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Conway.Specification.Ratify govStructure
open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Rewards txs abs
import Ledger.Conway.Specification.Epoch txs abs as EpochSpec

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState

record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    bprev       : BlocksMade
    bcur        : BlocksMade
    epochState  : EpochState
    ru          : Maybe RewardUpdate
    pd          : KeyHash ⇀ Coin

instance
  unquoteDecl HasCast-EpochState HasCast-NewEpochState = derive-HasCast
    ( (quote EpochState     , HasCast-EpochState)
    ∷ [ (quote NewEpochState  , HasCast-NewEpochState)])

  EpochStateFromConf : EpochState ⭆ EpochSpec.EpochState
  EpochStateFromConf .convⁱ _ epochState =
    let open EpochState epochState in
    ⟦ acnt , ss , conv ls , es , fut ⟧

  EpochStateToConf : EpochSpec.EpochState ⭆ EpochState
  EpochStateToConf .convⁱ deposits epochSt =
    let open EpochSpec.EpochState epochSt in
    ⟦ acnt , ss , certDeposits ls ⊢conv ls , es , fut ⟧ᵉ'

  NewEpochStateFromConf : NewEpochState ⭆ EpochSpec.NewEpochState
  NewEpochStateFromConf .convⁱ _ newEpochState =
    let open NewEpochState newEpochState in
    ⟦ lastEpoch , bprev , bcur , conv epochState , ru , pd ⟧

  NewEpochStateToConf : EpochSpec.NewEpochState ⭆ NewEpochState
  NewEpochStateToConf .convⁱ deposits newEpochSt =
    let open EpochSpec.NewEpochState newEpochSt in
    ⟦ lastEpoch , bcur , bprev , conv epochState , ru , pd ⟧
```
