{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Interface.HasLedgerField
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Certs govStructure
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Gov txs
open import Ledger.Chain txs abs
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs

open import Prelude
open import Ledger.Prelude

-- Accessors for various parts of a chain state.
-- These are especially useful for simplifying statements of properties.

record HasCertState {a} (A : Type a) : Type a where
  field getCertState : A → CertState

record HasDeposits {a} (A : Type a) : Type a where
  field getDeposits : A → Deposits

record HasDState {a} (A : Type a) : Type a where
  field getDState : A → DState

record HasEnactState {a} (A : Type a) : Type a where
  field getEnactState : A → EnactState

record HasEpochState {a} (A : Type a) : Type a where
  field getEpochState : A → EpochState

record HasGovState {a} (A : Type a) : Type a where
  field getGovState : A → GovState

record HasLastEpoch {a} (A : Type a) : Type a where
  field getLastEpoch : A → Epoch

record HasLState {a} (A : Type a) : Type a where
  field getLState : A → LState

record HasPParams {a} (A : Type a) : Type a where
  field getPParams : A → PParams

record HasRewards {a} (A : Type a) : Type a where
  field getRewards : A → Credential ⇀ Coin

record HasUTxO {a} (A : Type a) : Type a where
  field getUTxO : A → UTxO

record HasUTxOState {a} (A : Type a) : Type a where
  field getUTxOState : A → UTxOState

open HasCertState ⦃...⦄ public
open HasDState ⦃...⦄ public
open HasDeposits ⦃...⦄ public
open HasEnactState ⦃...⦄ public
open HasEpochState ⦃...⦄ public
open HasGovState ⦃...⦄ public
open HasLastEpoch ⦃...⦄ public
open HasLState ⦃...⦄ public
open HasPParams ⦃...⦄ public
open HasRewards ⦃...⦄ public
open HasUTxO ⦃...⦄ public
open HasUTxOState ⦃...⦄ public

instance 
  HasLState-NewEpochState : HasLState NewEpochState
  HasLState-NewEpochState .getLState = EpochState.ls ∘ NewEpochState.epochState

  HasGovState-NewEpochState : HasGovState NewEpochState
  HasGovState-NewEpochState .getGovState = LState.govSt ∘ getLState

  HasRewards-NewEpochState : HasRewards NewEpochState
  HasRewards-NewEpochState .getRewards = DState.rewards ∘ CertState.dState ∘ LState.certState ∘ getLState

  HasEpochState-ChainState : HasEpochState ChainState 
  HasEpochState-ChainState .getEpochState = NewEpochState.epochState ∘ ChainState.newEpochState

  HasEnactState-ChainState : HasEnactState ChainState 
  HasEnactState-ChainState .getEnactState = EpochState.es ∘ getEpochState

  HasPParams-ChainState : HasPParams ChainState
  HasPParams-ChainState .getPParams = proj₁ ∘ EnactState.pparams ∘ getEnactState

  HasLastEpoch-ChainState : HasLastEpoch ChainState
  HasLastEpoch-ChainState .getLastEpoch = NewEpochState.lastEpoch ∘ ChainState.newEpochState

  HasLState-ChainState : HasLState ChainState
  HasLState-ChainState .getLState = EpochState.ls ∘ getEpochState

  HasUTxOState-ChainState : HasUTxOState ChainState
  HasUTxOState-ChainState .getUTxOState = LState.utxoSt ∘ getLState

  HasGovState-ChainState : HasGovState ChainState
  HasGovState-ChainState .getGovState = LState.govSt ∘ getLState

  HasCertState-ChainState : HasCertState ChainState
  HasCertState-ChainState .getCertState = LState.certState ∘ getLState

  HasDState-ChainState : HasDState ChainState
  HasDState-ChainState .getDState = CertState.dState ∘ getCertState

  HasDeposits-ChainState : HasDeposits ChainState
  HasDeposits-ChainState .getDeposits = UTxOState.deposits ∘ getUTxOState

  HasRewards-ChainState : HasRewards ChainState
  HasRewards-ChainState .getRewards = DState.rewards ∘ getDState

  HasUTxO-LState : HasUTxO LState
  HasUTxO-LState .getUTxO = UTxOState.utxo ∘ LState.utxoSt

