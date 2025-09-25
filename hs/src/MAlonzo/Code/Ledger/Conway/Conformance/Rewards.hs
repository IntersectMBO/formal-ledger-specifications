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
d_LState_2270 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
d_certState_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2502 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2500
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_BlocksMade_2386 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2388 ~v0 ~v1 = du_HasCast'45'Snapshot_2388
du_HasCast'45'Snapshot_2388 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2388
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2858
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2390 ~v0 ~v1 = du_HasCast'45'Snapshots_2390
du_HasCast'45'Snapshots_2390 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2936
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2392 ~v0 ~v1 = du_HasFees'45'Snapshots_2392
du_HasFees'45'Snapshots_2392 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2392
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_2934
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
d_HasPools'45'Snapshot_2394 ~v0 ~v1 = du_HasPools'45'Snapshot_2394
du_HasPools'45'Snapshot_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
du_HasPools'45'Snapshot_2394
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2856
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2396 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1196
d_HasStake'45'Snapshot_2400 ~v0 ~v1 = du_HasStake'45'Snapshot_2400
du_HasStake'45'Snapshot_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1196
du_HasStake'45'Snapshot_2400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2852
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1212
d_HasStakeDelegs'45'Snapshot_2402 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2402
du_HasStakeDelegs'45'Snapshot_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1212
du_HasStakeDelegs'45'Snapshot_2402
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2854
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2404 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2410 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2414 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2918 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894
d_SnapshotsOf_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2926
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2420 ~v0 ~v1 = du_maxPool_2420
du_maxPool_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2530
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2422 ~v0 ~v1
  = du_mkApparentPerformance_2422
du_mkApparentPerformance_2422 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2566
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2424 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2424
du_nonZero'45'1'43'max0'45'x_2424 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2526
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2426 ~v0 v1 = du_nonZero'45'1'47'n_2426 v1
du_nonZero'45'1'47'n_2426 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2426 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2428 ~v0 ~v1 = du_nonZero'45'max'45'1_2428
du_nonZero'45'max'45'1_2428 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2510
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2430 v0 ~v1 = du_poolStake_2430 v0
du_poolStake_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2674
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2432 v0 ~v1 = du_reward_2432 v0
du_reward_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2730
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2434 ~v0 ~v1 = du_rewardMember_2434
du_rewardMember_2434 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2604
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2436 v0 ~v1 = du_rewardOnePool_2436 v0
du_rewardOnePool_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2624
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2438 ~v0 ~v1 = du_rewardOwners_2438
du_rewardOwners_2438 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2438
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2584
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_stakeDistr_2440 v0 ~v1 = du_stakeDistr_2440 v0
du_stakeDistr_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
du_stakeDistr_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2864
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2442 ~v0 ~v1 = du_uncurry'7504'_2442
du_uncurry'7504'_2442 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2442 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2694
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2918 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894
d_SnapshotsOf_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2926
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2450 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2824 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer
d_Δf_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2822 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2832
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer
d_Δr_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2820 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer
d_Δt_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2818 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2830
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2846
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2848
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2844
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  Integer
d_feeSS_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2910
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_go_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2908 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_mark_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2904
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_set_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2906
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2492 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2492 = C_SNAP_2534
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
d_certState_2496 ~v0 ~v1 v2 = du_certState_2496 v2
du_certState_2496 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
du_certState_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
      (coe d_'46'generalizedField'45'lstate_6673 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2500 ~v0 ~v1 v2 = du_utxoSt_2500 v2
du_utxoSt_2500 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
du_utxoSt_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2500
      (coe d_'46'generalizedField'45'lstate_6673 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 -> Integer
d_fees_2508 ~v0 ~v1 v2 = du_fees_2508 v2
du_fees_2508 :: T_GeneralizeTel_6683 -> Integer
du_fees_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2354
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2500
         (coe d_'46'generalizedField'45'lstate_6673 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2510 ~v0 ~v1 v2 = du_utxo_2510 v2
du_utxo_2510 ::
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2352
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2500
         (coe d_'46'generalizedField'45'lstate_6673 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1452
d_dState_2514 ~v0 ~v1 v2 = du_dState_2514 v2
du_dState_2514 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1452
du_dState_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
         (coe d_'46'generalizedField'45'lstate_6673 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2518 ~v0 ~v1 v2 = du_pState_2518 v2
du_pState_2518 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
du_pState_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
         (coe d_'46'generalizedField'45'lstate_6673 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2528 ~v0 ~v1 v2 = du_rewards_2528 v2
du_rewards_2528 ::
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
            (coe d_'46'generalizedField'45'lstate_6673 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2530 ~v0 ~v1 v2 = du_stakeDelegs_2530 v2
du_stakeDelegs_2530 ::
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
            (coe d_'46'generalizedField'45'lstate_6673 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2532 ~v0 ~v1 v2 = du_voteDelegs_2532 v2
du_voteDelegs_2532 ::
  T_GeneralizeTel_6683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
            (coe d_'46'generalizedField'45'lstate_6673 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5195 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6673 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492
d_'46'generalizedField'45'lstate_6673 v0
  = case coe v0 of
      C_mkGeneralizeTel_6685 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6675 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_'46'generalizedField'45'mark_6675 v0
  = case coe v0 of
      C_mkGeneralizeTel_6685 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6677 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_'46'generalizedField'45'set_6677 v0
  = case coe v0 of
      C_mkGeneralizeTel_6685 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6679 ::
  T_GeneralizeTel_6683 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_'46'generalizedField'45'go_6679 v0
  = case coe v0 of
      C_mkGeneralizeTel_6685 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6681 ::
  T_GeneralizeTel_6683 -> Integer
d_'46'generalizedField'45'feeSS_6681 v0
  = case coe v0 of
      C_mkGeneralizeTel_6685 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6683 a0 a1 = ()
data T_GeneralizeTel_6683
  = C_mkGeneralizeTel_6685 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
                           Integer
