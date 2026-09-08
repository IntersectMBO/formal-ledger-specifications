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
d_MaxLovelaceSupply'7580'_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_802 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- _.Slot
d_Slot_906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_906 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_908 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- _.addSlot
d_addSlot_1028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1028 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- _.epoch
d_epoch_1064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1064 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- _.firstSlot
d_firstSlot_1084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_1084 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2656 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState
d_EpochState_2660 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2738 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.createRUpd
d_createRUpd_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802
d_createRUpd_2766 v0 ~v1 = du_createRUpd_2766 v0
du_createRUpd_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802
du_createRUpd_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_createRUpd_4238
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4092
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.es
d_es_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1284
d_es_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4098 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.fut
d_fut_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2058
d_fut_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4100
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ls
d_ls_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3854
d_ls_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4096 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.EpochState.ss
d_ss_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3896
d_ss_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4094 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4164
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4162
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4146 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4080
d_epochState_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4166
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4146 ->
  AgdaAny
d_lastEpoch_2842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4160
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4170 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4146 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802
d_ru_2846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4168 (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  ()
d_BlocksMade_2904 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2922 a0 a1 = ()
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2972 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3826
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802 ->
  Integer
d_Δf_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3824
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf'45'nonpositive_3834
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802 ->
  Integer
d_Δr_2980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3822
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802 ->
  Integer
d_Δt_2982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3820
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3802 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt'45'nonnegative_3832
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  ()
d_RUpdEnv_3004 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__3006 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__3006
  = C_RUPD'45'Create'45'Reward'45'Update_3016 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_3026 |
    C_RUPD'45'Reward'45'Too'45'Early_3034
-- Ledger.Dijkstra.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3036 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__3036
  = C_TICK_3046 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4146
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
