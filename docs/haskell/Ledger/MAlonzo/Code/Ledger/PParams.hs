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
d_Acnt_132 a0 a1 a2 = ()
data T_Acnt_132 = C_'10214'_'44'_'10215''7491'_142 Integer Integer
-- Ledger.PParams.Acnt.treasury
d_treasury_138 :: T_Acnt_132 -> Integer
d_treasury_138 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_142 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.Acnt.reserves
d_reserves_140 :: T_Acnt_132 -> Integer
d_reserves_140 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_142 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.ProtVer
d_ProtVer_144 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_ProtVer_144 = erased
-- Ledger.PParams.pvCanFollow
d_pvCanFollow_146 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_146
  = C_canFollowMajor_148 | C_canFollowMinor_150
-- Ledger.PParams.PParamGroup
d_PParamGroup_152 a0 a1 a2 = ()
data T_PParamGroup_152
  = C_NetworkGroup_154 | C_EconomicGroup_156 | C_TechnicalGroup_158 |
    C_GovernanceGroup_160 | C_SecurityGroup_162
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_164 a0 a1 a2 = ()
data T_DrepThresholds_164
  = C_DrepThresholds'46'constructor_1447 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
d_P1_186 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_186 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_188 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_188 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_190 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_190 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_192 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_192 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_194 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_194 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_196 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_196 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_198 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_198 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_200 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_200 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_202 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_202 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_204 ::
  T_DrepThresholds_164 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_204 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_206 a0 a1 a2 = ()
data T_PoolThresholds_206
  = C_PoolThresholds'46'constructor_1921 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_218 ::
  T_PoolThresholds_206 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_218 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1921 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_220 ::
  T_PoolThresholds_206 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_220 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1921 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_222 ::
  T_PoolThresholds_206 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_222 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1921 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_224 ::
  T_PoolThresholds_206 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_224 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1921 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5e
d_Q5e_226 ::
  T_PoolThresholds_206 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_226 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1921 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_228 a0 a1 a2 = ()
data T_PParams_228
  = C_PParams'46'constructor_3081 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_206 T_DrepThresholds_164 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_288 :: T_PParams_228 -> Integer
d_maxBlockSize_288 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_290 :: T_PParams_228 -> Integer
d_maxTxSize_290 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_292 :: T_PParams_228 -> Integer
d_maxHeaderSize_292 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_294 :: T_PParams_228 -> AgdaAny
d_maxTxExUnits_294 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_296 :: T_PParams_228 -> AgdaAny
d_maxBlockExUnits_296 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_298 :: T_PParams_228 -> Integer
d_maxValSize_298 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_300 :: T_PParams_228 -> Integer
d_maxCollateralInputs_300 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_302 :: T_PParams_228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_302 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_304 :: T_PParams_228 -> Integer
d_a_304 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_306 :: T_PParams_228 -> Integer
d_b_306 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.keyDeposit
d_keyDeposit_308 :: T_PParams_228 -> Integer
d_keyDeposit_308 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_310 :: T_PParams_228 -> Integer
d_poolDeposit_310 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_312 :: T_PParams_228 -> Integer
d_coinsPerUTxOByte_312 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_314 :: T_PParams_228 -> AgdaAny
d_prices_314 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_316 ::
  T_PParams_228 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_316 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_318 :: T_PParams_228 -> Integer
d_minUTxOValue_318 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_320 :: T_PParams_228 -> AgdaAny
d_Emax_320 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_322 :: T_PParams_228 -> Integer
d_nopt_322 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_324 :: T_PParams_228 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_324 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_326 :: T_PParams_228 -> Integer
d_collateralPercentage_326 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_328 :: T_PParams_228 -> AgdaAny
d_costmdls_328 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_330 :: T_PParams_228 -> T_PoolThresholds_206
d_poolThresholds_330 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_332 :: T_PParams_228 -> T_DrepThresholds_164
d_drepThresholds_332 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_334 :: T_PParams_228 -> Integer
d_ccMinSize_334 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_336 :: T_PParams_228 -> Integer
d_ccMaxTermLength_336 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_338 :: T_PParams_228 -> Integer
d_govActionLifetime_338 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_340 :: T_PParams_228 -> Integer
d_govActionDeposit_340 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_342 :: T_PParams_228 -> Integer
d_drepDeposit_342 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_344 :: T_PParams_228 -> AgdaAny
d_drepActivity_344 v0
  = case coe v0 of
      C_PParams'46'constructor_3081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_346 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParams_228 -> ()
d_paramsWellFormed_346 = erased
-- Ledger.PParams._._.Emax
d_Emax_356 :: T_PParams_228 -> AgdaAny
d_Emax_356 v0 = coe d_Emax_320 (coe v0)
-- Ledger.PParams._._.a
d_a_358 :: T_PParams_228 -> Integer
d_a_358 v0 = coe d_a_304 (coe v0)
-- Ledger.PParams._._.a0
d_a0_360 :: T_PParams_228 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_360 v0 = coe d_a0_324 (coe v0)
-- Ledger.PParams._._.b
d_b_362 :: T_PParams_228 -> Integer
d_b_362 v0 = coe d_b_306 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_364 :: T_PParams_228 -> Integer
d_ccMaxTermLength_364 v0 = coe d_ccMaxTermLength_336 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_366 :: T_PParams_228 -> Integer
d_ccMinSize_366 v0 = coe d_ccMinSize_334 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_368 :: T_PParams_228 -> Integer
d_coinsPerUTxOByte_368 v0 = coe d_coinsPerUTxOByte_312 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_370 :: T_PParams_228 -> Integer
d_collateralPercentage_370 v0
  = coe d_collateralPercentage_326 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_372 :: T_PParams_228 -> AgdaAny
d_costmdls_372 v0 = coe d_costmdls_328 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_374 :: T_PParams_228 -> AgdaAny
d_drepActivity_374 v0 = coe d_drepActivity_344 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_376 :: T_PParams_228 -> Integer
d_drepDeposit_376 v0 = coe d_drepDeposit_342 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_378 :: T_PParams_228 -> T_DrepThresholds_164
d_drepThresholds_378 v0 = coe d_drepThresholds_332 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_380 :: T_PParams_228 -> Integer
d_govActionDeposit_380 v0 = coe d_govActionDeposit_340 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_382 :: T_PParams_228 -> Integer
d_govActionLifetime_382 v0 = coe d_govActionLifetime_338 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_384 :: T_PParams_228 -> Integer
d_keyDeposit_384 v0 = coe d_keyDeposit_308 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_386 :: T_PParams_228 -> AgdaAny
d_maxBlockExUnits_386 v0 = coe d_maxBlockExUnits_296 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_388 :: T_PParams_228 -> Integer
d_maxBlockSize_388 v0 = coe d_maxBlockSize_288 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_390 :: T_PParams_228 -> Integer
d_maxCollateralInputs_390 v0
  = coe d_maxCollateralInputs_300 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_392 :: T_PParams_228 -> Integer
d_maxHeaderSize_392 v0 = coe d_maxHeaderSize_292 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_394 :: T_PParams_228 -> AgdaAny
d_maxTxExUnits_394 v0 = coe d_maxTxExUnits_294 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_396 :: T_PParams_228 -> Integer
d_maxTxSize_396 v0 = coe d_maxTxSize_290 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_398 :: T_PParams_228 -> Integer
d_maxValSize_398 v0 = coe d_maxValSize_298 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_400 ::
  T_PParams_228 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_400 v0
  = coe d_minFeeRefScriptCoinsPerByte_316 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_402 :: T_PParams_228 -> Integer
d_minUTxOValue_402 v0 = coe d_minUTxOValue_318 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_404 :: T_PParams_228 -> Integer
d_nopt_404 v0 = coe d_nopt_322 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_406 :: T_PParams_228 -> Integer
d_poolDeposit_406 v0 = coe d_poolDeposit_310 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_408 :: T_PParams_228 -> T_PoolThresholds_206
d_poolThresholds_408 v0 = coe d_poolThresholds_330 (coe v0)
-- Ledger.PParams._._.prices
d_prices_410 :: T_PParams_228 -> AgdaAny
d_prices_410 v0 = coe d_prices_314 (coe v0)
-- Ledger.PParams._._.pv
d_pv_412 :: T_PParams_228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_412 v0 = coe d_pv_302 (coe v0)
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_414 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_414 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_414
du_DecEq'45'DrepThresholds_414 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_414
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_1447 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
d_DecEq'45'PoolThresholds_416 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_416 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_416
du_DecEq'45'PoolThresholds_416 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_416
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_1921 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_1921 v7 v8 v9 v10 v11
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
d_DecEq'45'PParams_418 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_418 ~v0 v1 v2 = du_DecEq'45'PParams_418 v1 v2
du_DecEq'45'PParams_418 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_418 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3081 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParams'46'constructor_3081 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
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
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                                              (coe
                                                                                                                                 v0))
                                                                                                                           v61
                                                                                                                           v31))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                        (coe
                                                                                                                           v60)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                     (coe
                                                                                                                        v59)
                                                                                                                     (coe
                                                                                                                        v29)))
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
                                                                                                                                             d_P6_204
                                                                                                                                             (coe
                                                                                                                                                v25))
                                                                                                                                          (coe
                                                                                                                                             d_P6_204
                                                                                                                                             (coe
                                                                                                                                                v55))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                       (coe
                                                                                                                                          d_P5d_202
                                                                                                                                          (coe
                                                                                                                                             v25))
                                                                                                                                       (coe
                                                                                                                                          d_P5d_202
                                                                                                                                          (coe
                                                                                                                                             v55))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                    (coe
                                                                                                                                       d_P5c_200
                                                                                                                                       (coe
                                                                                                                                          v25))
                                                                                                                                    (coe
                                                                                                                                       d_P5c_200
                                                                                                                                       (coe
                                                                                                                                          v55))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                 (coe
                                                                                                                                    d_P5b_198
                                                                                                                                    (coe
                                                                                                                                       v25))
                                                                                                                                 (coe
                                                                                                                                    d_P5b_198
                                                                                                                                    (coe
                                                                                                                                       v55))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                              (coe
                                                                                                                                 d_P5a_196
                                                                                                                                 (coe
                                                                                                                                    v25))
                                                                                                                              (coe
                                                                                                                                 d_P5a_196
                                                                                                                                 (coe
                                                                                                                                    v55))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                           (coe
                                                                                                                              d_P4_194
                                                                                                                              (coe
                                                                                                                                 v25))
                                                                                                                           (coe
                                                                                                                              d_P4_194
                                                                                                                              (coe
                                                                                                                                 v55))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                        (coe
                                                                                                                           d_P3_192
                                                                                                                           (coe
                                                                                                                              v25))
                                                                                                                        (coe
                                                                                                                           d_P3_192
                                                                                                                           (coe
                                                                                                                              v55))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                     (coe
                                                                                                                        d_P2b_190
                                                                                                                        (coe
                                                                                                                           v25))
                                                                                                                     (coe
                                                                                                                        d_P2b_190
                                                                                                                        (coe
                                                                                                                           v55))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                  (coe
                                                                                                                     d_P2a_188
                                                                                                                     (coe
                                                                                                                        v25))
                                                                                                                  (coe
                                                                                                                     d_P2a_188
                                                                                                                     (coe
                                                                                                                        v55))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_P1_186
                                                                                                                  (coe
                                                                                                                     v25))
                                                                                                               (coe
                                                                                                                  d_P1_186
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
                                                                                                                           d_Q5e_226
                                                                                                                           (coe
                                                                                                                              v24))
                                                                                                                        (coe
                                                                                                                           d_Q5e_226
                                                                                                                           (coe
                                                                                                                              v54))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                     (coe
                                                                                                                        d_Q4_224
                                                                                                                        (coe
                                                                                                                           v24))
                                                                                                                     (coe
                                                                                                                        d_Q4_224
                                                                                                                        (coe
                                                                                                                           v54))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                  (coe
                                                                                                                     d_Q2b_222
                                                                                                                     (coe
                                                                                                                        v24))
                                                                                                                  (coe
                                                                                                                     d_Q2b_222
                                                                                                                     (coe
                                                                                                                        v54))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_Q2a_220
                                                                                                                  (coe
                                                                                                                     v24))
                                                                                                               (coe
                                                                                                                  d_Q2a_220
                                                                                                                  (coe
                                                                                                                     v54))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                            (coe
                                                                                                               d_Q1_218
                                                                                                               (coe
                                                                                                                  v24))
                                                                                                            (coe
                                                                                                               d_Q1_218
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
                                                                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                             erased)
                                                                                                                          erased)
                                                                                                                       erased)
                                                                                                                    erased)
                                                                                                                 erased)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                   (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_ps_428
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
                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                             (coe
                                                                                                v51)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                          (coe v50)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                       (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                          (coe v0))
                                                                                       v49 v19))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                    (coe v48)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                 (coe v47)
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                              (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Script.d_ps_428
                                                                                    (coe v1)))
                                                                              v46 v16))
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
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                         (coe v39) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                      (coe v38) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_428
                                                         (coe v1)))
                                                   v37 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_428 (coe v1)))
                                                v36 v6))
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
d_DecEq'45'PParamGroup_420 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_420 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_420
du_DecEq'45'PParamGroup_420 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_420
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_154
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_154
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
                          C_EconomicGroup_156
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_158
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_160
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_162
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_156
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_156
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
                          C_TechnicalGroup_158
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_160
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_162
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_158
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_156
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_158
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
                          C_GovernanceGroup_160
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_162
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_160
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_156
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_158
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_160
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
                          C_SecurityGroup_162
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_162
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_156
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_158
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_160
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_162
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
d_PParamsUpdate_424 a0 a1 a2 = ()
data T_PParamsUpdate_424
  = C_PParamsUpdate'46'constructor_542221 (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe AgdaAny) (Maybe AgdaAny)
                                          (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe AgdaAny) (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe AgdaAny) (Maybe Integer) (Maybe Integer)
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_164)
                                          (Maybe T_PoolThresholds_206) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_484 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_484 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_486 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_486 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_488 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_488 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_490 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_490 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_492 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_492 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_494 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_494 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_496 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_496 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_498 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_498 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a
d_a_500 :: T_PParamsUpdate_424 -> Maybe Integer
d_a_500 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.b
d_b_502 :: T_PParamsUpdate_424 -> Maybe Integer
d_b_502 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_504 :: T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_504 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_506 :: T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_506 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_508 :: T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_508 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_510 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_510 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_512 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_514 :: T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_514 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_516 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_516 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_518 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_518 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_520 :: T_PParamsUpdate_424 -> Maybe Integer
d_nopt_520 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_522 :: T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_522 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_524 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_524 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_526 ::
  T_PParamsUpdate_424 -> Maybe T_DrepThresholds_164
d_drepThresholds_526 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_528 ::
  T_PParamsUpdate_424 -> Maybe T_PoolThresholds_206
d_poolThresholds_528 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_530 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_530 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_532 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_532 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_534 :: T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_534 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_536 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_536 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_538 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_538 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_540 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_540 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_542221 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_542 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 -> ()
d_paramsUpdateWellFormed_542 = erased
-- Ledger.PParams.PParamsUpdate._._.Emax
d_Emax_552 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_552 v0 = coe d_Emax_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a
d_a_554 :: T_PParamsUpdate_424 -> Maybe Integer
d_a_554 v0 = coe d_a_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a0
d_a0_556 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_556 v0 = coe d_a0_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.b
d_b_558 :: T_PParamsUpdate_424 -> Maybe Integer
d_b_558 v0 = coe d_b_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_560 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_560 v0 = coe d_ccMaxTermLength_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_562 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_562 v0 = coe d_ccMinSize_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_564 :: T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_564 v0 = coe d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_566 :: T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_566 v0
  = coe d_collateralPercentage_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.costmdls
d_costmdls_568 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_568 v0 = coe d_costmdls_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_570 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_570 v0 = coe d_drepActivity_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_572 :: T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_572 v0 = coe d_drepDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_574 ::
  T_PParamsUpdate_424 -> Maybe T_DrepThresholds_164
d_drepThresholds_574 v0 = coe d_drepThresholds_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_576 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_576 v0 = coe d_govActionDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_578 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_578 v0 = coe d_govActionLifetime_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_580 :: T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_580 v0 = coe d_keyDeposit_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_582 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_582 v0 = coe d_maxBlockExUnits_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_584 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_584 v0 = coe d_maxBlockSize_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_586 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_586 v0
  = coe d_maxCollateralInputs_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_588 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_588 v0 = coe d_maxHeaderSize_488 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_590 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_590 v0 = coe d_maxTxExUnits_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_592 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_592 v0 = coe d_maxTxSize_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_594 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_594 v0 = coe d_maxValSize_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_596 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_596 v0
  = coe d_minFeeRefScriptCoinsPerByte_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_598 :: T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_598 v0 = coe d_minUTxOValue_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.nopt
d_nopt_600 :: T_PParamsUpdate_424 -> Maybe Integer
d_nopt_600 v0 = coe d_nopt_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_602 :: T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_602 v0 = coe d_poolDeposit_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_604 ::
  T_PParamsUpdate_424 -> Maybe T_PoolThresholds_206
d_poolThresholds_604 v0 = coe d_poolThresholds_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.prices
d_prices_606 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_606 v0 = coe d_prices_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.pv
d_pv_608 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_608 v0 = coe d_pv_498 (coe v0)
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_612 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_612 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_612 v3
du_paramsUpdateWellFormed'63'_612 ::
  T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_612 v0
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
                  (coe d_maxBlockSize_484 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_486 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_488 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_490 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_minUTxOValue_514 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_506 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_522 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_540 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_530 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_532 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_534 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_616 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 -> Bool
d_modifiesNetworkGroup_616 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_616 v3
du_modifiesNetworkGroup_616 :: T_PParamsUpdate_424 -> Bool
du_modifiesNetworkGroup_616 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_484 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_486 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_488 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_490 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_492 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_494 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_496 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_498 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_622 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_622 v0 = coe d_Emax_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_624 :: T_PParamsUpdate_424 -> Maybe Integer
d_a_624 v0 = coe d_a_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_626 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_626 v0 = coe d_a0_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_628 :: T_PParamsUpdate_424 -> Maybe Integer
d_b_628 v0 = coe d_b_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_630 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_630 v0 = coe d_ccMaxTermLength_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_632 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_632 v0 = coe d_ccMinSize_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_634 :: T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_634 v0 = coe d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_636 :: T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_636 v0
  = coe d_collateralPercentage_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_638 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_638 v0 = coe d_costmdls_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_640 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_640 v0 = coe d_drepActivity_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_642 :: T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_642 v0 = coe d_drepDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_644 ::
  T_PParamsUpdate_424 -> Maybe T_DrepThresholds_164
d_drepThresholds_644 v0 = coe d_drepThresholds_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_646 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_646 v0 = coe d_govActionDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_648 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_648 v0 = coe d_govActionLifetime_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_650 :: T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_650 v0 = coe d_keyDeposit_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_652 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_652 v0 = coe d_maxBlockExUnits_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_654 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_654 v0 = coe d_maxBlockSize_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_656 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_656 v0
  = coe d_maxCollateralInputs_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_658 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_658 v0 = coe d_maxHeaderSize_488 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_660 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_660 v0 = coe d_maxTxExUnits_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_662 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_662 v0 = coe d_maxTxSize_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_664 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_664 v0 = coe d_maxValSize_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_666 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_666 v0
  = coe d_minFeeRefScriptCoinsPerByte_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_668 :: T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_668 v0 = coe d_minUTxOValue_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_670 :: T_PParamsUpdate_424 -> Maybe Integer
d_nopt_670 v0 = coe d_nopt_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_672 :: T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_672 v0 = coe d_poolDeposit_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_674 ::
  T_PParamsUpdate_424 -> Maybe T_PoolThresholds_206
d_poolThresholds_674 v0 = coe d_poolThresholds_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_676 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_676 v0 = coe d_prices_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_678 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_678 v0 = coe d_pv_498 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_680 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 -> Bool
d_modifiesEconomicGroup_680 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_680 v3
du_modifiesEconomicGroup_680 :: T_PParamsUpdate_424 -> Bool
du_modifiesEconomicGroup_680 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_500 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_502 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_504 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_506 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_coinsPerUTxOByte_508 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_minFeeRefScriptCoinsPerByte_510 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_prices_512 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minUTxOValue_514 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_686 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_686 v0 = coe d_Emax_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_688 :: T_PParamsUpdate_424 -> Maybe Integer
d_a_688 v0 = coe d_a_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_690 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_690 v0 = coe d_a0_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_692 :: T_PParamsUpdate_424 -> Maybe Integer
d_b_692 v0 = coe d_b_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_694 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_694 v0 = coe d_ccMaxTermLength_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_696 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_696 v0 = coe d_ccMinSize_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_698 :: T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_698 v0 = coe d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_700 :: T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_700 v0
  = coe d_collateralPercentage_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_702 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_702 v0 = coe d_costmdls_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_704 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_704 v0 = coe d_drepActivity_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_706 :: T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_706 v0 = coe d_drepDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_708 ::
  T_PParamsUpdate_424 -> Maybe T_DrepThresholds_164
d_drepThresholds_708 v0 = coe d_drepThresholds_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_710 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_710 v0 = coe d_govActionDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_712 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_712 v0 = coe d_govActionLifetime_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_714 :: T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_714 v0 = coe d_keyDeposit_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_716 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_716 v0 = coe d_maxBlockExUnits_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_718 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_718 v0 = coe d_maxBlockSize_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_720 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_720 v0
  = coe d_maxCollateralInputs_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_722 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_722 v0 = coe d_maxHeaderSize_488 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_724 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_724 v0 = coe d_maxTxExUnits_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_726 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_726 v0 = coe d_maxTxSize_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_728 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_728 v0 = coe d_maxValSize_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_730 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_730 v0
  = coe d_minFeeRefScriptCoinsPerByte_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_732 :: T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_732 v0 = coe d_minUTxOValue_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_734 :: T_PParamsUpdate_424 -> Maybe Integer
d_nopt_734 v0 = coe d_nopt_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_736 :: T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_736 v0 = coe d_poolDeposit_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_738 ::
  T_PParamsUpdate_424 -> Maybe T_PoolThresholds_206
d_poolThresholds_738 v0 = coe d_poolThresholds_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_740 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_740 v0 = coe d_prices_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_742 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_742 v0 = coe d_pv_498 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_744 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 -> Bool
d_modifiesTechnicalGroup_744 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_744 v3
du_modifiesTechnicalGroup_744 :: T_PParamsUpdate_424 -> Bool
du_modifiesTechnicalGroup_744 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_516 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_518 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_520 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_522 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_524 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_750 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_750 v0 = coe d_Emax_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_752 :: T_PParamsUpdate_424 -> Maybe Integer
d_a_752 v0 = coe d_a_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_754 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_754 v0 = coe d_a0_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_756 :: T_PParamsUpdate_424 -> Maybe Integer
d_b_756 v0 = coe d_b_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_758 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_758 v0 = coe d_ccMaxTermLength_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_760 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_760 v0 = coe d_ccMinSize_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_762 :: T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_762 v0 = coe d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_764 :: T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_764 v0
  = coe d_collateralPercentage_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_766 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_766 v0 = coe d_costmdls_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_768 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_768 v0 = coe d_drepActivity_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_770 :: T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_770 v0 = coe d_drepDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_772 ::
  T_PParamsUpdate_424 -> Maybe T_DrepThresholds_164
d_drepThresholds_772 v0 = coe d_drepThresholds_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_774 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_774 v0 = coe d_govActionDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_776 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_776 v0 = coe d_govActionLifetime_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_778 :: T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_778 v0 = coe d_keyDeposit_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_780 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_780 v0 = coe d_maxBlockExUnits_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_782 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_782 v0 = coe d_maxBlockSize_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_784 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_784 v0
  = coe d_maxCollateralInputs_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_786 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_786 v0 = coe d_maxHeaderSize_488 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_788 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_788 v0 = coe d_maxTxExUnits_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_790 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_790 v0 = coe d_maxTxSize_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_792 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_792 v0 = coe d_maxValSize_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_794 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_794 v0
  = coe d_minFeeRefScriptCoinsPerByte_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_796 :: T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_796 v0 = coe d_minUTxOValue_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_798 :: T_PParamsUpdate_424 -> Maybe Integer
d_nopt_798 v0 = coe d_nopt_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_800 :: T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_800 v0 = coe d_poolDeposit_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_802 ::
  T_PParamsUpdate_424 -> Maybe T_PoolThresholds_206
d_poolThresholds_802 v0 = coe d_poolThresholds_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_804 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_804 v0 = coe d_prices_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_806 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_806 v0 = coe d_pv_498 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_808 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 -> Bool
d_modifiesGovernanceGroup_808 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_808 v3
du_modifiesGovernanceGroup_808 :: T_PParamsUpdate_424 -> Bool
du_modifiesGovernanceGroup_808 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_526 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_528 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_530 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_532 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_534 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_536 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_538 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_540 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_814 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_814 v0 = coe d_Emax_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_816 :: T_PParamsUpdate_424 -> Maybe Integer
d_a_816 v0 = coe d_a_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_818 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_818 v0 = coe d_a0_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_820 :: T_PParamsUpdate_424 -> Maybe Integer
d_b_820 v0 = coe d_b_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_822 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_822 v0 = coe d_ccMaxTermLength_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_824 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_824 v0 = coe d_ccMinSize_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_826 :: T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_826 v0 = coe d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_828 :: T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_828 v0
  = coe d_collateralPercentage_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_830 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_830 v0 = coe d_costmdls_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_832 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_832 v0 = coe d_drepActivity_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_834 :: T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_834 v0 = coe d_drepDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_836 ::
  T_PParamsUpdate_424 -> Maybe T_DrepThresholds_164
d_drepThresholds_836 v0 = coe d_drepThresholds_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_838 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_838 v0 = coe d_govActionDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_840 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_840 v0 = coe d_govActionLifetime_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_842 :: T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_842 v0 = coe d_keyDeposit_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_844 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_844 v0 = coe d_maxBlockExUnits_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_846 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_846 v0 = coe d_maxBlockSize_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_848 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_848 v0
  = coe d_maxCollateralInputs_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_850 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_850 v0 = coe d_maxHeaderSize_488 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_852 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_852 v0 = coe d_maxTxExUnits_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_854 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_854 v0 = coe d_maxTxSize_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_856 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_856 v0 = coe d_maxValSize_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_858 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_858 v0
  = coe d_minFeeRefScriptCoinsPerByte_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_860 :: T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_860 v0 = coe d_minUTxOValue_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_862 :: T_PParamsUpdate_424 -> Maybe Integer
d_nopt_862 v0 = coe d_nopt_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_864 :: T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_864 v0 = coe d_poolDeposit_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_866 ::
  T_PParamsUpdate_424 -> Maybe T_PoolThresholds_206
d_poolThresholds_866 v0 = coe d_poolThresholds_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_868 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_868 v0 = coe d_prices_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_870 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_870 v0 = coe d_pv_498 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_872 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 -> [T_PParamGroup_152]
d_modifiedUpdateGroups_872 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_872 v3
du_modifiedUpdateGroups_872 ::
  T_PParamsUpdate_424 -> [T_PParamGroup_152]
du_modifiedUpdateGroups_872 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         du__'63''9552''8658'__880 (coe v0)
         (coe du_modifiesNetworkGroup_616) (coe C_NetworkGroup_154))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            du__'63''9552''8658'__880 (coe v0)
            (coe du_modifiesEconomicGroup_680) (coe C_EconomicGroup_156))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               du__'63''9552''8658'__880 (coe v0)
               (coe du_modifiesTechnicalGroup_744) (coe C_TechnicalGroup_158))
            (coe
               du__'63''9552''8658'__880 (coe v0)
               (coe du_modifiesGovernanceGroup_808) (coe C_GovernanceGroup_160))))
-- Ledger.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__880 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsUpdate_424 ->
  (T_PParamsUpdate_424 -> Bool) ->
  T_PParamGroup_152 -> [T_PParamGroup_152]
d__'63''9552''8658'__880 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__880 v3 v4 v5
du__'63''9552''8658'__880 ::
  T_PParamsUpdate_424 ->
  (T_PParamsUpdate_424 -> Bool) ->
  T_PParamGroup_152 -> [T_PParamGroup_152]
du__'63''9552''8658'__880 v0 v1 v2
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
d__'63''8599'__888 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__888 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__888 v4 v5
du__'63''8599'__888 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__888 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.≡-update
d_'8801''45'update_902 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_902 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_902 v4
du_'8801''45'update_902 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_902 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (\ v1 -> coe du_to_922 (coe v0)) erased
-- Ledger.PParams.PParamsUpdate._.to
d_to_922 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
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
d_to_922 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_922 v8
du_to_922 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_922 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate._.from
d_from_934 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
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
d_from_934 = erased
-- Ledger.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_936 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParams_228 -> T_PParamsUpdate_424 -> T_PParams_228
d_applyPParamsUpdate_936 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_936 v3 v4
du_applyPParamsUpdate_936 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> T_PParams_228
du_applyPParamsUpdate_936 v0 v1
  = coe
      C_PParams'46'constructor_3081
      (coe
         du__'63''8599'__888 (coe d_maxBlockSize_484 (coe v1))
         (coe d_maxBlockSize_288 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_maxTxSize_486 (coe v1))
         (coe d_maxTxSize_290 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_maxHeaderSize_488 (coe v1))
         (coe d_maxHeaderSize_292 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_maxTxExUnits_494 (coe v1))
         (coe d_maxTxExUnits_294 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_maxBlockExUnits_496 (coe v1))
         (coe d_maxBlockExUnits_296 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_maxValSize_490 (coe v1))
         (coe d_maxValSize_298 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_maxCollateralInputs_492 (coe v1))
         (coe d_maxCollateralInputs_300 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_pv_498 (coe v1))
         (coe d_pv_302 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_a_500 (coe v1)) (coe d_a_304 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_b_502 (coe v1)) (coe d_b_306 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_keyDeposit_504 (coe v1))
         (coe d_keyDeposit_308 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_poolDeposit_506 (coe v1))
         (coe d_poolDeposit_310 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_coinsPerUTxOByte_508 (coe v1))
         (coe d_coinsPerUTxOByte_312 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_prices_512 (coe v1))
         (coe d_prices_314 (coe v0)))
      (coe
         du__'63''8599'__888
         (coe d_minFeeRefScriptCoinsPerByte_510 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_316 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_minUTxOValue_514 (coe v1))
         (coe d_minUTxOValue_318 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_Emax_518 (coe v1))
         (coe d_Emax_320 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_nopt_520 (coe v1))
         (coe d_nopt_322 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_a0_516 (coe v1))
         (coe d_a0_324 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_collateralPercentage_522 (coe v1))
         (coe d_collateralPercentage_326 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_costmdls_524 (coe v1))
         (coe d_costmdls_328 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_poolThresholds_528 (coe v1))
         (coe d_poolThresholds_330 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_drepThresholds_526 (coe v1))
         (coe d_drepThresholds_332 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_ccMinSize_538 (coe v1))
         (coe d_ccMinSize_334 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_ccMaxTermLength_540 (coe v1))
         (coe d_ccMaxTermLength_336 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_govActionLifetime_530 (coe v1))
         (coe d_govActionLifetime_338 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_govActionDeposit_532 (coe v1))
         (coe d_govActionDeposit_340 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_drepDeposit_534 (coe v1))
         (coe d_drepDeposit_342 (coe v0)))
      (coe
         du__'63''8599'__888 (coe d_drepActivity_536 (coe v1))
         (coe d_drepActivity_344 (coe v0)))
-- Ledger.PParams.PParamsUpdate._.P.Emax
d_Emax_948 :: T_PParams_228 -> T_PParamsUpdate_424 -> AgdaAny
d_Emax_948 v0 ~v1 = du_Emax_948 v0
du_Emax_948 :: T_PParams_228 -> AgdaAny
du_Emax_948 v0 = coe d_Emax_320 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a
d_a_950 :: T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_a_950 v0 ~v1 = du_a_950 v0
du_a_950 :: T_PParams_228 -> Integer
du_a_950 v0 = coe d_a_304 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a0
d_a0_952 ::
  T_PParams_228 ->
  T_PParamsUpdate_424 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_952 v0 ~v1 = du_a0_952 v0
du_a0_952 :: T_PParams_228 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_952 v0 = coe d_a0_324 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.b
d_b_954 :: T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_b_954 v0 ~v1 = du_b_954 v0
du_b_954 :: T_PParams_228 -> Integer
du_b_954 v0 = coe d_b_306 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_956 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_ccMaxTermLength_956 v0 ~v1 = du_ccMaxTermLength_956 v0
du_ccMaxTermLength_956 :: T_PParams_228 -> Integer
du_ccMaxTermLength_956 v0 = coe d_ccMaxTermLength_336 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_958 :: T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_ccMinSize_958 v0 ~v1 = du_ccMinSize_958 v0
du_ccMinSize_958 :: T_PParams_228 -> Integer
du_ccMinSize_958 v0 = coe d_ccMinSize_334 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_960 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_coinsPerUTxOByte_960 v0 ~v1 = du_coinsPerUTxOByte_960 v0
du_coinsPerUTxOByte_960 :: T_PParams_228 -> Integer
du_coinsPerUTxOByte_960 v0 = coe d_coinsPerUTxOByte_312 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_962 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_collateralPercentage_962 v0 ~v1 = du_collateralPercentage_962 v0
du_collateralPercentage_962 :: T_PParams_228 -> Integer
du_collateralPercentage_962 v0
  = coe d_collateralPercentage_326 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.costmdls
d_costmdls_964 :: T_PParams_228 -> T_PParamsUpdate_424 -> AgdaAny
d_costmdls_964 v0 ~v1 = du_costmdls_964 v0
du_costmdls_964 :: T_PParams_228 -> AgdaAny
du_costmdls_964 v0 = coe d_costmdls_328 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_966 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> AgdaAny
d_drepActivity_966 v0 ~v1 = du_drepActivity_966 v0
du_drepActivity_966 :: T_PParams_228 -> AgdaAny
du_drepActivity_966 v0 = coe d_drepActivity_344 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_968 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_drepDeposit_968 v0 ~v1 = du_drepDeposit_968 v0
du_drepDeposit_968 :: T_PParams_228 -> Integer
du_drepDeposit_968 v0 = coe d_drepDeposit_342 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_970 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> T_DrepThresholds_164
d_drepThresholds_970 v0 ~v1 = du_drepThresholds_970 v0
du_drepThresholds_970 :: T_PParams_228 -> T_DrepThresholds_164
du_drepThresholds_970 v0 = coe d_drepThresholds_332 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_972 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_govActionDeposit_972 v0 ~v1 = du_govActionDeposit_972 v0
du_govActionDeposit_972 :: T_PParams_228 -> Integer
du_govActionDeposit_972 v0 = coe d_govActionDeposit_340 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_974 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_govActionLifetime_974 v0 ~v1 = du_govActionLifetime_974 v0
du_govActionLifetime_974 :: T_PParams_228 -> Integer
du_govActionLifetime_974 v0 = coe d_govActionLifetime_338 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_976 :: T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_keyDeposit_976 v0 ~v1 = du_keyDeposit_976 v0
du_keyDeposit_976 :: T_PParams_228 -> Integer
du_keyDeposit_976 v0 = coe d_keyDeposit_308 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_978 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> AgdaAny
d_maxBlockExUnits_978 v0 ~v1 = du_maxBlockExUnits_978 v0
du_maxBlockExUnits_978 :: T_PParams_228 -> AgdaAny
du_maxBlockExUnits_978 v0 = coe d_maxBlockExUnits_296 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_980 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_maxBlockSize_980 v0 ~v1 = du_maxBlockSize_980 v0
du_maxBlockSize_980 :: T_PParams_228 -> Integer
du_maxBlockSize_980 v0 = coe d_maxBlockSize_288 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_982 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_maxCollateralInputs_982 v0 ~v1 = du_maxCollateralInputs_982 v0
du_maxCollateralInputs_982 :: T_PParams_228 -> Integer
du_maxCollateralInputs_982 v0
  = coe d_maxCollateralInputs_300 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_984 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_maxHeaderSize_984 v0 ~v1 = du_maxHeaderSize_984 v0
du_maxHeaderSize_984 :: T_PParams_228 -> Integer
du_maxHeaderSize_984 v0 = coe d_maxHeaderSize_292 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_986 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> AgdaAny
d_maxTxExUnits_986 v0 ~v1 = du_maxTxExUnits_986 v0
du_maxTxExUnits_986 :: T_PParams_228 -> AgdaAny
du_maxTxExUnits_986 v0 = coe d_maxTxExUnits_294 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_988 :: T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_maxTxSize_988 v0 ~v1 = du_maxTxSize_988 v0
du_maxTxSize_988 :: T_PParams_228 -> Integer
du_maxTxSize_988 v0 = coe d_maxTxSize_290 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_990 :: T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_maxValSize_990 v0 ~v1 = du_maxValSize_990 v0
du_maxValSize_990 :: T_PParams_228 -> Integer
du_maxValSize_990 v0 = coe d_maxValSize_298 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_992 ::
  T_PParams_228 ->
  T_PParamsUpdate_424 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_992 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_992 v0
du_minFeeRefScriptCoinsPerByte_992 ::
  T_PParams_228 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_992 v0
  = coe d_minFeeRefScriptCoinsPerByte_316 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_994 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_minUTxOValue_994 v0 ~v1 = du_minUTxOValue_994 v0
du_minUTxOValue_994 :: T_PParams_228 -> Integer
du_minUTxOValue_994 v0 = coe d_minUTxOValue_318 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.nopt
d_nopt_996 :: T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_nopt_996 v0 ~v1 = du_nopt_996 v0
du_nopt_996 :: T_PParams_228 -> Integer
du_nopt_996 v0 = coe d_nopt_322 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_998 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> Integer
d_poolDeposit_998 v0 ~v1 = du_poolDeposit_998 v0
du_poolDeposit_998 :: T_PParams_228 -> Integer
du_poolDeposit_998 v0 = coe d_poolDeposit_310 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1000 ::
  T_PParams_228 -> T_PParamsUpdate_424 -> T_PoolThresholds_206
d_poolThresholds_1000 v0 ~v1 = du_poolThresholds_1000 v0
du_poolThresholds_1000 :: T_PParams_228 -> T_PoolThresholds_206
du_poolThresholds_1000 v0 = coe d_poolThresholds_330 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.prices
d_prices_1002 :: T_PParams_228 -> T_PParamsUpdate_424 -> AgdaAny
d_prices_1002 v0 ~v1 = du_prices_1002 v0
du_prices_1002 :: T_PParams_228 -> AgdaAny
du_prices_1002 v0 = coe d_prices_314 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.pv
d_pv_1004 ::
  T_PParams_228 ->
  T_PParamsUpdate_424 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1004 v0 ~v1 = du_pv_1004 v0
du_pv_1004 ::
  T_PParams_228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1004 v0 = coe d_pv_302 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.Emax
d_Emax_1008 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_1008 v0 = coe d_Emax_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a
d_a_1010 :: T_PParamsUpdate_424 -> Maybe Integer
d_a_1010 v0 = coe d_a_500 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a0
d_a0_1012 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1012 v0 = coe d_a0_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.b
d_b_1014 :: T_PParamsUpdate_424 -> Maybe Integer
d_b_1014 v0 = coe d_b_502 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1016 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_1016 v0 = coe d_ccMaxTermLength_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1018 :: T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_1018 v0 = coe d_ccMinSize_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1020 :: T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_1020 v0 = coe d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1022 :: T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_1022 v0
  = coe d_collateralPercentage_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1024 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_1024 v0 = coe d_costmdls_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1026 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_1026 v0 = coe d_drepActivity_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1028 :: T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_1028 v0 = coe d_drepDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1030 ::
  T_PParamsUpdate_424 -> Maybe T_DrepThresholds_164
d_drepThresholds_1030 v0 = coe d_drepThresholds_526 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1032 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_1032 v0 = coe d_govActionDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1034 :: T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_1034 v0 = coe d_govActionLifetime_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1036 :: T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_1036 v0 = coe d_keyDeposit_504 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1038 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_1038 v0 = coe d_maxBlockExUnits_496 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1040 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_1040 v0 = coe d_maxBlockSize_484 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1042 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_1042 v0
  = coe d_maxCollateralInputs_492 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1044 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_1044 v0 = coe d_maxHeaderSize_488 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1046 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_1046 v0 = coe d_maxTxExUnits_494 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1048 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_1048 v0 = coe d_maxTxSize_486 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1050 :: T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_1050 v0 = coe d_maxValSize_490 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1052 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1052 v0
  = coe d_minFeeRefScriptCoinsPerByte_510 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1054 :: T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_1054 v0 = coe d_minUTxOValue_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.nopt
d_nopt_1056 :: T_PParamsUpdate_424 -> Maybe Integer
d_nopt_1056 v0 = coe d_nopt_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1058 :: T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_1058 v0 = coe d_poolDeposit_506 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1060 ::
  T_PParamsUpdate_424 -> Maybe T_PoolThresholds_206
d_poolThresholds_1060 v0 = coe d_poolThresholds_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.prices
d_prices_1062 :: T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_1062 v0 = coe d_prices_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.pv
d_pv_1064 ::
  T_PParamsUpdate_424 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1064 v0 = coe d_pv_498 (coe v0)
-- Ledger.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1066 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1066 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1066 v1 v2
du_DecEq'45'PParamsUpdate_1066 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1066 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_542221 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParamsUpdate'46'constructor_542221 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
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
                                                                                                               du_DecEq'45'PoolThresholds_416))
                                                                                                         (coe
                                                                                                            v55)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                         (coe
                                                                                                            du_DecEq'45'DrepThresholds_414))
                                                                                                      (coe
                                                                                                         v54)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Script.d_ps_428
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
                                                                                       MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_428
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
                                                               MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_428
                                                                  (coe v1))))
                                                         (coe v39) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_428
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
d_pvCanFollow'63'_1072 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1072 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1072 v3 v4
du_pvCanFollow'63'_1072 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1072 v0 v1
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
                                                                                                   C_canFollowMajor_148)))
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
                                                                                                    C_canFollowMajor_148)))
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
                                                                                                   C_canFollowMinor_150)))
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
                                                                                                    C_canFollowMinor_150)))
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
                                                                                                    C_canFollowMajor_148)))
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
                                                                                                     C_canFollowMajor_148)))
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
                                                                                                    C_canFollowMinor_150)))
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
                                                                                                     C_canFollowMinor_150)))
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
d_PParamsDiff_1120 a0 a1 a2 = ()
data T_PParamsDiff_1120
  = C_PParamsDiff'46'constructor_1081403 (T_PParams_228 ->
                                          AgdaAny -> T_PParams_228)
                                         (AgdaAny -> [T_PParamGroup_152])
                                         (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_1134 :: T_PParamsDiff_1120 -> ()
d_UpdateT_1134 = erased
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1136 ::
  T_PParamsDiff_1120 -> T_PParams_228 -> AgdaAny -> T_PParams_228
d_applyUpdate_1136 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1081403 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_1138 ::
  T_PParamsDiff_1120 -> AgdaAny -> [T_PParamGroup_152]
d_updateGroups_1138 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1081403 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1144 ::
  T_PParamsDiff_1120 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1144 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1081403 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1146 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsDiff_1120 -> AgdaAny -> ()
d_ppdWellFormed_1146 = erased
-- Ledger.PParams.GovParams
d_GovParams_1152 a0 a1 a2 = ()
data T_GovParams_1152
  = C_GovParams'46'constructor_1082145 T_PParamsDiff_1120
                                       MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_1158 :: T_PParamsDiff_1120 -> ()
d_UpdateT_1158 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_1160 ::
  T_PParamsDiff_1120 -> T_PParams_228 -> AgdaAny -> T_PParams_228
d_applyUpdate_1160 v0 = coe d_applyUpdate_1136 (coe v0)
-- Ledger.PParams._.ppWF?
d_ppWF'63'_1162 ::
  T_PParamsDiff_1120 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1162 v0 = coe d_ppWF'63'_1144 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_1164 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_PParamsDiff_1120 -> AgdaAny -> ()
d_ppdWellFormed_1164 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_1166 ::
  T_PParamsDiff_1120 -> AgdaAny -> [T_PParamGroup_152]
d_updateGroups_1166 v0 = coe d_updateGroups_1138 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_1182 :: T_GovParams_1152 -> T_PParamsDiff_1120
d_ppUpd_1182 v0
  = case coe v0 of
      C_GovParams'46'constructor_1082145 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_1186 :: T_GovParams_1152 -> ()
d_UpdateT_1186 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_1188 ::
  T_GovParams_1152 -> T_PParams_228 -> AgdaAny -> T_PParams_228
d_applyUpdate_1188 v0
  = coe d_applyUpdate_1136 (coe d_ppUpd_1182 (coe v0))
-- Ledger.PParams.GovParams._.ppWF?
d_ppWF'63'_1190 ::
  T_GovParams_1152 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1190 v0
  = coe d_ppWF'63'_1144 (coe d_ppUpd_1182 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1192 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  T_GovParams_1152 -> AgdaAny -> ()
d_ppdWellFormed_1192 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_1194 ::
  T_GovParams_1152 -> AgdaAny -> [T_PParamGroup_152]
d_updateGroups_1194 v0
  = coe d_updateGroups_1138 (coe d_ppUpd_1182 (coe v0))
-- Ledger.PParams.GovParams.ppHashingScheme
d_ppHashingScheme_1196 ::
  T_GovParams_1152 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1196 v0
  = case coe v0 of
      C_GovParams'46'constructor_1082145 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.DecEq-T
d_DecEq'45'T_1200 ::
  T_GovParams_1152 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1200 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_ppHashingScheme_1196 (coe v0))
-- Ledger.PParams.GovParams._.DecEq-THash
d_DecEq'45'THash_1202 ::
  T_GovParams_1152 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1202 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_ppHashingScheme_1196 (coe v0))
-- Ledger.PParams.GovParams._.THash
d_THash_1204 :: T_GovParams_1152 -> ()
d_THash_1204 = erased
-- Ledger.PParams.GovParams._.T-Hashable
d_T'45'Hashable_1206 ::
  T_GovParams_1152 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1206 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_ppHashingScheme_1196 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1208 ::
  T_GovParams_1152 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1208 v0
  = case coe v0 of
      C_GovParams'46'constructor_1082145 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
