{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch

-- _.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- _.Slot
d_Slot_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_598 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- _.addSlot
d_addSlot_698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- _.epoch
d_epoch_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- _.firstSlot
d_firstSlot_720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2048 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2052 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2134 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020
d_createRUpd_2162 v0 ~v1 = du_createRUpd_2162 v0
du_createRUpd_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020
du_createRUpd_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3468
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
d_acnt_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3308 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1190
d_es_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3314 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1906
d_fut_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3316 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974
d_ls_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3312 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3114
d_ss_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3310 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3386 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3384
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296
d_epochState_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  AgdaAny
d_lastEpoch_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3382
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3392 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020
d_ru_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3390 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  ()
d_BlocksMade_2302 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2320 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2370 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3044 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020 ->
  Integer
d_Δf_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3042 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3052
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020 ->
  Integer
d_Δr_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3040 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020 ->
  Integer
d_Δt_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3038 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3020 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3050
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  ()
d_RUpdEnv_2402 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2404 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2404
  = C_RUPD'45'Create'45'Reward'45'Update_2414 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2424 |
    C_RUPD'45'Reward'45'Too'45'Early_2432
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2434 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2434
  = C_TICK_2444 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
