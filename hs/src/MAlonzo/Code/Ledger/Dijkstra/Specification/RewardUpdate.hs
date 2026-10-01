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
d_MaxLovelaceSupply'7580'_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1414
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_778 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
         (coe v0))
-- _.Slot
d_Slot_882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_882 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_886 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1414
         (coe v0))
-- _.addSlot
d_addSlot_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1008 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
         (coe v0))
-- _.epoch
d_epoch_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
         (coe v0))
-- _.firstSlot
d_firstSlot_1064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_1064 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
         (coe v0))
-- Ledger.Dijkstra.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2674 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState
d_EpochState_2678 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2756 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.createRUpd
d_createRUpd_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870
d_createRUpd_2786 v0 ~v1 = du_createRUpd_2786 v0
du_createRUpd_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870
du_createRUpd_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_createRUpd_4328
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_acnt_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4178
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.es
d_es_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_es_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4184 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.fut
d_fut_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160
d_fut_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4186
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ls
d_ls_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
d_ls_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4182 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ss
d_ss_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3964
d_ss_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4180 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4252
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4250
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4166
d_epochState_2858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4254
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232 ->
  AgdaAny
d_lastEpoch_2860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4248
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.leiosCommittee
d_leiosCommittee_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1466]
d_leiosCommittee_2862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4260
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4258 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870
d_ru_2866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4256 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  ()
d_BlocksMade_2924 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2942 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2992 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3894
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  Integer
d_Δf_2996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3892
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf'45'nonpositive_3902
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  Integer
d_Δr_3000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3890
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  Integer
d_Δt_3002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3888
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_3004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt'45'nonnegative_3900
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  ()
d_RUpdEnv_3024 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__3026 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__3026
  = C_RUPD'45'Create'45'Reward'45'Update_3036 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_3046 |
    C_RUPD'45'Reward'45'Too'45'Early_3054
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3056 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__3056
  = C_TICK_3066 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4232
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
