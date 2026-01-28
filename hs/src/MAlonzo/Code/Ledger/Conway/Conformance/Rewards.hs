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
d_LState_2376 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2610 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2412 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_utxoSt_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  ()
d_BlocksMade_2492 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2494 ~v0 ~v1 = du_HasCast'45'Snapshot_2494
du_HasCast'45'Snapshot_2494 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2966
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2496 ~v0 ~v1 = du_HasCast'45'Snapshots_2496
du_HasCast'45'Snapshots_2496 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3044
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2498 ~v0 ~v1 = du_HasFees'45'Snapshots_2498
du_HasFees'45'Snapshots_2498 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3042
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
d_HasPools'45'Snapshot_2500 ~v0 ~v1 = du_HasPools'45'Snapshot_2500
du_HasPools'45'Snapshot_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
du_HasPools'45'Snapshot_2500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2964
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2502 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240
d_HasStake'45'Snapshot_2506 ~v0 ~v1 = du_HasStake'45'Snapshot_2506
du_HasStake'45'Snapshot_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240
du_HasStake'45'Snapshot_2506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2960
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
d_HasStakeDelegs'45'Snapshot_2508 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2508
du_HasStakeDelegs'45'Snapshot_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
du_HasStakeDelegs'45'Snapshot_2508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2962
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2510 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2516 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2520 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3026 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002
d_SnapshotsOf_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3034
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2526 ~v0 ~v1 = du_maxPool_2526
du_maxPool_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2638
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2528 ~v0 ~v1
  = du_mkApparentPerformance_2528
du_mkApparentPerformance_2528 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2674
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2530 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2530
du_nonZero'45'1'43'max0'45'x_2530 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2634
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2532 ~v0 v1 = du_nonZero'45'1'47'n_2532 v1
du_nonZero'45'1'47'n_2532 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2532 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2534 ~v0 ~v1 = du_nonZero'45'max'45'1_2534
du_nonZero'45'max'45'1_2534 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2618
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2536 v0 ~v1 = du_poolStake_2536 v0
du_poolStake_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2782
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2538 v0 ~v1 = du_reward_2538 v0
du_reward_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2838
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2540 ~v0 ~v1 = du_rewardMember_2540
du_rewardMember_2540 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2712
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2542 v0 ~v1 = du_rewardOnePool_2542 v0
du_rewardOnePool_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2732
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2544 ~v0 ~v1 = du_rewardOwners_2544
du_rewardOwners_2544 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2692
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
d_stakeDistr_2546 v0 ~v1 = du_stakeDistr_2546 v0
du_stakeDistr_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
du_stakeDistr_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2972
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2548 ~v0 ~v1 = du_uncurry'7504'_2548
du_uncurry'7504'_2548 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2548 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2802
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3026 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002
d_SnapshotsOf_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3034
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2556 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2932 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  Integer
d_Δf_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2930 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2940
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  Integer
d_Δr_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2928 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  Integer
d_Δt_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2926 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2938
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  Integer
d_feeSS_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3018
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
d_go_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3016 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
d_mark_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3012
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
d_set_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3014
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2598 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2598 = C_SNAP_2640
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2602 ~v0 ~v1 v2 = du_certState_2602 v2
du_certState_2602 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
du_certState_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
      (coe d_'46'generalizedField'45'lstate_6967 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_utxoSt_2606 ~v0 ~v1 v2 = du_utxoSt_2606 v2
du_utxoSt_2606 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
du_utxoSt_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
      (coe d_'46'generalizedField'45'lstate_6967 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 -> Integer
d_fees_2614 ~v0 ~v1 v2 = du_fees_2614 v2
du_fees_2614 :: T_GeneralizeTel_6977 -> Integer
du_fees_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
         (coe d_'46'generalizedField'45'lstate_6967 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2616 ~v0 ~v1 v2 = du_utxo_2616 v2
du_utxo_2616 ::
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
         (coe d_'46'generalizedField'45'lstate_6967 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
d_dState_2620 ~v0 ~v1 v2 = du_dState_2620 v2
du_dState_2620 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
du_dState_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
         (coe d_'46'generalizedField'45'lstate_6967 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState_2624 ~v0 ~v1 v2 = du_pState_2624 v2
du_pState_2624 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
du_pState_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
         (coe d_'46'generalizedField'45'lstate_6967 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2634 ~v0 ~v1 v2 = du_rewards_2634 v2
du_rewards_2634 ::
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
            (coe d_'46'generalizedField'45'lstate_6967 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2636 ~v0 ~v1 v2 = du_stakeDelegs_2636 v2
du_stakeDelegs_2636 ::
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
            (coe d_'46'generalizedField'45'lstate_6967 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2638 ~v0 ~v1 v2 = du_voteDelegs_2638 v2
du_voteDelegs_2638 ::
  T_GeneralizeTel_6977 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
            (coe d_'46'generalizedField'45'lstate_6967 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5489 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6967 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600
d_'46'generalizedField'45'lstate_6967 v0
  = case coe v0 of
      C_mkGeneralizeTel_6979 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6969 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
d_'46'generalizedField'45'mark_6969 v0
  = case coe v0 of
      C_mkGeneralizeTel_6979 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6971 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
d_'46'generalizedField'45'set_6971 v0
  = case coe v0 of
      C_mkGeneralizeTel_6979 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6973 ::
  T_GeneralizeTel_6977 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
d_'46'generalizedField'45'go_6973 v0
  = case coe v0 of
      C_mkGeneralizeTel_6979 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6975 ::
  T_GeneralizeTel_6977 -> Integer
d_'46'generalizedField'45'feeSS_6975 v0
  = case coe v0 of
      C_mkGeneralizeTel_6979 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6977 a0 a1 = ()
data T_GeneralizeTel_6977
  = C_mkGeneralizeTel_6979 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944
                           Integer
