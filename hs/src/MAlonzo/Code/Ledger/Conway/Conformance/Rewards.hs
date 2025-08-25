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
d_LState_1988 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2018 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
d_certState_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2020 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2206 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2022 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
d_utxoSt_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2204
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  ()
d_BlocksMade_2098 = erased
-- Ledger.Conway.Conformance.Rewards._.Delegations
d_Delegations_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  ()
d_Delegations_2100 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2102 ~v0 ~v1 = du_HasCast'45'Snapshot_2102
du_HasCast'45'Snapshot_2102 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2538
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2104 ~v0 ~v1 = du_HasCast'45'Snapshots_2104
du_HasCast'45'Snapshots_2104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2598
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2106 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2110 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2112 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Stake
d_Stake_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  ()
d_Stake_2114 = erased
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2116 ~v0 ~v1 = du_maxPool_2116
du_maxPool_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2116
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2218
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2118 ~v0 ~v1
  = du_mkApparentPerformance_2118
du_mkApparentPerformance_2118 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2118
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2254
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2120 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2120
du_nonZero'45'1'43'max0'45'x_2120 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2120
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2214
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2122 ~v0 v1 = du_nonZero'45'1'47'n_2122 v1
du_nonZero'45'1'47'n_2122 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2122 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_2918
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2124 ~v0 ~v1 = du_nonZero'45'max'45'1_2124
du_nonZero'45'max'45'1_2124 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2198
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2126 v0 ~v1 = du_poolStake_2126 v0
du_poolStake_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2366
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2128 v0 ~v1 = du_reward_2128 v0
du_reward_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2422
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1002 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2130 ~v0 ~v1 = du_rewardMember_2130
du_rewardMember_2130 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1002 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2292
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2132 v0 ~v1 = du_rewardOnePool_2132 v0
du_rewardOnePool_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2314
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1002 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2134 ~v0 ~v1 = du_rewardOwners_2134
du_rewardOwners_2134 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1002 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2134
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2272
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1102 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1158 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
d_stakeDistr_2136 v0 ~v1 = du_stakeDistr_2136 v0
du_stakeDistr_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1102 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1158 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
du_stakeDistr_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2544
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2138 ~v0 ~v1 = du_uncurry'7504'_2138
du_uncurry'7504'_2138 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2138 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2386
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2490 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2142 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2490 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2514 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2490 ->
  Integer
d_Δf_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2512 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2490 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2522
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2490 ->
  Integer
d_Δr_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2510 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2490 ->
  Integer
d_Δt_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2508 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2490 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2520
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2534
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.poolParameters
d_poolParameters_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2536
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2532
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2580 ->
  Integer
d_feeSS_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2596
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2580 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
d_go_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2594 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2580 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
d_mark_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2590
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2580 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
d_set_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2592
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2184 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2184 = C_SNAP_2226
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
d_certState_2188 ~v0 ~v1 v2 = du_certState_2188 v2
du_certState_2188 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
du_certState_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
      (coe d_'46'generalizedField'45'lstate_6375 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
d_utxoSt_2192 ~v0 ~v1 v2 = du_utxoSt_2192 v2
du_utxoSt_2192 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
du_utxoSt_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2204
      (coe d_'46'generalizedField'45'lstate_6375 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 -> Integer
d_fees_2200 ~v0 ~v1 v2 = du_fees_2200 v2
du_fees_2200 :: T_GeneralizeTel_6385 -> Integer
du_fees_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2074
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2204
         (coe d_'46'generalizedField'45'lstate_6375 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2202 ~v0 ~v1 v2 = du_utxo_2202 v2
du_utxo_2202 ::
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2204
         (coe d_'46'generalizedField'45'lstate_6375 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258
d_dState_2206 ~v0 ~v1 v2 = du_dState_2206 v2
du_dState_2206 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258
du_dState_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
         (coe d_'46'generalizedField'45'lstate_6375 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1158
d_pState_2210 ~v0 ~v1 v2 = du_pState_2210 v2
du_pState_2210 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1158
du_pState_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1304
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
         (coe d_'46'generalizedField'45'lstate_6375 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2220 ~v0 ~v1 v2 = du_rewards_2220 v2
du_rewards_2220 ::
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1272
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
            (coe d_'46'generalizedField'45'lstate_6375 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2222 ~v0 ~v1 v2 = du_stakeDelegs_2222 v2
du_stakeDelegs_2222 ::
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1270
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
            (coe d_'46'generalizedField'45'lstate_6375 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2224 ~v0 ~v1 v2 = du_voteDelegs_2224 v2
du_voteDelegs_2224 ::
  T_GeneralizeTel_6385 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1268
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
            (coe d_'46'generalizedField'45'lstate_6375 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__4917 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6375 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196
d_'46'generalizedField'45'lstate_6375 v0
  = case coe v0 of
      C_mkGeneralizeTel_6387 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6377 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
d_'46'generalizedField'45'mark_6377 v0
  = case coe v0 of
      C_mkGeneralizeTel_6387 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6379 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
d_'46'generalizedField'45'set_6379 v0
  = case coe v0 of
      C_mkGeneralizeTel_6387 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6381 ::
  T_GeneralizeTel_6385 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
d_'46'generalizedField'45'go_6381 v0
  = case coe v0 of
      C_mkGeneralizeTel_6387 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6383 ::
  T_GeneralizeTel_6385 -> Integer
d_'46'generalizedField'45'feeSS_6383 v0
  = case coe v0 of
      C_mkGeneralizeTel_6387 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6385 a0 a1 = ()
data T_GeneralizeTel_6385
  = C_mkGeneralizeTel_6387 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2524
                           Integer
