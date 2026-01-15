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
import qualified MAlonzo.Code.Agda.Primitive
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
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Conformance.Rewards._.LState
d_LState_2370 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2594 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
d_certState_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2606
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2594 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2604 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
d_utxoSt_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2602
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  ()
d_BlocksMade_2486 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2488 ~v0 ~v1 = du_HasCast'45'Snapshot_2488
du_HasCast'45'Snapshot_2488 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2488
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2960
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2490 ~v0 ~v1 = du_HasCast'45'Snapshots_2490
du_HasCast'45'Snapshots_2490 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3038
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2492 ~v0 ~v1 = du_HasFees'45'Snapshots_2492
du_HasFees'45'Snapshots_2492 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3036
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1188
d_HasPools'45'Snapshot_2494 ~v0 ~v1 = du_HasPools'45'Snapshot_2494
du_HasPools'45'Snapshot_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1188
du_HasPools'45'Snapshot_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2958
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2496 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1236
d_HasStake'45'Snapshot_2500 ~v0 ~v1 = du_HasStake'45'Snapshot_2500
du_HasStake'45'Snapshot_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1236
du_HasStake'45'Snapshot_2500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2954
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1252
d_HasStakeDelegs'45'Snapshot_2502 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2502
du_HasStakeDelegs'45'Snapshot_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1252
du_HasStakeDelegs'45'Snapshot_2502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2956
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2504 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2510 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2514 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3020 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2996
d_SnapshotsOf_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3028
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2520 ~v0 ~v1 = du_maxPool_2520
du_maxPool_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2632
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2522 ~v0 ~v1
  = du_mkApparentPerformance_2522
du_mkApparentPerformance_2522 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2668
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2524 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2524
du_nonZero'45'1'43'max0'45'x_2524 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2628
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2526 ~v0 v1 = du_nonZero'45'1'47'n_2526 v1
du_nonZero'45'1'47'n_2526 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2526 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2528 ~v0 ~v1 = du_nonZero'45'max'45'1_2528
du_nonZero'45'max'45'1_2528 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2612
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2530 v0 ~v1 = du_poolStake_2530 v0
du_poolStake_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2776
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2532 v0 ~v1 = du_reward_2532 v0
du_reward_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2832
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1096 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2534 ~v0 ~v1 = du_rewardMember_2534
du_rewardMember_2534 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1096 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2706
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2536 v0 ~v1 = du_rewardOnePool_2536 v0
du_rewardOnePool_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2726
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1096 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2538 ~v0 ~v1 = du_rewardOwners_2538
du_rewardOwners_2538 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1096 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2686
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1348 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
d_stakeDistr_2540 v0 ~v1 = du_stakeDistr_2540 v0
du_stakeDistr_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1348 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
du_stakeDistr_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2966
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2542 ~v0 ~v1 = du_uncurry'7504'_2542
du_uncurry'7504'_2542 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2542 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2796
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3020 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2996
d_SnapshotsOf_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3028
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2902 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2550 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2926 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2902 ->
  Integer
d_Δf_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2924 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2902 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2934
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2902 ->
  Integer
d_Δr_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2922 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2902 ->
  Integer
d_Δt_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2920 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2902 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2932
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2948
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2950
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2946
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2996 ->
  Integer
d_feeSS_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3012
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2996 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
d_go_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3010 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2996 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
d_mark_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3006
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2996 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
d_set_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3008
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2592 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2592 = C_SNAP_2634
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
d_certState_2596 ~v0 ~v1 v2 = du_certState_2596 v2
du_certState_2596 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
du_certState_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2606
      (coe d_'46'generalizedField'45'lstate_6945 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
d_utxoSt_2600 ~v0 ~v1 v2 = du_utxoSt_2600 v2
du_utxoSt_2600 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
du_utxoSt_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2602
      (coe d_'46'generalizedField'45'lstate_6945 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 -> Integer
d_fees_2608 ~v0 ~v1 v2 = du_fees_2608 v2
du_fees_2608 :: T_GeneralizeTel_6955 -> Integer
du_fees_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2402
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2602
         (coe d_'46'generalizedField'45'lstate_6945 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2610 ~v0 ~v1 v2 = du_utxo_2610 v2
du_utxo_2610 ::
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2400
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2602
         (coe d_'46'generalizedField'45'lstate_6945 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1516
d_dState_2614 ~v0 ~v1 v2 = du_dState_2614 v2
du_dState_2614 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1516
du_dState_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1560
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2606
         (coe d_'46'generalizedField'45'lstate_6945 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1364
d_pState_2618 ~v0 ~v1 v2 = du_pState_2618 v2
du_pState_2618 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1364
du_pState_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1562
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2606
         (coe d_'46'generalizedField'45'lstate_6945 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2628 ~v0 ~v1 v2 = du_rewards_2628 v2
du_rewards_2628 ::
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1530
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1560
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2606
            (coe d_'46'generalizedField'45'lstate_6945 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2630 ~v0 ~v1 v2 = du_stakeDelegs_2630 v2
du_stakeDelegs_2630 ::
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1528
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1560
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2606
            (coe d_'46'generalizedField'45'lstate_6945 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2632 ~v0 ~v1 v2 = du_voteDelegs_2632 v2
du_voteDelegs_2632 ::
  T_GeneralizeTel_6955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1526
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1560
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2606
            (coe d_'46'generalizedField'45'lstate_6945 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5467 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6945 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2594
d_'46'generalizedField'45'lstate_6945 v0
  = case coe v0 of
      C_mkGeneralizeTel_6957 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6947 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
d_'46'generalizedField'45'mark_6947 v0
  = case coe v0 of
      C_mkGeneralizeTel_6957 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6949 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
d_'46'generalizedField'45'set_6949 v0
  = case coe v0 of
      C_mkGeneralizeTel_6957 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6951 ::
  T_GeneralizeTel_6955 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
d_'46'generalizedField'45'go_6951 v0
  = case coe v0 of
      C_mkGeneralizeTel_6957 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6953 ::
  T_GeneralizeTel_6955 -> Integer
d_'46'generalizedField'45'feeSS_6953 v0
  = case coe v0 of
      C_mkGeneralizeTel_6957 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6955 a0 a1 = ()
data T_GeneralizeTel_6955
  = C_mkGeneralizeTel_6957 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2594
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2938
                           Integer
