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
d_LState_2364 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2588 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
d_certState_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2600
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2588 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2598 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2588 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
d_utxoSt_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2596
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  ()
d_BlocksMade_2480 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2482 ~v0 ~v1 = du_HasCast'45'Snapshot_2482
du_HasCast'45'Snapshot_2482 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2954
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2484 ~v0 ~v1 = du_HasCast'45'Snapshots_2484
du_HasCast'45'Snapshots_2484 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3032
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2486 ~v0 ~v1 = du_HasFees'45'Snapshots_2486
du_HasFees'45'Snapshots_2486 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3030
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1184
d_HasPools'45'Snapshot_2488 ~v0 ~v1 = du_HasPools'45'Snapshot_2488
du_HasPools'45'Snapshot_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1184
du_HasPools'45'Snapshot_2488
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2952
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2490 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1232
d_HasStake'45'Snapshot_2494 ~v0 ~v1 = du_HasStake'45'Snapshot_2494
du_HasStake'45'Snapshot_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1232
du_HasStake'45'Snapshot_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2948
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1248
d_HasStakeDelegs'45'Snapshot_2496 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2496
du_HasStakeDelegs'45'Snapshot_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1248
du_HasStakeDelegs'45'Snapshot_2496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2950
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2498 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2504 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2508 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3014 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2990
d_SnapshotsOf_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3022
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2514 ~v0 ~v1 = du_maxPool_2514
du_maxPool_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2626
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2516 ~v0 ~v1
  = du_mkApparentPerformance_2516
du_mkApparentPerformance_2516 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2662
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2518 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2518
du_nonZero'45'1'43'max0'45'x_2518 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2622
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2520 ~v0 v1 = du_nonZero'45'1'47'n_2520 v1
du_nonZero'45'1'47'n_2520 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2520 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2522 ~v0 ~v1 = du_nonZero'45'max'45'1_2522
du_nonZero'45'max'45'1_2522 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2606
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2524 v0 ~v1 = du_poolStake_2524 v0
du_poolStake_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2770
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2526 v0 ~v1 = du_reward_2526 v0
du_reward_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2826
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2528 ~v0 ~v1 = du_rewardMember_2528
du_rewardMember_2528 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2700
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2530 v0 ~v1 = du_rewardOnePool_2530 v0
du_rewardOnePool_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2720
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2532 ~v0 ~v1 = du_rewardOwners_2532
du_rewardOwners_2532 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2680
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
d_stakeDistr_2534 v0 ~v1 = du_stakeDistr_2534 v0
du_stakeDistr_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
du_stakeDistr_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2960
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2536 ~v0 ~v1 = du_uncurry'7504'_2536
du_uncurry'7504'_2536 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2536 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2790
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3014 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2990
d_SnapshotsOf_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3022
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2896 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2544 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2920 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2896 ->
  Integer
d_Δf_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2918 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2896 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2928
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2896 ->
  Integer
d_Δr_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2916 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2896 ->
  Integer
d_Δt_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2914 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2896 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2926
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2942
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2944
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2940
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2990 ->
  Integer
d_feeSS_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3006
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2990 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
d_go_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3004 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2990 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
d_mark_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3000
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2990 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
d_set_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3002
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2586 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2586 = C_SNAP_2628
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
d_certState_2590 ~v0 ~v1 v2 = du_certState_2590 v2
du_certState_2590 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
du_certState_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2600
      (coe d_'46'generalizedField'45'lstate_6943 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
d_utxoSt_2594 ~v0 ~v1 v2 = du_utxoSt_2594 v2
du_utxoSt_2594 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
du_utxoSt_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2596
      (coe d_'46'generalizedField'45'lstate_6943 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 -> Integer
d_fees_2602 ~v0 ~v1 v2 = du_fees_2602 v2
du_fees_2602 :: T_GeneralizeTel_6953 -> Integer
du_fees_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2396
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2596
         (coe d_'46'generalizedField'45'lstate_6943 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2604 ~v0 ~v1 v2 = du_utxo_2604 v2
du_utxo_2604 ::
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2394
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2596
         (coe d_'46'generalizedField'45'lstate_6943 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1512
d_dState_2608 ~v0 ~v1 v2 = du_dState_2608 v2
du_dState_2608 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1512
du_dState_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1556
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2600
         (coe d_'46'generalizedField'45'lstate_6943 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1360
d_pState_2612 ~v0 ~v1 v2 = du_pState_2612 v2
du_pState_2612 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1360
du_pState_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1558
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2600
         (coe d_'46'generalizedField'45'lstate_6943 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2622 ~v0 ~v1 v2 = du_rewards_2622 v2
du_rewards_2622 ::
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1526
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1556
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2600
            (coe d_'46'generalizedField'45'lstate_6943 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2624 ~v0 ~v1 v2 = du_stakeDelegs_2624 v2
du_stakeDelegs_2624 ::
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1524
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1556
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2600
            (coe d_'46'generalizedField'45'lstate_6943 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2626 ~v0 ~v1 v2 = du_voteDelegs_2626 v2
du_voteDelegs_2626 ::
  T_GeneralizeTel_6953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1556
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2600
            (coe d_'46'generalizedField'45'lstate_6943 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5465 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6943 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2588
d_'46'generalizedField'45'lstate_6943 v0
  = case coe v0 of
      C_mkGeneralizeTel_6955 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6945 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
d_'46'generalizedField'45'mark_6945 v0
  = case coe v0 of
      C_mkGeneralizeTel_6955 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6947 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
d_'46'generalizedField'45'set_6947 v0
  = case coe v0 of
      C_mkGeneralizeTel_6955 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6949 ::
  T_GeneralizeTel_6953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
d_'46'generalizedField'45'go_6949 v0
  = case coe v0 of
      C_mkGeneralizeTel_6955 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6951 ::
  T_GeneralizeTel_6953 -> Integer
d_'46'generalizedField'45'feeSS_6951 v0
  = case coe v0 of
      C_mkGeneralizeTel_6955 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6953 a0 a1 = ()
data T_GeneralizeTel_6953
  = C_mkGeneralizeTel_6955 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2588
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2932
                           Integer
