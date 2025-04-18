{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Interface.HasLedgerField
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Certs govStructure
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Gov txs
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Utxo txs abs

open import Prelude
open import Ledger.Prelude

-- Accessors for various parts of a chain state.
-- These are especially useful for simplifying statements of properties.
--
-- The first one is a general type class which is sometimes enough for Agda
-- to infer the right types.  Here's an example (it's a function that used
-- to live in Ledger.Properties but is now unnecessary):
--     allDReps : NewEpochState → Credential ⇀ Epoch
--     allDReps = GState.dreps ∘ CertState.gState ∘ LState.certState ∘ getLState
-- is now simply 
--     allDReps = getField
-- but 
--     allDReps = getDReps
-- also works and is clearer and probably preferable outside hidden code blocks.

record HasField {a}{b} (A : Type a) (B : Type b) : Type (a ⊔ˡ b) where
  field getField : B → A

record HasDReps {a} (A : Type a) : Type a where
  field getDReps : A → Credential ⇀ Epoch

record HasRewards {a} (A : Type a) : Type a where
  field getRewards : A → Credential ⇀ Coin

record HasCertState {a} (A : Type a) : Type a where
  field getCertState : A → CertState

record HasDeposits {a} (A : Type a) : Type a where
  field getDeposits : A → Deposits

record HasDState {a} (A : Type a) : Type a where
  field getDState : A → DState

record HasGState {a} (A : Type a) : Type a where
  field getGState : A → GState

record HasPState {a} (A : Type a) : Type a where
  field getPState : A → PState

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

record HasRatifyState {a} (A : Type a) : Type a where
    field getRatifyState : A → RatifyState

record HasUTxO {a} (A : Type a) : Type a where
  field getUTxO : A → UTxO

record HasUTxOState {a} (A : Type a) : Type a where
  field getUTxOState : A → UTxOState

open HasField ⦃...⦄ public
open HasCertState ⦃...⦄ public
open HasDState ⦃...⦄ public
open HasPState ⦃...⦄ public
open HasGState ⦃...⦄ public
open HasDReps ⦃...⦄ public
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

  HasField-Rewards-DState : HasField (Credential ⇀ Coin) DState
  HasField-Rewards-DState .getField = DState.rewards

  HasField-DReps-GState : HasField (Credential ⇀ Epoch) GState
  HasField-DReps-GState .getField = GState.dreps

  HasField-DState-CertState : HasField DState CertState 
  HasField-DState-CertState .getField = CertState.dState

  HasField-GState-CertState : HasField GState CertState 
  HasField-GState-CertState .getField = CertState.gState

  HasField-PState-CertState : HasField PState CertState  
  HasField-PState-CertState .getField = CertState.pState

  HasField-DReps-CertState : HasField (Credential ⇀ Epoch) CertState
  HasField-DReps-CertState .getField = GState.dreps ∘ getField

  HasRewards-CertState : HasRewards CertState
  HasRewards-CertState .getRewards = getField ∘ getField

  HasDState-CertState : HasDState CertState
  HasDState-CertState .getDState = CertState.dState

  HasField-UTxO-UTxOState : HasField UTxO UTxOState 
  HasField-UTxO-UTxOState .getField = UTxOState.utxo

  HasField-Deposits-UTxOState : HasField Deposits UTxOState
  HasField-Deposits-UTxOState .getField = UTxOState.deposits

  HasPParams-EnactState : HasPParams EnactState
  HasPParams-EnactState .getPParams = proj₁ ∘ EnactState.pparams

  HasField-UTxOState-LState : HasField UTxOState LState
  HasField-UTxOState-LState .getField = LState.utxoSt

  HasGovState-LState : HasGovState LState
  HasGovState-LState .getGovState = LState.govSt

  HasCertState-LState : HasCertState LState
  HasCertState-LState .getCertState = LState.certState

  HasField-CertState-LState : HasField CertState LState 
  HasField-CertState-LState .getField = LState.certState

  HasUTxO-LState : HasUTxO LState
  HasUTxO-LState .getUTxO = UTxOState.utxo ∘ getField

  HasDeposits-LState : HasDeposits LState
  HasDeposits-LState .getDeposits = getField ∘ getField

  HasField-LState-EpochState : HasField LState EpochState
  HasField-LState-EpochState .getField = EpochState.ls

  HasDeposits-EpochState : HasDeposits EpochState
  HasDeposits-EpochState .getDeposits = getDeposits ∘ getField

  HasLState-NewEpochState : HasLState NewEpochState
  HasLState-NewEpochState .getLState = EpochState.ls ∘ NewEpochState.epochState

  HasGovState-NewEpochState : HasGovState NewEpochState
  HasGovState-NewEpochState .getGovState = getGovState ∘ getLState

  HasCertState-NewEpochState : HasCertState NewEpochState
  HasCertState-NewEpochState .getCertState = getCertState ∘ getLState

  HasField-DReps-NewEpochState : HasField (Credential ⇀ Epoch) NewEpochState 
  HasField-DReps-NewEpochState .getField = getField ∘ getCertState

  HasField-EpochState-NewEpochState : HasField EpochState NewEpochState 
  HasField-EpochState-NewEpochState .getField = NewEpochState.epochState

  HasDReps-NewEpochState : HasDReps NewEpochState 
  HasDReps-NewEpochState .getDReps = getField ∘ getCertState

  HasRewards-NewEpochState : HasRewards NewEpochState
  HasRewards-NewEpochState .getRewards = getRewards ∘ getCertState

  HasField-Rewards-NewEpochState : HasField (Credential ⇀ Coin) NewEpochState 
  HasField-Rewards-NewEpochState .getField = DState.rewards ∘ getDState ∘ getCertState

  HasField-LastEpoch-NewEpochState : HasField Epoch NewEpochState
  HasField-LastEpoch-NewEpochState .getField = NewEpochState.lastEpoch

  HasField-NewEpochState-ChainState : HasField NewEpochState ChainState
  HasField-NewEpochState-ChainState .getField = ChainState.newEpochState

  HasEpochState-ChainState : HasEpochState ChainState 
  HasEpochState-ChainState .getEpochState = getField ∘ getField

  HasEnactState-ChainState : HasEnactState ChainState 
  HasEnactState-ChainState .getEnactState = EpochState.es ∘ getEpochState

  HasPParams-ChainState : HasPParams ChainState
  HasPParams-ChainState .getPParams = getPParams ∘ getEnactState

  HasLastEpoch-ChainState : HasLastEpoch ChainState
  HasLastEpoch-ChainState .getLastEpoch = getField ∘ ChainState.newEpochState

  HasLState-ChainState : HasLState ChainState
  HasLState-ChainState .getLState = EpochState.ls ∘ getEpochState

  HasUTxOState-ChainState : HasUTxOState ChainState
  HasUTxOState-ChainState .getUTxOState = getField ∘ getLState

  HasCertState-ChainState : HasCertState ChainState
  HasCertState-ChainState .getCertState = LState.certState ∘ getLState

  HasDeposits-ChainState : HasDeposits ChainState
  HasDeposits-ChainState .getDeposits = getField ∘ getUTxOState

  HasRewards-ChainState : HasRewards ChainState
  HasRewards-ChainState .getRewards = getRewards ∘ getCertState


