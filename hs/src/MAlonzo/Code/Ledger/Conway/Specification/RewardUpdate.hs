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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1326
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_494 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1728
         (coe v0))
-- _.Slot
d_Slot_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_574 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_576 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1326
         (coe v0))
-- _.addSlot
d_addSlot_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1728
         (coe v0))
-- _.epoch
d_epoch_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1728
         (coe v0))
-- _.firstSlot
d_firstSlot_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1728
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1984 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_1988 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2068 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962
d_createRUpd_2096 v0 ~v1 = du_createRUpd_2096 v0
du_createRUpd_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962
du_createRUpd_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3406
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3248 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3254 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1876
d_fut_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3256 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904
d_ls_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3252 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3056
d_ss_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3250 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3324 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3322
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236
d_epochState_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  AgdaAny
d_lastEpoch_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3320
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3330 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962
d_ru_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3328 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  ()
d_BlocksMade_2236 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2254 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2304 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2986 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  Integer
d_Δf_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2984 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2994
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  Integer
d_Δr_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2982 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  Integer
d_Δt_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2980 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2992
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  ()
d_RUpdEnv_2336 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2338 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2338
  = C_RUPD'45'Create'45'Reward'45'Update_2348 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2358 |
    C_RUPD'45'Reward'45'Too'45'Early_2366
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2368 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2368
  = C_TICK_2378 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
