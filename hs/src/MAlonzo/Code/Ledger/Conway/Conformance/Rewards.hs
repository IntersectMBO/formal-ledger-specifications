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
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Conformance.Rewards._.LState
d_LState_2004 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2282 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1320
d_certState_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2294
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2292 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2148
d_utxoSt_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2290
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  ()
d_BlocksMade_2184 = erased
-- Ledger.Conway.Conformance.Rewards._.Delegations
d_Delegations_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  ()
d_Delegations_2186 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2188 ~v0 ~v1 = du_HasCast'45'Snapshot_2188
du_HasCast'45'Snapshot_2188 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2656
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2190 ~v0 ~v1 = du_HasCast'45'Snapshots_2190
du_HasCast'45'Snapshots_2190 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2190
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2716
-- Ledger.Conway.Conformance.Rewards._.HasStake
d_HasStake_2192 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasStake_2640
d_HasStake'45'Snapshot_2194 ~v0 ~v1 = du_HasStake'45'Snapshot_2194
du_HasStake'45'Snapshot_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasStake_2640
du_HasStake'45'Snapshot_2194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2654
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2196 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2200 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2202 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Stake
d_Stake_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  ()
d_Stake_2204 = erased
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2206 ~v0 ~v1 = du_maxPool_2206
du_maxPool_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2316
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2208 ~v0 ~v1
  = du_mkApparentPerformance_2208
du_mkApparentPerformance_2208 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2352
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2210 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2210
du_nonZero'45'1'43'max0'45'x_2210 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2210
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2312
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2212 ~v0 v1 = du_nonZero'45'1'47'n_2212 v1
du_nonZero'45'1'47'n_2212 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2212 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_2918
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2214 ~v0 ~v1 = du_nonZero'45'max'45'1_2214
du_nonZero'45'max'45'1_2214 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2214
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2296
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2216 v0 ~v1 = du_poolStake_2216 v0
du_poolStake_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2464
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2218 v0 ~v1 = du_reward_2218 v0
du_reward_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2520
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_992 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2220 ~v0 ~v1 = du_rewardMember_2220
du_rewardMember_2220 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_992 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2390
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2222 v0 ~v1 = du_rewardOnePool_2222 v0
du_rewardOnePool_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2412
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_992 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2224 ~v0 ~v1 = du_rewardOwners_2224
du_rewardOwners_2224 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_992 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2224
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2370
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
d_stakeDistr_2226 v0 ~v1 = du_stakeDistr_2226 v0
du_stakeDistr_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
du_stakeDistr_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2662
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.stakeOf
d_stakeOf_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasStake_2640 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeOf_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stakeOf_2648
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2230 ~v0 ~v1 = du_uncurry'7504'_2230
du_uncurry'7504'_2230 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2230 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2484
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasStake.stakeOf
d_stakeOf_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasStake_2640 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeOf_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stakeOf_2648
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2588 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2238 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2588 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2612 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2588 ->
  Integer
d_Δf_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2610 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2588 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2620
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2588 ->
  Integer
d_Δr_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2608 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2588 ->
  Integer
d_Δt_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2606 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2588 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2618
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2632
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.poolParameters
d_poolParameters_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2634
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2630
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2698 ->
  Integer
d_feeSS_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2714
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2698 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
d_go_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2712 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2698 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
d_mark_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2708
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2698 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
d_set_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2710
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2280 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2280 = C_SNAP_2322
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1320
d_certState_2284 ~v0 ~v1 v2 = du_certState_2284 v2
du_certState_2284 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1320
du_certState_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2294
      (coe d_'46'generalizedField'45'lstate_6683 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2148
d_utxoSt_2288 ~v0 ~v1 v2 = du_utxoSt_2288 v2
du_utxoSt_2288 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2148
du_utxoSt_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2290
      (coe d_'46'generalizedField'45'lstate_6683 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 -> Integer
d_fees_2296 ~v0 ~v1 v2 = du_fees_2296 v2
du_fees_2296 :: T_GeneralizeTel_6693 -> Integer
du_fees_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2160
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2290
         (coe d_'46'generalizedField'45'lstate_6683 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2298 ~v0 ~v1 v2 = du_utxo_2298 v2
du_utxo_2298 ::
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2158
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2290
         (coe d_'46'generalizedField'45'lstate_6683 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1284
d_dState_2302 ~v0 ~v1 v2 = du_dState_2302 v2
du_dState_2302 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1284
du_dState_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1328
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2294
         (coe d_'46'generalizedField'45'lstate_6683 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1170
d_pState_2306 ~v0 ~v1 v2 = du_pState_2306 v2
du_pState_2306 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1170
du_pState_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1330
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2294
         (coe d_'46'generalizedField'45'lstate_6683 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2316 ~v0 ~v1 v2 = du_rewards_2316 v2
du_rewards_2316 ::
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1298
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1328
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2294
            (coe d_'46'generalizedField'45'lstate_6683 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2318 ~v0 ~v1 v2 = du_stakeDelegs_2318 v2
du_stakeDelegs_2318 ::
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1296
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1328
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2294
            (coe d_'46'generalizedField'45'lstate_6683 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2320 ~v0 ~v1 v2 = du_voteDelegs_2320 v2
du_voteDelegs_2320 ::
  T_GeneralizeTel_6693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1294
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1328
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2294
            (coe d_'46'generalizedField'45'lstate_6683 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5169 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6683 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2282
d_'46'generalizedField'45'lstate_6683 v0
  = case coe v0 of
      C_mkGeneralizeTel_6695 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6685 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
d_'46'generalizedField'45'mark_6685 v0
  = case coe v0 of
      C_mkGeneralizeTel_6695 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6687 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
d_'46'generalizedField'45'set_6687 v0
  = case coe v0 of
      C_mkGeneralizeTel_6695 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6689 ::
  T_GeneralizeTel_6693 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
d_'46'generalizedField'45'go_6689 v0
  = case coe v0 of
      C_mkGeneralizeTel_6695 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6691 ::
  T_GeneralizeTel_6693 -> Integer
d_'46'generalizedField'45'feeSS_6691 v0
  = case coe v0 of
      C_mkGeneralizeTel_6695 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6693 a0 a1 = ()
data T_GeneralizeTel_6693
  = C_mkGeneralizeTel_6695 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2282
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2622
                           Integer
