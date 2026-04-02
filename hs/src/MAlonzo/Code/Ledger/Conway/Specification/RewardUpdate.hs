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
d_MaxLovelaceSupply'7580'_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_422 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_498 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- _.addSlot
d_addSlot_672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- _.epoch
d_epoch_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- _.firstSlot
d_firstSlot_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2012 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2016 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2096 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992
d_createRUpd_2124 v0 ~v1 = du_createRUpd_2124 v0
du_createRUpd_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992
du_createRUpd_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3434
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3276 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_es_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3282 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890
d_fut_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3284 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946
d_ls_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3280 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086
d_ss_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3278 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3352 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3350
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3264
d_epochState_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3354
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3334 ->
  AgdaAny
d_lastEpoch_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3348
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3358 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3334 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992
d_ru_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3356 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_BlocksMade_2264 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2282 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2332 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3016 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  Integer
d_Δf_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3014 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3024
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  Integer
d_Δr_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3012 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  Integer
d_Δt_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3010 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3022
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_RUpdEnv_2364 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2366 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2366
  = C_RUPD'45'Create'45'Reward'45'Update_2376 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2386 |
    C_RUPD'45'Reward'45'Too'45'Early_2394
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2396 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2396
  = C_TICK_2406 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3334
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
