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
d_LState_2398 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2430 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2622 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2634
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2432 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2632 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2434 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2622 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
d_utxoSt_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2630
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  ()
d_BlocksMade_2514 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2516 ~v0 ~v1 = du_HasCast'45'Snapshot_2516
du_HasCast'45'Snapshot_2516 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2988
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2518 ~v0 ~v1 = du_HasCast'45'Snapshots_2518
du_HasCast'45'Snapshots_2518 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3066
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2520 ~v0 ~v1 = du_HasFees'45'Snapshots_2520
du_HasFees'45'Snapshots_2520 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3064
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214
d_HasPools'45'Snapshot_2522 ~v0 ~v1 = du_HasPools'45'Snapshot_2522
du_HasPools'45'Snapshot_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214
du_HasPools'45'Snapshot_2522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2986
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2524 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1262
d_HasStake'45'Snapshot_2528 ~v0 ~v1 = du_HasStake'45'Snapshot_2528
du_HasStake'45'Snapshot_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1262
du_HasStake'45'Snapshot_2528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2982
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1278
d_HasStakeDelegs'45'Snapshot_2530 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2530
du_HasStakeDelegs'45'Snapshot_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1278
du_HasStakeDelegs'45'Snapshot_2530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2984
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2532 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2538 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2542 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3048 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3024
d_SnapshotsOf_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3056
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2548 ~v0 ~v1 = du_maxPool_2548
du_maxPool_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2660
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2550 ~v0 ~v1
  = du_mkApparentPerformance_2550
du_mkApparentPerformance_2550 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2696
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2552 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2552
du_nonZero'45'1'43'max0'45'x_2552 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2656
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2554 ~v0 v1 = du_nonZero'45'1'47'n_2554 v1
du_nonZero'45'1'47'n_2554 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2554 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2556 ~v0 ~v1 = du_nonZero'45'max'45'1_2556
du_nonZero'45'max'45'1_2556 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2640
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2558 v0 ~v1 = du_poolStake_2558 v0
du_poolStake_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2804
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2560 v0 ~v1 = du_reward_2560 v0
du_reward_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2860
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2562 ~v0 ~v1 = du_rewardMember_2562
du_rewardMember_2562 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2562
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2734
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2564 v0 ~v1 = du_rewardOnePool_2564 v0
du_rewardOnePool_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2754
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2566 ~v0 ~v1 = du_rewardOwners_2566
du_rewardOwners_2566 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2714
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
d_stakeDistr_2568 v0 ~v1 = du_stakeDistr_2568 v0
du_stakeDistr_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
du_stakeDistr_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2994
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2570 ~v0 ~v1 = du_uncurry'7504'_2570
du_uncurry'7504'_2570 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2570 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2824
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3048 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3024
d_SnapshotsOf_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3056
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2930 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2578 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2954 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2930 ->
  Integer
d_Δf_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2952 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2930 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2962
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2930 ->
  Integer
d_Δr_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2950 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2930 ->
  Integer
d_Δt_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2948 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2930 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2960
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2976
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2978
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2974
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3024 ->
  Integer
d_feeSS_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3040
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3024 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
d_go_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3038 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3024 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
d_mark_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3034
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3024 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
d_set_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3036
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2620 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2620 = C_SNAP_2662
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2624 ~v0 ~v1 v2 = du_certState_2624 v2
du_certState_2624 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
du_certState_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2634
      (coe d_'46'generalizedField'45'lstate_7059 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
d_utxoSt_2628 ~v0 ~v1 v2 = du_utxoSt_2628 v2
du_utxoSt_2628 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
du_utxoSt_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2630
      (coe d_'46'generalizedField'45'lstate_7059 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 -> Integer
d_fees_2636 ~v0 ~v1 v2 = du_fees_2636 v2
du_fees_2636 :: T_GeneralizeTel_7069 -> Integer
du_fees_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2426
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2630
         (coe d_'46'generalizedField'45'lstate_7059 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2638 ~v0 ~v1 v2 = du_utxo_2638 v2
du_utxo_2638 ::
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2424
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2630
         (coe d_'46'generalizedField'45'lstate_7059 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
d_dState_2642 ~v0 ~v1 v2 = du_dState_2642 v2
du_dState_2642 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
du_dState_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2634
         (coe d_'46'generalizedField'45'lstate_7059 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_pState_2646 ~v0 ~v1 v2 = du_pState_2646 v2
du_pState_2646 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
du_pState_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1588
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2634
         (coe d_'46'generalizedField'45'lstate_7059 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2656 ~v0 ~v1 v2 = du_rewards_2656 v2
du_rewards_2656 ::
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1556
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2634
            (coe d_'46'generalizedField'45'lstate_7059 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2658 ~v0 ~v1 v2 = du_stakeDelegs_2658 v2
du_stakeDelegs_2658 ::
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1554
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2634
            (coe d_'46'generalizedField'45'lstate_7059 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2660 ~v0 ~v1 v2 = du_voteDelegs_2660 v2
du_voteDelegs_2660 ::
  T_GeneralizeTel_7069 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1552
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2634
            (coe d_'46'generalizedField'45'lstate_7059 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5581 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7059 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2622
d_'46'generalizedField'45'lstate_7059 v0
  = case coe v0 of
      C_mkGeneralizeTel_7071 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7061 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
d_'46'generalizedField'45'mark_7061 v0
  = case coe v0 of
      C_mkGeneralizeTel_7071 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7063 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
d_'46'generalizedField'45'set_7063 v0
  = case coe v0 of
      C_mkGeneralizeTel_7071 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7065 ::
  T_GeneralizeTel_7069 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
d_'46'generalizedField'45'go_7065 v0
  = case coe v0 of
      C_mkGeneralizeTel_7071 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7067 ::
  T_GeneralizeTel_7069 -> Integer
d_'46'generalizedField'45'feeSS_7067 v0
  = case coe v0 of
      C_mkGeneralizeTel_7071 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7069 a0 a1 = ()
data T_GeneralizeTel_7069
  = C_mkGeneralizeTel_7071 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2622
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2966
                           Integer
