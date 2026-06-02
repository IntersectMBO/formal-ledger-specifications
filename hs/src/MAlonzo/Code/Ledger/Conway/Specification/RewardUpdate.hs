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
d_MaxLovelaceSupply'7580'_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_428 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_504 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.Slot
d_Slot_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_584 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_586 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
         (coe v0))
-- _.addSlot
d_addSlot_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.epoch
d_epoch_696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_696 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.firstSlot
d_firstSlot_700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2022 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2026 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2106 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002
d_createRUpd_2134 v0 ~v1 = du_createRUpd_2134 v0
du_createRUpd_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002
du_createRUpd_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3444
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3286 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_es_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3292 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900
d_fut_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3294 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956
d_ls_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3290 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3096
d_ss_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3288 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3362 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3360
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274
d_epochState_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  AgdaAny
d_lastEpoch_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3358
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3368 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002
d_ru_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3366 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  ()
d_BlocksMade_2274 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2292 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2342 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3026 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002 ->
  Integer
d_Δf_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3024 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3034
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002 ->
  Integer
d_Δr_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3022 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002 ->
  Integer
d_Δt_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3020 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3032
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  ()
d_RUpdEnv_2374 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2376 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2376
  = C_RUPD'45'Create'45'Reward'45'Update_2386 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2396 |
    C_RUPD'45'Reward'45'Too'45'Early_2404
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2406 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2406
  = C_TICK_2416 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
