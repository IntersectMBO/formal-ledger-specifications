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

module MAlonzo.Code.Ledger.PParams where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.PParams.Acnt
d_Acnt_124 a0 a1 a2 = ()
data T_Acnt_124 = C_Acnt'46'constructor_359 Integer Integer
-- Ledger.PParams.Acnt.treasury
d_treasury_130 :: T_Acnt_124 -> Integer
d_treasury_130 v0
  = case coe v0 of
      C_Acnt'46'constructor_359 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.Acnt.reserves
d_reserves_132 :: T_Acnt_124 -> Integer
d_reserves_132 v0
  = case coe v0 of
      C_Acnt'46'constructor_359 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.ProtVer
d_ProtVer_134 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_ProtVer_134 = erased
-- Ledger.PParams.pvCanFollow
d_pvCanFollow_136 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_136
  = C_canFollowMajor_138 | C_canFollowMinor_140
-- Ledger.PParams.PParamGroup
d_PParamGroup_142 a0 a1 a2 = ()
data T_PParamGroup_142
  = C_NetworkGroup_144 | C_EconomicGroup_146 | C_TechnicalGroup_148 |
    C_GovernanceGroup_150 | C_SecurityGroup_152
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_154 a0 a1 a2 = ()
data T_DrepThresholds_154
  = C_DrepThresholds'46'constructor_1433 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.DrepThresholds.P1
d_P1_176 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_176 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_178 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_178 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_180 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_180 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_182 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_182 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_184 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_184 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_186 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_186 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_188 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_188 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_190 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_190 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_192 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_192 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_194 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_194 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_196 a0 a1 a2 = ()
data T_PoolThresholds_196
  = C_PoolThresholds'46'constructor_1907 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_208 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_208 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1907 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_210 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_210 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1907 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_212 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_212 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1907 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_214 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_214 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1907 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5e
d_Q5e_216 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_216 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1907 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_218 a0 a1 a2 = ()
data T_PParams_218
  = C_PParams'46'constructor_3067 Integer Integer Integer Integer
                                  Integer AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 AgdaAny Integer Integer
                                  AgdaAny T_DrepThresholds_154 T_PoolThresholds_196 Integer Integer
                                  Integer AgdaAny Integer Integer
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_278 :: T_PParams_218 -> Integer
d_maxBlockSize_278 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_280 :: T_PParams_218 -> Integer
d_maxTxSize_280 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_282 :: T_PParams_218 -> Integer
d_maxHeaderSize_282 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_284 :: T_PParams_218 -> Integer
d_maxValSize_284 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_286 :: T_PParams_218 -> Integer
d_maxCollateralInputs_286 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_288 :: T_PParams_218 -> AgdaAny
d_maxTxExUnits_288 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_290 :: T_PParams_218 -> AgdaAny
d_maxBlockExUnits_290 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_292 :: T_PParams_218 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_292 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_294 :: T_PParams_218 -> Integer
d_a_294 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_296 :: T_PParams_218 -> Integer
d_b_296 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.keyDeposit
d_keyDeposit_298 :: T_PParams_218 -> Integer
d_keyDeposit_298 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_300 :: T_PParams_218 -> Integer
d_poolDeposit_300 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_302 :: T_PParams_218 -> Integer
d_coinsPerUTxOByte_302 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_304 ::
  T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_304 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_306 :: T_PParams_218 -> AgdaAny
d_prices_306 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_308 :: T_PParams_218 -> Integer
d_minUTxOValue_308 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_310 :: T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_310 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_312 :: T_PParams_218 -> AgdaAny
d_Emax_312 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_314 :: T_PParams_218 -> Integer
d_nopt_314 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_316 :: T_PParams_218 -> Integer
d_collateralPercentage_316 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_318 :: T_PParams_218 -> AgdaAny
d_costmdls_318 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_320 :: T_PParams_218 -> T_DrepThresholds_154
d_drepThresholds_320 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_322 :: T_PParams_218 -> T_PoolThresholds_196
d_poolThresholds_322 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_324 :: T_PParams_218 -> Integer
d_govActionLifetime_324 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_326 :: T_PParams_218 -> Integer
d_govActionDeposit_326 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_328 :: T_PParams_218 -> Integer
d_drepDeposit_328 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_330 :: T_PParams_218 -> AgdaAny
d_drepActivity_330 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_332 :: T_PParams_218 -> Integer
d_ccMinSize_332 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_334 :: T_PParams_218 -> Integer
d_ccMaxTermLength_334 v0
  = case coe v0 of
      C_PParams'46'constructor_3067 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_336 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParams_218 -> ()
d_paramsWellFormed_336 = erased
-- Ledger.PParams._._.Emax
d_Emax_346 :: T_PParams_218 -> AgdaAny
d_Emax_346 v0 = coe d_Emax_312 (coe v0)
-- Ledger.PParams._._.a
d_a_348 :: T_PParams_218 -> Integer
d_a_348 v0 = coe d_a_294 (coe v0)
-- Ledger.PParams._._.a0
d_a0_350 :: T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_350 v0 = coe d_a0_310 (coe v0)
-- Ledger.PParams._._.b
d_b_352 :: T_PParams_218 -> Integer
d_b_352 v0 = coe d_b_296 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_354 :: T_PParams_218 -> Integer
d_ccMaxTermLength_354 v0 = coe d_ccMaxTermLength_334 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_356 :: T_PParams_218 -> Integer
d_ccMinSize_356 v0 = coe d_ccMinSize_332 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_358 :: T_PParams_218 -> Integer
d_coinsPerUTxOByte_358 v0 = coe d_coinsPerUTxOByte_302 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_360 :: T_PParams_218 -> Integer
d_collateralPercentage_360 v0
  = coe d_collateralPercentage_316 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_362 :: T_PParams_218 -> AgdaAny
d_costmdls_362 v0 = coe d_costmdls_318 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_364 :: T_PParams_218 -> AgdaAny
d_drepActivity_364 v0 = coe d_drepActivity_330 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_366 :: T_PParams_218 -> Integer
d_drepDeposit_366 v0 = coe d_drepDeposit_328 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_368 :: T_PParams_218 -> T_DrepThresholds_154
d_drepThresholds_368 v0 = coe d_drepThresholds_320 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_370 :: T_PParams_218 -> Integer
d_govActionDeposit_370 v0 = coe d_govActionDeposit_326 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_372 :: T_PParams_218 -> Integer
d_govActionLifetime_372 v0 = coe d_govActionLifetime_324 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_374 :: T_PParams_218 -> Integer
d_keyDeposit_374 v0 = coe d_keyDeposit_298 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_376 :: T_PParams_218 -> AgdaAny
d_maxBlockExUnits_376 v0 = coe d_maxBlockExUnits_290 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_378 :: T_PParams_218 -> Integer
d_maxBlockSize_378 v0 = coe d_maxBlockSize_278 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_380 :: T_PParams_218 -> Integer
d_maxCollateralInputs_380 v0
  = coe d_maxCollateralInputs_286 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_382 :: T_PParams_218 -> Integer
d_maxHeaderSize_382 v0 = coe d_maxHeaderSize_282 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_384 :: T_PParams_218 -> AgdaAny
d_maxTxExUnits_384 v0 = coe d_maxTxExUnits_288 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_386 :: T_PParams_218 -> Integer
d_maxTxSize_386 v0 = coe d_maxTxSize_280 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_388 :: T_PParams_218 -> Integer
d_maxValSize_388 v0 = coe d_maxValSize_284 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_390 ::
  T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_390 v0
  = coe d_minFeeRefScriptCoinsPerByte_304 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_392 :: T_PParams_218 -> Integer
d_minUTxOValue_392 v0 = coe d_minUTxOValue_308 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_394 :: T_PParams_218 -> Integer
d_nopt_394 v0 = coe d_nopt_314 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_396 :: T_PParams_218 -> Integer
d_poolDeposit_396 v0 = coe d_poolDeposit_300 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_398 :: T_PParams_218 -> T_PoolThresholds_196
d_poolThresholds_398 v0 = coe d_poolThresholds_322 (coe v0)
-- Ledger.PParams._._.prices
d_prices_400 :: T_PParams_218 -> AgdaAny
d_prices_400 v0 = coe d_prices_306 (coe v0)
-- Ledger.PParams._._.pv
d_pv_402 :: T_PParams_218 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_402 v0 = coe d_pv_292 (coe v0)
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_404 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_404 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_404
du_DecEq'45'DrepThresholds_404 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_404
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1433 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_1433 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                  (coe v21) (coe v10)))
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                               (coe v20) (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                            (coe v19) (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                         (coe v18) (coe v7)))
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                      (coe v17) (coe v6)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                   (coe v16) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                (coe v15) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                             (coe v14) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                          (coe v13) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                       (coe v12) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v22 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                       erased)
                                                                    erased)
                                                                 erased)
                                                              erased)
                                                           erased)
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_406 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_406 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_406
du_DecEq'45'PoolThresholds_406 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_406
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_1907 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_1907 v7 v8 v9 v10 v11
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                   (coe v11) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                (coe v10) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                             (coe v9) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                          (coe v8) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                       (coe v7) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v12 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParams
d_DecEq'45'PParams_408 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_408 ~v0 v1 v2 = du_DecEq'45'PParams_408 v1 v2
du_DecEq'45'PParams_408 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_408 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3067 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParams'46'constructor_3067 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                           (coe
                                                                                                                              v61)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                        (coe
                                                                                                                           v60)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                     (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                                        (coe
                                                                                                                           v0))
                                                                                                                     v59
                                                                                                                     v29))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                  (coe
                                                                                                                     v58)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                               (coe
                                                                                                                  v57)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                            (coe
                                                                                                               v56)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                           (coe
                                                                                                                              d_Q5e_216
                                                                                                                              (coe
                                                                                                                                 v25))
                                                                                                                           (coe
                                                                                                                              d_Q5e_216
                                                                                                                              (coe
                                                                                                                                 v55))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                        (coe
                                                                                                                           d_Q4_214
                                                                                                                           (coe
                                                                                                                              v25))
                                                                                                                        (coe
                                                                                                                           d_Q4_214
                                                                                                                           (coe
                                                                                                                              v55))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                     (coe
                                                                                                                        d_Q2b_212
                                                                                                                        (coe
                                                                                                                           v25))
                                                                                                                     (coe
                                                                                                                        d_Q2b_212
                                                                                                                        (coe
                                                                                                                           v55))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                  (coe
                                                                                                                     d_Q2a_210
                                                                                                                     (coe
                                                                                                                        v25))
                                                                                                                  (coe
                                                                                                                     d_Q2a_210
                                                                                                                     (coe
                                                                                                                        v55))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_Q1_208
                                                                                                                  (coe
                                                                                                                     v25))
                                                                                                               (coe
                                                                                                                  d_Q1_208
                                                                                                                  (coe
                                                                                                                     v55))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                                                                                                            erased
                                                                                                            (coe
                                                                                                               (\ v62 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                erased)
                                                                                                                             erased)
                                                                                                                          erased)
                                                                                                                       erased)
                                                                                                                    erased)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                       (coe
                                                                                                                                          d_P6_194
                                                                                                                                          (coe
                                                                                                                                             v24))
                                                                                                                                       (coe
                                                                                                                                          d_P6_194
                                                                                                                                          (coe
                                                                                                                                             v54))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                    (coe
                                                                                                                                       d_P5d_192
                                                                                                                                       (coe
                                                                                                                                          v24))
                                                                                                                                    (coe
                                                                                                                                       d_P5d_192
                                                                                                                                       (coe
                                                                                                                                          v54))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                 (coe
                                                                                                                                    d_P5c_190
                                                                                                                                    (coe
                                                                                                                                       v24))
                                                                                                                                 (coe
                                                                                                                                    d_P5c_190
                                                                                                                                    (coe
                                                                                                                                       v54))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                              (coe
                                                                                                                                 d_P5b_188
                                                                                                                                 (coe
                                                                                                                                    v24))
                                                                                                                              (coe
                                                                                                                                 d_P5b_188
                                                                                                                                 (coe
                                                                                                                                    v54))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                           (coe
                                                                                                                              d_P5a_186
                                                                                                                              (coe
                                                                                                                                 v24))
                                                                                                                           (coe
                                                                                                                              d_P5a_186
                                                                                                                              (coe
                                                                                                                                 v54))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                        (coe
                                                                                                                           d_P4_184
                                                                                                                           (coe
                                                                                                                              v24))
                                                                                                                        (coe
                                                                                                                           d_P4_184
                                                                                                                           (coe
                                                                                                                              v54))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                     (coe
                                                                                                                        d_P3_182
                                                                                                                        (coe
                                                                                                                           v24))
                                                                                                                     (coe
                                                                                                                        d_P3_182
                                                                                                                        (coe
                                                                                                                           v54))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                  (coe
                                                                                                                     d_P2b_180
                                                                                                                     (coe
                                                                                                                        v24))
                                                                                                                  (coe
                                                                                                                     d_P2b_180
                                                                                                                     (coe
                                                                                                                        v54))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_P2a_178
                                                                                                                  (coe
                                                                                                                     v24))
                                                                                                               (coe
                                                                                                                  d_P2a_178
                                                                                                                  (coe
                                                                                                                     v54))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                            (coe
                                                                                                               d_P1_176
                                                                                                               (coe
                                                                                                                  v24))
                                                                                                            (coe
                                                                                                               d_P1_176
                                                                                                               (coe
                                                                                                                  v54))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                                                                                                         erased
                                                                                                         (coe
                                                                                                            (\ v62 ->
                                                                                                               coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                            erased)
                                                                                                                                         erased)
                                                                                                                                      erased)
                                                                                                                                   erased)
                                                                                                                                erased)
                                                                                                                             erased)
                                                                                                                          erased)
                                                                                                                       erased)
                                                                                                                    erased)
                                                                                                                 erased)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                   (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   v53
                                                                                                   v23))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                (coe
                                                                                                   v52)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                             (coe
                                                                                                v51)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                             (coe
                                                                                                v0))
                                                                                          v50 v20))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                       (coe v49)
                                                                                       (coe v19)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                    (coe v48)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                 (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                       (coe v1)))
                                                                                 v47 v17))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                              (coe v46) (coe v16)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                           (coe v45) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                        (coe v44) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                     (coe v43) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                  (coe v42) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                               (coe v41) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                            (coe
                                                               (\ v62 ->
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                            (coe v40) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_412
                                                               (coe v1)))
                                                         v39 v9))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                      (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_ps_412
                                                            (coe v1)))
                                                      v38 v8))
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                   (coe v37) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                (coe v36) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                             (coe v35) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558 (coe v34)
                                          (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558 (coe v33)
                                       (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v62 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                erased)
                                                                                                                             erased)
                                                                                                                          erased)
                                                                                                                       erased)
                                                                                                                    erased)
                                                                                                                 erased)
                                                                                                              erased)
                                                                                                           erased)
                                                                                                        erased)
                                                                                                     erased)
                                                                                                  erased)
                                                                                               erased)
                                                                                            erased)
                                                                                         erased)
                                                                                      erased)
                                                                                   erased)
                                                                                erased)
                                                                             erased)
                                                                          erased)
                                                                       erased)
                                                                    erased)
                                                                 erased)
                                                              erased)
                                                           erased)
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_410 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_410 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_410
du_DecEq'45'PParamGroup_410 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_410
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_144
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_144
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_EconomicGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_146
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_144
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_146
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_TechnicalGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_148
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_144
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_148
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_GovernanceGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_150
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_144
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_150
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SecurityGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_152
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_144
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_152
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_414 a0 a1 a2 = ()
data T_PParamsUpdate_414
  = C_PParamsUpdate'46'constructor_545807 (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe AgdaAny) (Maybe AgdaAny)
                                          (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe AgdaAny) (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe AgdaAny) (Maybe Integer) (Maybe Integer)
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_154)
                                          (Maybe T_PoolThresholds_196) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_474 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_474 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_476 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_476 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_478 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_478 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_480 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_480 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_482 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_482 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_484 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_484 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_486 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_486 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_488 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_488 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a
d_a_490 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_490 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.b
d_b_492 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_492 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_494 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_494 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_496 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_496 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_498 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_498 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_500 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_500 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_502 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_502 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_504 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_504 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_506 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_506 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_508 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_508 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_510 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_510 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_512 :: T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_514 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_514 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_516 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_154
d_drepThresholds_516 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_518 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_196
d_poolThresholds_518 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_520 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_520 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_522 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_522 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_524 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_524 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_526 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_526 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_528 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_528 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_530 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_530 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_545807 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_532 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 -> ()
d_paramsUpdateWellFormed_532 = erased
-- Ledger.PParams.PParamsUpdate._._.Emax
d_Emax_542 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_542 v0 = coe d_Emax_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a
d_a_544 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_544 v0 = coe d_a_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a0
d_a0_546 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_546 v0 = coe d_a0_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.b
d_b_548 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_548 v0 = coe d_b_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_550 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_550 v0 = coe d_ccMaxTermLength_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_552 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_552 v0 = coe d_ccMinSize_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_554 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_554 v0 = coe d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_556 :: T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_556 v0
  = coe d_collateralPercentage_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.costmdls
d_costmdls_558 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_558 v0 = coe d_costmdls_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_560 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_560 v0 = coe d_drepActivity_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_562 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_562 v0 = coe d_drepDeposit_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_564 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_154
d_drepThresholds_564 v0 = coe d_drepThresholds_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_566 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_566 v0 = coe d_govActionDeposit_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_568 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_568 v0 = coe d_govActionLifetime_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_570 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_570 v0 = coe d_keyDeposit_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_572 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_572 v0 = coe d_maxBlockExUnits_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_574 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_574 v0 = coe d_maxBlockSize_474 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_576 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_576 v0
  = coe d_maxCollateralInputs_482 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_578 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_578 v0 = coe d_maxHeaderSize_478 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_580 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_580 v0 = coe d_maxTxExUnits_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_582 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_582 v0 = coe d_maxTxSize_476 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_584 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_584 v0 = coe d_maxValSize_480 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_586 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_586 v0
  = coe d_minFeeRefScriptCoinsPerByte_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_588 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_588 v0 = coe d_minUTxOValue_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.nopt
d_nopt_590 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_590 v0 = coe d_nopt_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_592 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_592 v0 = coe d_poolDeposit_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_594 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_196
d_poolThresholds_594 v0 = coe d_poolThresholds_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.prices
d_prices_596 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_596 v0 = coe d_prices_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.pv
d_pv_598 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_598 v0 = coe d_pv_488 (coe v0)
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_602 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_602 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_602 v3
du_paramsUpdateWellFormed'63'_602 ::
  T_PParamsUpdate_414 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_602 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe
               MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_410
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_maxBlockSize_474 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_476 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_478 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_480 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_minUTxOValue_504 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_496 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_512 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_530 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_520 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_522 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_524 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_606 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 -> Bool
d_modifiesNetworkGroup_606 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_606 v3
du_modifiesNetworkGroup_606 :: T_PParamsUpdate_414 -> Bool
du_modifiesNetworkGroup_606 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_474 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_476 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_478 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_480 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_482 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_484 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_486 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_488 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_612 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_612 v0 = coe d_Emax_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_614 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_614 v0 = coe d_a_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_616 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_616 v0 = coe d_a0_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_618 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_618 v0 = coe d_b_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_620 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_620 v0 = coe d_ccMaxTermLength_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_622 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_622 v0 = coe d_ccMinSize_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_624 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_624 v0 = coe d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_626 :: T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_626 v0
  = coe d_collateralPercentage_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_628 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_628 v0 = coe d_costmdls_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_630 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_630 v0 = coe d_drepActivity_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_632 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_632 v0 = coe d_drepDeposit_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_634 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_154
d_drepThresholds_634 v0 = coe d_drepThresholds_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_636 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_636 v0 = coe d_govActionDeposit_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_638 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_638 v0 = coe d_govActionLifetime_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_640 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_640 v0 = coe d_keyDeposit_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_642 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_642 v0 = coe d_maxBlockExUnits_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_644 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_644 v0 = coe d_maxBlockSize_474 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_646 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_646 v0
  = coe d_maxCollateralInputs_482 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_648 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_648 v0 = coe d_maxHeaderSize_478 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_650 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_650 v0 = coe d_maxTxExUnits_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_652 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_652 v0 = coe d_maxTxSize_476 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_654 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_654 v0 = coe d_maxValSize_480 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_656 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_656 v0
  = coe d_minFeeRefScriptCoinsPerByte_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_658 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_658 v0 = coe d_minUTxOValue_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_660 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_660 v0 = coe d_nopt_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_662 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_662 v0 = coe d_poolDeposit_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_664 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_196
d_poolThresholds_664 v0 = coe d_poolThresholds_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_666 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_666 v0 = coe d_prices_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_668 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_668 v0 = coe d_pv_488 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_670 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 -> Bool
d_modifiesEconomicGroup_670 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_670 v3
du_modifiesEconomicGroup_670 :: T_PParamsUpdate_414 -> Bool
du_modifiesEconomicGroup_670 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_490 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_492 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_494 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_496 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_coinsPerUTxOByte_498 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_minFeeRefScriptCoinsPerByte_500 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_prices_502 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minUTxOValue_504 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_676 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_676 v0 = coe d_Emax_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_678 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_678 v0 = coe d_a_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_680 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_680 v0 = coe d_a0_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_682 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_682 v0 = coe d_b_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_684 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_684 v0 = coe d_ccMaxTermLength_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_686 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_686 v0 = coe d_ccMinSize_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_688 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_688 v0 = coe d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_690 :: T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_690 v0
  = coe d_collateralPercentage_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_692 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_692 v0 = coe d_costmdls_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_694 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_694 v0 = coe d_drepActivity_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_696 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_696 v0 = coe d_drepDeposit_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_698 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_154
d_drepThresholds_698 v0 = coe d_drepThresholds_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_700 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_700 v0 = coe d_govActionDeposit_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_702 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_702 v0 = coe d_govActionLifetime_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_704 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_704 v0 = coe d_keyDeposit_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_706 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_706 v0 = coe d_maxBlockExUnits_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_708 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_708 v0 = coe d_maxBlockSize_474 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_710 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_710 v0
  = coe d_maxCollateralInputs_482 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_712 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_712 v0 = coe d_maxHeaderSize_478 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_714 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_714 v0 = coe d_maxTxExUnits_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_716 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_716 v0 = coe d_maxTxSize_476 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_718 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_718 v0 = coe d_maxValSize_480 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_720 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_720 v0
  = coe d_minFeeRefScriptCoinsPerByte_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_722 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_722 v0 = coe d_minUTxOValue_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_724 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_724 v0 = coe d_nopt_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_726 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_726 v0 = coe d_poolDeposit_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_728 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_196
d_poolThresholds_728 v0 = coe d_poolThresholds_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_730 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_730 v0 = coe d_prices_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_732 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_732 v0 = coe d_pv_488 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_734 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 -> Bool
d_modifiesTechnicalGroup_734 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_734 v3
du_modifiesTechnicalGroup_734 :: T_PParamsUpdate_414 -> Bool
du_modifiesTechnicalGroup_734 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_506 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_508 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_510 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_512 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_514 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_740 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_740 v0 = coe d_Emax_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_742 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_742 v0 = coe d_a_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_744 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_744 v0 = coe d_a0_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_746 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_746 v0 = coe d_b_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_748 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_748 v0 = coe d_ccMaxTermLength_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_750 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_750 v0 = coe d_ccMinSize_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_752 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_752 v0 = coe d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_754 :: T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_754 v0
  = coe d_collateralPercentage_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_756 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_756 v0 = coe d_costmdls_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_758 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_758 v0 = coe d_drepActivity_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_760 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_760 v0 = coe d_drepDeposit_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_762 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_154
d_drepThresholds_762 v0 = coe d_drepThresholds_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_764 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_764 v0 = coe d_govActionDeposit_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_766 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_766 v0 = coe d_govActionLifetime_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_768 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_768 v0 = coe d_keyDeposit_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_770 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_770 v0 = coe d_maxBlockExUnits_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_772 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_772 v0 = coe d_maxBlockSize_474 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_774 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_774 v0
  = coe d_maxCollateralInputs_482 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_776 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_776 v0 = coe d_maxHeaderSize_478 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_778 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_778 v0 = coe d_maxTxExUnits_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_780 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_780 v0 = coe d_maxTxSize_476 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_782 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_782 v0 = coe d_maxValSize_480 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_784 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_784 v0
  = coe d_minFeeRefScriptCoinsPerByte_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_786 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_786 v0 = coe d_minUTxOValue_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_788 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_788 v0 = coe d_nopt_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_790 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_790 v0 = coe d_poolDeposit_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_792 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_196
d_poolThresholds_792 v0 = coe d_poolThresholds_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_794 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_794 v0 = coe d_prices_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_796 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_796 v0 = coe d_pv_488 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_798 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 -> Bool
d_modifiesGovernanceGroup_798 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_798 v3
du_modifiesGovernanceGroup_798 :: T_PParamsUpdate_414 -> Bool
du_modifiesGovernanceGroup_798 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_516 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_518 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_520 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_522 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_524 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_526 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_528 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_530 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_804 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_804 v0 = coe d_Emax_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_806 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_806 v0 = coe d_a_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_808 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_808 v0 = coe d_a0_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_810 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_810 v0 = coe d_b_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_812 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_812 v0 = coe d_ccMaxTermLength_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_814 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_814 v0 = coe d_ccMinSize_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_816 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_816 v0 = coe d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_818 :: T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_818 v0
  = coe d_collateralPercentage_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_820 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_820 v0 = coe d_costmdls_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_822 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_822 v0 = coe d_drepActivity_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_824 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_824 v0 = coe d_drepDeposit_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_826 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_154
d_drepThresholds_826 v0 = coe d_drepThresholds_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_828 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_828 v0 = coe d_govActionDeposit_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_830 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_830 v0 = coe d_govActionLifetime_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_832 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_832 v0 = coe d_keyDeposit_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_834 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_834 v0 = coe d_maxBlockExUnits_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_836 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_836 v0 = coe d_maxBlockSize_474 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_838 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_838 v0
  = coe d_maxCollateralInputs_482 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_840 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_840 v0 = coe d_maxHeaderSize_478 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_842 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_842 v0 = coe d_maxTxExUnits_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_844 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_844 v0 = coe d_maxTxSize_476 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_846 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_846 v0 = coe d_maxValSize_480 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_848 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_848 v0
  = coe d_minFeeRefScriptCoinsPerByte_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_850 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_850 v0 = coe d_minUTxOValue_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_852 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_852 v0 = coe d_nopt_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_854 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_854 v0 = coe d_poolDeposit_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_856 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_196
d_poolThresholds_856 v0 = coe d_poolThresholds_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_858 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_858 v0 = coe d_prices_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_860 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_860 v0 = coe d_pv_488 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_862 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 -> [T_PParamGroup_142]
d_modifiedUpdateGroups_862 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_862 v3
du_modifiedUpdateGroups_862 ::
  T_PParamsUpdate_414 -> [T_PParamGroup_142]
du_modifiedUpdateGroups_862 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         du__'63''9552''8658'__870 (coe v0)
         (coe du_modifiesNetworkGroup_606) (coe C_NetworkGroup_144))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            du__'63''9552''8658'__870 (coe v0)
            (coe du_modifiesEconomicGroup_670) (coe C_EconomicGroup_146))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               du__'63''9552''8658'__870 (coe v0)
               (coe du_modifiesTechnicalGroup_734) (coe C_TechnicalGroup_148))
            (coe
               du__'63''9552''8658'__870 (coe v0)
               (coe du_modifiesGovernanceGroup_798) (coe C_GovernanceGroup_150))))
-- Ledger.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__870 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_414 ->
  (T_PParamsUpdate_414 -> Bool) ->
  T_PParamGroup_142 -> [T_PParamGroup_142]
d__'63''9552''8658'__870 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__870 v3 v4 v5
du__'63''9552''8658'__870 ::
  T_PParamsUpdate_414 ->
  (T_PParamsUpdate_414 -> Bool) ->
  T_PParamGroup_142 -> [T_PParamGroup_142]
du__'63''9552''8658'__870 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v1 v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_302
              (coe
                 MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_306
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
              v2))
      (coe
         (\ v3 ->
            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
              (coe
                 MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_294
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
-- Ledger.PParams.PParamsUpdate._?↗_
d__'63''8599'__878 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__878 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__878 v4 v5
du__'63''8599'__878 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__878 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.≡-update
d_'8801''45'update_892 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_892 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_892 v4
du_'8801''45'update_892 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_892 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (\ v1 -> coe du_to_912 (coe v0)) erased
-- Ledger.PParams.PParamsUpdate._.to
d_to_912 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_to_912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_912 v8
du_to_912 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_912 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate._.from
d_from_924 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from_924 = erased
-- Ledger.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_926 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParams_218 -> T_PParamsUpdate_414 -> T_PParams_218
d_applyPParamsUpdate_926 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_926 v3 v4
du_applyPParamsUpdate_926 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> T_PParams_218
du_applyPParamsUpdate_926 v0 v1
  = coe
      C_PParams'46'constructor_3067
      (coe
         du__'63''8599'__878 (coe d_maxBlockSize_474 (coe v1))
         (coe d_maxBlockSize_278 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_maxTxSize_476 (coe v1))
         (coe d_maxTxSize_280 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_maxHeaderSize_478 (coe v1))
         (coe d_maxHeaderSize_282 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_maxValSize_480 (coe v1))
         (coe d_maxValSize_284 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_maxCollateralInputs_482 (coe v1))
         (coe d_maxCollateralInputs_286 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_maxTxExUnits_484 (coe v1))
         (coe d_maxTxExUnits_288 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_maxBlockExUnits_486 (coe v1))
         (coe d_maxBlockExUnits_290 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_pv_488 (coe v1))
         (coe d_pv_292 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_a_490 (coe v1)) (coe d_a_294 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_b_492 (coe v1)) (coe d_b_296 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_keyDeposit_494 (coe v1))
         (coe d_keyDeposit_298 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_poolDeposit_496 (coe v1))
         (coe d_poolDeposit_300 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_coinsPerUTxOByte_498 (coe v1))
         (coe d_coinsPerUTxOByte_302 (coe v0)))
      (coe
         du__'63''8599'__878
         (coe d_minFeeRefScriptCoinsPerByte_500 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_304 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_prices_502 (coe v1))
         (coe d_prices_306 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_minUTxOValue_504 (coe v1))
         (coe d_minUTxOValue_308 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_a0_506 (coe v1))
         (coe d_a0_310 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_Emax_508 (coe v1))
         (coe d_Emax_312 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_nopt_510 (coe v1))
         (coe d_nopt_314 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_collateralPercentage_512 (coe v1))
         (coe d_collateralPercentage_316 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_costmdls_514 (coe v1))
         (coe d_costmdls_318 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_drepThresholds_516 (coe v1))
         (coe d_drepThresholds_320 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_poolThresholds_518 (coe v1))
         (coe d_poolThresholds_322 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_govActionLifetime_520 (coe v1))
         (coe d_govActionLifetime_324 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_govActionDeposit_522 (coe v1))
         (coe d_govActionDeposit_326 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_drepDeposit_524 (coe v1))
         (coe d_drepDeposit_328 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_drepActivity_526 (coe v1))
         (coe d_drepActivity_330 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_ccMinSize_528 (coe v1))
         (coe d_ccMinSize_332 (coe v0)))
      (coe
         du__'63''8599'__878 (coe d_ccMaxTermLength_530 (coe v1))
         (coe d_ccMaxTermLength_334 (coe v0)))
-- Ledger.PParams.PParamsUpdate._.P.Emax
d_Emax_938 :: T_PParams_218 -> T_PParamsUpdate_414 -> AgdaAny
d_Emax_938 v0 ~v1 = du_Emax_938 v0
du_Emax_938 :: T_PParams_218 -> AgdaAny
du_Emax_938 v0 = coe d_Emax_312 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a
d_a_940 :: T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_a_940 v0 ~v1 = du_a_940 v0
du_a_940 :: T_PParams_218 -> Integer
du_a_940 v0 = coe d_a_294 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a0
d_a0_942 ::
  T_PParams_218 ->
  T_PParamsUpdate_414 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_942 v0 ~v1 = du_a0_942 v0
du_a0_942 :: T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_942 v0 = coe d_a0_310 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.b
d_b_944 :: T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_b_944 v0 ~v1 = du_b_944 v0
du_b_944 :: T_PParams_218 -> Integer
du_b_944 v0 = coe d_b_296 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_946 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_ccMaxTermLength_946 v0 ~v1 = du_ccMaxTermLength_946 v0
du_ccMaxTermLength_946 :: T_PParams_218 -> Integer
du_ccMaxTermLength_946 v0 = coe d_ccMaxTermLength_334 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_948 :: T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_ccMinSize_948 v0 ~v1 = du_ccMinSize_948 v0
du_ccMinSize_948 :: T_PParams_218 -> Integer
du_ccMinSize_948 v0 = coe d_ccMinSize_332 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_950 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_coinsPerUTxOByte_950 v0 ~v1 = du_coinsPerUTxOByte_950 v0
du_coinsPerUTxOByte_950 :: T_PParams_218 -> Integer
du_coinsPerUTxOByte_950 v0 = coe d_coinsPerUTxOByte_302 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_952 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_collateralPercentage_952 v0 ~v1 = du_collateralPercentage_952 v0
du_collateralPercentage_952 :: T_PParams_218 -> Integer
du_collateralPercentage_952 v0
  = coe d_collateralPercentage_316 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.costmdls
d_costmdls_954 :: T_PParams_218 -> T_PParamsUpdate_414 -> AgdaAny
d_costmdls_954 v0 ~v1 = du_costmdls_954 v0
du_costmdls_954 :: T_PParams_218 -> AgdaAny
du_costmdls_954 v0 = coe d_costmdls_318 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_956 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> AgdaAny
d_drepActivity_956 v0 ~v1 = du_drepActivity_956 v0
du_drepActivity_956 :: T_PParams_218 -> AgdaAny
du_drepActivity_956 v0 = coe d_drepActivity_330 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_958 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_drepDeposit_958 v0 ~v1 = du_drepDeposit_958 v0
du_drepDeposit_958 :: T_PParams_218 -> Integer
du_drepDeposit_958 v0 = coe d_drepDeposit_328 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_960 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> T_DrepThresholds_154
d_drepThresholds_960 v0 ~v1 = du_drepThresholds_960 v0
du_drepThresholds_960 :: T_PParams_218 -> T_DrepThresholds_154
du_drepThresholds_960 v0 = coe d_drepThresholds_320 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_962 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_govActionDeposit_962 v0 ~v1 = du_govActionDeposit_962 v0
du_govActionDeposit_962 :: T_PParams_218 -> Integer
du_govActionDeposit_962 v0 = coe d_govActionDeposit_326 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_964 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_govActionLifetime_964 v0 ~v1 = du_govActionLifetime_964 v0
du_govActionLifetime_964 :: T_PParams_218 -> Integer
du_govActionLifetime_964 v0 = coe d_govActionLifetime_324 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_966 :: T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_keyDeposit_966 v0 ~v1 = du_keyDeposit_966 v0
du_keyDeposit_966 :: T_PParams_218 -> Integer
du_keyDeposit_966 v0 = coe d_keyDeposit_298 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_968 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> AgdaAny
d_maxBlockExUnits_968 v0 ~v1 = du_maxBlockExUnits_968 v0
du_maxBlockExUnits_968 :: T_PParams_218 -> AgdaAny
du_maxBlockExUnits_968 v0 = coe d_maxBlockExUnits_290 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_970 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_maxBlockSize_970 v0 ~v1 = du_maxBlockSize_970 v0
du_maxBlockSize_970 :: T_PParams_218 -> Integer
du_maxBlockSize_970 v0 = coe d_maxBlockSize_278 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_972 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_maxCollateralInputs_972 v0 ~v1 = du_maxCollateralInputs_972 v0
du_maxCollateralInputs_972 :: T_PParams_218 -> Integer
du_maxCollateralInputs_972 v0
  = coe d_maxCollateralInputs_286 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_974 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_maxHeaderSize_974 v0 ~v1 = du_maxHeaderSize_974 v0
du_maxHeaderSize_974 :: T_PParams_218 -> Integer
du_maxHeaderSize_974 v0 = coe d_maxHeaderSize_282 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_976 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> AgdaAny
d_maxTxExUnits_976 v0 ~v1 = du_maxTxExUnits_976 v0
du_maxTxExUnits_976 :: T_PParams_218 -> AgdaAny
du_maxTxExUnits_976 v0 = coe d_maxTxExUnits_288 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_978 :: T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_maxTxSize_978 v0 ~v1 = du_maxTxSize_978 v0
du_maxTxSize_978 :: T_PParams_218 -> Integer
du_maxTxSize_978 v0 = coe d_maxTxSize_280 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_980 :: T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_maxValSize_980 v0 ~v1 = du_maxValSize_980 v0
du_maxValSize_980 :: T_PParams_218 -> Integer
du_maxValSize_980 v0 = coe d_maxValSize_284 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_982 ::
  T_PParams_218 ->
  T_PParamsUpdate_414 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_982 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_982 v0
du_minFeeRefScriptCoinsPerByte_982 ::
  T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_982 v0
  = coe d_minFeeRefScriptCoinsPerByte_304 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_984 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_minUTxOValue_984 v0 ~v1 = du_minUTxOValue_984 v0
du_minUTxOValue_984 :: T_PParams_218 -> Integer
du_minUTxOValue_984 v0 = coe d_minUTxOValue_308 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.nopt
d_nopt_986 :: T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_nopt_986 v0 ~v1 = du_nopt_986 v0
du_nopt_986 :: T_PParams_218 -> Integer
du_nopt_986 v0 = coe d_nopt_314 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_988 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> Integer
d_poolDeposit_988 v0 ~v1 = du_poolDeposit_988 v0
du_poolDeposit_988 :: T_PParams_218 -> Integer
du_poolDeposit_988 v0 = coe d_poolDeposit_300 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_990 ::
  T_PParams_218 -> T_PParamsUpdate_414 -> T_PoolThresholds_196
d_poolThresholds_990 v0 ~v1 = du_poolThresholds_990 v0
du_poolThresholds_990 :: T_PParams_218 -> T_PoolThresholds_196
du_poolThresholds_990 v0 = coe d_poolThresholds_322 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.prices
d_prices_992 :: T_PParams_218 -> T_PParamsUpdate_414 -> AgdaAny
d_prices_992 v0 ~v1 = du_prices_992 v0
du_prices_992 :: T_PParams_218 -> AgdaAny
du_prices_992 v0 = coe d_prices_306 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.pv
d_pv_994 ::
  T_PParams_218 ->
  T_PParamsUpdate_414 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_994 v0 ~v1 = du_pv_994 v0
du_pv_994 ::
  T_PParams_218 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_994 v0 = coe d_pv_292 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.Emax
d_Emax_998 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_998 v0 = coe d_Emax_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a
d_a_1000 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_1000 v0 = coe d_a_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a0
d_a0_1002 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1002 v0 = coe d_a0_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.b
d_b_1004 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_1004 v0 = coe d_b_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1006 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_1006 v0 = coe d_ccMaxTermLength_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1008 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_1008 v0 = coe d_ccMinSize_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1010 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_1010 v0 = coe d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1012 :: T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_1012 v0
  = coe d_collateralPercentage_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1014 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_1014 v0 = coe d_costmdls_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1016 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_1016 v0 = coe d_drepActivity_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1018 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_1018 v0 = coe d_drepDeposit_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1020 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_154
d_drepThresholds_1020 v0 = coe d_drepThresholds_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1022 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_1022 v0 = coe d_govActionDeposit_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1024 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_1024 v0 = coe d_govActionLifetime_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1026 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_1026 v0 = coe d_keyDeposit_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1028 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_1028 v0 = coe d_maxBlockExUnits_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1030 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_1030 v0 = coe d_maxBlockSize_474 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1032 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_1032 v0
  = coe d_maxCollateralInputs_482 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1034 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_1034 v0 = coe d_maxHeaderSize_478 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1036 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_1036 v0 = coe d_maxTxExUnits_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1038 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_1038 v0 = coe d_maxTxSize_476 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1040 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_1040 v0 = coe d_maxValSize_480 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1042 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1042 v0
  = coe d_minFeeRefScriptCoinsPerByte_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1044 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_1044 v0 = coe d_minUTxOValue_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.nopt
d_nopt_1046 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_1046 v0 = coe d_nopt_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1048 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_1048 v0 = coe d_poolDeposit_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1050 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_196
d_poolThresholds_1050 v0 = coe d_poolThresholds_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.prices
d_prices_1052 :: T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_1052 v0 = coe d_prices_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.pv
d_pv_1054 ::
  T_PParamsUpdate_414 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1054 v0 = coe d_pv_488 (coe v0)
-- Ledger.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1056 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1056 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1056 v1 v2
du_DecEq'45'PParamsUpdate_1056 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1056 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_545807 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParamsUpdate'46'constructor_545807 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                                           (coe
                                                                                                                              v61)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                                        (coe
                                                                                                                           v60)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                                           (coe
                                                                                                                              v0)))
                                                                                                                     (coe
                                                                                                                        v59)
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                                  (coe
                                                                                                                     v58)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                               (coe
                                                                                                                  v57)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                            (coe
                                                                                                               v56)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                            (coe
                                                                                                               du_DecEq'45'PoolThresholds_406))
                                                                                                         (coe
                                                                                                            v55)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                         (coe
                                                                                                            du_DecEq'45'DrepThresholds_404))
                                                                                                      (coe
                                                                                                         v54)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                                            (coe
                                                                                                               v1))))
                                                                                                   (coe
                                                                                                      v53)
                                                                                                   (coe
                                                                                                      v23)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                (coe
                                                                                                   v52)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                             (coe
                                                                                                v51)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe v50)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554)
                                                                                       (coe v49)
                                                                                       (coe v19)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                    (coe v48)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                          (coe
                                                                                             v1))))
                                                                                 (coe v47)
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554)
                                                                              (coe v46) (coe v16)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                           (coe v45) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                        (coe v44) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                     (coe v43) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                  (coe v42) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                               (coe v41) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                               (coe
                                                                  (\ v62 ->
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                            (coe v40) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_412
                                                                  (coe v1))))
                                                         (coe v39) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_412
                                                               (coe v1))))
                                                      (coe v38) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                   (coe v37) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                (coe v36) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                             (coe v35) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                          (coe v34) (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                       (coe v33) (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v62 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                erased)
                                                                                                                             erased)
                                                                                                                          erased)
                                                                                                                       erased)
                                                                                                                    erased)
                                                                                                                 erased)
                                                                                                              erased)
                                                                                                           erased)
                                                                                                        erased)
                                                                                                     erased)
                                                                                                  erased)
                                                                                               erased)
                                                                                            erased)
                                                                                         erased)
                                                                                      erased)
                                                                                   erased)
                                                                                erased)
                                                                             erased)
                                                                          erased)
                                                                       erased)
                                                                    erased)
                                                                 erased)
                                                              erased)
                                                           erased)
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.pvCanFollow?
d_pvCanFollow'63'_1062 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1062 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1062 v3 v4
du_pvCanFollow'63'_1062 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1062 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                     erased
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                        (coe
                           eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                           (coe addInt (coe (1 :: Integer)) (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                           (coe
                              eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                              (coe addInt (coe (1 :: Integer)) (coe v2))))) in
           coe
             (let v5 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1) in
              coe
                (let v6 = 0 :: Integer in
                 coe
                   (case coe v4 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                        -> if coe v7
                             then let v9
                                        = seq
                                            (coe v8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                               erased
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                  (coe v5) (coe v6))) in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                         -> if coe v10
                                              then coe
                                                     seq (coe v11)
                                                     (let v12
                                                            = coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe
                                                                      eqInt
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                      (coe
                                                                         eqInt
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v1))
                                                                         (coe v2)))) in
                                                      coe
                                                        (case coe v12 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                             -> if coe v13
                                                                  then let v15
                                                                             = seq
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                    erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          addInt
                                                                                          (coe
                                                                                             (1 ::
                                                                                                Integer))
                                                                                          (coe
                                                                                             v3)))) in
                                                                       coe
                                                                         (case coe v15 of
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                              -> if coe v16
                                                                                   then coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                   else coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                v10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                (coe
                                                                                                   C_canFollowMajor_138)))
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                  else (let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                     (coe v13)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMajor_138)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                              else coe
                                                     seq (coe v11)
                                                     (let v12
                                                            = coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe
                                                                      eqInt
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                      (coe
                                                                         eqInt
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v1))
                                                                         (coe v2)))) in
                                                      coe
                                                        (case coe v12 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                             -> if coe v13
                                                                  then let v15
                                                                             = seq
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                    erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          addInt
                                                                                          (coe
                                                                                             (1 ::
                                                                                                Integer))
                                                                                          (coe
                                                                                             v3)))) in
                                                                       coe
                                                                         (case coe v15 of
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                              -> if coe v16
                                                                                   then coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                v16)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                (coe
                                                                                                   C_canFollowMinor_140)))
                                                                                   else coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                v16)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                  else (let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                     (coe v13)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMinor_140)))
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             else (let v9
                                         = seq
                                             (coe v8)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                   coe
                                     (case coe v9 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                          -> if coe v10
                                               then coe
                                                      seq (coe v11)
                                                      (let v12
                                                             = coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe
                                                                       eqInt
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v1))
                                                                       (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                       (coe
                                                                          eqInt
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v1))
                                                                          (coe v2)))) in
                                                       coe
                                                         (case coe v12 of
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                              -> if coe v13
                                                                   then let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                     erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v1))
                                                                                        (coe
                                                                                           addInt
                                                                                           (coe
                                                                                              (1 ::
                                                                                                 Integer))
                                                                                           (coe
                                                                                              v3)))) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMajor_138)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                   else (let v15
                                                                               = seq
                                                                                   (coe v14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                      (coe v13)
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                         coe
                                                                           (case coe v15 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                                -> if coe v16
                                                                                     then coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v10)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  (coe
                                                                                                     C_canFollowMajor_138)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                               else coe
                                                      seq (coe v11)
                                                      (let v12
                                                             = coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe
                                                                       eqInt
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v1))
                                                                       (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                       (coe
                                                                          eqInt
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v1))
                                                                          (coe v2)))) in
                                                       coe
                                                         (case coe v12 of
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                              -> if coe v13
                                                                   then let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                     erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v1))
                                                                                        (coe
                                                                                           addInt
                                                                                           (coe
                                                                                              (1 ::
                                                                                                 Integer))
                                                                                           (coe
                                                                                              v3)))) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMinor_140)))
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                   else (let v15
                                                                               = seq
                                                                                   (coe v14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                      (coe v13)
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                         coe
                                                                           (case coe v15 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                                -> if coe v16
                                                                                     then coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v16)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  (coe
                                                                                                     C_canFollowMinor_140)))
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v16)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff
d_PParamsDiff_1110 a0 a1 a2 = ()
data T_PParamsDiff_1110
  = C_PParamsDiff'46'constructor_1084989 (T_PParams_218 ->
                                          AgdaAny -> T_PParams_218)
                                         (AgdaAny -> [T_PParamGroup_142])
                                         (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_1124 :: T_PParamsDiff_1110 -> ()
d_UpdateT_1124 = erased
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1126 ::
  T_PParamsDiff_1110 -> T_PParams_218 -> AgdaAny -> T_PParams_218
d_applyUpdate_1126 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1084989 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_1128 ::
  T_PParamsDiff_1110 -> AgdaAny -> [T_PParamGroup_142]
d_updateGroups_1128 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1084989 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1134 ::
  T_PParamsDiff_1110 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1134 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1084989 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1136 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsDiff_1110 -> AgdaAny -> ()
d_ppdWellFormed_1136 = erased
-- Ledger.PParams.GovParams
d_GovParams_1142 a0 a1 a2 = ()
data T_GovParams_1142
  = C_GovParams'46'constructor_1085731 T_PParamsDiff_1110
                                       MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_1148 :: T_PParamsDiff_1110 -> ()
d_UpdateT_1148 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_1150 ::
  T_PParamsDiff_1110 -> T_PParams_218 -> AgdaAny -> T_PParams_218
d_applyUpdate_1150 v0 = coe d_applyUpdate_1126 (coe v0)
-- Ledger.PParams._.ppWF?
d_ppWF'63'_1152 ::
  T_PParamsDiff_1110 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1152 v0 = coe d_ppWF'63'_1134 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_1154 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsDiff_1110 -> AgdaAny -> ()
d_ppdWellFormed_1154 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_1156 ::
  T_PParamsDiff_1110 -> AgdaAny -> [T_PParamGroup_142]
d_updateGroups_1156 v0 = coe d_updateGroups_1128 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_1172 :: T_GovParams_1142 -> T_PParamsDiff_1110
d_ppUpd_1172 v0
  = case coe v0 of
      C_GovParams'46'constructor_1085731 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_1176 :: T_GovParams_1142 -> ()
d_UpdateT_1176 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_1178 ::
  T_GovParams_1142 -> T_PParams_218 -> AgdaAny -> T_PParams_218
d_applyUpdate_1178 v0
  = coe d_applyUpdate_1126 (coe d_ppUpd_1172 (coe v0))
-- Ledger.PParams.GovParams._.ppWF?
d_ppWF'63'_1180 ::
  T_GovParams_1142 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1180 v0
  = coe d_ppWF'63'_1134 (coe d_ppUpd_1172 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1182 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_GovParams_1142 -> AgdaAny -> ()
d_ppdWellFormed_1182 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_1184 ::
  T_GovParams_1142 -> AgdaAny -> [T_PParamGroup_142]
d_updateGroups_1184 v0
  = coe d_updateGroups_1128 (coe d_ppUpd_1172 (coe v0))
-- Ledger.PParams.GovParams.ppHashingScheme
d_ppHashingScheme_1186 ::
  T_GovParams_1142 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1186 v0
  = case coe v0 of
      C_GovParams'46'constructor_1085731 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.DecEq-T
d_DecEq'45'T_1190 ::
  T_GovParams_1142 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1190 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_ppHashingScheme_1186 (coe v0))
-- Ledger.PParams.GovParams._.DecEq-THash
d_DecEq'45'THash_1192 ::
  T_GovParams_1142 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1192 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_ppHashingScheme_1186 (coe v0))
-- Ledger.PParams.GovParams._.THash
d_THash_1194 :: T_GovParams_1142 -> ()
d_THash_1194 = erased
-- Ledger.PParams.GovParams._.T-Hashable
d_T'45'Hashable_1196 ::
  T_GovParams_1142 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1196 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_ppHashingScheme_1186 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1198 ::
  T_GovParams_1142 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1198 v0
  = case coe v0 of
      C_GovParams'46'constructor_1085731 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
