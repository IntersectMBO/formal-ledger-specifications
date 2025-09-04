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
d_LState_2242 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2274 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2464 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
d_certState_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2476
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2464 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2474 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2464 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
d_utxoSt_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2472
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  ()
d_BlocksMade_2358 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2360 ~v0 ~v1 = du_HasCast'45'Snapshot_2360
du_HasCast'45'Snapshot_2360 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2820
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2362 ~v0 ~v1 = du_HasCast'45'Snapshots_2362
du_HasCast'45'Snapshots_2362 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2362
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2882
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2364 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2370 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2374 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Stake
d_Stake_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  ()
d_Stake_2378 = erased
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2380 ~v0 ~v1 = du_maxPool_2380
du_maxPool_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2496
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2382 ~v0 ~v1
  = du_mkApparentPerformance_2382
du_mkApparentPerformance_2382 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2532
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2384 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2384
du_nonZero'45'1'43'max0'45'x_2384 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2492
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2386 ~v0 v1 = du_nonZero'45'1'47'n_2386 v1
du_nonZero'45'1'47'n_2386 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2386 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2388 ~v0 ~v1 = du_nonZero'45'max'45'1_2388
du_nonZero'45'max'45'1_2388 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2388
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2476
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2390 v0 ~v1 = du_poolStake_2390 v0
du_poolStake_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2642
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2392 v0 ~v1 = du_reward_2392 v0
du_reward_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2698
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2394 ~v0 ~v1 = du_rewardMember_2394
du_rewardMember_2394 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2394
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2570
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2396 v0 ~v1 = du_rewardOnePool_2396 v0
du_rewardOnePool_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2592
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2398 ~v0 ~v1 = du_rewardOwners_2398
du_rewardOwners_2398 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2550
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1296 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
d_stakeDistr_2400 v0 ~v1 = du_stakeDistr_2400 v0
du_stakeDistr_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1296 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
du_stakeDistr_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2826
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2402 ~v0 ~v1 = du_uncurry'7504'_2402
du_uncurry'7504'_2402 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2402 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2662
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2768 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2406 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2792 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2768 ->
  Integer
d_Δf_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2790 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2768 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2800
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2768 ->
  Integer
d_Δr_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2788 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2768 ->
  Integer
d_Δt_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2786 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2768 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2798
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2814
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.poolParameters
d_poolParameters_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2816
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2812
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2862 ->
  Integer
d_feeSS_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2878
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
d_go_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2876 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
d_mark_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2872
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
d_set_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2874
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2448 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2448 = C_SNAP_2490
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
d_certState_2452 ~v0 ~v1 v2 = du_certState_2452 v2
du_certState_2452 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
du_certState_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2476
      (coe d_'46'generalizedField'45'lstate_6507 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
d_utxoSt_2456 ~v0 ~v1 v2 = du_utxoSt_2456 v2
du_utxoSt_2456 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
du_utxoSt_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2472
      (coe d_'46'generalizedField'45'lstate_6507 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 -> Integer
d_fees_2464 ~v0 ~v1 v2 = du_fees_2464 v2
du_fees_2464 :: T_GeneralizeTel_6517 -> Integer
du_fees_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2326
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2472
         (coe d_'46'generalizedField'45'lstate_6507 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2466 ~v0 ~v1 v2 = du_utxo_2466 v2
du_utxo_2466 ::
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2324
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2472
         (coe d_'46'generalizedField'45'lstate_6507 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1428
d_dState_2470 ~v0 ~v1 v2 = du_dState_2470 v2
du_dState_2470 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1428
du_dState_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1472
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2476
         (coe d_'46'generalizedField'45'lstate_6507 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1296
d_pState_2474 ~v0 ~v1 v2 = du_pState_2474 v2
du_pState_2474 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1296
du_pState_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1474
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2476
         (coe d_'46'generalizedField'45'lstate_6507 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2484 ~v0 ~v1 v2 = du_rewards_2484 v2
du_rewards_2484 ::
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1442
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1472
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2476
            (coe d_'46'generalizedField'45'lstate_6507 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2486 ~v0 ~v1 v2 = du_stakeDelegs_2486 v2
du_stakeDelegs_2486 ::
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1440
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1472
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2476
            (coe d_'46'generalizedField'45'lstate_6507 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2488 ~v0 ~v1 v2 = du_voteDelegs_2488 v2
du_voteDelegs_2488 ::
  T_GeneralizeTel_6517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1438
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1472
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2476
            (coe d_'46'generalizedField'45'lstate_6507 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5117 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6507 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2464
d_'46'generalizedField'45'lstate_6507 v0
  = case coe v0 of
      C_mkGeneralizeTel_6519 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6509 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
d_'46'generalizedField'45'mark_6509 v0
  = case coe v0 of
      C_mkGeneralizeTel_6519 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6511 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
d_'46'generalizedField'45'set_6511 v0
  = case coe v0 of
      C_mkGeneralizeTel_6519 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6513 ::
  T_GeneralizeTel_6517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
d_'46'generalizedField'45'go_6513 v0
  = case coe v0 of
      C_mkGeneralizeTel_6519 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6515 ::
  T_GeneralizeTel_6517 -> Integer
d_'46'generalizedField'45'feeSS_6515 v0
  = case coe v0 of
      C_mkGeneralizeTel_6519 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6517 a0 a1 = ()
data T_GeneralizeTel_6517
  = C_mkGeneralizeTel_6519 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2464
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2804
                           Integer
