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
d_LState_2172 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2392 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
d_certState_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2404
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2402 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
d_utxoSt_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2400
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  ()
d_BlocksMade_2288 = erased
-- Ledger.Conway.Conformance.Rewards._.Delegations
d_Delegations_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  ()
d_Delegations_2290 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2292 ~v0 ~v1 = du_HasCast'45'Snapshot_2292
du_HasCast'45'Snapshot_2292 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2292
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2738
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2294 ~v0 ~v1 = du_HasCast'45'Snapshots_2294
du_HasCast'45'Snapshots_2294 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2800
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2296 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2302 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2306 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Stake
d_Stake_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  ()
d_Stake_2310 = erased
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2312 ~v0 ~v1 = du_maxPool_2312
du_maxPool_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2312
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2412
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2314 ~v0 ~v1
  = du_mkApparentPerformance_2314
du_mkApparentPerformance_2314 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2448
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2316 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2316
du_nonZero'45'1'43'max0'45'x_2316 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2316
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2408
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2318 ~v0 v1 = du_nonZero'45'1'47'n_2318 v1
du_nonZero'45'1'47'n_2318 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2318 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2320 ~v0 ~v1 = du_nonZero'45'max'45'1_2320
du_nonZero'45'max'45'1_2320 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2392
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2322 v0 ~v1 = du_poolStake_2322 v0
du_poolStake_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2560
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2324 v0 ~v1 = du_reward_2324 v0
du_reward_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2616
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2326 ~v0 ~v1 = du_rewardMember_2326
du_rewardMember_2326 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2486
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2328 v0 ~v1 = du_rewardOnePool_2328 v0
du_rewardOnePool_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2508
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2330 ~v0 ~v1 = du_rewardOwners_2330
du_rewardOwners_2330 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2330
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2466
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1196 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1256 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
d_stakeDistr_2332 v0 ~v1 = du_stakeDistr_2332 v0
du_stakeDistr_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1196 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1256 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
du_stakeDistr_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2744
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2334 ~v0 ~v1 = du_uncurry'7504'_2334
du_uncurry'7504'_2334 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2334 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2580
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2686 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2338 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2710 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2686 ->
  Integer
d_Δf_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2708 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2686 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2718
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2686 ->
  Integer
d_Δr_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2706 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2686 ->
  Integer
d_Δt_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2704 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2686 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2716
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2732
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.poolParameters
d_poolParameters_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2734
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2730
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2780 ->
  Integer
d_feeSS_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2796
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2780 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
d_go_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2794 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2780 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
d_mark_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2790
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2780 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
d_set_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2792
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2380 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2380 = C_SNAP_2422
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
d_certState_2384 ~v0 ~v1 v2 = du_certState_2384 v2
du_certState_2384 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
du_certState_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2404
      (coe d_'46'generalizedField'45'lstate_6279 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
d_utxoSt_2388 ~v0 ~v1 v2 = du_utxoSt_2388 v2
du_utxoSt_2388 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
du_utxoSt_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2400
      (coe d_'46'generalizedField'45'lstate_6279 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 -> Integer
d_fees_2396 ~v0 ~v1 v2 = du_fees_2396 v2
du_fees_2396 :: T_GeneralizeTel_6289 -> Integer
du_fees_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2260
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2400
         (coe d_'46'generalizedField'45'lstate_6279 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2398 ~v0 ~v1 v2 = du_utxo_2398 v2
du_utxo_2398 ::
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2258
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2400
         (coe d_'46'generalizedField'45'lstate_6279 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1372
d_dState_2402 ~v0 ~v1 v2 = du_dState_2402 v2
du_dState_2402 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1372
du_dState_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1416
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2404
         (coe d_'46'generalizedField'45'lstate_6279 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1256
d_pState_2406 ~v0 ~v1 v2 = du_pState_2406 v2
du_pState_2406 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1256
du_pState_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1418
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2404
         (coe d_'46'generalizedField'45'lstate_6279 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2416 ~v0 ~v1 v2 = du_rewards_2416 v2
du_rewards_2416 ::
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1386
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1416
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2404
            (coe d_'46'generalizedField'45'lstate_6279 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2418 ~v0 ~v1 v2 = du_stakeDelegs_2418 v2
du_stakeDelegs_2418 ::
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1384
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1416
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2404
            (coe d_'46'generalizedField'45'lstate_6279 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2420 ~v0 ~v1 v2 = du_voteDelegs_2420 v2
du_voteDelegs_2420 ::
  T_GeneralizeTel_6289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1382
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1416
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2404
            (coe d_'46'generalizedField'45'lstate_6279 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__4855 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6279 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2392
d_'46'generalizedField'45'lstate_6279 v0
  = case coe v0 of
      C_mkGeneralizeTel_6291 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6281 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
d_'46'generalizedField'45'mark_6281 v0
  = case coe v0 of
      C_mkGeneralizeTel_6291 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6283 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
d_'46'generalizedField'45'set_6283 v0
  = case coe v0 of
      C_mkGeneralizeTel_6291 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6285 ::
  T_GeneralizeTel_6289 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
d_'46'generalizedField'45'go_6285 v0
  = case coe v0 of
      C_mkGeneralizeTel_6291 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6287 ::
  T_GeneralizeTel_6289 -> Integer
d_'46'generalizedField'45'feeSS_6287 v0
  = case coe v0 of
      C_mkGeneralizeTel_6291 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6289 a0 a1 = ()
data T_GeneralizeTel_6289
  = C_mkGeneralizeTel_6291 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2392
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2722
                           Integer
