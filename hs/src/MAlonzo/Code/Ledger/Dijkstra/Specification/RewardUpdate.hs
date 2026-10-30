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

module MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate where

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
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction

-- _.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_696 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_782 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- _.Slot
d_Slot_884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_884 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_888 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- _.addSlot
d_addSlot_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1008 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- _.epoch
d_epoch_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- _.firstSlot
d_firstSlot_1064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_1064 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2686 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState
d_EpochState_2690 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2768 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.createRUpd
d_createRUpd_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902
d_createRUpd_2796 v0 ~v1 = du_createRUpd_2796 v0
du_createRUpd_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902
du_createRUpd_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_createRUpd_4394
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
d_acnt_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4244
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.es
d_es_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_es_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.fut
d_fut_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2164
d_fut_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ls
d_ls_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958
d_ls_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4248 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ss
d_ss_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3996
d_ss_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4318
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4316
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232
d_epochState_2868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  AgdaAny
d_lastEpoch_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4314
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.leiosCommittee
d_leiosCommittee_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1466]
d_leiosCommittee_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4326
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4324 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902
d_ru_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4322 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  ()
d_BlocksMade_2934 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2952 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_3002 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_3004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3926
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902 ->
  Integer
d_Δf_3006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3924
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_3008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf'45'nonpositive_3934
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902 ->
  Integer
d_Δr_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3922
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902 ->
  Integer
d_Δt_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3920
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_3014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt'45'nonnegative_3932
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  ()
d_RUpdEnv_3034 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__3036 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__3036
  = C_RUPD'45'Create'45'Reward'45'Update_3046 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_3056 |
    C_RUPD'45'Reward'45'Too'45'Early_3064
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3066 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__3066
  = C_TICK_3076 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
