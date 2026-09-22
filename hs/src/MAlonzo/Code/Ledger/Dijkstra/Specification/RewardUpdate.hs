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
d_MaxLovelaceSupply'7580'_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_774 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- _.Slot
d_Slot_878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_878 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_880 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- _.addSlot
d_addSlot_1000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1000 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- _.epoch
d_epoch_1036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1036 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- _.firstSlot
d_firstSlot_1056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_1056 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2664 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState
d_EpochState_2668 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2746 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.createRUpd
d_createRUpd_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820
d_createRUpd_2774 v0 ~v1 = du_createRUpd_2774 v0
du_createRUpd_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820
du_createRUpd_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_createRUpd_4246
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4100
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.es
d_es_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318
d_es_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4106 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.fut
d_fut_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2110
d_fut_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4108
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ls
d_ls_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874
d_ls_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4104 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ss
d_ss_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914
d_ss_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4102 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4172
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4170
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4154 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4088
d_epochState_2846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4174
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4154 ->
  AgdaAny
d_lastEpoch_2848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4168
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4178 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4154 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820
d_ru_2852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4176 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  ()
d_BlocksMade_2910 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2928 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2978 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3844
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820 ->
  Integer
d_Δf_2982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3842
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf'45'nonpositive_3852
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820 ->
  Integer
d_Δr_2986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3840
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820 ->
  Integer
d_Δt_2988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3838
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3820 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt'45'nonnegative_3850
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  ()
d_RUpdEnv_3010 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__3012 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__3012
  = C_RUPD'45'Create'45'Reward'45'Update_3022 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_3032 |
    C_RUPD'45'Reward'45'Too'45'Early_3040
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3042 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__3042
  = C_TICK_3052 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4154
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
