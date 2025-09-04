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

module MAlonzo.Code.Ledger.Conway.Conformance.Rewards where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Conformance.Rewards._.LState
d_LState_2200 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2422 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
d_certState_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2434
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2422 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2432 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2422 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
d_utxoSt_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2430
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  ()
d_BlocksMade_2316 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2318 ~v0 ~v1 = du_HasCast'45'Snapshot_2318
du_HasCast'45'Snapshot_2318 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2778
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2320 ~v0 ~v1 = du_HasCast'45'Snapshots_2320
du_HasCast'45'Snapshots_2320 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2840
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2322 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2328 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2332 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Stake
d_Stake_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  ()
d_Stake_2336 = erased
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2338 ~v0 ~v1 = du_maxPool_2338
du_maxPool_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2338
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2454
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2340 ~v0 ~v1
  = du_mkApparentPerformance_2340
du_mkApparentPerformance_2340 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2490
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2342 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2342
du_nonZero'45'1'43'max0'45'x_2342 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2342
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2450
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2344 ~v0 v1 = du_nonZero'45'1'47'n_2344 v1
du_nonZero'45'1'47'n_2344 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2344 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2346 ~v0 ~v1 = du_nonZero'45'max'45'1_2346
du_nonZero'45'max'45'1_2346 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2434
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2348 v0 ~v1 = du_poolStake_2348 v0
du_poolStake_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2600
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2350 v0 ~v1 = du_reward_2350 v0
du_reward_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2656
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1000 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2352 ~v0 ~v1 = du_rewardMember_2352
du_rewardMember_2352 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1000 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2528
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2354 v0 ~v1 = du_rewardOnePool_2354 v0
du_rewardOnePool_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2550
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1000 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2356 ~v0 ~v1 = du_rewardOwners_2356
du_rewardOwners_2356 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1000 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2508
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1252 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
d_stakeDistr_2358 v0 ~v1 = du_stakeDistr_2358 v0
du_stakeDistr_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1252 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
du_stakeDistr_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2784
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2360 ~v0 ~v1 = du_uncurry'7504'_2360
du_uncurry'7504'_2360 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2360 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2620
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2726 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2364 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2750 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2726 ->
  Integer
d_Δf_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2748 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2726 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2758
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2726 ->
  Integer
d_Δr_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2746 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2726 ->
  Integer
d_Δt_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2744 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2726 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2756
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2772
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.poolParameters
d_poolParameters_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2774
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2770
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2820 ->
  Integer
d_feeSS_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2836
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2820 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
d_go_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2834 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2820 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
d_mark_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2830
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2820 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
d_set_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2832
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2406 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2406 = C_SNAP_2448
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
d_certState_2410 ~v0 ~v1 v2 = du_certState_2410 v2
du_certState_2410 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
du_certState_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2434
      (coe d_'46'generalizedField'45'lstate_6461 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
d_utxoSt_2414 ~v0 ~v1 v2 = du_utxoSt_2414 v2
du_utxoSt_2414 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
du_utxoSt_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2430
      (coe d_'46'generalizedField'45'lstate_6461 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 -> Integer
d_fees_2422 ~v0 ~v1 v2 = du_fees_2422 v2
du_fees_2422 :: T_GeneralizeTel_6471 -> Integer
du_fees_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2284
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2430
         (coe d_'46'generalizedField'45'lstate_6461 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2424 ~v0 ~v1 v2 = du_utxo_2424 v2
du_utxo_2424 ::
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2282
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2430
         (coe d_'46'generalizedField'45'lstate_6461 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1400
d_dState_2428 ~v0 ~v1 v2 = du_dState_2428 v2
du_dState_2428 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1400
du_dState_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1444
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2434
         (coe d_'46'generalizedField'45'lstate_6461 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1268
d_pState_2432 ~v0 ~v1 v2 = du_pState_2432 v2
du_pState_2432 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1268
du_pState_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1446
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2434
         (coe d_'46'generalizedField'45'lstate_6461 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2442 ~v0 ~v1 v2 = du_rewards_2442 v2
du_rewards_2442 ::
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1414
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1444
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2434
            (coe d_'46'generalizedField'45'lstate_6461 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2444 ~v0 ~v1 v2 = du_stakeDelegs_2444 v2
du_stakeDelegs_2444 ::
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1412
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1444
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2434
            (coe d_'46'generalizedField'45'lstate_6461 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2446 ~v0 ~v1 v2 = du_voteDelegs_2446 v2
du_voteDelegs_2446 ::
  T_GeneralizeTel_6471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1410
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1444
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2434
            (coe d_'46'generalizedField'45'lstate_6461 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5071 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6461 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2422
d_'46'generalizedField'45'lstate_6461 v0
  = case coe v0 of
      C_mkGeneralizeTel_6473 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6463 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
d_'46'generalizedField'45'mark_6463 v0
  = case coe v0 of
      C_mkGeneralizeTel_6473 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6465 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
d_'46'generalizedField'45'set_6465 v0
  = case coe v0 of
      C_mkGeneralizeTel_6473 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6467 ::
  T_GeneralizeTel_6471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
d_'46'generalizedField'45'go_6467 v0
  = case coe v0 of
      C_mkGeneralizeTel_6473 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6469 ::
  T_GeneralizeTel_6471 -> Integer
d_'46'generalizedField'45'feeSS_6469 v0
  = case coe v0 of
      C_mkGeneralizeTel_6473 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6471 a0 a1 = ()
data T_GeneralizeTel_6471
  = C_mkGeneralizeTel_6473 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2422
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2762
                           Integer
