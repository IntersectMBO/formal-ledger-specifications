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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction

-- _.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_762 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
         (coe v0))
-- _.Slot
d_Slot_866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_866 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
         (coe v0))
-- _.addSlot
d_addSlot_984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_984 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
         (coe v0))
-- _.epoch
d_epoch_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
         (coe v0))
-- _.firstSlot
d_firstSlot_1038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_1038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
         (coe v0))
-- Ledger.Dijkstra.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2594 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState
d_EpochState_2598 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2676 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.createRUpd
d_createRUpd_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710
d_createRUpd_2704 v0 ~v1 = du_createRUpd_2704 v0
du_createRUpd_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710
du_createRUpd_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_createRUpd_4146
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4000
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.es
d_es_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_es_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4006 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.fut
d_fut_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976
d_fut_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4008
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ls
d_ls_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3762
d_ls_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4004 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ss
d_ss_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3804
d_ss_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4002 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4072
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4070
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4054 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3988
d_epochState_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4074
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4054 ->
  AgdaAny
d_lastEpoch_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4068
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4078 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4054 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710
d_ru_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4076 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  ()
d_BlocksMade_2842 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2860 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2910 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3734
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710 ->
  Integer
d_Δf_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3732
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf'45'nonpositive_3742
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710 ->
  Integer
d_Δr_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3730
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710 ->
  Integer
d_Δt_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3728
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3710 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt'45'nonnegative_3740
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  ()
d_RUpdEnv_2942 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2944 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2944
  = C_RUPD'45'Create'45'Reward'45'Update_2954 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2964 |
    C_RUPD'45'Reward'45'Too'45'Early_2972
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2974 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2974
  = C_TICK_2984 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4054
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
