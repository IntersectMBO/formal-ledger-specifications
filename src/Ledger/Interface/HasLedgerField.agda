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
  field DRepsOf : A → Credential ⇀ Epoch

record HasRewards {a} (A : Type a) : Type a where
  field RewardsOf : A → Credential ⇀ Coin

record HasCertState {a} (A : Type a) : Type a where
  field CertStateOf : A → CertState

record HasDeposits {a} (A : Type a) : Type a where
  field DepositsOf : A → Deposits

record HasDState {a} (A : Type a) : Type a where
  field DStateOf : A → DState

record HasGState {a} (A : Type a) : Type a where
  field GStateOf : A → GState

record HasPState {a} (A : Type a) : Type a where
  field PStateOf : A → PState

record HasEnactState {a} (A : Type a) : Type a where
  field EnactStateOf : A → EnactState

record HasEpochState {a} (A : Type a) : Type a where
  field EpochStateOf : A → EpochState

record HasGovState {a} (A : Type a) : Type a where
  field GovStateOf : A → GovState

record HasLastEpoch {a} (A : Type a) : Type a where
  field LastEpochOf : A → Epoch

record HasLState {a} (A : Type a) : Type a where
  field LStateOf : A → LState

record HasPParams {a} (A : Type a) : Type a where
  field PParamsOf : A → PParams

record HasRatifyState {a} (A : Type a) : Type a where
  field RatifyStateOf : A → RatifyState

record HasUTxO {a} (A : Type a) : Type a where
  field UTxOOf : A → UTxO

record HasUTxOState {a} (A : Type a) : Type a where
  field UTxOStateOf : A → UTxOState

record Hastxprop {a} (A : Type a) : Type a where
  field txpropOf : A → List GovProposal

record Hastxcerts {a} (A : Type a) : Type a where
  field txcertsOf : A → List DCert

record Hasbody {a} (A : Type a) : Type a where
  field bodyOf : A → TxBody


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
open Hastxprop ⦃...⦄ public
open Hastxcerts ⦃...⦄ public
open Hasbody ⦃...⦄ public

instance 

  Hasbody-Tx : Hasbody Tx
  Hasbody-Tx .bodyOf = Tx.body

  Hastxprop-Tx : Hastxprop Tx
  Hastxprop-Tx .txpropOf = TxBody.txprop ∘ bodyOf

  Hastxcerts-Tx : Hastxcerts Tx
  Hastxcerts-Tx .txcertsOf = TxBody.txcerts ∘ bodyOf

  HasPParams-UTxOEnv : HasPParams UTxOEnv
  HasPParams-UTxOEnv .PParamsOf = UTxOEnv.pparams

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
  HasRewards-CertState .RewardsOf = getField ∘ getField

  HasDState-CertState : HasDState CertState
  HasDState-CertState .DStateOf = CertState.dState

  HasField-UTxO-UTxOState : HasField UTxO UTxOState 
  HasField-UTxO-UTxOState .getField = UTxOState.utxo

  HasField-Deposits-UTxOState : HasField Deposits UTxOState
  HasField-Deposits-UTxOState .getField = UTxOState.deposits

  HasPParams-EnactState : HasPParams EnactState
  HasPParams-EnactState .PParamsOf = proj₁ ∘ EnactState.pparams

  HasField-UTxOState-LState : HasField UTxOState LState
  HasField-UTxOState-LState .getField = LState.utxoSt

  HasGovState-LState : HasGovState LState
  HasGovState-LState .GovStateOf = LState.govSt

  HasCertState-LState : HasCertState LState
  HasCertState-LState .CertStateOf = LState.certState

  HasField-CertState-LState : HasField CertState LState 
  HasField-CertState-LState .getField = LState.certState

  HasUTxO-LState : HasUTxO LState
  HasUTxO-LState .UTxOOf = UTxOState.utxo ∘ getField

  HasDeposits-LState : HasDeposits LState
  HasDeposits-LState .DepositsOf = getField ∘ getField

  HasField-LState-EpochState : HasField LState EpochState
  HasField-LState-EpochState .getField = EpochState.ls

  HasDeposits-EpochState : HasDeposits EpochState
  HasDeposits-EpochState .DepositsOf = DepositsOf ∘ getField

  HasLState-NewEpochState : HasLState NewEpochState
  HasLState-NewEpochState .LStateOf = EpochState.ls ∘ NewEpochState.epochState

  HasGovState-NewEpochState : HasGovState NewEpochState
  HasGovState-NewEpochState .GovStateOf = GovStateOf ∘ LStateOf

  HasCertState-NewEpochState : HasCertState NewEpochState
  HasCertState-NewEpochState .CertStateOf = CertStateOf ∘ LStateOf

  HasField-DReps-NewEpochState : HasField (Credential ⇀ Epoch) NewEpochState 
  HasField-DReps-NewEpochState .getField = getField ∘ CertStateOf

  HasField-EpochState-NewEpochState : HasField EpochState NewEpochState 
  HasField-EpochState-NewEpochState .getField = NewEpochState.epochState

  HasDReps-NewEpochState : HasDReps NewEpochState 
  HasDReps-NewEpochState .DRepsOf = getField ∘ CertStateOf

  HasRewards-NewEpochState : HasRewards NewEpochState
  HasRewards-NewEpochState .RewardsOf = RewardsOf ∘ CertStateOf

  HasField-Rewards-NewEpochState : HasField (Credential ⇀ Coin) NewEpochState 
  HasField-Rewards-NewEpochState .getField = DState.rewards ∘ DStateOf ∘ CertStateOf

  HasField-LastEpoch-NewEpochState : HasField Epoch NewEpochState
  HasField-LastEpoch-NewEpochState .getField = NewEpochState.lastEpoch

  HasField-NewEpochState-ChainState : HasField NewEpochState ChainState
  HasField-NewEpochState-ChainState .getField = ChainState.newEpochState

  HasEpochState-ChainState : HasEpochState ChainState 
  HasEpochState-ChainState .EpochStateOf = getField ∘ getField

  HasEnactState-ChainState : HasEnactState ChainState 
  HasEnactState-ChainState .EnactStateOf = EpochState.es ∘ EpochStateOf

  HasLastEpoch-ChainState : HasLastEpoch ChainState
  HasLastEpoch-ChainState .LastEpochOf = getField ∘ ChainState.newEpochState

  HasLState-ChainState : HasLState ChainState
  HasLState-ChainState .LStateOf = EpochState.ls ∘ EpochStateOf

  HasUTxOState-ChainState : HasUTxOState ChainState
  HasUTxOState-ChainState .UTxOStateOf = getField ∘ LStateOf

  HasCertState-ChainState : HasCertState ChainState
  HasCertState-ChainState .CertStateOf = CertStateOf ∘ LStateOf

  HasDeposits-ChainState : HasDeposits ChainState
  HasDeposits-ChainState .DepositsOf = getField ∘ UTxOStateOf

  HasRewards-ChainState : HasRewards ChainState
  HasRewards-ChainState .RewardsOf = RewardsOf ∘ CertStateOf

  HasPParams-ChainState : HasPParams ChainState
  HasPParams-ChainState .PParamsOf = PParamsOf ∘ EnactStateOf

  
