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
d_LState_2254 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
d_certState_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2486 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_BlocksMade_2370 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2372 ~v0 ~v1 = du_HasCast'45'Snapshot_2372
du_HasCast'45'Snapshot_2372 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2372
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2838
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2374 ~v0 ~v1 = du_HasCast'45'Snapshots_2374
du_HasCast'45'Snapshots_2374 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2374
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2894
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'Snapshot_2376 ~v0 ~v1 = du_HasPools'45'Snapshot_2376
du_HasPools'45'Snapshot_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'Snapshot_2376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2836
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1186
d_HasStake'45'Snapshot_2378 ~v0 ~v1 = du_HasStake'45'Snapshot_2378
du_HasStake'45'Snapshot_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1186
du_HasStake'45'Snapshot_2378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2832
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1202
d_HasStakeDelegs'45'Snapshot_2380 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2380
du_HasStakeDelegs'45'Snapshot_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1202
du_HasStakeDelegs'45'Snapshot_2380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2834
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2382 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2388 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2392 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2396 ~v0 ~v1 = du_maxPool_2396
du_maxPool_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2396
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2510
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2398 ~v0 ~v1
  = du_mkApparentPerformance_2398
du_mkApparentPerformance_2398 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2546
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2400 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2400
du_nonZero'45'1'43'max0'45'x_2400 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2506
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2402 ~v0 v1 = du_nonZero'45'1'47'n_2402 v1
du_nonZero'45'1'47'n_2402 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2402 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2404 ~v0 ~v1 = du_nonZero'45'max'45'1_2404
du_nonZero'45'max'45'1_2404 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2404
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2490
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2406 v0 ~v1 = du_poolStake_2406 v0
du_poolStake_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2654
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2408 v0 ~v1 = du_reward_2408 v0
du_reward_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2710
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2410 ~v0 ~v1 = du_rewardMember_2410
du_rewardMember_2410 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2584
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2412 v0 ~v1 = du_rewardOnePool_2412 v0
du_rewardOnePool_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2604
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2414 ~v0 ~v1 = du_rewardOwners_2414
du_rewardOwners_2414 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2564
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_stakeDistr_2416 v0 ~v1 = du_stakeDistr_2416 v0
du_stakeDistr_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
du_stakeDistr_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2844
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2418 ~v0 ~v1 = du_uncurry'7504'_2418
du_uncurry'7504'_2418 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2418 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2674
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2422 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2804 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer
d_Δf_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2802 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2812
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer
d_Δr_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2800 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer
d_Δt_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2798 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2810
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2826
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2828
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2824
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  Integer
d_feeSS_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2890
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_go_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2888 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_mark_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2884
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_set_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2886
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2464 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2464 = C_SNAP_2506
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
d_certState_2468 ~v0 ~v1 v2 = du_certState_2468 v2
du_certState_2468 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
du_certState_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
      (coe d_'46'generalizedField'45'lstate_6587 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2472 ~v0 ~v1 v2 = du_utxoSt_2472 v2
du_utxoSt_2472 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
du_utxoSt_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
      (coe d_'46'generalizedField'45'lstate_6587 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 -> Integer
d_fees_2480 ~v0 ~v1 v2 = du_fees_2480 v2
du_fees_2480 :: T_GeneralizeTel_6597 -> Integer
du_fees_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2338
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
         (coe d_'46'generalizedField'45'lstate_6587 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2482 ~v0 ~v1 v2 = du_utxo_2482 v2
du_utxo_2482 ::
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
         (coe d_'46'generalizedField'45'lstate_6587 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1440
d_dState_2486 ~v0 ~v1 v2 = du_dState_2486 v2
du_dState_2486 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1440
du_dState_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
         (coe d_'46'generalizedField'45'lstate_6587 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_2490 ~v0 ~v1 v2 = du_pState_2490 v2
du_pState_2490 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
du_pState_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1486
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
         (coe d_'46'generalizedField'45'lstate_6587 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2500 ~v0 ~v1 v2 = du_rewards_2500 v2
du_rewards_2500 ::
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1484
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
            (coe d_'46'generalizedField'45'lstate_6587 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2502 ~v0 ~v1 v2 = du_stakeDelegs_2502 v2
du_stakeDelegs_2502 ::
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1452
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1484
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
            (coe d_'46'generalizedField'45'lstate_6587 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2504 ~v0 ~v1 v2 = du_voteDelegs_2504 v2
du_voteDelegs_2504 ::
  T_GeneralizeTel_6597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1450
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1484
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
            (coe d_'46'generalizedField'45'lstate_6587 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5159 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6587 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476
d_'46'generalizedField'45'lstate_6587 v0
  = case coe v0 of
      C_mkGeneralizeTel_6599 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6589 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_'46'generalizedField'45'mark_6589 v0
  = case coe v0 of
      C_mkGeneralizeTel_6599 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6591 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_'46'generalizedField'45'set_6591 v0
  = case coe v0 of
      C_mkGeneralizeTel_6599 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6593 ::
  T_GeneralizeTel_6597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_'46'generalizedField'45'go_6593 v0
  = case coe v0 of
      C_mkGeneralizeTel_6599 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6595 ::
  T_GeneralizeTel_6597 -> Integer
d_'46'generalizedField'45'feeSS_6595 v0
  = case coe v0 of
      C_mkGeneralizeTel_6599 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6597 a0 a1 = ()
data T_GeneralizeTel_6597
  = C_mkGeneralizeTel_6599 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
                           Integer
