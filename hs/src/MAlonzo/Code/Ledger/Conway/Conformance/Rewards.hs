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
d_LState_2428 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2460 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2662 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2674
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2462 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2662 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2672 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2464 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2662 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_utxoSt_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2670
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BlocksMade_2544 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2546 ~v0 ~v1 = du_HasCast'45'Snapshot_2546
du_HasCast'45'Snapshot_2546 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3018
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2548 ~v0 ~v1 = du_HasCast'45'Snapshots_2548
du_HasCast'45'Snapshots_2548 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3096
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2550 ~v0 ~v1 = du_HasFees'45'Snapshots_2550
du_HasFees'45'Snapshots_2550 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3094
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1222
d_HasPools'45'Snapshot_2552 ~v0 ~v1 = du_HasPools'45'Snapshot_2552
du_HasPools'45'Snapshot_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1222
du_HasPools'45'Snapshot_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3016
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2554 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1270
d_HasStake'45'Snapshot_2558 ~v0 ~v1 = du_HasStake'45'Snapshot_2558
du_HasStake'45'Snapshot_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1270
du_HasStake'45'Snapshot_2558
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3012
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1286
d_HasStakeDelegs'45'Snapshot_2560 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2560
du_HasStakeDelegs'45'Snapshot_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1286
du_HasStakeDelegs'45'Snapshot_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3014
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2562 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2568 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2572 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3078 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3054
d_SnapshotsOf_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3086
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2578 ~v0 ~v1 = du_maxPool_2578
du_maxPool_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2690
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2580 ~v0 ~v1
  = du_mkApparentPerformance_2580
du_mkApparentPerformance_2580 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2726
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2582 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2582
du_nonZero'45'1'43'max0'45'x_2582 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2686
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2584 ~v0 v1 = du_nonZero'45'1'47'n_2584 v1
du_nonZero'45'1'47'n_2584 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2584 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2586 ~v0 ~v1 = du_nonZero'45'max'45'1_2586
du_nonZero'45'max'45'1_2586 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2670
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2588 v0 ~v1 = du_poolStake_2588 v0
du_poolStake_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2834
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2590 v0 ~v1 = du_reward_2590 v0
du_reward_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2890
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1130 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2592 ~v0 ~v1 = du_rewardMember_2592
du_rewardMember_2592 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1130 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2764
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2594 v0 ~v1 = du_rewardOnePool_2594 v0
du_rewardOnePool_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2784
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1130 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2596 ~v0 ~v1 = du_rewardOwners_2596
du_rewardOwners_2596 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1130 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2744
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
d_stakeDistr_2598 v0 ~v1 = du_stakeDistr_2598 v0
du_stakeDistr_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
du_stakeDistr_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3024
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2600 ~v0 ~v1 = du_uncurry'7504'_2600
du_uncurry'7504'_2600 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2600 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2854
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3078 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3054
d_SnapshotsOf_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3086
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2608 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2984 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960 ->
  Integer
d_Δf_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2982 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2992
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960 ->
  Integer
d_Δr_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2980 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960 ->
  Integer
d_Δt_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2978 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2990
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3006
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3008
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3004
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3054 ->
  Integer
d_feeSS_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3070
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3054 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
d_go_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3068 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3054 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
d_mark_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3064
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3054 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
d_set_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3066
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2650 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2650 = C_SNAP_2692
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2654 ~v0 ~v1 v2 = du_certState_2654 v2
du_certState_2654 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
du_certState_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2674
      (coe d_'46'generalizedField'45'lstate_7127 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_utxoSt_2658 ~v0 ~v1 v2 = du_utxoSt_2658 v2
du_utxoSt_2658 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
du_utxoSt_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2670
      (coe d_'46'generalizedField'45'lstate_7127 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 -> Integer
d_fees_2666 ~v0 ~v1 v2 = du_fees_2666 v2
du_fees_2666 :: T_GeneralizeTel_7137 -> Integer
du_fees_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2468
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2670
         (coe d_'46'generalizedField'45'lstate_7127 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2668 ~v0 ~v1 v2 = du_utxo_2668 v2
du_utxo_2668 ::
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2466
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2670
         (coe d_'46'generalizedField'45'lstate_7127 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
d_dState_2672 ~v0 ~v1 v2 = du_dState_2672 v2
du_dState_2672 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
du_dState_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2674
         (coe d_'46'generalizedField'45'lstate_7127 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402
d_pState_2676 ~v0 ~v1 v2 = du_pState_2676 v2
du_pState_2676 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402
du_pState_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1600
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2674
         (coe d_'46'generalizedField'45'lstate_7127 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2686 ~v0 ~v1 v2 = du_rewards_2686 v2
du_rewards_2686 ::
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1568
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2674
            (coe d_'46'generalizedField'45'lstate_7127 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2688 ~v0 ~v1 v2 = du_stakeDelegs_2688 v2
du_stakeDelegs_2688 ::
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1566
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2674
            (coe d_'46'generalizedField'45'lstate_7127 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2690 ~v0 ~v1 v2 = du_voteDelegs_2690 v2
du_voteDelegs_2690 ::
  T_GeneralizeTel_7137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1564
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2674
            (coe d_'46'generalizedField'45'lstate_7127 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5649 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7127 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2662
d_'46'generalizedField'45'lstate_7127 v0
  = case coe v0 of
      C_mkGeneralizeTel_7139 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7129 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
d_'46'generalizedField'45'mark_7129 v0
  = case coe v0 of
      C_mkGeneralizeTel_7139 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7131 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
d_'46'generalizedField'45'set_7131 v0
  = case coe v0 of
      C_mkGeneralizeTel_7139 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7133 ::
  T_GeneralizeTel_7137 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
d_'46'generalizedField'45'go_7133 v0
  = case coe v0 of
      C_mkGeneralizeTel_7139 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7135 ::
  T_GeneralizeTel_7137 -> Integer
d_'46'generalizedField'45'feeSS_7135 v0
  = case coe v0 of
      C_mkGeneralizeTel_7139 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7137 a0 a1 = ()
data T_GeneralizeTel_7137
  = C_mkGeneralizeTel_7139 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2662
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2996
                           Integer
