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
d_LState_2522 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2754 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
d_certState_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2766
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2754 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2764 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2754 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2762
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_BlocksMade_2638 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2640 ~v0 ~v1 = du_HasCast'45'Snapshot_2640
du_HasCast'45'Snapshot_2640 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3114
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2642 ~v0 ~v1 = du_HasCast'45'Snapshots_2642
du_HasCast'45'Snapshots_2642 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2642
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3192
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2644 ~v0 ~v1 = du_HasFees'45'Snapshots_2644
du_HasFees'45'Snapshots_2644 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2644
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3190
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
d_HasPools'45'Snapshot_2646 ~v0 ~v1 = du_HasPools'45'Snapshot_2646
du_HasPools'45'Snapshot_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
du_HasPools'45'Snapshot_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3112
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2648 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1346
d_HasStake'45'Snapshot_2652 ~v0 ~v1 = du_HasStake'45'Snapshot_2652
du_HasStake'45'Snapshot_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1346
du_HasStake'45'Snapshot_2652
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3108
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
d_HasStakeDelegs'45'Snapshot_2654 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2654
du_HasStakeDelegs'45'Snapshot_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
du_HasStakeDelegs'45'Snapshot_2654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3110
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2656 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2662 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2666 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3174 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3150
d_SnapshotsOf_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3182
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2672 ~v0 ~v1 = du_maxPool_2672
du_maxPool_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2672
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2786
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2674 ~v0 ~v1
  = du_mkApparentPerformance_2674
du_mkApparentPerformance_2674 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2674
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2822
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2676 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2676
du_nonZero'45'1'43'max0'45'x_2676 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2676
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2782
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2678 ~v0 v1 = du_nonZero'45'1'47'n_2678 v1
du_nonZero'45'1'47'n_2678 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2678 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2680 ~v0 ~v1 = du_nonZero'45'max'45'1_2680
du_nonZero'45'max'45'1_2680 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2680
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2766
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2682 v0 ~v1 = du_poolStake_2682 v0
du_poolStake_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2930
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2684 v0 ~v1 = du_reward_2684 v0
du_reward_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2986
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2686 ~v0 ~v1 = du_rewardMember_2686
du_rewardMember_2686 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2860
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2688 v0 ~v1 = du_rewardOnePool_2688 v0
du_rewardOnePool_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2880
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2690 ~v0 ~v1 = du_rewardOwners_2690
du_rewardOwners_2690 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2690
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2840
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
d_stakeDistr_2692 v0 ~v1 = du_stakeDistr_2692 v0
du_stakeDistr_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
du_stakeDistr_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3120
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2694 ~v0 ~v1 = du_uncurry'7504'_2694
du_uncurry'7504'_2694 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2694 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2950
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3174 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3150
d_SnapshotsOf_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3182
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2702 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3080 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056 ->
  Integer
d_Δf_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3078 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3088
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056 ->
  Integer
d_Δr_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3076 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056 ->
  Integer
d_Δt_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3074 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3086
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3102
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3104
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3100
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3150 ->
  Integer
d_feeSS_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3166
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
d_go_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3164 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
d_mark_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3160
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
d_set_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3162
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2744 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2744 = C_SNAP_2786
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
d_certState_2748 ~v0 ~v1 v2 = du_certState_2748 v2
du_certState_2748 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
du_certState_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2766
      (coe d_'46'generalizedField'45'lstate_7265 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2752 ~v0 ~v1 v2 = du_utxoSt_2752 v2
du_utxoSt_2752 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
du_utxoSt_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2762
      (coe d_'46'generalizedField'45'lstate_7265 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 -> Integer
d_fees_2760 ~v0 ~v1 v2 = du_fees_2760 v2
du_fees_2760 :: T_GeneralizeTel_7275 -> Integer
du_fees_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2562
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2762
         (coe d_'46'generalizedField'45'lstate_7265 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2762 ~v0 ~v1 v2 = du_utxo_2762 v2
du_utxo_2762 ::
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2560
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2762
         (coe d_'46'generalizedField'45'lstate_7265 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1622
d_dState_2766 ~v0 ~v1 v2 = du_dState_2766 v2
du_dState_2766 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1622
du_dState_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1666
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2766
         (coe d_'46'generalizedField'45'lstate_7265 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_pState_2770 ~v0 ~v1 v2 = du_pState_2770 v2
du_pState_2770 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
du_pState_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1668
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2766
         (coe d_'46'generalizedField'45'lstate_7265 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2780 ~v0 ~v1 v2 = du_rewards_2780 v2
du_rewards_2780 ::
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1636
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1666
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2766
            (coe d_'46'generalizedField'45'lstate_7265 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2782 ~v0 ~v1 v2 = du_stakeDelegs_2782 v2
du_stakeDelegs_2782 ::
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1634
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1666
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2766
            (coe d_'46'generalizedField'45'lstate_7265 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2784 ~v0 ~v1 v2 = du_voteDelegs_2784 v2
du_voteDelegs_2784 ::
  T_GeneralizeTel_7275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1632
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1666
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2766
            (coe d_'46'generalizedField'45'lstate_7265 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5787 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7265 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2754
d_'46'generalizedField'45'lstate_7265 v0
  = case coe v0 of
      C_mkGeneralizeTel_7277 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7267 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
d_'46'generalizedField'45'mark_7267 v0
  = case coe v0 of
      C_mkGeneralizeTel_7277 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7269 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
d_'46'generalizedField'45'set_7269 v0
  = case coe v0 of
      C_mkGeneralizeTel_7277 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7271 ::
  T_GeneralizeTel_7275 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
d_'46'generalizedField'45'go_7271 v0
  = case coe v0 of
      C_mkGeneralizeTel_7277 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7273 ::
  T_GeneralizeTel_7275 -> Integer
d_'46'generalizedField'45'feeSS_7273 v0
  = case coe v0 of
      C_mkGeneralizeTel_7277 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7275 a0 a1 = ()
data T_GeneralizeTel_7275
  = C_mkGeneralizeTel_7277 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2754
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3092
                           Integer
