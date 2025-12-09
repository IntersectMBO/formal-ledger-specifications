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
d_LState_2238 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2498
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2486 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2496 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2274 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
d_utxoSt_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2494
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2354 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  ()
d_BlocksMade_2354 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2356 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2356 ~v0 ~v1 = du_HasCast'45'Snapshot_2356
du_HasCast'45'Snapshot_2356 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2828
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2358 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2358 ~v0 ~v1 = du_HasCast'45'Snapshots_2358
du_HasCast'45'Snapshots_2358 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2906
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2360 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2360 ~v0 ~v1 = du_HasFees'45'Snapshots_2360
du_HasFees'45'Snapshots_2360 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_2904
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2362 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
d_HasPools'45'Snapshot_2362 ~v0 ~v1 = du_HasPools'45'Snapshot_2362
du_HasPools'45'Snapshot_2362 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
du_HasPools'45'Snapshot_2362
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2826
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2364 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2368 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1230
d_HasStake'45'Snapshot_2368 ~v0 ~v1 = du_HasStake'45'Snapshot_2368
du_HasStake'45'Snapshot_2368 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1230
du_HasStake'45'Snapshot_2368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2822
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2370 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'Snapshot_2370 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2370
du_HasStakeDelegs'45'Snapshot_2370 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246
du_HasStakeDelegs'45'Snapshot_2370
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2824
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2372 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2378 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2382 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2888 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2864
d_SnapshotsOf_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2896
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2388 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2388 ~v0 ~v1 = du_maxPool_2388
du_maxPool_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2388
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2500
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2390 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2390 ~v0 ~v1
  = du_mkApparentPerformance_2390
du_mkApparentPerformance_2390 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2536
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2392 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2392 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2392
du_nonZero'45'1'43'max0'45'x_2392 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2392
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2496
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2394 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2394 ~v0 v1 = du_nonZero'45'1'47'n_2394 v1
du_nonZero'45'1'47'n_2394 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2394 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2396 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2396 ~v0 ~v1 = du_nonZero'45'max'45'1_2396
du_nonZero'45'max'45'1_2396 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2396
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2480
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2398 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2398 v0 ~v1 = du_poolStake_2398 v0
du_poolStake_2398 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2644
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2400 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2400 v0 ~v1 = du_reward_2400 v0
du_reward_2400 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2700
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2402 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2402 ~v0 ~v1 = du_rewardMember_2402
du_rewardMember_2402 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2402
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2574
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2404 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2404 v0 ~v1 = du_rewardOnePool_2404 v0
du_rewardOnePool_2404 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2594
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2406 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2406 ~v0 ~v1 = du_rewardOwners_2406
du_rewardOwners_2406 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2406
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2554
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2408 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
d_stakeDistr_2408 v0 ~v1 = du_stakeDistr_2408 v0
du_stakeDistr_2408 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
du_stakeDistr_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2834
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2410 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2410 ~v0 ~v1 = du_uncurry'7504'_2410
du_uncurry'7504'_2410 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2410 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2664
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2888 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2864
d_SnapshotsOf_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2896
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2770 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2418 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2770 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2794 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2770 ->
  Integer
d_Δf_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2792 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2770 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2802
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2770 ->
  Integer
d_Δr_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2790 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2770 ->
  Integer
d_Δt_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2788 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2770 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2800
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2816
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2818
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2814
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2864 ->
  Integer
d_feeSS_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2880
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2864 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
d_go_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2878 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2864 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
d_mark_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2874
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2864 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
d_set_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2876
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2460 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2460 = C_SNAP_2502
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2464 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2464 ~v0 ~v1 v2 = du_certState_2464 v2
du_certState_2464 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
du_certState_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2498
      (coe d_'46'generalizedField'45'lstate_6651 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2468 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
d_utxoSt_2468 ~v0 ~v1 v2 = du_utxoSt_2468 v2
du_utxoSt_2468 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
du_utxoSt_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2494
      (coe d_'46'generalizedField'45'lstate_6651 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2476 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 -> Integer
d_fees_2476 ~v0 ~v1 v2 = du_fees_2476 v2
du_fees_2476 :: T_GeneralizeTel_6661 -> Integer
du_fees_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2394
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2494
         (coe d_'46'generalizedField'45'lstate_6651 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2478 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2478 ~v0 ~v1 v2 = du_utxo_2478 v2
du_utxo_2478 ::
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2494
         (coe d_'46'generalizedField'45'lstate_6651 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2482 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1510
d_dState_2482 ~v0 ~v1 v2 = du_dState_2482 v2
du_dState_2482 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1510
du_dState_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2498
         (coe d_'46'generalizedField'45'lstate_6651 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2486 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
d_pState_2486 ~v0 ~v1 v2 = du_pState_2486 v2
du_pState_2486 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
du_pState_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2498
         (coe d_'46'generalizedField'45'lstate_6651 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2496 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2496 ~v0 ~v1 v2 = du_rewards_2496 v2
du_rewards_2496 ::
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2498
            (coe d_'46'generalizedField'45'lstate_6651 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2498 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2498 ~v0 ~v1 v2 = du_stakeDelegs_2498 v2
du_stakeDelegs_2498 ::
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2498
            (coe d_'46'generalizedField'45'lstate_6651 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2500 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2500 ~v0 ~v1 v2 = du_voteDelegs_2500 v2
du_voteDelegs_2500 ::
  T_GeneralizeTel_6661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2498
            (coe d_'46'generalizedField'45'lstate_6651 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5173 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6651 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2486
d_'46'generalizedField'45'lstate_6651 v0
  = case coe v0 of
      C_mkGeneralizeTel_6663 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6653 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
d_'46'generalizedField'45'mark_6653 v0
  = case coe v0 of
      C_mkGeneralizeTel_6663 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6655 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
d_'46'generalizedField'45'set_6655 v0
  = case coe v0 of
      C_mkGeneralizeTel_6663 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6657 ::
  T_GeneralizeTel_6661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
d_'46'generalizedField'45'go_6657 v0
  = case coe v0 of
      C_mkGeneralizeTel_6663 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6659 ::
  T_GeneralizeTel_6661 -> Integer
d_'46'generalizedField'45'feeSS_6659 v0
  = case coe v0 of
      C_mkGeneralizeTel_6663 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6661 a0 a1 = ()
data T_GeneralizeTel_6661
  = C_mkGeneralizeTel_6663 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2486
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2806
                           Integer
