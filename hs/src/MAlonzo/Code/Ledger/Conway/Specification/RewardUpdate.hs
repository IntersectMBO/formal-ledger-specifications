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
d_MaxLovelaceSupply'7580'_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_418 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_496 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
         (coe v0))
-- _.Slot
d_Slot_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_578 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_580 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
         (coe v0))
-- _.addSlot
d_addSlot_672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
         (coe v0))
-- _.epoch
d_epoch_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
         (coe v0))
-- _.firstSlot
d_firstSlot_698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2018 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2022 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2102 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996
d_createRUpd_2130 v0 ~v1 = du_createRUpd_2130 v0
du_createRUpd_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996
du_createRUpd_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3440
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3282 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3288 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1910
d_fut_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3290 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2932
d_ls_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3286 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3090
d_ss_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3284 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3358 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3356
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270
d_epochState_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  AgdaAny
d_lastEpoch_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3354
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3364 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996
d_ru_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3362 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2288 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2338 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3020 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996 ->
  Integer
d_Δf_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3018 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3028
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996 ->
  Integer
d_Δr_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3016 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996 ->
  Integer
d_Δt_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3014 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3026
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  ()
d_RUpdEnv_2370 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2372 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2372
  = C_RUPD'45'Create'45'Reward'45'Update_2384 MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996
                                              AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2394 |
    C_RUPD'45'Reward'45'Too'45'Early_2402
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2404 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2404
  = C_TICK_2414 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
