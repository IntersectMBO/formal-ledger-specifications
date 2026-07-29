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
d_MaxLovelaceSupply'7580'_436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_512 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.Slot
d_Slot_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_592 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_594 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
         (coe v0))
-- _.addSlot
d_addSlot_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.epoch
d_epoch_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.firstSlot
d_firstSlot_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2034 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2038 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2118 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014
d_createRUpd_2146 v0 ~v1 = du_createRUpd_2146 v0
du_createRUpd_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014
du_createRUpd_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3456
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3298 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_es_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900
d_fut_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3306 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
d_ls_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3302 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108
d_ss_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3300 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3374 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3372
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_epochState_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  AgdaAny
d_lastEpoch_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3370
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3380 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014
d_ru_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3378 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_BlocksMade_2286 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2304 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2354 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3038 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  Integer
d_Δf_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3036 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3046
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  Integer
d_Δr_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3034 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  Integer
d_Δt_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3032 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3044
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_RUpdEnv_2386 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2388 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2388
  = C_RUPD'45'Create'45'Reward'45'Update_2398 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2408 |
    C_RUPD'45'Reward'45'Too'45'Early_2416
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2418 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2418
  = C_TICK_2428 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
