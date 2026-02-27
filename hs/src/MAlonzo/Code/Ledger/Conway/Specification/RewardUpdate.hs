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
d_MaxLovelaceSupply'7580'_414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_414 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1342
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_492 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1742
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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1342
         (coe v0))
-- _.addSlot
d_addSlot_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1742
         (coe v0))
-- _.epoch
d_epoch_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1742
         (coe v0))
-- _.firstSlot
d_firstSlot_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1742
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2000 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2004 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2084 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978
d_createRUpd_2112 v0 ~v1 = du_createRUpd_2112 v0
du_createRUpd_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978
du_createRUpd_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3422
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3264 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_es_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1892
d_fut_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3272 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
d_ls_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3268 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3072
d_ss_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3266 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3340 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3338
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252
d_epochState_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  AgdaAny
d_lastEpoch_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3336
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3346 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978
d_ru_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3344 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2270 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2320 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3002 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  Integer
d_Δf_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3000 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3010
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  Integer
d_Δr_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2998 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  Integer
d_Δt_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2996 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3008
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_RUpdEnv_2352 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2354 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2354
  = C_RUPD'45'Create'45'Reward'45'Update_2366 MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978
                                              AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2376 |
    C_RUPD'45'Reward'45'Too'45'Early_2384
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2386 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2386
  = C_TICK_2396 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
