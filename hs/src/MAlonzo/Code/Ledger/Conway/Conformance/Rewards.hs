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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Conformance.Rewards._.LState
d_LState_2228 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2486 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2264 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2344 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  ()
d_BlocksMade_2344 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2346 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2346 ~v0 ~v1 = du_HasCast'45'Snapshot_2346
du_HasCast'45'Snapshot_2346 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2818
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2348 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2348 ~v0 ~v1 = du_HasCast'45'Snapshots_2348
du_HasCast'45'Snapshots_2348 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2896
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2350 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2350 ~v0 ~v1 = du_HasFees'45'Snapshots_2350
du_HasFees'45'Snapshots_2350 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_2894
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2352 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
d_HasPools'45'Snapshot_2352 ~v0 ~v1 = du_HasPools'45'Snapshot_2352
du_HasPools'45'Snapshot_2352 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
du_HasPools'45'Snapshot_2352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2816
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2354 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2358 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1234
d_HasStake'45'Snapshot_2358 ~v0 ~v1 = du_HasStake'45'Snapshot_2358
du_HasStake'45'Snapshot_2358 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1234
du_HasStake'45'Snapshot_2358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2812
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2360 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'Snapshot_2360 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2360
du_HasStakeDelegs'45'Snapshot_2360 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250
du_HasStakeDelegs'45'Snapshot_2360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2814
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2362 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2368 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2372 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2878 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2854
d_SnapshotsOf_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2886
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2378 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2378 ~v0 ~v1 = du_maxPool_2378
du_maxPool_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2490
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2380 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2380 ~v0 ~v1
  = du_mkApparentPerformance_2380
du_mkApparentPerformance_2380 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2526
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2382 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2382 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2382
du_nonZero'45'1'43'max0'45'x_2382 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2486
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2384 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2384 ~v0 v1 = du_nonZero'45'1'47'n_2384 v1
du_nonZero'45'1'47'n_2384 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2384 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2386 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2386 ~v0 ~v1 = du_nonZero'45'max'45'1_2386
du_nonZero'45'max'45'1_2386 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2386
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2470
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2388 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2388 v0 ~v1 = du_poolStake_2388 v0
du_poolStake_2388 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2634
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2390 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2390 v0 ~v1 = du_reward_2390 v0
du_reward_2390 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2690
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2392 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2392 ~v0 ~v1 = du_rewardMember_2392
du_rewardMember_2392 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2392
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2564
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2394 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2394 v0 ~v1 = du_rewardOnePool_2394 v0
du_rewardOnePool_2394 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2584
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2396 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2396 ~v0 ~v1 = du_rewardOwners_2396
du_rewardOwners_2396 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2396
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2544
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2398 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
d_stakeDistr_2398 v0 ~v1 = du_stakeDistr_2398 v0
du_stakeDistr_2398 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
du_stakeDistr_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2824
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2400 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2400 ~v0 ~v1 = du_uncurry'7504'_2400
du_uncurry'7504'_2400 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2400 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2654
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2878 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2854
d_SnapshotsOf_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2886
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2408 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2784 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760 ->
  Integer
d_Δf_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2782 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2792
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760 ->
  Integer
d_Δr_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2780 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760 ->
  Integer
d_Δt_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2778 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2790
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2806
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2808
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2804
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2854 ->
  Integer
d_feeSS_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2870
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2854 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
d_go_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2868 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2854 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
d_mark_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2864
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2854 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
d_set_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2866
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2450 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2450 = C_SNAP_2492
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2454 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2454 ~v0 ~v1 v2 = du_certState_2454 v2
du_certState_2454 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
du_certState_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
      (coe d_'46'generalizedField'45'lstate_6645 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2458 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2458 ~v0 ~v1 v2 = du_utxoSt_2458 v2
du_utxoSt_2458 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
du_utxoSt_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
      (coe d_'46'generalizedField'45'lstate_6645 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2466 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 -> Integer
d_fees_2466 ~v0 ~v1 v2 = du_fees_2466 v2
du_fees_2466 :: T_GeneralizeTel_6655 -> Integer
du_fees_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2438
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
         (coe d_'46'generalizedField'45'lstate_6645 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2468 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2468 ~v0 ~v1 v2 = du_utxo_2468 v2
du_utxo_2468 ::
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2484
         (coe d_'46'generalizedField'45'lstate_6645 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2472 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
d_dState_2472 ~v0 ~v1 v2 = du_dState_2472 v2
du_dState_2472 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
du_dState_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
         (coe d_'46'generalizedField'45'lstate_6645 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2476 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_pState_2476 ~v0 ~v1 v2 = du_pState_2476 v2
du_pState_2476 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
du_pState_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1554
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
         (coe d_'46'generalizedField'45'lstate_6645 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2486 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2486 ~v0 ~v1 v2 = du_rewards_2486 v2
du_rewards_2486 ::
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
            (coe d_'46'generalizedField'45'lstate_6645 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2488 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2488 ~v0 ~v1 v2 = du_stakeDelegs_2488 v2
du_stakeDelegs_2488 ::
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1520
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
            (coe d_'46'generalizedField'45'lstate_6645 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2490 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2490 ~v0 ~v1 v2 = du_voteDelegs_2490 v2
du_voteDelegs_2490 ::
  T_GeneralizeTel_6655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1518
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2488
            (coe d_'46'generalizedField'45'lstate_6645 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5167 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6645 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476
d_'46'generalizedField'45'lstate_6645 v0
  = case coe v0 of
      C_mkGeneralizeTel_6657 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6647 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
d_'46'generalizedField'45'mark_6647 v0
  = case coe v0 of
      C_mkGeneralizeTel_6657 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6649 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
d_'46'generalizedField'45'set_6649 v0
  = case coe v0 of
      C_mkGeneralizeTel_6657 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6651 ::
  T_GeneralizeTel_6655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
d_'46'generalizedField'45'go_6651 v0
  = case coe v0 of
      C_mkGeneralizeTel_6657 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6653 ::
  T_GeneralizeTel_6655 -> Integer
d_'46'generalizedField'45'feeSS_6653 v0
  = case coe v0 of
      C_mkGeneralizeTel_6657 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6655 a0 a1 = ()
data T_GeneralizeTel_6655
  = C_mkGeneralizeTel_6657 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2476
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2796
                           Integer
