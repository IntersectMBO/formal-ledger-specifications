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
d_LState_2418 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2652 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2664
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2662 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2454 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2652 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
d_utxoSt_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2660
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  ()
d_BlocksMade_2534 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2536 ~v0 ~v1 = du_HasCast'45'Snapshot_2536
du_HasCast'45'Snapshot_2536 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3008
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2538 ~v0 ~v1 = du_HasCast'45'Snapshots_2538
du_HasCast'45'Snapshots_2538 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3086
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2540 ~v0 ~v1 = du_HasFees'45'Snapshots_2540
du_HasFees'45'Snapshots_2540 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3084
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1226
d_HasPools'45'Snapshot_2542 ~v0 ~v1 = du_HasPools'45'Snapshot_2542
du_HasPools'45'Snapshot_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1226
du_HasPools'45'Snapshot_2542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3006
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2544 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1274
d_HasStake'45'Snapshot_2548 ~v0 ~v1 = du_HasStake'45'Snapshot_2548
du_HasStake'45'Snapshot_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1274
du_HasStake'45'Snapshot_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3002
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1290
d_HasStakeDelegs'45'Snapshot_2550 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2550
du_HasStakeDelegs'45'Snapshot_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1290
du_HasStakeDelegs'45'Snapshot_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3004
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2552 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2558 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2562 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3068 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3044
d_SnapshotsOf_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3076
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2568 ~v0 ~v1 = du_maxPool_2568
du_maxPool_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2568
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2680
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2570 ~v0 ~v1
  = du_mkApparentPerformance_2570
du_mkApparentPerformance_2570 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2716
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2572 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2572
du_nonZero'45'1'43'max0'45'x_2572 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2676
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2574 ~v0 v1 = du_nonZero'45'1'47'n_2574 v1
du_nonZero'45'1'47'n_2574 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2574 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2576 ~v0 ~v1 = du_nonZero'45'max'45'1_2576
du_nonZero'45'max'45'1_2576 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2660
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2578 v0 ~v1 = du_poolStake_2578 v0
du_poolStake_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2824
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2580 v0 ~v1 = du_reward_2580 v0
du_reward_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2880
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1134 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2582 ~v0 ~v1 = du_rewardMember_2582
du_rewardMember_2582 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1134 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2754
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2584 v0 ~v1 = du_rewardOnePool_2584 v0
du_rewardOnePool_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2774
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1134 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2586 ~v0 ~v1 = du_rewardOwners_2586
du_rewardOwners_2586 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1134 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2734
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
d_stakeDistr_2588 v0 ~v1 = du_stakeDistr_2588 v0
du_stakeDistr_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
du_stakeDistr_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3014
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2590 ~v0 ~v1 = du_uncurry'7504'_2590
du_uncurry'7504'_2590 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2590 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2844
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3068 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3044
d_SnapshotsOf_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3076
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2950 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2598 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2950 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2974 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2950 ->
  Integer
d_Δf_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2972 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2950 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2982
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2950 ->
  Integer
d_Δr_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2970 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2950 ->
  Integer
d_Δt_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2968 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2950 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2980
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2996
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2998
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2994
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3044 ->
  Integer
d_feeSS_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3060
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
d_go_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3058 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
d_mark_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3054
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
d_set_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3056
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2640 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2640 = C_SNAP_2682
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2644 ~v0 ~v1 v2 = du_certState_2644 v2
du_certState_2644 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
du_certState_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2664
      (coe d_'46'generalizedField'45'lstate_7113 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
d_utxoSt_2648 ~v0 ~v1 v2 = du_utxoSt_2648 v2
du_utxoSt_2648 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
du_utxoSt_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2660
      (coe d_'46'generalizedField'45'lstate_7113 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 -> Integer
d_fees_2656 ~v0 ~v1 v2 = du_fees_2656 v2
du_fees_2656 :: T_GeneralizeTel_7123 -> Integer
du_fees_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2458
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2660
         (coe d_'46'generalizedField'45'lstate_7113 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2658 ~v0 ~v1 v2 = du_utxo_2658 v2
du_utxo_2658 ::
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2456
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2660
         (coe d_'46'generalizedField'45'lstate_7113 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
d_dState_2662 ~v0 ~v1 v2 = du_dState_2662 v2
du_dState_2662 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
du_dState_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2664
         (coe d_'46'generalizedField'45'lstate_7113 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402
d_pState_2666 ~v0 ~v1 v2 = du_pState_2666 v2
du_pState_2666 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402
du_pState_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1600
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2664
         (coe d_'46'generalizedField'45'lstate_7113 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2676 ~v0 ~v1 v2 = du_rewards_2676 v2
du_rewards_2676 ::
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1568
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2664
            (coe d_'46'generalizedField'45'lstate_7113 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2678 ~v0 ~v1 v2 = du_stakeDelegs_2678 v2
du_stakeDelegs_2678 ::
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1566
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2664
            (coe d_'46'generalizedField'45'lstate_7113 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2680 ~v0 ~v1 v2 = du_voteDelegs_2680 v2
du_voteDelegs_2680 ::
  T_GeneralizeTel_7123 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1564
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2664
            (coe d_'46'generalizedField'45'lstate_7113 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5635 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7113 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2652
d_'46'generalizedField'45'lstate_7113 v0
  = case coe v0 of
      C_mkGeneralizeTel_7125 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7115 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
d_'46'generalizedField'45'mark_7115 v0
  = case coe v0 of
      C_mkGeneralizeTel_7125 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7117 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
d_'46'generalizedField'45'set_7117 v0
  = case coe v0 of
      C_mkGeneralizeTel_7125 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7119 ::
  T_GeneralizeTel_7123 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
d_'46'generalizedField'45'go_7119 v0
  = case coe v0 of
      C_mkGeneralizeTel_7125 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7121 ::
  T_GeneralizeTel_7123 -> Integer
d_'46'generalizedField'45'feeSS_7121 v0
  = case coe v0 of
      C_mkGeneralizeTel_7125 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7123 a0 a1 = ()
data T_GeneralizeTel_7123
  = C_mkGeneralizeTel_7125 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2652
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2986
                           Integer
