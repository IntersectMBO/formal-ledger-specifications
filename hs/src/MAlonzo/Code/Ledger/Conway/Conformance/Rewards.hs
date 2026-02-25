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
d_LState_2446 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2680 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2692
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2480 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2690 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2482 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2680 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_utxoSt_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2688
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BlocksMade_2562 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2564 ~v0 ~v1 = du_HasCast'45'Snapshot_2564
du_HasCast'45'Snapshot_2564 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3036
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2566 ~v0 ~v1 = du_HasCast'45'Snapshots_2566
du_HasCast'45'Snapshots_2566 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3114
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2568 ~v0 ~v1 = du_HasFees'45'Snapshots_2568
du_HasFees'45'Snapshots_2568 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2568
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3112
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1240
d_HasPools'45'Snapshot_2570 ~v0 ~v1 = du_HasPools'45'Snapshot_2570
du_HasPools'45'Snapshot_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1240
du_HasPools'45'Snapshot_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3034
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2572 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1288
d_HasStake'45'Snapshot_2576 ~v0 ~v1 = du_HasStake'45'Snapshot_2576
du_HasStake'45'Snapshot_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1288
du_HasStake'45'Snapshot_2576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3030
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1304
d_HasStakeDelegs'45'Snapshot_2578 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2578
du_HasStakeDelegs'45'Snapshot_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1304
du_HasStakeDelegs'45'Snapshot_2578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3032
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2580 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2586 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2590 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3096 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3072
d_SnapshotsOf_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3104
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2596 ~v0 ~v1 = du_maxPool_2596
du_maxPool_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2708
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2598 ~v0 ~v1
  = du_mkApparentPerformance_2598
du_mkApparentPerformance_2598 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2744
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2600 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2600
du_nonZero'45'1'43'max0'45'x_2600 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2704
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2602 ~v0 v1 = du_nonZero'45'1'47'n_2602 v1
du_nonZero'45'1'47'n_2602 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2602 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2604 ~v0 ~v1 = du_nonZero'45'max'45'1_2604
du_nonZero'45'max'45'1_2604 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2688
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2606 v0 ~v1 = du_poolStake_2606 v0
du_poolStake_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2852
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2608 v0 ~v1 = du_reward_2608 v0
du_reward_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2908
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2610 ~v0 ~v1 = du_rewardMember_2610
du_rewardMember_2610 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2782
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2612 v0 ~v1 = du_rewardOnePool_2612 v0
du_rewardOnePool_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2802
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2614 ~v0 ~v1 = du_rewardOwners_2614
du_rewardOwners_2614 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2762
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1420 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
d_stakeDistr_2616 v0 ~v1 = du_stakeDistr_2616 v0
du_stakeDistr_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1420 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
du_stakeDistr_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3042
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2618 ~v0 ~v1 = du_uncurry'7504'_2618
du_uncurry'7504'_2618 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2618 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2872
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3096 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3072
d_SnapshotsOf_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3104
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2626 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3002 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  Integer
d_Δf_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3000 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3010
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  Integer
d_Δr_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2998 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  Integer
d_Δt_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2996 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3008
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3024
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3026
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3022
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3072 ->
  Integer
d_feeSS_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3088
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3072 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
d_go_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3086 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3072 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
d_mark_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3082
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3072 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
d_set_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3084
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2668 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2668 = C_SNAP_2710
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2672 ~v0 ~v1 v2 = du_certState_2672 v2
du_certState_2672 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
du_certState_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2692
      (coe d_'46'generalizedField'45'lstate_7177 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_utxoSt_2676 ~v0 ~v1 v2 = du_utxoSt_2676 v2
du_utxoSt_2676 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
du_utxoSt_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2688
      (coe d_'46'generalizedField'45'lstate_7177 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 -> Integer
d_fees_2684 ~v0 ~v1 v2 = du_fees_2684 v2
du_fees_2684 :: T_GeneralizeTel_7187 -> Integer
du_fees_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2486
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2688
         (coe d_'46'generalizedField'45'lstate_7177 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2686 ~v0 ~v1 v2 = du_utxo_2686 v2
du_utxo_2686 ::
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2484
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2688
         (coe d_'46'generalizedField'45'lstate_7177 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
d_dState_2690 ~v0 ~v1 v2 = du_dState_2690 v2
du_dState_2690 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
du_dState_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2692
         (coe d_'46'generalizedField'45'lstate_7177 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1420
d_pState_2694 ~v0 ~v1 v2 = du_pState_2694 v2
du_pState_2694 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1420
du_pState_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1618
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2692
         (coe d_'46'generalizedField'45'lstate_7177 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2704 ~v0 ~v1 v2 = du_rewards_2704 v2
du_rewards_2704 ::
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1586
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2692
            (coe d_'46'generalizedField'45'lstate_7177 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2706 ~v0 ~v1 v2 = du_stakeDelegs_2706 v2
du_stakeDelegs_2706 ::
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1584
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2692
            (coe d_'46'generalizedField'45'lstate_7177 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2708 ~v0 ~v1 v2 = du_voteDelegs_2708 v2
du_voteDelegs_2708 ::
  T_GeneralizeTel_7187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1582
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2692
            (coe d_'46'generalizedField'45'lstate_7177 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5699 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7177 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2680
d_'46'generalizedField'45'lstate_7177 v0
  = case coe v0 of
      C_mkGeneralizeTel_7189 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7179 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
d_'46'generalizedField'45'mark_7179 v0
  = case coe v0 of
      C_mkGeneralizeTel_7189 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7181 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
d_'46'generalizedField'45'set_7181 v0
  = case coe v0 of
      C_mkGeneralizeTel_7189 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7183 ::
  T_GeneralizeTel_7187 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
d_'46'generalizedField'45'go_7183 v0
  = case coe v0 of
      C_mkGeneralizeTel_7189 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7185 ::
  T_GeneralizeTel_7187 -> Integer
d_'46'generalizedField'45'feeSS_7185 v0
  = case coe v0 of
      C_mkGeneralizeTel_7189 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7187 a0 a1 = ()
data T_GeneralizeTel_7187
  = C_mkGeneralizeTel_7189 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2680
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3014
                           Integer
