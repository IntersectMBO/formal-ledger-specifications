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
d_LState_2430 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2462 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2664 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
d_certState_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2676
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2464 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2664 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2674 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2466 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2664 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_utxoSt_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2672
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  ()
d_BlocksMade_2546 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2548 ~v0 ~v1 = du_HasCast'45'Snapshot_2548
du_HasCast'45'Snapshot_2548 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3020
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2550 ~v0 ~v1 = du_HasCast'45'Snapshots_2550
du_HasCast'45'Snapshots_2550 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3098
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2552 ~v0 ~v1 = du_HasFees'45'Snapshots_2552
du_HasFees'45'Snapshots_2552 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3096
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1224
d_HasPools'45'Snapshot_2554 ~v0 ~v1 = du_HasPools'45'Snapshot_2554
du_HasPools'45'Snapshot_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1224
du_HasPools'45'Snapshot_2554
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3018
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2556 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1272
d_HasStake'45'Snapshot_2560 ~v0 ~v1 = du_HasStake'45'Snapshot_2560
du_HasStake'45'Snapshot_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1272
du_HasStake'45'Snapshot_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3014
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1288
d_HasStakeDelegs'45'Snapshot_2562 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2562
du_HasStakeDelegs'45'Snapshot_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1288
du_HasStakeDelegs'45'Snapshot_2562
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3016
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2564 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2570 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2574 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3080 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3056
d_SnapshotsOf_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3088
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2580 ~v0 ~v1 = du_maxPool_2580
du_maxPool_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2692
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2582 ~v0 ~v1
  = du_mkApparentPerformance_2582
du_mkApparentPerformance_2582 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2728
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2584 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2584
du_nonZero'45'1'43'max0'45'x_2584 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2688
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2586 ~v0 v1 = du_nonZero'45'1'47'n_2586 v1
du_nonZero'45'1'47'n_2586 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2586 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2588 ~v0 ~v1 = du_nonZero'45'max'45'1_2588
du_nonZero'45'max'45'1_2588 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2588
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2672
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2590 v0 ~v1 = du_poolStake_2590 v0
du_poolStake_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2836
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2592 v0 ~v1 = du_reward_2592 v0
du_reward_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2892
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1132 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2594 ~v0 ~v1 = du_rewardMember_2594
du_rewardMember_2594 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1132 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2766
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2596 v0 ~v1 = du_rewardOnePool_2596 v0
du_rewardOnePool_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2786
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1132 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2598 ~v0 ~v1 = du_rewardOwners_2598
du_rewardOwners_2598 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1132 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2746
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
d_stakeDistr_2600 v0 ~v1 = du_stakeDistr_2600 v0
du_stakeDistr_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
du_stakeDistr_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3026
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2602 ~v0 ~v1 = du_uncurry'7504'_2602
du_uncurry'7504'_2602 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2602 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2856
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3080 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3056
d_SnapshotsOf_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3088
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2610 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2986 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  Integer
d_Δf_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2984 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2994
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  Integer
d_Δr_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2982 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  Integer
d_Δt_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2980 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2992
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3008
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3010
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3006
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3056 ->
  Integer
d_feeSS_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3072
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3056 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
d_go_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3070 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3056 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
d_mark_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3066
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3056 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
d_set_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3068
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2652 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2652 = C_SNAP_2694
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
d_certState_2656 ~v0 ~v1 v2 = du_certState_2656 v2
du_certState_2656 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
du_certState_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2676
      (coe d_'46'generalizedField'45'lstate_7129 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_utxoSt_2660 ~v0 ~v1 v2 = du_utxoSt_2660 v2
du_utxoSt_2660 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
du_utxoSt_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2672
      (coe d_'46'generalizedField'45'lstate_7129 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 -> Integer
d_fees_2668 ~v0 ~v1 v2 = du_fees_2668 v2
du_fees_2668 :: T_GeneralizeTel_7139 -> Integer
du_fees_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2470
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2672
         (coe d_'46'generalizedField'45'lstate_7129 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2670 ~v0 ~v1 v2 = du_utxo_2670 v2
du_utxo_2670 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2468
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2672
         (coe d_'46'generalizedField'45'lstate_7129 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1556
d_dState_2674 ~v0 ~v1 v2 = du_dState_2674 v2
du_dState_2674 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1556
du_dState_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1600
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2676
         (coe d_'46'generalizedField'45'lstate_7129 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1404
d_pState_2678 ~v0 ~v1 v2 = du_pState_2678 v2
du_pState_2678 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1404
du_pState_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1602
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2676
         (coe d_'46'generalizedField'45'lstate_7129 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2688 ~v0 ~v1 v2 = du_rewards_2688 v2
du_rewards_2688 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1570
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2676
            (coe d_'46'generalizedField'45'lstate_7129 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2690 ~v0 ~v1 v2 = du_stakeDelegs_2690 v2
du_stakeDelegs_2690 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1568
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2676
            (coe d_'46'generalizedField'45'lstate_7129 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2692 ~v0 ~v1 v2 = du_voteDelegs_2692 v2
du_voteDelegs_2692 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1566
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2676
            (coe d_'46'generalizedField'45'lstate_7129 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5651 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7129 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2664
d_'46'generalizedField'45'lstate_7129 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7131 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
d_'46'generalizedField'45'mark_7131 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7133 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
d_'46'generalizedField'45'set_7133 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7135 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
d_'46'generalizedField'45'go_7135 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7137 ::
  T_GeneralizeTel_7139 -> Integer
d_'46'generalizedField'45'feeSS_7137 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7139 a0 a1 = ()
data T_GeneralizeTel_7139
  = C_mkGeneralizeTel_7141 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2664
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2998
                           Integer
