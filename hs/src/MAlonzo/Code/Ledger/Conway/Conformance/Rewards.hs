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
d_LState_1994 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2024 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2202 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
d_certState_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2214
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2026 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2202 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2212 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2202 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
d_utxoSt_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2210
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  ()
d_BlocksMade_2104 = erased
-- Ledger.Conway.Conformance.Rewards._.Delegations
d_Delegations_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  ()
d_Delegations_2106 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2108 ~v0 ~v1 = du_HasCast'45'Snapshot_2108
du_HasCast'45'Snapshot_2108 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2544
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2110 ~v0 ~v1 = du_HasCast'45'Snapshots_2110
du_HasCast'45'Snapshots_2110 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2110
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2604
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2112 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2116 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2118 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Stake
d_Stake_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  ()
d_Stake_2120 = erased
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2122 ~v0 ~v1 = du_maxPool_2122
du_maxPool_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2122
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2224
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2124 ~v0 ~v1
  = du_mkApparentPerformance_2124
du_mkApparentPerformance_2124 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2260
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2126 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2126
du_nonZero'45'1'43'max0'45'x_2126 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2220
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2128 ~v0 v1 = du_nonZero'45'1'47'n_2128 v1
du_nonZero'45'1'47'n_2128 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2128 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_2918
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2130 ~v0 ~v1 = du_nonZero'45'max'45'1_2130
du_nonZero'45'max'45'1_2130 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2204
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2132 v0 ~v1 = du_poolStake_2132 v0
du_poolStake_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2372
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2134 v0 ~v1 = du_reward_2134 v0
du_reward_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2428
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2136 ~v0 ~v1 = du_rewardMember_2136
du_rewardMember_2136 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2136
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2298
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2138 v0 ~v1 = du_rewardOnePool_2138 v0
du_rewardOnePool_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2320
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2140 ~v0 ~v1 = du_rewardOwners_2140
du_rewardOwners_2140 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2278
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
d_stakeDistr_2142 v0 ~v1 = du_stakeDistr_2142 v0
du_stakeDistr_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
du_stakeDistr_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2550
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2144 ~v0 ~v1 = du_uncurry'7504'_2144
du_uncurry'7504'_2144 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2144 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2392
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2148 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2520 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496 ->
  Integer
d_Δf_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2518 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2528
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496 ->
  Integer
d_Δr_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2516 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496 ->
  Integer
d_Δt_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2514 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2526
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2540
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.poolParameters
d_poolParameters_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2542
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2538
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2586 ->
  Integer
d_feeSS_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2602
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2586 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
d_go_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2600 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2586 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
d_mark_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2596
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2586 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
d_set_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2598
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2190 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2190 = C_SNAP_2232
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
d_certState_2194 ~v0 ~v1 v2 = du_certState_2194 v2
du_certState_2194 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
du_certState_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2214
      (coe d_'46'generalizedField'45'lstate_6411 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
d_utxoSt_2198 ~v0 ~v1 v2 = du_utxoSt_2198 v2
du_utxoSt_2198 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
du_utxoSt_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2210
      (coe d_'46'generalizedField'45'lstate_6411 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 -> Integer
d_fees_2206 ~v0 ~v1 v2 = du_fees_2206 v2
du_fees_2206 :: T_GeneralizeTel_6421 -> Integer
du_fees_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2080
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2210
         (coe d_'46'generalizedField'45'lstate_6411 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2208 ~v0 ~v1 v2 = du_utxo_2208 v2
du_utxo_2208 ::
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2078
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2210
         (coe d_'46'generalizedField'45'lstate_6411 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1264
d_dState_2212 ~v0 ~v1 v2 = du_dState_2212 v2
du_dState_2212 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1264
du_dState_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2214
         (coe d_'46'generalizedField'45'lstate_6411 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1166
d_pState_2216 ~v0 ~v1 v2 = du_pState_2216 v2
du_pState_2216 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1166
du_pState_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1310
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2214
         (coe d_'46'generalizedField'45'lstate_6411 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2226 ~v0 ~v1 v2 = du_rewards_2226 v2
du_rewards_2226 ::
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1278
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1308
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2214
            (coe d_'46'generalizedField'45'lstate_6411 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2228 ~v0 ~v1 v2 = du_stakeDelegs_2228 v2
du_stakeDelegs_2228 ::
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1276
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1308
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2214
            (coe d_'46'generalizedField'45'lstate_6411 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2230 ~v0 ~v1 v2 = du_voteDelegs_2230 v2
du_voteDelegs_2230 ::
  T_GeneralizeTel_6421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1274
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1308
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2214
            (coe d_'46'generalizedField'45'lstate_6411 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__4953 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6411 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2202
d_'46'generalizedField'45'lstate_6411 v0
  = case coe v0 of
      C_mkGeneralizeTel_6423 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6413 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
d_'46'generalizedField'45'mark_6413 v0
  = case coe v0 of
      C_mkGeneralizeTel_6423 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6415 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
d_'46'generalizedField'45'set_6415 v0
  = case coe v0 of
      C_mkGeneralizeTel_6423 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6417 ::
  T_GeneralizeTel_6421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
d_'46'generalizedField'45'go_6417 v0
  = case coe v0 of
      C_mkGeneralizeTel_6423 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6419 ::
  T_GeneralizeTel_6421 -> Integer
d_'46'generalizedField'45'feeSS_6419 v0
  = case coe v0 of
      C_mkGeneralizeTel_6423 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6421 a0 a1 = ()
data T_GeneralizeTel_6421
  = C_mkGeneralizeTel_6423 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2202
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2530
                           Integer
