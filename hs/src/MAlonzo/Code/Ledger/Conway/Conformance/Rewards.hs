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
d_LState_2472 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2704 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2716
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2704 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2714 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2704 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_utxoSt_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2712
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  ()
d_BlocksMade_2588 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2590 ~v0 ~v1 = du_HasCast'45'Snapshot_2590
du_HasCast'45'Snapshot_2590 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2590
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3064
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2592 ~v0 ~v1 = du_HasCast'45'Snapshots_2592
du_HasCast'45'Snapshots_2592 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3142
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2594 ~v0 ~v1 = du_HasFees'45'Snapshots_2594
du_HasFees'45'Snapshots_2594 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3140
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248
d_HasPools'45'Snapshot_2596 ~v0 ~v1 = du_HasPools'45'Snapshot_2596
du_HasPools'45'Snapshot_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248
du_HasPools'45'Snapshot_2596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3062
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2598 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1296
d_HasStake'45'Snapshot_2602 ~v0 ~v1 = du_HasStake'45'Snapshot_2602
du_HasStake'45'Snapshot_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1296
du_HasStake'45'Snapshot_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3058
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312
d_HasStakeDelegs'45'Snapshot_2604 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2604
du_HasStakeDelegs'45'Snapshot_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312
du_HasStakeDelegs'45'Snapshot_2604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3060
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2606 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2612 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2616 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3124 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3100
d_SnapshotsOf_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3132
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2622 ~v0 ~v1 = du_maxPool_2622
du_maxPool_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2736
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2624 ~v0 ~v1
  = du_mkApparentPerformance_2624
du_mkApparentPerformance_2624 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2624
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2772
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2626 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2626
du_nonZero'45'1'43'max0'45'x_2626 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2732
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2628 ~v0 v1 = du_nonZero'45'1'47'n_2628 v1
du_nonZero'45'1'47'n_2628 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2628 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2630 ~v0 ~v1 = du_nonZero'45'max'45'1_2630
du_nonZero'45'max'45'1_2630 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2630
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2716
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2632 v0 ~v1 = du_poolStake_2632 v0
du_poolStake_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2880
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2634 v0 ~v1 = du_reward_2634 v0
du_reward_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2936
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2636 ~v0 ~v1 = du_rewardMember_2636
du_rewardMember_2636 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2636
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2810
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2638 v0 ~v1 = du_rewardOnePool_2638 v0
du_rewardOnePool_2638 ::
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
du_rewardOnePool_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2830
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2640 ~v0 ~v1 = du_rewardOwners_2640
du_rewardOwners_2640 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2790
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
d_stakeDistr_2642 v0 ~v1 = du_stakeDistr_2642 v0
du_stakeDistr_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
du_stakeDistr_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3070
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2644 ~v0 ~v1 = du_uncurry'7504'_2644
du_uncurry'7504'_2644 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2644 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2900
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3124 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3100
d_SnapshotsOf_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3132
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2652 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3030 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006 ->
  Integer
d_Δf_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3028 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3038
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006 ->
  Integer
d_Δr_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3026 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006 ->
  Integer
d_Δt_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3024 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3036
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3052
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3054
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3050
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3100 ->
  Integer
d_feeSS_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3116
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
d_go_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3114 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
d_mark_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3110
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
d_set_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3112
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2694 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2694 = C_SNAP_2736
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2698 ~v0 ~v1 v2 = du_certState_2698 v2
du_certState_2698 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
du_certState_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2716
      (coe d_'46'generalizedField'45'lstate_7227 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_utxoSt_2702 ~v0 ~v1 v2 = du_utxoSt_2702 v2
du_utxoSt_2702 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
du_utxoSt_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2712
      (coe d_'46'generalizedField'45'lstate_7227 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 -> Integer
d_fees_2710 ~v0 ~v1 v2 = du_fees_2710 v2
du_fees_2710 :: T_GeneralizeTel_7237 -> Integer
du_fees_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2512
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2712
         (coe d_'46'generalizedField'45'lstate_7227 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2712 ~v0 ~v1 v2 = du_utxo_2712 v2
du_utxo_2712 ::
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2712
         (coe d_'46'generalizedField'45'lstate_7227 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
d_dState_2716 ~v0 ~v1 v2 = du_dState_2716 v2
du_dState_2716 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
du_dState_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2716
         (coe d_'46'generalizedField'45'lstate_7227 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_pState_2720 ~v0 ~v1 v2 = du_pState_2720 v2
du_pState_2720 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
du_pState_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1618
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2716
         (coe d_'46'generalizedField'45'lstate_7227 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2730 ~v0 ~v1 v2 = du_rewards_2730 v2
du_rewards_2730 ::
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1586
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2716
            (coe d_'46'generalizedField'45'lstate_7227 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2732 ~v0 ~v1 v2 = du_stakeDelegs_2732 v2
du_stakeDelegs_2732 ::
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1584
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2716
            (coe d_'46'generalizedField'45'lstate_7227 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2734 ~v0 ~v1 v2 = du_voteDelegs_2734 v2
du_voteDelegs_2734 ::
  T_GeneralizeTel_7237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1582
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2716
            (coe d_'46'generalizedField'45'lstate_7227 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5749 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7227 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2704
d_'46'generalizedField'45'lstate_7227 v0
  = case coe v0 of
      C_mkGeneralizeTel_7239 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7229 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
d_'46'generalizedField'45'mark_7229 v0
  = case coe v0 of
      C_mkGeneralizeTel_7239 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7231 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
d_'46'generalizedField'45'set_7231 v0
  = case coe v0 of
      C_mkGeneralizeTel_7239 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7233 ::
  T_GeneralizeTel_7237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
d_'46'generalizedField'45'go_7233 v0
  = case coe v0 of
      C_mkGeneralizeTel_7239 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7235 ::
  T_GeneralizeTel_7237 -> Integer
d_'46'generalizedField'45'feeSS_7235 v0
  = case coe v0 of
      C_mkGeneralizeTel_7239 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7237 a0 a1 = ()
data T_GeneralizeTel_7237
  = C_mkGeneralizeTel_7239 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2704
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3042
                           Integer
