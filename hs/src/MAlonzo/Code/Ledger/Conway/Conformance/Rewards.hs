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
d_LState_2362 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2586 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2598
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2596 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2586 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_utxoSt_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2594
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  ()
d_BlocksMade_2478 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2480 ~v0 ~v1 = du_HasCast'45'Snapshot_2480
du_HasCast'45'Snapshot_2480 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2952
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2482 ~v0 ~v1 = du_HasCast'45'Snapshots_2482
du_HasCast'45'Snapshots_2482 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3030
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2484 ~v0 ~v1 = du_HasFees'45'Snapshots_2484
du_HasFees'45'Snapshots_2484 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3028
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
d_HasPools'45'Snapshot_2486 ~v0 ~v1 = du_HasPools'45'Snapshot_2486
du_HasPools'45'Snapshot_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
du_HasPools'45'Snapshot_2486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2950
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2488 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1230
d_HasStake'45'Snapshot_2492 ~v0 ~v1 = du_HasStake'45'Snapshot_2492
du_HasStake'45'Snapshot_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1230
du_HasStake'45'Snapshot_2492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2946
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'Snapshot_2494 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2494
du_HasStakeDelegs'45'Snapshot_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
du_HasStakeDelegs'45'Snapshot_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2948
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2496 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2502 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2506 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3012 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2988
d_SnapshotsOf_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3020
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2512 ~v0 ~v1 = du_maxPool_2512
du_maxPool_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2624
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2514 ~v0 ~v1
  = du_mkApparentPerformance_2514
du_mkApparentPerformance_2514 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2660
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2516 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2516
du_nonZero'45'1'43'max0'45'x_2516 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2620
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2518 ~v0 v1 = du_nonZero'45'1'47'n_2518 v1
du_nonZero'45'1'47'n_2518 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2518 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2520 ~v0 ~v1 = du_nonZero'45'max'45'1_2520
du_nonZero'45'max'45'1_2520 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2604
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2522 v0 ~v1 = du_poolStake_2522 v0
du_poolStake_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2768
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2524 v0 ~v1 = du_reward_2524 v0
du_reward_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2824
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2526 ~v0 ~v1 = du_rewardMember_2526
du_rewardMember_2526 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2698
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2528 v0 ~v1 = du_rewardOnePool_2528 v0
du_rewardOnePool_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2718
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2530 ~v0 ~v1 = du_rewardOwners_2530
du_rewardOwners_2530 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2678
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
d_stakeDistr_2532 v0 ~v1 = du_stakeDistr_2532 v0
du_stakeDistr_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
du_stakeDistr_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2958
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2534 ~v0 ~v1 = du_uncurry'7504'_2534
du_uncurry'7504'_2534 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2534 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2788
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3012 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2988
d_SnapshotsOf_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3020
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2894 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2542 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2918 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2894 ->
  Integer
d_Δf_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2916 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2894 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2926
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2894 ->
  Integer
d_Δr_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2914 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2894 ->
  Integer
d_Δt_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2912 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2894 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2924
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2940
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2942
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2938
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2988 ->
  Integer
d_feeSS_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3004
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2988 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
d_go_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3002 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2988 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
d_mark_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2998
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2988 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
d_set_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3000
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2584 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2584 = C_SNAP_2626
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2588 ~v0 ~v1 v2 = du_certState_2588 v2
du_certState_2588 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
du_certState_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2598
      (coe d_'46'generalizedField'45'lstate_6949 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_utxoSt_2592 ~v0 ~v1 v2 = du_utxoSt_2592 v2
du_utxoSt_2592 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
du_utxoSt_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2594
      (coe d_'46'generalizedField'45'lstate_6949 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 -> Integer
d_fees_2600 ~v0 ~v1 v2 = du_fees_2600 v2
du_fees_2600 :: T_GeneralizeTel_6959 -> Integer
du_fees_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2448
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2594
         (coe d_'46'generalizedField'45'lstate_6949 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2602 ~v0 ~v1 v2 = du_utxo_2602 v2
du_utxo_2602 ::
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2594
         (coe d_'46'generalizedField'45'lstate_6949 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1510
d_dState_2606 ~v0 ~v1 v2 = du_dState_2606 v2
du_dState_2606 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1510
du_dState_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2598
         (coe d_'46'generalizedField'45'lstate_6949 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_pState_2610 ~v0 ~v1 v2 = du_pState_2610 v2
du_pState_2610 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
du_pState_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2598
         (coe d_'46'generalizedField'45'lstate_6949 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2620 ~v0 ~v1 v2 = du_rewards_2620 v2
du_rewards_2620 ::
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2598
            (coe d_'46'generalizedField'45'lstate_6949 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2622 ~v0 ~v1 v2 = du_stakeDelegs_2622 v2
du_stakeDelegs_2622 ::
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2598
            (coe d_'46'generalizedField'45'lstate_6949 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2624 ~v0 ~v1 v2 = du_voteDelegs_2624 v2
du_voteDelegs_2624 ::
  T_GeneralizeTel_6959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2598
            (coe d_'46'generalizedField'45'lstate_6949 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5471 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6949 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2586
d_'46'generalizedField'45'lstate_6949 v0
  = case coe v0 of
      C_mkGeneralizeTel_6961 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6951 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
d_'46'generalizedField'45'mark_6951 v0
  = case coe v0 of
      C_mkGeneralizeTel_6961 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6953 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
d_'46'generalizedField'45'set_6953 v0
  = case coe v0 of
      C_mkGeneralizeTel_6961 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6955 ::
  T_GeneralizeTel_6959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
d_'46'generalizedField'45'go_6955 v0
  = case coe v0 of
      C_mkGeneralizeTel_6961 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6957 ::
  T_GeneralizeTel_6959 -> Integer
d_'46'generalizedField'45'feeSS_6957 v0
  = case coe v0 of
      C_mkGeneralizeTel_6961 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6959 a0 a1 = ()
data T_GeneralizeTel_6959
  = C_mkGeneralizeTel_6961 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2586
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2930
                           Integer
