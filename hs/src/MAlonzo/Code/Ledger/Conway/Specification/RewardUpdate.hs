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
d_MaxLovelaceSupply'7580'_438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_438 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- _.Slot
d_Slot_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_594 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_596 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- _.addSlot
d_addSlot_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- _.epoch
d_epoch_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- _.firstSlot
d_firstSlot_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2038 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2042 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2124 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010
d_createRUpd_2152 v0 ~v1 = du_createRUpd_2152 v0
du_createRUpd_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010
du_createRUpd_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3458
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3298 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_es_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1896
d_fut_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3306 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964
d_ls_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3302 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104
d_ss_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3300 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3376 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3374
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_epochState_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  AgdaAny
d_lastEpoch_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3372
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3382 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010
d_ru_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3380 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  ()
d_BlocksMade_2292 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2310 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2360 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3034 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010 ->
  Integer
d_Δf_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3032 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3042
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010 ->
  Integer
d_Δr_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3030 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010 ->
  Integer
d_Δt_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3028 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3040
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  ()
d_RUpdEnv_2392 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2394 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2394
  = C_RUPD'45'Create'45'Reward'45'Update_2404 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2414 |
    C_RUPD'45'Reward'45'Too'45'Early_2422
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2424 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2424
  = C_TICK_2434 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
