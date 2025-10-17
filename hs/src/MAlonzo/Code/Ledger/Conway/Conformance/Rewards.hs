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
d_LState_2348 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2570 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1538
d_certState_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2582
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2580 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2570 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2418
d_utxoSt_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2578
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  ()
d_BlocksMade_2464 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2466 ~v0 ~v1 = du_HasCast'45'Snapshot_2466
du_HasCast'45'Snapshot_2466 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2934
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2468 ~v0 ~v1 = du_HasCast'45'Snapshots_2468
du_HasCast'45'Snapshots_2468 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3012
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2470 ~v0 ~v1 = du_HasFees'45'Snapshots_2470
du_HasFees'45'Snapshots_2470 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3010
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
d_HasPools'45'Snapshot_2472 ~v0 ~v1 = du_HasPools'45'Snapshot_2472
du_HasPools'45'Snapshot_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
du_HasPools'45'Snapshot_2472
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2932
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2474 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1234
d_HasStake'45'Snapshot_2478 ~v0 ~v1 = du_HasStake'45'Snapshot_2478
du_HasStake'45'Snapshot_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1234
du_HasStake'45'Snapshot_2478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2928
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'Snapshot_2480 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2480
du_HasStakeDelegs'45'Snapshot_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
du_HasStakeDelegs'45'Snapshot_2480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2930
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2482 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2488 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2492 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2994 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2970
d_SnapshotsOf_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3002
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2498 ~v0 ~v1 = du_maxPool_2498
du_maxPool_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2606
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2500 ~v0 ~v1
  = du_mkApparentPerformance_2500
du_mkApparentPerformance_2500 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2642
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2502 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2502
du_nonZero'45'1'43'max0'45'x_2502 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2602
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2504 ~v0 v1 = du_nonZero'45'1'47'n_2504 v1
du_nonZero'45'1'47'n_2504 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2504 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2506 ~v0 ~v1 = du_nonZero'45'max'45'1_2506
du_nonZero'45'max'45'1_2506 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2586
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2508 v0 ~v1 = du_poolStake_2508 v0
du_poolStake_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2750
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2510 v0 ~v1 = du_reward_2510 v0
du_reward_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2806
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2512 ~v0 ~v1 = du_rewardMember_2512
du_rewardMember_2512 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2680
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2514 v0 ~v1 = du_rewardOnePool_2514 v0
du_rewardOnePool_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2700
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2516 ~v0 ~v1 = du_rewardOwners_2516
du_rewardOwners_2516 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2660
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
d_stakeDistr_2518 v0 ~v1 = du_stakeDistr_2518 v0
du_stakeDistr_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
du_stakeDistr_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2940
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2520 ~v0 ~v1 = du_uncurry'7504'_2520
du_uncurry'7504'_2520 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2520 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2770
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2994 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2970
d_SnapshotsOf_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3002
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2876 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2528 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2900 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2876 ->
  Integer
d_Δf_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2898 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2876 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2908
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2876 ->
  Integer
d_Δr_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2896 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2876 ->
  Integer
d_Δt_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2894 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2876 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2906
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2922
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2924
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2920
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2970 ->
  Integer
d_feeSS_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2986
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2970 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
d_go_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2984 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2970 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
d_mark_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2980
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2970 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
d_set_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2982
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2570 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2570 = C_SNAP_2612
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1538
d_certState_2574 ~v0 ~v1 v2 = du_certState_2574 v2
du_certState_2574 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1538
du_certState_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2582
      (coe d_'46'generalizedField'45'lstate_6923 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2418
d_utxoSt_2578 ~v0 ~v1 v2 = du_utxoSt_2578 v2
du_utxoSt_2578 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2418
du_utxoSt_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2578
      (coe d_'46'generalizedField'45'lstate_6923 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 -> Integer
d_fees_2586 ~v0 ~v1 v2 = du_fees_2586 v2
du_fees_2586 :: T_GeneralizeTel_6933 -> Integer
du_fees_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2430
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2578
         (coe d_'46'generalizedField'45'lstate_6923 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2588 ~v0 ~v1 v2 = du_utxo_2588 v2
du_utxo_2588 ::
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2428
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2578
         (coe d_'46'generalizedField'45'lstate_6923 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1502
d_dState_2592 ~v0 ~v1 v2 = du_dState_2592 v2
du_dState_2592 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1502
du_dState_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1546
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2582
         (coe d_'46'generalizedField'45'lstate_6923 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2596 ~v0 ~v1 v2 = du_pState_2596 v2
du_pState_2596 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
du_pState_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1548
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2582
         (coe d_'46'generalizedField'45'lstate_6923 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2606 ~v0 ~v1 v2 = du_rewards_2606 v2
du_rewards_2606 ::
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1516
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1546
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2582
            (coe d_'46'generalizedField'45'lstate_6923 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2608 ~v0 ~v1 v2 = du_stakeDelegs_2608 v2
du_stakeDelegs_2608 ::
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1514
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1546
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2582
            (coe d_'46'generalizedField'45'lstate_6923 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2316 ->
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2610 ~v0 ~v1 v2 = du_voteDelegs_2610 v2
du_voteDelegs_2610 ::
  T_GeneralizeTel_6933 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1512
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1546
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2582
            (coe d_'46'generalizedField'45'lstate_6923 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5445 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6923 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2570
d_'46'generalizedField'45'lstate_6923 v0
  = case coe v0 of
      C_mkGeneralizeTel_6935 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6925 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
d_'46'generalizedField'45'mark_6925 v0
  = case coe v0 of
      C_mkGeneralizeTel_6935 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6927 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
d_'46'generalizedField'45'set_6927 v0
  = case coe v0 of
      C_mkGeneralizeTel_6935 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6929 ::
  T_GeneralizeTel_6933 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
d_'46'generalizedField'45'go_6929 v0
  = case coe v0 of
      C_mkGeneralizeTel_6935 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6931 ::
  T_GeneralizeTel_6933 -> Integer
d_'46'generalizedField'45'feeSS_6931 v0
  = case coe v0 of
      C_mkGeneralizeTel_6935 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6933 a0 a1 = ()
data T_GeneralizeTel_6933
  = C_mkGeneralizeTel_6935 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2570
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2912
                           Integer
