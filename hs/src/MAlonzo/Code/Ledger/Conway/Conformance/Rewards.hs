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
d_LState_2504 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2536 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2736 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
d_certState_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2746 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2736 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  ()
d_BlocksMade_2620 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2622 ~v0 ~v1 = du_HasCast'45'Snapshot_2622
du_HasCast'45'Snapshot_2622 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3096
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2624 ~v0 ~v1 = du_HasCast'45'Snapshots_2624
du_HasCast'45'Snapshots_2624 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2624
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3174
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2626 ~v0 ~v1 = du_HasFees'45'Snapshots_2626
du_HasFees'45'Snapshots_2626 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3172
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1280
d_HasPools'45'Snapshot_2628 ~v0 ~v1 = du_HasPools'45'Snapshot_2628
du_HasPools'45'Snapshot_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1280
du_HasPools'45'Snapshot_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3094
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2630 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1328
d_HasStake'45'Snapshot_2634 ~v0 ~v1 = du_HasStake'45'Snapshot_2634
du_HasStake'45'Snapshot_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1328
du_HasStake'45'Snapshot_2634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3090
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1344
d_HasStakeDelegs'45'Snapshot_2636 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2636
du_HasStakeDelegs'45'Snapshot_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1344
du_HasStakeDelegs'45'Snapshot_2636
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3092
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2638 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2644 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2648 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132
d_SnapshotsOf_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3164
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2654 ~v0 ~v1 = du_maxPool_2654
du_maxPool_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2768
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2656 ~v0 ~v1
  = du_mkApparentPerformance_2656
du_mkApparentPerformance_2656 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2656
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2804
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2658 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2658
du_nonZero'45'1'43'max0'45'x_2658 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2658
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2764
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2660 ~v0 v1 = du_nonZero'45'1'47'n_2660 v1
du_nonZero'45'1'47'n_2660 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2660 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2662 ~v0 ~v1 = du_nonZero'45'max'45'1_2662
du_nonZero'45'max'45'1_2662 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2662
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2748
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2664 v0 ~v1 = du_poolStake_2664 v0
du_poolStake_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2912
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2666 v0 ~v1 = du_reward_2666 v0
du_reward_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2968
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1188 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2668 ~v0 ~v1 = du_rewardMember_2668
du_rewardMember_2668 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1188 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2668
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2842
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1188 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2670 v0 ~v1 = du_rewardOnePool_2670 v0
du_rewardOnePool_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1188 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2862
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1188 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2672 ~v0 ~v1 = du_rewardOwners_2672
du_rewardOwners_2672 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1188 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2672
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2822
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
d_stakeDistr_2674 v0 ~v1 = du_stakeDistr_2674 v0
du_stakeDistr_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
du_stakeDistr_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3102
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2676 ~v0 ~v1 = du_uncurry'7504'_2676
du_uncurry'7504'_2676 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2676 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2932
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132
d_SnapshotsOf_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3164
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2684 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3062 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  Integer
d_Δf_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3060 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3070
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  Integer
d_Δr_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3058 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  Integer
d_Δt_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3056 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3068
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132 ->
  Integer
d_feeSS_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3148
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
d_go_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3146 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
d_mark_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3142
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
d_set_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3144
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2726 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2726 = C_SNAP_2768
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
d_certState_2730 ~v0 ~v1 v2 = du_certState_2730 v2
du_certState_2730 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
du_certState_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
      (coe d_'46'generalizedField'45'lstate_7253 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_2734 ~v0 ~v1 v2 = du_utxoSt_2734 v2
du_utxoSt_2734 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
du_utxoSt_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
      (coe d_'46'generalizedField'45'lstate_7253 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 -> Integer
d_fees_2742 ~v0 ~v1 v2 = du_fees_2742 v2
du_fees_2742 :: T_GeneralizeTel_7263 -> Integer
du_fees_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2544
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
         (coe d_'46'generalizedField'45'lstate_7253 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2744 ~v0 ~v1 v2 = du_utxo_2744 v2
du_utxo_2744 ::
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
         (coe d_'46'generalizedField'45'lstate_7253 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1604
d_dState_2748 ~v0 ~v1 v2 = du_dState_2748 v2
du_dState_2748 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1604
du_dState_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
         (coe d_'46'generalizedField'45'lstate_7253 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
d_pState_2752 ~v0 ~v1 v2 = du_pState_2752 v2
du_pState_2752 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
du_pState_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
         (coe d_'46'generalizedField'45'lstate_7253 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2762 ~v0 ~v1 v2 = du_rewards_2762 v2
du_rewards_2762 ::
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
            (coe d_'46'generalizedField'45'lstate_7253 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2764 ~v0 ~v1 v2 = du_stakeDelegs_2764 v2
du_stakeDelegs_2764 ::
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1616
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
            (coe d_'46'generalizedField'45'lstate_7253 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2766 ~v0 ~v1 v2 = du_voteDelegs_2766 v2
du_voteDelegs_2766 ::
  T_GeneralizeTel_7263 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1614
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
            (coe d_'46'generalizedField'45'lstate_7253 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5775 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7253 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2736
d_'46'generalizedField'45'lstate_7253 v0
  = case coe v0 of
      C_mkGeneralizeTel_7265 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7255 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
d_'46'generalizedField'45'mark_7255 v0
  = case coe v0 of
      C_mkGeneralizeTel_7265 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7257 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
d_'46'generalizedField'45'set_7257 v0
  = case coe v0 of
      C_mkGeneralizeTel_7265 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7259 ::
  T_GeneralizeTel_7263 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
d_'46'generalizedField'45'go_7259 v0
  = case coe v0 of
      C_mkGeneralizeTel_7265 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7261 ::
  T_GeneralizeTel_7263 -> Integer
d_'46'generalizedField'45'feeSS_7261 v0
  = case coe v0 of
      C_mkGeneralizeTel_7265 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7263 a0 a1 = ()
data T_GeneralizeTel_7263
  = C_mkGeneralizeTel_7265 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2736
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074
                           Integer
