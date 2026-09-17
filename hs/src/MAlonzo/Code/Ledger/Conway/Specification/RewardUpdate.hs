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
d_MaxLovelaceSupply'7580'_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1376
         (coe v0))
-- _.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_516 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1798
         (coe v0))
-- _.Slot
d_Slot_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_596 = erased
-- _.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_598 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_328
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1376
         (coe v0))
-- _.addSlot
d_addSlot_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1798
         (coe v0))
-- _.epoch
d_epoch_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1798
         (coe v0))
-- _.firstSlot
d_firstSlot_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1798
         (coe v0))
-- Ledger.Conway.Specification.RewardUpdate._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2044 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate._.EpochState
d_EpochState_2048 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState
d_NewEpochState_2130 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.createRUpd
d_createRUpd_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016
d_createRUpd_2158 v0 ~v1 = du_createRUpd_2158 v0
du_createRUpd_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016
du_createRUpd_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3464
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.acnt
d_acnt_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3304 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.es
d_es_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3310 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.fut
d_fut_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902
d_fut_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3312 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ls
d_ls_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970
d_ls_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3308 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.EpochState.ss
d_ss_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3110
d_ss_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3306 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bcur
d_bcur_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3382 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.bprev
d_bprev_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3380
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.epochState
d_epochState_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292
d_epochState_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.lastEpoch
d_lastEpoch_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  AgdaAny
d_lastEpoch_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3378
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.pd
d_pd_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3388 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.NewEpochState.ru
d_ru_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016
d_ru_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3386 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.BlocksMade
d_BlocksMade_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  ()
d_BlocksMade_2298 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate
d_RewardUpdate_2316 a0 a1 = ()
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.flowConservation
d_flowConservation_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2366 = erased
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.rs
d_rs_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3040 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf
d_Δf_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016 ->
  Integer
d_Δf_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3038 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3048
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δr
d_Δr_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016 ->
  Integer
d_Δr_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3036 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt
d_Δt_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016 ->
  Integer
d_Δt_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3034 (coe v0)
-- Ledger.Conway.Specification.RewardUpdate._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3046
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.RUpdEnv
d_RUpdEnv_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  ()
d_RUpdEnv_2398 = erased
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2400 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'RUPD'10632'__2400
  = C_RUPD'45'Create'45'Reward'45'Update_2410 AgdaAny |
    C_RUPD'45'Reward'45'Update'45'Exists_2420 |
    C_RUPD'45'Reward'45'Too'45'Early_2428
-- Ledger.Conway.Specification.RewardUpdate._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2430 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'TICK'10632'__2430
  = C_TICK_2440 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364
                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
