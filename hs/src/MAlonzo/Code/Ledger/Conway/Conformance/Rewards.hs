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
d_LState_2482 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
d_certState_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2724 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_utxoSt_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_BlocksMade_2598 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2600 ~v0 ~v1 = du_HasCast'45'Snapshot_2600
du_HasCast'45'Snapshot_2600 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3072
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2602 ~v0 ~v1 = du_HasCast'45'Snapshots_2602
du_HasCast'45'Snapshots_2602 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3150
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2604 ~v0 ~v1 = du_HasFees'45'Snapshots_2604
du_HasFees'45'Snapshots_2604 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3148
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248
d_HasPools'45'Snapshot_2606 ~v0 ~v1 = du_HasPools'45'Snapshot_2606
du_HasPools'45'Snapshot_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248
du_HasPools'45'Snapshot_2606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3070
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2608 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1296
d_HasStake'45'Snapshot_2612 ~v0 ~v1 = du_HasStake'45'Snapshot_2612
du_HasStake'45'Snapshot_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1296
du_HasStake'45'Snapshot_2612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3066
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312
d_HasStakeDelegs'45'Snapshot_2614 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2614
du_HasStakeDelegs'45'Snapshot_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312
du_HasStakeDelegs'45'Snapshot_2614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3068
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2616 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2622 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2626 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3132 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108
d_SnapshotsOf_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3140
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2632 ~v0 ~v1 = du_maxPool_2632
du_maxPool_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2632
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2744
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2634 ~v0 ~v1
  = du_mkApparentPerformance_2634
du_mkApparentPerformance_2634 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2780
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2636 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2636
du_nonZero'45'1'43'max0'45'x_2636 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2636
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2740
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2638 ~v0 v1 = du_nonZero'45'1'47'n_2638 v1
du_nonZero'45'1'47'n_2638 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2638 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2640 ~v0 ~v1 = du_nonZero'45'max'45'1_2640
du_nonZero'45'max'45'1_2640 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2724
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2642 v0 ~v1 = du_poolStake_2642 v0
du_poolStake_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2888
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2644 v0 ~v1 = du_reward_2644 v0
du_reward_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2944
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2646 ~v0 ~v1 = du_rewardMember_2646
du_rewardMember_2646 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2818
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2648 v0 ~v1 = du_rewardOnePool_2648 v0
du_rewardOnePool_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2838
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2650 ~v0 ~v1 = du_rewardOwners_2650
du_rewardOwners_2650 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2650
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2798
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
d_stakeDistr_2652 v0 ~v1 = du_stakeDistr_2652 v0
du_stakeDistr_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
du_stakeDistr_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3078
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2654 ~v0 ~v1 = du_uncurry'7504'_2654
du_uncurry'7504'_2654 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2654 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2908
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3132 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108
d_SnapshotsOf_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3140
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2662 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3038 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  Integer
d_Δf_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3036 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3046
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  Integer
d_Δr_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3034 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  Integer
d_Δt_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3032 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3044
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108 ->
  Integer
d_feeSS_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3124
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
d_go_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3122 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
d_mark_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3118
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
d_set_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3120
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2704 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2704 = C_SNAP_2746
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
d_certState_2708 ~v0 ~v1 v2 = du_certState_2708 v2
du_certState_2708 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
du_certState_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
      (coe d_'46'generalizedField'45'lstate_7249 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_utxoSt_2712 ~v0 ~v1 v2 = du_utxoSt_2712 v2
du_utxoSt_2712 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
du_utxoSt_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
      (coe d_'46'generalizedField'45'lstate_7249 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 -> Integer
d_fees_2720 ~v0 ~v1 v2 = du_fees_2720 v2
du_fees_2720 :: T_GeneralizeTel_7259 -> Integer
du_fees_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2520
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
         (coe d_'46'generalizedField'45'lstate_7249 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2722 ~v0 ~v1 v2 = du_utxo_2722 v2
du_utxo_2722 ::
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
         (coe d_'46'generalizedField'45'lstate_7249 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1580
d_dState_2726 ~v0 ~v1 v2 = du_dState_2726 v2
du_dState_2726 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1580
du_dState_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
         (coe d_'46'generalizedField'45'lstate_7249 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_pState_2730 ~v0 ~v1 v2 = du_pState_2730 v2
du_pState_2730 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
du_pState_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
         (coe d_'46'generalizedField'45'lstate_7249 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2740 ~v0 ~v1 v2 = du_rewards_2740 v2
du_rewards_2740 ::
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
            (coe d_'46'generalizedField'45'lstate_7249 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2742 ~v0 ~v1 v2 = du_stakeDelegs_2742 v2
du_stakeDelegs_2742 ::
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1592
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
            (coe d_'46'generalizedField'45'lstate_7249 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2744 ~v0 ~v1 v2 = du_voteDelegs_2744 v2
du_voteDelegs_2744 ::
  T_GeneralizeTel_7259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1590
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
            (coe d_'46'generalizedField'45'lstate_7249 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5771 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7249 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2714
d_'46'generalizedField'45'lstate_7249 v0
  = case coe v0 of
      C_mkGeneralizeTel_7261 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7251 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
d_'46'generalizedField'45'mark_7251 v0
  = case coe v0 of
      C_mkGeneralizeTel_7261 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7253 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
d_'46'generalizedField'45'set_7253 v0
  = case coe v0 of
      C_mkGeneralizeTel_7261 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7255 ::
  T_GeneralizeTel_7259 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
d_'46'generalizedField'45'go_7255 v0
  = case coe v0 of
      C_mkGeneralizeTel_7261 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7257 ::
  T_GeneralizeTel_7259 -> Integer
d_'46'generalizedField'45'feeSS_7257 v0
  = case coe v0 of
      C_mkGeneralizeTel_7261 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7259 a0 a1 = ()
data T_GeneralizeTel_7259
  = C_mkGeneralizeTel_7261 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2714
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050
                           Integer
