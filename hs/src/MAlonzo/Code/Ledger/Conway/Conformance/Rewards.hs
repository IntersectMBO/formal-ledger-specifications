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
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Conformance.Rewards._.LState
d_LState_2262 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480
d_certState_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2494 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2334
d_utxoSt_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2492
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  ()
d_BlocksMade_2378 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2380 ~v0 ~v1 = du_HasCast'45'Snapshot_2380
du_HasCast'45'Snapshot_2380 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2846
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2382 ~v0 ~v1 = du_HasCast'45'Snapshots_2382
du_HasCast'45'Snapshots_2382 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2902
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1142
d_HasPools'45'Snapshot_2384 ~v0 ~v1 = du_HasPools'45'Snapshot_2384
du_HasPools'45'Snapshot_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1142
du_HasPools'45'Snapshot_2384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2844
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1190
d_HasStake'45'Snapshot_2386 ~v0 ~v1 = du_HasStake'45'Snapshot_2386
du_HasStake'45'Snapshot_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1190
du_HasStake'45'Snapshot_2386
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2840
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1206
d_HasStakeDelegs'45'Snapshot_2388 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2388
du_HasStakeDelegs'45'Snapshot_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1206
du_HasStakeDelegs'45'Snapshot_2388
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2842
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2390 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2396 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2400 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2404 ~v0 ~v1 = du_maxPool_2404
du_maxPool_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2404
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2518
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2406 ~v0 ~v1
  = du_mkApparentPerformance_2406
du_mkApparentPerformance_2406 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2406
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2554
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2408 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2408
du_nonZero'45'1'43'max0'45'x_2408 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2408
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2514
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2410 ~v0 v1 = du_nonZero'45'1'47'n_2410 v1
du_nonZero'45'1'47'n_2410 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2410 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2412 ~v0 ~v1 = du_nonZero'45'max'45'1_2412
du_nonZero'45'max'45'1_2412 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2498
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2414 v0 ~v1 = du_poolStake_2414 v0
du_poolStake_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2662
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2416 v0 ~v1 = du_reward_2416 v0
du_reward_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2718
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2418 ~v0 ~v1 = du_rewardMember_2418
du_rewardMember_2418 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2592
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2420 v0 ~v1 = du_rewardOnePool_2420 v0
du_rewardOnePool_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2612
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2422 ~v0 ~v1 = du_rewardOwners_2422
du_rewardOwners_2422 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2572
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
d_stakeDistr_2424 v0 ~v1 = du_stakeDistr_2424 v0
du_stakeDistr_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
du_stakeDistr_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2852
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2426 ~v0 ~v1 = du_uncurry'7504'_2426
du_uncurry'7504'_2426 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2426 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2682
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2430 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2812 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788 ->
  Integer
d_Δf_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2810 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2820
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788 ->
  Integer
d_Δr_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2808 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788 ->
  Integer
d_Δt_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2806 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2818
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2834
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2836
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2832
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2882 ->
  Integer
d_feeSS_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2898
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2882 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
d_go_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2896 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2882 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
d_mark_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2892
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2882 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
d_set_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2894
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2472 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2472 = C_SNAP_2514
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480
d_certState_2476 ~v0 ~v1 v2 = du_certState_2476 v2
du_certState_2476 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480
du_certState_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
      (coe d_'46'generalizedField'45'lstate_6611 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2334
d_utxoSt_2480 ~v0 ~v1 v2 = du_utxoSt_2480 v2
du_utxoSt_2480 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2334
du_utxoSt_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2492
      (coe d_'46'generalizedField'45'lstate_6611 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 -> Integer
d_fees_2488 ~v0 ~v1 v2 = du_fees_2488 v2
du_fees_2488 :: T_GeneralizeTel_6621 -> Integer
du_fees_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2346
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2492
         (coe d_'46'generalizedField'45'lstate_6611 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2490 ~v0 ~v1 v2 = du_utxo_2490 v2
du_utxo_2490 ::
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2344
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2492
         (coe d_'46'generalizedField'45'lstate_6611 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1444
d_dState_2494 ~v0 ~v1 v2 = du_dState_2494 v2
du_dState_2494 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1444
du_dState_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
         (coe d_'46'generalizedField'45'lstate_6611 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322
d_pState_2498 ~v0 ~v1 v2 = du_pState_2498 v2
du_pState_2498 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322
du_pState_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1490
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
         (coe d_'46'generalizedField'45'lstate_6611 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2508 ~v0 ~v1 v2 = du_rewards_2508 v2
du_rewards_2508 ::
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1458
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
            (coe d_'46'generalizedField'45'lstate_6611 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2510 ~v0 ~v1 v2 = du_stakeDelegs_2510 v2
du_stakeDelegs_2510 ::
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
            (coe d_'46'generalizedField'45'lstate_6611 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2512 ~v0 ~v1 v2 = du_voteDelegs_2512 v2
du_voteDelegs_2512 ::
  T_GeneralizeTel_6621 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
            (coe d_'46'generalizedField'45'lstate_6611 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5183 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6611 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484
d_'46'generalizedField'45'lstate_6611 v0
  = case coe v0 of
      C_mkGeneralizeTel_6623 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6613 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
d_'46'generalizedField'45'mark_6613 v0
  = case coe v0 of
      C_mkGeneralizeTel_6623 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6615 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
d_'46'generalizedField'45'set_6615 v0
  = case coe v0 of
      C_mkGeneralizeTel_6623 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6617 ::
  T_GeneralizeTel_6621 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
d_'46'generalizedField'45'go_6617 v0
  = case coe v0 of
      C_mkGeneralizeTel_6623 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6619 ::
  T_GeneralizeTel_6621 -> Integer
d_'46'generalizedField'45'feeSS_6619 v0
  = case coe v0 of
      C_mkGeneralizeTel_6623 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6621 a0 a1 = ()
data T_GeneralizeTel_6621
  = C_mkGeneralizeTel_6623 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2824
                           Integer
