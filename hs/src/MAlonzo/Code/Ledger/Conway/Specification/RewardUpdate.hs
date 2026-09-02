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
d_MaxLovelaceSupply'7580'_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1398
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_538 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1842
         (coe v0))
-- _.Slot
d_Slot_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_618 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_620 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1398
         (coe v0))
-- _.addSlot
d_addSlot_714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_714 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1842
         (coe v0))
-- _.epoch
d_epoch_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_732 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1842
         (coe v0))
-- _.firstSlot
d_firstSlot_736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_736 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1842
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2066 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2070 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2152 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038
d_createRUpd_2180 v0 ~v1 = du_createRUpd_2180 v0
du_createRUpd_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038
du_createRUpd_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3486
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3326 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_es_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3332 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924
d_fut_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3334 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
d_ls_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3330 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132
d_ss_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3328 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3404 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3402
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_epochState_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  AgdaAny
d_lastEpoch_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3400
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3410 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038
d_ru_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3408 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  ()
d_BlocksMade_2320 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2338 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2388 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3062 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  Integer
d_Δf_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3060 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3070
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  Integer
d_Δr_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3058 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  Integer
d_Δt_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3056 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3068
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  ()
d_RUpdEnv_2420 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2422 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2422
  = C_RUPD'45'Create'45'Reward'45'Update_2432 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2442 |
    C_RUPD'45'Reward'45'Too'45'Early_2450
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2452 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2452
  = C_TICK_2462 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
