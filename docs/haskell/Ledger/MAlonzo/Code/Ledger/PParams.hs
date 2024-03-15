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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.PParams.Acnt
d_Acnt_124 a0 a1 a2 = ()
data T_Acnt_124 = C_Acnt'46'constructor_363 Integer Integer
-- Ledger.PParams.Acnt.treasury
d_treasury_130 :: T_Acnt_124 -> Integer
d_treasury_130 v0
  = case coe v0 of
      C_Acnt'46'constructor_363 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.Acnt.reserves
d_reserves_132 :: T_Acnt_124 -> Integer
d_reserves_132 v0
  = case coe v0 of
      C_Acnt'46'constructor_363 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.ProtVer
d_ProtVer_134 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
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
  = C_DrepThresholds'46'constructor_1641 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_178 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_178 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_180 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_180 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_182 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_182 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_184 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_184 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_186 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_186 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_188 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_188 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_190 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_190 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_192 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_192 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_194 ::
  T_DrepThresholds_154 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_194 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_196 a0 a1 a2 = ()
data T_PoolThresholds_196
  = C_PoolThresholds'46'constructor_2149 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_208 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_208 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2149 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_210 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_210 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2149 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_212 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_212 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2149 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_214 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_214 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2149 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5e
d_Q5e_216 ::
  T_PoolThresholds_196 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_216 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2149 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_218 a0 a1 a2 = ()
data T_PParams_218
  = C_PParams'46'constructor_3281 Integer Integer Integer Integer
                                  Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  Integer Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 AgdaAny Integer Integer
                                  AgdaAny T_DrepThresholds_154 T_PoolThresholds_196 Integer Integer
                                  Integer AgdaAny Integer Integer
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_276 :: T_PParams_218 -> Integer
d_maxBlockSize_276 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_278 :: T_PParams_218 -> Integer
d_maxTxSize_278 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_280 :: T_PParams_218 -> Integer
d_maxHeaderSize_280 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_282 :: T_PParams_218 -> Integer
d_maxValSize_282 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_284 :: T_PParams_218 -> Integer
d_maxCollateralInputs_284 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_286 :: T_PParams_218 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_286 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_288 :: T_PParams_218 -> AgdaAny
d_maxTxExUnits_288 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_290 :: T_PParams_218 -> AgdaAny
d_maxBlockExUnits_290 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_292 :: T_PParams_218 -> Integer
d_a_292 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_294 :: T_PParams_218 -> Integer
d_b_294 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_296 :: T_PParams_218 -> Integer
d_minUTxOValue_296 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_298 :: T_PParams_218 -> Integer
d_poolDeposit_298 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_300 :: T_PParams_218 -> Integer
d_coinsPerUTxOWord_300 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_302 ::
  T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_302 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_304 :: T_PParams_218 -> AgdaAny
d_prices_304 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_306 :: T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_306 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_308 :: T_PParams_218 -> AgdaAny
d_Emax_308 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_310 :: T_PParams_218 -> Integer
d_nopt_310 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_312 :: T_PParams_218 -> Integer
d_collateralPercentage_312 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_314 :: T_PParams_218 -> AgdaAny
d_costmdls_314 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_316 :: T_PParams_218 -> T_DrepThresholds_154
d_drepThresholds_316 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_318 :: T_PParams_218 -> T_PoolThresholds_196
d_poolThresholds_318 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_320 :: T_PParams_218 -> Integer
d_govActionLifetime_320 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_322 :: T_PParams_218 -> Integer
d_govActionDeposit_322 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_324 :: T_PParams_218 -> Integer
d_drepDeposit_324 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_326 :: T_PParams_218 -> AgdaAny
d_drepActivity_326 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_328 :: T_PParams_218 -> Integer
d_ccMinSize_328 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_330 :: T_PParams_218 -> Integer
d_ccMaxTermLength_330 v0
  = case coe v0 of
      C_PParams'46'constructor_3281 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_332 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  T_PParams_218 -> ()
d_paramsWellFormed_332 = erased
-- Ledger.PParams._._.Emax
d_Emax_342 :: T_PParams_218 -> AgdaAny
d_Emax_342 v0 = coe d_Emax_308 (coe v0)
-- Ledger.PParams._._.a
d_a_344 :: T_PParams_218 -> Integer
d_a_344 v0 = coe d_a_292 (coe v0)
-- Ledger.PParams._._.a0
d_a0_346 :: T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_346 v0 = coe d_a0_306 (coe v0)
-- Ledger.PParams._._.b
d_b_348 :: T_PParams_218 -> Integer
d_b_348 v0 = coe d_b_294 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_350 :: T_PParams_218 -> Integer
d_ccMaxTermLength_350 v0 = coe d_ccMaxTermLength_330 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_352 :: T_PParams_218 -> Integer
d_ccMinSize_352 v0 = coe d_ccMinSize_328 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOWord
d_coinsPerUTxOWord_354 :: T_PParams_218 -> Integer
d_coinsPerUTxOWord_354 v0 = coe d_coinsPerUTxOWord_300 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_356 :: T_PParams_218 -> Integer
d_collateralPercentage_356 v0
  = coe d_collateralPercentage_312 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_358 :: T_PParams_218 -> AgdaAny
d_costmdls_358 v0 = coe d_costmdls_314 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_360 :: T_PParams_218 -> AgdaAny
d_drepActivity_360 v0 = coe d_drepActivity_326 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_362 :: T_PParams_218 -> Integer
d_drepDeposit_362 v0 = coe d_drepDeposit_324 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_364 :: T_PParams_218 -> T_DrepThresholds_154
d_drepThresholds_364 v0 = coe d_drepThresholds_316 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_366 :: T_PParams_218 -> Integer
d_govActionDeposit_366 v0 = coe d_govActionDeposit_322 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_368 :: T_PParams_218 -> Integer
d_govActionLifetime_368 v0 = coe d_govActionLifetime_320 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_370 :: T_PParams_218 -> AgdaAny
d_maxBlockExUnits_370 v0 = coe d_maxBlockExUnits_290 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_372 :: T_PParams_218 -> Integer
d_maxBlockSize_372 v0 = coe d_maxBlockSize_276 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_374 :: T_PParams_218 -> Integer
d_maxCollateralInputs_374 v0
  = coe d_maxCollateralInputs_284 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_376 :: T_PParams_218 -> Integer
d_maxHeaderSize_376 v0 = coe d_maxHeaderSize_280 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_378 :: T_PParams_218 -> AgdaAny
d_maxTxExUnits_378 v0 = coe d_maxTxExUnits_288 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_380 :: T_PParams_218 -> Integer
d_maxTxSize_380 v0 = coe d_maxTxSize_278 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_382 :: T_PParams_218 -> Integer
d_maxValSize_382 v0 = coe d_maxValSize_282 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_384 ::
  T_PParams_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_384 v0
  = coe d_minFeeRefScriptCoinsPerByte_302 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_386 :: T_PParams_218 -> Integer
d_minUTxOValue_386 v0 = coe d_minUTxOValue_296 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_388 :: T_PParams_218 -> Integer
d_nopt_388 v0 = coe d_nopt_310 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_390 :: T_PParams_218 -> Integer
d_poolDeposit_390 v0 = coe d_poolDeposit_298 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_392 :: T_PParams_218 -> T_PoolThresholds_196
d_poolThresholds_392 v0 = coe d_poolThresholds_318 (coe v0)
-- Ledger.PParams._._.prices
d_prices_394 :: T_PParams_218 -> AgdaAny
d_prices_394 v0 = coe d_prices_304 (coe v0)
-- Ledger.PParams._._.pv
d_pv_396 :: T_PParams_218 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_396 v0 = coe d_pv_286 (coe v0)
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_398 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_398 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_398
du_DecEq'45'DrepThresholds_398 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_398
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1641 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_1641 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                  (coe v21) (coe v10)))
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                               (coe v20) (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                            (coe v19) (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                         (coe v18) (coe v7)))
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                      (coe v17) (coe v6)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                   (coe v16) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                (coe v15) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                             (coe v14) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                          (coe v13) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
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
d_DecEq'45'PoolThresholds_400 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_400 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_400
du_DecEq'45'PoolThresholds_400 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_400
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_2149 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_2149 v7 v8 v9 v10 v11
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                   (coe v11) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                (coe v10) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                             (coe v9) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                          (coe v8) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
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
d_DecEq'45'PParams_402 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_402 ~v0 v1 v2 = du_DecEq'45'PParams_402 v1 v2
du_DecEq'45'PParams_402 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_402 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3281 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30
                -> coe
                     (\ v31 ->
                        case coe v31 of
                          C_PParams'46'constructor_3281 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                                                                        (coe
                                                                                                                           v59)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                                                                     (coe
                                                                                                                        v58)
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                  (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                                     (coe
                                                                                                                        v0))
                                                                                                                  v57
                                                                                                                  v28))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                                                               (coe
                                                                                                                  v56)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                                                            (coe
                                                                                                               v55)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                                                         (coe
                                                                                                            v54)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                        (coe
                                                                                                                           d_Q5e_216
                                                                                                                           (coe
                                                                                                                              v24))
                                                                                                                        (coe
                                                                                                                           d_Q5e_216
                                                                                                                           (coe
                                                                                                                              v53))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                     (coe
                                                                                                                        d_Q4_214
                                                                                                                        (coe
                                                                                                                           v24))
                                                                                                                     (coe
                                                                                                                        d_Q4_214
                                                                                                                        (coe
                                                                                                                           v53))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                  (coe
                                                                                                                     d_Q2b_212
                                                                                                                     (coe
                                                                                                                        v24))
                                                                                                                  (coe
                                                                                                                     d_Q2b_212
                                                                                                                     (coe
                                                                                                                        v53))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                               (coe
                                                                                                                  d_Q2a_210
                                                                                                                  (coe
                                                                                                                     v24))
                                                                                                               (coe
                                                                                                                  d_Q2a_210
                                                                                                                  (coe
                                                                                                                     v53))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                            (coe
                                                                                                               d_Q1_208
                                                                                                               (coe
                                                                                                                  v24))
                                                                                                            (coe
                                                                                                               d_Q1_208
                                                                                                               (coe
                                                                                                                  v53))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                                                                                                         erased
                                                                                                         (coe
                                                                                                            (\ v60 ->
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
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                                    (coe
                                                                                                                                       d_P6_194
                                                                                                                                       (coe
                                                                                                                                          v23))
                                                                                                                                    (coe
                                                                                                                                       d_P6_194
                                                                                                                                       (coe
                                                                                                                                          v52))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                                 (coe
                                                                                                                                    d_P5d_192
                                                                                                                                    (coe
                                                                                                                                       v23))
                                                                                                                                 (coe
                                                                                                                                    d_P5d_192
                                                                                                                                    (coe
                                                                                                                                       v52))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                              (coe
                                                                                                                                 d_P5c_190
                                                                                                                                 (coe
                                                                                                                                    v23))
                                                                                                                              (coe
                                                                                                                                 d_P5c_190
                                                                                                                                 (coe
                                                                                                                                    v52))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                           (coe
                                                                                                                              d_P5b_188
                                                                                                                              (coe
                                                                                                                                 v23))
                                                                                                                           (coe
                                                                                                                              d_P5b_188
                                                                                                                              (coe
                                                                                                                                 v52))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                        (coe
                                                                                                                           d_P5a_186
                                                                                                                           (coe
                                                                                                                              v23))
                                                                                                                        (coe
                                                                                                                           d_P5a_186
                                                                                                                           (coe
                                                                                                                              v52))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                     (coe
                                                                                                                        d_P4_184
                                                                                                                        (coe
                                                                                                                           v23))
                                                                                                                     (coe
                                                                                                                        d_P4_184
                                                                                                                        (coe
                                                                                                                           v52))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                                  (coe
                                                                                                                     d_P3_182
                                                                                                                     (coe
                                                                                                                        v23))
                                                                                                                  (coe
                                                                                                                     d_P3_182
                                                                                                                     (coe
                                                                                                                        v52))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                               (coe
                                                                                                                  d_P2b_180
                                                                                                                  (coe
                                                                                                                     v23))
                                                                                                               (coe
                                                                                                                  d_P2b_180
                                                                                                                  (coe
                                                                                                                     v52))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                            (coe
                                                                                                               d_P2a_178
                                                                                                               (coe
                                                                                                                  v23))
                                                                                                            (coe
                                                                                                               d_P2a_178
                                                                                                               (coe
                                                                                                                  v52))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                                         (coe
                                                                                                            d_P1_176
                                                                                                            (coe
                                                                                                               v23))
                                                                                                         (coe
                                                                                                            d_P1_176
                                                                                                            (coe
                                                                                                               v52))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                                                                                                      erased
                                                                                                      (coe
                                                                                                         (\ v60 ->
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
                                                                                                (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_184
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Script.d_ps_414
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                v51
                                                                                                v22))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                                             (coe
                                                                                                v50)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                                          (coe v49)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                       (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                          (coe v0))
                                                                                       v48 v19))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                                    (coe v47)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                 (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_192
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_ps_414
                                                                                       (coe v1)))
                                                                                 v46 v17))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550
                                                                              (coe v45) (coe v16)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                           (coe v44) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                        (coe v43) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                     (coe v42) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                                  (coe v41) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                               (coe v40) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_414
                                                                  (coe v1)))
                                                            v39 v10))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_414
                                                               (coe v1)))
                                                         v38 v9))
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                      (coe
                                                         (\ v60 ->
                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                      (coe v37) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                   (coe v36) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                                (coe v35) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                             (coe v34) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550 (coe v33)
                                          (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550 (coe v32)
                                       (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v60 ->
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
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.pvCanFollow?
d_pvCanFollow'63'_408 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_408 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_408 v3 v4
du_pvCanFollow'63'_408 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_408 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                     (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                     (coe v1)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe addInt (coe (1 :: Integer)) (coe v2)) (coe (0 :: Integer))) in
           coe
             (let v5
                    = coe
                        MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                        (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                           (coe addInt (coe (1 :: Integer)) (coe v3))) in
              coe
                (case coe v4 of
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                     -> if coe v6
                          then coe
                                 seq (coe v7)
                                 (case coe v5 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then coe
                                                  seq (coe v9)
                                                  (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                           else coe
                                                  seq (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v6)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                        (coe C_canFollowMajor_138)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          else coe
                                 seq (coe v7)
                                 (case coe v5 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then coe
                                                  seq (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v8)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                        (coe C_canFollowMinor_140)))
                                           else coe
                                                  seq (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v8)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                   _ -> MAlonzo.RTE.mazUnreachableError))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff
d_PParamsDiff_456 a0 a1 a2 = ()
data T_PParamsDiff_456
  = C_PParamsDiff'46'constructor_513273 (AgdaAny ->
                                         [T_PParamGroup_142])
                                        (T_PParams_218 -> AgdaAny -> T_PParams_218)
                                        (AgdaAny -> Bool)
                                        (AgdaAny ->
                                         MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
                                         T_PParams_218 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_476 :: T_PParamsDiff_456 -> ()
d_UpdateT_476 = erased
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_478 ::
  T_PParamsDiff_456 -> AgdaAny -> [T_PParamGroup_142]
d_updateGroups_478 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_513273 v2 v3 v4 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_480 ::
  T_PParamsDiff_456 -> T_PParams_218 -> AgdaAny -> T_PParams_218
d_applyUpdate_480 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_513273 v2 v3 v4 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_482 :: T_PParamsDiff_456 -> AgdaAny -> Bool
d_ppdWellFormed_482 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_513273 v2 v3 v4 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_486 ::
  T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_486 = erased
-- Ledger.PParams.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_492 ::
  T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_492 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_513273 v2 v3 v4 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams
d_GovParams_494 a0 a1 a2 = ()
data T_GovParams_494
  = C_GovParams'46'constructor_513735 T_PParamsDiff_456
                                      MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_500 :: T_PParamsDiff_456 -> ()
d_UpdateT_500 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_502 ::
  T_PParamsDiff_456 -> T_PParams_218 -> AgdaAny -> T_PParams_218
d_applyUpdate_502 v0 = coe d_applyUpdate_480 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_504 :: T_PParamsDiff_456 -> AgdaAny -> Bool
d_ppdWellFormed_504 v0 = coe d_ppdWellFormed_482 (coe v0)
-- Ledger.PParams._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_506 ::
  T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_506 v0
  = coe d_ppdWellFormed'8658'WF_492 (coe v0)
-- Ledger.PParams._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_508 ::
  T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_508 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_510 ::
  T_PParamsDiff_456 -> AgdaAny -> [T_PParamGroup_142]
d_updateGroups_510 v0 = coe d_updateGroups_478 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_526 :: T_GovParams_494 -> T_PParamsDiff_456
d_ppUpd_526 v0
  = case coe v0 of
      C_GovParams'46'constructor_513735 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_530 :: T_GovParams_494 -> ()
d_UpdateT_530 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_532 ::
  T_GovParams_494 -> T_PParams_218 -> AgdaAny -> T_PParams_218
d_applyUpdate_532 v0
  = coe d_applyUpdate_480 (coe d_ppUpd_526 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_534 :: T_GovParams_494 -> AgdaAny -> Bool
d_ppdWellFormed_534 v0
  = coe d_ppdWellFormed_482 (coe d_ppUpd_526 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_536 ::
  T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_536 v0
  = coe d_ppdWellFormed'8658'WF_492 (coe d_ppUpd_526 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_538 ::
  T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_538 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_540 ::
  T_GovParams_494 -> AgdaAny -> [T_PParamGroup_142]
d_updateGroups_540 v0
  = coe d_updateGroups_478 (coe d_ppUpd_526 (coe v0))
-- Ledger.PParams.GovParams.ppHashingScheme
d_ppHashingScheme_542 ::
  T_GovParams_494 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_542 v0
  = case coe v0 of
      C_GovParams'46'constructor_513735 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.DecEq-T
d_DecEq'45'T_546 ::
  T_GovParams_494 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_546 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_ppHashingScheme_542 (coe v0))
-- Ledger.PParams.GovParams._.DecEq-THash
d_DecEq'45'THash_548 ::
  T_GovParams_494 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_548 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_ppHashingScheme_542 (coe v0))
-- Ledger.PParams.GovParams._.THash
d_THash_550 :: T_GovParams_494 -> ()
d_THash_550 = erased
-- Ledger.PParams.GovParams._.T-Hashable
d_T'45'Hashable_552 ::
  T_GovParams_494 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_552 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_ppHashingScheme_542 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_554 ::
  T_GovParams_494 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_554 v0
  = case coe v0 of
      C_GovParams'46'constructor_513735 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
