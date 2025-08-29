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
d_LState_2118 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
d_certState_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2348 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_BlocksMade_2234 = erased
-- Ledger.Conway.Conformance.Rewards._.Delegations
d_Delegations_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_Delegations_2236 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2238 ~v0 ~v1 = du_HasCast'45'Snapshot_2238
du_HasCast'45'Snapshot_2238 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2684
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2240 ~v0 ~v1 = du_HasCast'45'Snapshots_2240
du_HasCast'45'Snapshots_2240 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2746
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2242 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2248 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2252 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Stake
d_Stake_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_Stake_2256 = erased
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2258 ~v0 ~v1 = du_maxPool_2258
du_maxPool_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2258
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2358
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2260 ~v0 ~v1
  = du_mkApparentPerformance_2260
du_mkApparentPerformance_2260 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2394
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2262 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2262
du_nonZero'45'1'43'max0'45'x_2262 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2354
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2264 ~v0 v1 = du_nonZero'45'1'47'n_2264 v1
du_nonZero'45'1'47'n_2264 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2264 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2266 ~v0 ~v1 = du_nonZero'45'max'45'1_2266
du_nonZero'45'max'45'1_2266 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2266
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2338
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2268 v0 ~v1 = du_poolStake_2268 v0
du_poolStake_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2506
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2270 v0 ~v1 = du_reward_2270 v0
du_reward_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2562
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2272 ~v0 ~v1 = du_rewardMember_2272
du_rewardMember_2272 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2272
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2432
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2274 v0 ~v1 = du_rewardOnePool_2274 v0
du_rewardOnePool_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2454
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2276 ~v0 ~v1 = du_rewardOwners_2276
du_rewardOwners_2276 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2276
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2412
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_stakeDistr_2278 v0 ~v1 = du_stakeDistr_2278 v0
du_stakeDistr_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
du_stakeDistr_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2690
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2280 ~v0 ~v1 = du_uncurry'7504'_2280
du_uncurry'7504'_2280 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2280 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2526
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2284 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2656 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer
d_Δf_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2654 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2664
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer
d_Δr_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2652 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer
d_Δt_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2650 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2662
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.poolParameters
d_poolParameters_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  Integer
d_feeSS_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2742
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_go_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_mark_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_set_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2326 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2326 = C_SNAP_2368
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
d_certState_2330 ~v0 ~v1 v2 = du_certState_2330 v2
du_certState_2330 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
du_certState_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
      (coe d_'46'generalizedField'45'lstate_6221 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt_2334 ~v0 ~v1 v2 = du_utxoSt_2334 v2
du_utxoSt_2334 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
du_utxoSt_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
      (coe d_'46'generalizedField'45'lstate_6221 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 -> Integer
d_fees_2342 ~v0 ~v1 v2 = du_fees_2342 v2
du_fees_2342 :: T_GeneralizeTel_6231 -> Integer
du_fees_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
         (coe d_'46'generalizedField'45'lstate_6221 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2344 ~v0 ~v1 v2 = du_utxo_2344 v2
du_utxo_2344 ::
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
         (coe d_'46'generalizedField'45'lstate_6221 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338
d_dState_2348 ~v0 ~v1 v2 = du_dState_2348 v2
du_dState_2348 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338
du_dState_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
         (coe d_'46'generalizedField'45'lstate_6221 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
d_pState_2352 ~v0 ~v1 v2 = du_pState_2352 v2
du_pState_2352 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
du_pState_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
         (coe d_'46'generalizedField'45'lstate_6221 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2362 ~v0 ~v1 v2 = du_rewards_2362 v2
du_rewards_2362 ::
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
            (coe d_'46'generalizedField'45'lstate_6221 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2364 ~v0 ~v1 v2 = du_stakeDelegs_2364 v2
du_stakeDelegs_2364 ::
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
            (coe d_'46'generalizedField'45'lstate_6221 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2366 ~v0 ~v1 v2 = du_voteDelegs_2366 v2
du_voteDelegs_2366 ::
  T_GeneralizeTel_6231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
            (coe d_'46'generalizedField'45'lstate_6221 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__4797 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6221 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338
d_'46'generalizedField'45'lstate_6221 v0
  = case coe v0 of
      C_mkGeneralizeTel_6233 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6223 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_'46'generalizedField'45'mark_6223 v0
  = case coe v0 of
      C_mkGeneralizeTel_6233 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6225 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_'46'generalizedField'45'set_6225 v0
  = case coe v0 of
      C_mkGeneralizeTel_6233 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6227 ::
  T_GeneralizeTel_6231 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_'46'generalizedField'45'go_6227 v0
  = case coe v0 of
      C_mkGeneralizeTel_6233 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6229 ::
  T_GeneralizeTel_6231 -> Integer
d_'46'generalizedField'45'feeSS_6229 v0
  = case coe v0 of
      C_mkGeneralizeTel_6233 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6231 a0 a1 = ()
data T_GeneralizeTel_6231
  = C_mkGeneralizeTel_6233 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
                           Integer
