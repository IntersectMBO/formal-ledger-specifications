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
d_LState_2442 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2474 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2676 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
d_certState_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2688
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2676 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2686 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2676 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
d_utxoSt_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2684
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  ()
d_BlocksMade_2558 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2560 ~v0 ~v1 = du_HasCast'45'Snapshot_2560
du_HasCast'45'Snapshot_2560 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3032
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2562 ~v0 ~v1 = du_HasCast'45'Snapshots_2562
du_HasCast'45'Snapshots_2562 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2562
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3110
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2564 ~v0 ~v1 = du_HasFees'45'Snapshots_2564
du_HasFees'45'Snapshots_2564 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3108
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1240
d_HasPools'45'Snapshot_2566 ~v0 ~v1 = du_HasPools'45'Snapshot_2566
du_HasPools'45'Snapshot_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1240
du_HasPools'45'Snapshot_2566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3030
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2568 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1288
d_HasStake'45'Snapshot_2572 ~v0 ~v1 = du_HasStake'45'Snapshot_2572
du_HasStake'45'Snapshot_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1288
du_HasStake'45'Snapshot_2572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3026
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1304
d_HasStakeDelegs'45'Snapshot_2574 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2574
du_HasStakeDelegs'45'Snapshot_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1304
du_HasStakeDelegs'45'Snapshot_2574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3028
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2576 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2582 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2586 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3092 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3068
d_SnapshotsOf_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3100
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2592 ~v0 ~v1 = du_maxPool_2592
du_maxPool_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2704
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2594 ~v0 ~v1
  = du_mkApparentPerformance_2594
du_mkApparentPerformance_2594 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2740
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2596 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2596
du_nonZero'45'1'43'max0'45'x_2596 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2700
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2598 ~v0 v1 = du_nonZero'45'1'47'n_2598 v1
du_nonZero'45'1'47'n_2598 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2598 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2600 ~v0 ~v1 = du_nonZero'45'max'45'1_2600
du_nonZero'45'max'45'1_2600 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2684
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2602 v0 ~v1 = du_poolStake_2602 v0
du_poolStake_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2848
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2604 v0 ~v1 = du_reward_2604 v0
du_reward_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2904
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2606 ~v0 ~v1 = du_rewardMember_2606
du_rewardMember_2606 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2778
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2608 v0 ~v1 = du_rewardOnePool_2608 v0
du_rewardOnePool_2608 ::
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
du_rewardOnePool_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2798
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2610 ~v0 ~v1 = du_rewardOwners_2610
du_rewardOwners_2610 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1148 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2758
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1416 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
d_stakeDistr_2612 v0 ~v1 = du_stakeDistr_2612 v0
du_stakeDistr_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1416 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
du_stakeDistr_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3038
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2614 ~v0 ~v1 = du_uncurry'7504'_2614
du_uncurry'7504'_2614 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2614 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2868
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3092 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3068
d_SnapshotsOf_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3100
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2974 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2622 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2998 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2974 ->
  Integer
d_Δf_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2996 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2974 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3006
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2974 ->
  Integer
d_Δr_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2994 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2974 ->
  Integer
d_Δt_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2992 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2974 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3004
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3020
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3022
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3018
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3068 ->
  Integer
d_feeSS_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3084
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3068 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
d_go_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3082 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3068 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
d_mark_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3078
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3068 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
d_set_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3080
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2664 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2664 = C_SNAP_2706
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
d_certState_2668 ~v0 ~v1 v2 = du_certState_2668 v2
du_certState_2668 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
du_certState_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2688
      (coe d_'46'generalizedField'45'lstate_7157 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
d_utxoSt_2672 ~v0 ~v1 v2 = du_utxoSt_2672 v2
du_utxoSt_2672 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
du_utxoSt_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2684
      (coe d_'46'generalizedField'45'lstate_7157 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 -> Integer
d_fees_2680 ~v0 ~v1 v2 = du_fees_2680 v2
du_fees_2680 :: T_GeneralizeTel_7167 -> Integer
du_fees_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2482
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2684
         (coe d_'46'generalizedField'45'lstate_7157 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2682 ~v0 ~v1 v2 = du_utxo_2682 v2
du_utxo_2682 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2480
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2684
         (coe d_'46'generalizedField'45'lstate_7157 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1568
d_dState_2686 ~v0 ~v1 v2 = du_dState_2686 v2
du_dState_2686 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1568
du_dState_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1612
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2688
         (coe d_'46'generalizedField'45'lstate_7157 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1416
d_pState_2690 ~v0 ~v1 v2 = du_pState_2690 v2
du_pState_2690 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1416
du_pState_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1614
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2688
         (coe d_'46'generalizedField'45'lstate_7157 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2700 ~v0 ~v1 v2 = du_rewards_2700 v2
du_rewards_2700 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1582
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1612
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2688
            (coe d_'46'generalizedField'45'lstate_7157 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2702 ~v0 ~v1 v2 = du_stakeDelegs_2702 v2
du_stakeDelegs_2702 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1580
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1612
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2688
            (coe d_'46'generalizedField'45'lstate_7157 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2704 ~v0 ~v1 v2 = du_voteDelegs_2704 v2
du_voteDelegs_2704 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1578
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1612
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2688
            (coe d_'46'generalizedField'45'lstate_7157 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5679 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_7157 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2676
d_'46'generalizedField'45'lstate_7157 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_7159 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
d_'46'generalizedField'45'mark_7159 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_7161 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
d_'46'generalizedField'45'set_7161 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_7163 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
d_'46'generalizedField'45'go_7163 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_7165 ::
  T_GeneralizeTel_7167 -> Integer
d_'46'generalizedField'45'feeSS_7165 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_7167 a0 a1 = ()
data T_GeneralizeTel_7167
  = C_mkGeneralizeTel_7169 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2676
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3010
                           Integer
