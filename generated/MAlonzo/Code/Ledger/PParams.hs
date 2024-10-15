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
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.String.Base
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
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.Tactic.Derive.Show

-- Ledger.PParams.Acnt
d_Acnt_146 a0 a1 a2 = ()
data T_Acnt_146 = C_'10214'_'44'_'10215''7491'_156 Integer Integer
-- Ledger.PParams.Acnt.treasury
d_treasury_152 :: T_Acnt_146 -> Integer
d_treasury_152 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_156 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.Acnt.reserves
d_reserves_154 :: T_Acnt_146 -> Integer
d_reserves_154 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_156 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.ProtVer
d_ProtVer_158 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_ProtVer_158 = erased
-- Ledger.PParams.Show-ProtVer
d_Show'45'ProtVer_160 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_160 ~v0 ~v1 ~v2 = du_Show'45'ProtVer_160
du_Show'45'ProtVer_160 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_160
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.PParams.pvCanFollow
d_pvCanFollow_162 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_162
  = C_canFollowMajor_164 | C_canFollowMinor_166
-- Ledger.PParams.PParamGroup
d_PParamGroup_168 a0 a1 a2 = ()
data T_PParamGroup_168
  = C_NetworkGroup_170 | C_EconomicGroup_172 | C_TechnicalGroup_174 |
    C_GovernanceGroup_176 | C_SecurityGroup_178
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_180 a0 a1 a2 = ()
data T_DrepThresholds_180
  = C_DrepThresholds'46'constructor_1687 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
d_P1_202 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_202 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_204 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_204 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_206 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_206 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_208 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_208 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_210 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_210 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_212 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_212 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_214 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_214 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_216 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_216 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_218 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_218 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_220 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_220 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_222 a0 a1 a2 = ()
data T_PoolThresholds_222
  = C_PoolThresholds'46'constructor_2161 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_234 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_234 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2161 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_236 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_236 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2161 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_238 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_238 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2161 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_240 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_240 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2161 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5e
d_Q5e_242 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_242 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2161 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_244 a0 a1 a2 = ()
data T_PParams_244
  = C_PParams'46'constructor_3321 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_222 T_DrepThresholds_180 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_304 :: T_PParams_244 -> Integer
d_maxBlockSize_304 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_306 :: T_PParams_244 -> Integer
d_maxTxSize_306 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_308 :: T_PParams_244 -> Integer
d_maxHeaderSize_308 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_310 :: T_PParams_244 -> AgdaAny
d_maxTxExUnits_310 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_312 :: T_PParams_244 -> AgdaAny
d_maxBlockExUnits_312 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_314 :: T_PParams_244 -> Integer
d_maxValSize_314 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_316 :: T_PParams_244 -> Integer
d_maxCollateralInputs_316 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_318 :: T_PParams_244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_318 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_320 :: T_PParams_244 -> Integer
d_a_320 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_322 :: T_PParams_244 -> Integer
d_b_322 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.keyDeposit
d_keyDeposit_324 :: T_PParams_244 -> Integer
d_keyDeposit_324 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_326 :: T_PParams_244 -> Integer
d_poolDeposit_326 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_328 :: T_PParams_244 -> Integer
d_coinsPerUTxOByte_328 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_330 :: T_PParams_244 -> AgdaAny
d_prices_330 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_332 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_332 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_334 :: T_PParams_244 -> Integer
d_minUTxOValue_334 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_336 :: T_PParams_244 -> AgdaAny
d_Emax_336 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_338 :: T_PParams_244 -> Integer
d_nopt_338 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_340 :: T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_340 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_342 :: T_PParams_244 -> Integer
d_collateralPercentage_342 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_344 :: T_PParams_244 -> AgdaAny
d_costmdls_344 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_346 :: T_PParams_244 -> T_PoolThresholds_222
d_poolThresholds_346 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_348 :: T_PParams_244 -> T_DrepThresholds_180
d_drepThresholds_348 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_350 :: T_PParams_244 -> Integer
d_ccMinSize_350 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_352 :: T_PParams_244 -> Integer
d_ccMaxTermLength_352 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_354 :: T_PParams_244 -> Integer
d_govActionLifetime_354 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_356 :: T_PParams_244 -> Integer
d_govActionDeposit_356 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_358 :: T_PParams_244 -> Integer
d_drepDeposit_358 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_360 :: T_PParams_244 -> AgdaAny
d_drepActivity_360 v0
  = case coe v0 of
      C_PParams'46'constructor_3321 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_362 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParams_244 -> ()
d_paramsWellFormed_362 = erased
-- Ledger.PParams._._.Emax
d_Emax_372 :: T_PParams_244 -> AgdaAny
d_Emax_372 v0 = coe d_Emax_336 (coe v0)
-- Ledger.PParams._._.a
d_a_374 :: T_PParams_244 -> Integer
d_a_374 v0 = coe d_a_320 (coe v0)
-- Ledger.PParams._._.a0
d_a0_376 :: T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_376 v0 = coe d_a0_340 (coe v0)
-- Ledger.PParams._._.b
d_b_378 :: T_PParams_244 -> Integer
d_b_378 v0 = coe d_b_322 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_380 :: T_PParams_244 -> Integer
d_ccMaxTermLength_380 v0 = coe d_ccMaxTermLength_352 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_382 :: T_PParams_244 -> Integer
d_ccMinSize_382 v0 = coe d_ccMinSize_350 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_384 :: T_PParams_244 -> Integer
d_coinsPerUTxOByte_384 v0 = coe d_coinsPerUTxOByte_328 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_386 :: T_PParams_244 -> Integer
d_collateralPercentage_386 v0
  = coe d_collateralPercentage_342 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_388 :: T_PParams_244 -> AgdaAny
d_costmdls_388 v0 = coe d_costmdls_344 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_390 :: T_PParams_244 -> AgdaAny
d_drepActivity_390 v0 = coe d_drepActivity_360 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_392 :: T_PParams_244 -> Integer
d_drepDeposit_392 v0 = coe d_drepDeposit_358 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_394 :: T_PParams_244 -> T_DrepThresholds_180
d_drepThresholds_394 v0 = coe d_drepThresholds_348 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_396 :: T_PParams_244 -> Integer
d_govActionDeposit_396 v0 = coe d_govActionDeposit_356 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_398 :: T_PParams_244 -> Integer
d_govActionLifetime_398 v0 = coe d_govActionLifetime_354 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_400 :: T_PParams_244 -> Integer
d_keyDeposit_400 v0 = coe d_keyDeposit_324 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_402 :: T_PParams_244 -> AgdaAny
d_maxBlockExUnits_402 v0 = coe d_maxBlockExUnits_312 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_404 :: T_PParams_244 -> Integer
d_maxBlockSize_404 v0 = coe d_maxBlockSize_304 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_406 :: T_PParams_244 -> Integer
d_maxCollateralInputs_406 v0
  = coe d_maxCollateralInputs_316 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_408 :: T_PParams_244 -> Integer
d_maxHeaderSize_408 v0 = coe d_maxHeaderSize_308 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_410 :: T_PParams_244 -> AgdaAny
d_maxTxExUnits_410 v0 = coe d_maxTxExUnits_310 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_412 :: T_PParams_244 -> Integer
d_maxTxSize_412 v0 = coe d_maxTxSize_306 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_414 :: T_PParams_244 -> Integer
d_maxValSize_414 v0 = coe d_maxValSize_314 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_416 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_416 v0
  = coe d_minFeeRefScriptCoinsPerByte_332 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_418 :: T_PParams_244 -> Integer
d_minUTxOValue_418 v0 = coe d_minUTxOValue_334 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_420 :: T_PParams_244 -> Integer
d_nopt_420 v0 = coe d_nopt_338 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_422 :: T_PParams_244 -> Integer
d_poolDeposit_422 v0 = coe d_poolDeposit_326 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_424 :: T_PParams_244 -> T_PoolThresholds_222
d_poolThresholds_424 v0 = coe d_poolThresholds_346 (coe v0)
-- Ledger.PParams._._.prices
d_prices_426 :: T_PParams_244 -> AgdaAny
d_prices_426 v0 = coe d_prices_330 (coe v0)
-- Ledger.PParams._._.pv
d_pv_428 :: T_PParams_244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_428 v0 = coe d_pv_318 (coe v0)
-- Ledger.PParams.Show-ℚ
d_Show'45'ℚ_430 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_430 ~v0 ~v1 ~v2 = du_Show'45'ℚ_430
du_Show'45'ℚ_430 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_430
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_436 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_436 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_436
du_DecEq'45'DrepThresholds_436 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_436
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_1687 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                  (coe v21) (coe v10)))
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                               (coe v20) (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                            (coe v19) (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                         (coe v18) (coe v7)))
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                      (coe v17) (coe v6)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                   (coe v16) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                (coe v15) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                             (coe v14) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                          (coe v13) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                       (coe v12) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
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
d_DecEq'45'PoolThresholds_438 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_438 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_438
du_DecEq'45'PoolThresholds_438 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_438
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_2161 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_2161 v7 v8 v9 v10 v11
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                   (coe v11) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                (coe v10) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                             (coe v9) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                          (coe v8) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                       (coe v7) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
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
d_DecEq'45'PParams_440 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_440 ~v0 v1 v2 = du_DecEq'45'PParams_440 v1 v2
du_DecEq'45'PParams_440 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_440 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3321 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParams'46'constructor_3321 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
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
                                                                                                                                       (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                                                          (coe
                                                                                                                                             v0))
                                                                                                                                       v69
                                                                                                                                       v35))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                                                    (coe
                                                                                                                                       v68)
                                                                                                                                    (coe
                                                                                                                                       v34)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                                                 (coe
                                                                                                                                    v67)
                                                                                                                                 (coe
                                                                                                                                    v33)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                                              (coe
                                                                                                                                 v66)
                                                                                                                              (coe
                                                                                                                                 v32)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                                              (coe
                                                                                                                                 v0))
                                                                                                                           v61
                                                                                                                           v31))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                                        (coe
                                                                                                                           v64)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                          (coe
                                                                                                                                             d_P6_220
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                                (coe
                                                                                                                                                   d_P5c_216
                                                                                                                                                   (coe
                                                                                                                                                      v29))
                                                                                                                                                (coe
                                                                                                                                                   d_P5c_216
                                                                                                                                                   (coe
                                                                                                                                                      v63))))
                                                                                                                                          (coe
                                                                                                                                             d_P6_220
                                                                                                                                             (coe
                                                                                                                                                d_P5b_214
                                                                                                                                                (coe
                                                                                                                                                   v29))
                                                                                                                                             (coe
                                                                                                                                                d_P5b_214
                                                                                                                                                (coe
                                                                                                                                                   v63))))
                                                                                                                                       (coe
                                                                                                                                          d_P5d_218
                                                                                                                                          (coe
                                                                                                                                             v25))
                                                                                                                                       (coe
                                                                                                                                          d_P5d_218
                                                                                                                                          (coe
                                                                                                                                             d_P5a_212
                                                                                                                                             (coe
                                                                                                                                                v63))))
                                                                                                                                    (coe
                                                                                                                                       d_P5c_216
                                                                                                                                       (coe
                                                                                                                                          v25))
                                                                                                                                    (coe
                                                                                                                                       d_P5c_216
                                                                                                                                       (coe
                                                                                                                                          d_P4_210
                                                                                                                                          (coe
                                                                                                                                             v63))))
                                                                                                                                 (coe
                                                                                                                                    d_P5b_214
                                                                                                                                    (coe
                                                                                                                                       v25))
                                                                                                                                 (coe
                                                                                                                                    d_P5b_214
                                                                                                                                    (coe
                                                                                                                                       d_P3_208
                                                                                                                                       (coe
                                                                                                                                          v63))))
                                                                                                                              (coe
                                                                                                                                 d_P5a_212
                                                                                                                                 (coe
                                                                                                                                    v25))
                                                                                                                              (coe
                                                                                                                                 d_P5a_212
                                                                                                                                 (coe
                                                                                                                                    d_P2b_206
                                                                                                                                    (coe
                                                                                                                                       v63))))
                                                                                                                           (coe
                                                                                                                              d_P4_210
                                                                                                                              (coe
                                                                                                                                 v25))
                                                                                                                           (coe
                                                                                                                              d_P4_210
                                                                                                                              (coe
                                                                                                                                 d_P2a_204
                                                                                                                                 (coe
                                                                                                                                    v63))))
                                                                                                                        (coe
                                                                                                                           d_P3_208
                                                                                                                           (coe
                                                                                                                              v25))
                                                                                                                        (coe
                                                                                                                           d_P3_208
                                                                                                                           (coe
                                                                                                                              d_P1_202
                                                                                                                              (coe
                                                                                                                                 v63))))
                                                                                                                     (coe
                                                                                                                        d_P2b_206
                                                                                                                        (coe
                                                                                                                           v25))
                                                                                                                     (coe
                                                                                                                        d_P2b_206
                                                                                                                        (coe
                                                                                                                           v55))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                  (coe
                                                                                                                     d_P2a_204
                                                                                                                     (coe
                                                                                                                        v25))
                                                                                                                  (coe
                                                                                                                     d_P2a_204
                                                                                                                     (coe
                                                                                                                        v55))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_P1_202
                                                                                                                  (coe
                                                                                                                     v25))
                                                                                                               (coe
                                                                                                                  d_P1_202
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
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                        (coe
                                                                                                                           d_Q5e_242
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                              (coe
                                                                                                                                 d_Q2b_238
                                                                                                                                 (coe
                                                                                                                                    v28))
                                                                                                                              (coe
                                                                                                                                 d_Q2b_238
                                                                                                                                 (coe
                                                                                                                                    v62))))
                                                                                                                        (coe
                                                                                                                           d_Q5e_242
                                                                                                                           (coe
                                                                                                                              d_Q2a_236
                                                                                                                              (coe
                                                                                                                                 v28))
                                                                                                                           (coe
                                                                                                                              d_Q2a_236
                                                                                                                              (coe
                                                                                                                                 v62))))
                                                                                                                     (coe
                                                                                                                        d_Q4_240
                                                                                                                        (coe
                                                                                                                           v24))
                                                                                                                     (coe
                                                                                                                        d_Q4_240
                                                                                                                        (coe
                                                                                                                           d_Q1_234
                                                                                                                           (coe
                                                                                                                              v62))))
                                                                                                                  (coe
                                                                                                                     d_Q2b_238
                                                                                                                     (coe
                                                                                                                        v24))
                                                                                                                  (coe
                                                                                                                     d_Q2b_238
                                                                                                                     (coe
                                                                                                                        v54))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_Q2a_236
                                                                                                                  (coe
                                                                                                                     v24))
                                                                                                               (coe
                                                                                                                  d_Q2a_236
                                                                                                                  (coe
                                                                                                                     v54))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                            (coe
                                                                                                               d_Q1_234
                                                                                                               (coe
                                                                                                                  v24))
                                                                                                            (coe
                                                                                                               d_Q1_234
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
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                         erased)
                                                                                                                                      erased)
                                                                                                                                   erased)
                                                                                                                                erased)
                                                                                                                             erased)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                               (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               v61
                                                                                                               v27))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                            (coe
                                                                                                               v60)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                         (coe
                                                                                                            v59)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                      (coe
                                                                                                         v58)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                   (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   v53
                                                                                                   v23))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                (coe
                                                                                                   v56)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                             (coe
                                                                                                v55)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                          (coe v54)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                       (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                          (coe v0))
                                                                                       v49 v19))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                    (coe v52)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                 (coe v51)
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                              (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                    (coe v1)))
                                                                              v50 v16))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                           (coe v49) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                        (coe v48) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                     (coe v47) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                  (coe v46) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                               (coe v45) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                            (coe
                                                               (\ v70 ->
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                            (coe v44) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                         (coe v43) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                      (coe v42) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_454
                                                         (coe v1)))
                                                   v41 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_454 (coe v1)))
                                                v36 v6))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                             (coe v39) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v38)
                                          (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v37)
                                       (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v70 ->
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
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_442 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_442 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_442
du_DecEq'45'PParamGroup_442 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_442
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_170
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_170
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_EconomicGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_172
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_172
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_TechnicalGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_174
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_174
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_GovernanceGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_176
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_176
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SecurityGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_178
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_178
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.Show-DrepThresholds
d_Show'45'DrepThresholds_444 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_444 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_444
du_Show'45'DrepThresholds_444 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_444
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                           (coe
                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                (coe ("constructor" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe v1))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe v2))))
                                          (coe
                                             MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                             (coe
                                                MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v3))))
                                       (coe
                                          MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                          (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v4))))
                                    (coe
                                       MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                       (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v5))))
                                 (coe
                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                    (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v6))))
                              (coe
                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                 (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v7))))
                           (coe
                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                              (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v8))))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v9))))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v10)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.Show-PoolThresholds
d_Show'45'PoolThresholds_446 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_446 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_446
du_Show'45'PoolThresholds_446 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_446
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_2161 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                           (coe
                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                 (coe ("constructor" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                    (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v1))))
                              (coe
                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                 (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v2))))
                           (coe
                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                              (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v3))))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v4))))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.Show-PParams
d_Show'45'PParams_448 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_448 ~v0 v1 v2 = du_Show'45'PParams_448 v1 v2
du_Show'45'PParams_448 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_448 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3321 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                           (coe
                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                (coe
                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                   (coe
                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                            (coe
                                                               MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                               (coe
                                                                  MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                  (coe
                                                                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                        (coe
                                                                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                           (coe
                                                                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                              (coe
                                                                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                                                         (coe
                                                                                                            ("constructor"
                                                                                                             ::
                                                                                                             Data.Text.Text))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                               v3)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                            v4)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                         v5)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                      (MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                                            (coe
                                                                                                               v1)))
                                                                                                      v6)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                   (MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   v7)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                v8)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                             v9)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.String.Base.d_parens_38
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v10)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                (" , "
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                      (coe
                                                                                                         v10))))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                       v11)))
                                                                              (coe
                                                                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                    v12)))
                                                                           (coe
                                                                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                 v13)))
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                              v14)))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                           v15)))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Class.Show.Core.d_show_16
                                                                        (MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Script.d_ps_454
                                                                              (coe v1)))
                                                                        v16)))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe v17))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                  v18)))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Class.Show.Core.d_show_16
                                                               (MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
                                                                  (coe v0))
                                                               v19)))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Show.d_show_56
                                                            v20)))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe v21))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v22)))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Class.Show.Core.d_show_16
                                                   (MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_454
                                                         (coe v1)))
                                                   v23)))
                                          (coe
                                             MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                (coe
                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                   (coe
                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                            (coe ("constructor" :: Data.Text.Text))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_Q1_234 (coe v24)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_236 (coe v24)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_238 (coe v24)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_240 (coe v24)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5e_242 (coe v24)))))))
                                       (coe
                                          MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                (coe
                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                   (coe
                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                            (coe
                                                               MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                               (coe
                                                                  MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                  (coe
                                                                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                                        (coe
                                                                           ("constructor"
                                                                            ::
                                                                            Data.Text.Text))
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                           (coe
                                                                              MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                              (coe
                                                                                 d_P1_202
                                                                                 (coe v25)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_204
                                                                              (coe v25)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_206 (coe v25)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_208 (coe v25)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_210 (coe v25)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_212 (coe v25)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_214 (coe v25)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_216 (coe v25)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_218 (coe v25)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_220 (coe v25)))))))
                                    (coe
                                       MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                       (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v26)))
                                 (coe
                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                    (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v27)))
                              (coe
                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                 (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v28)))
                           (coe
                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                              (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v29)))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v30)))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60 (coe v0)) v31))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_452 a0 a1 a2 = ()
data T_PParamsUpdate_452
  = C_PParamsUpdate'46'constructor_622089 (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe AgdaAny) (Maybe AgdaAny)
                                          (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe AgdaAny) (Maybe Integer) (Maybe Integer)
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_180)
                                          (Maybe T_PoolThresholds_222) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_512 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_514 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_514 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_516 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_516 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_518 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_518 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_520 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_520 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_522 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_522 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_524 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_524 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_526 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_526 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a
d_a_528 :: T_PParamsUpdate_452 -> Maybe Integer
d_a_528 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.b
d_b_530 :: T_PParamsUpdate_452 -> Maybe Integer
d_b_530 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_532 :: T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_532 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_534 :: T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_534 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_536 :: T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_536 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_538 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_538 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_540 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_540 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_542 :: T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_542 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_544 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_544 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_546 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_546 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_548 :: T_PParamsUpdate_452 -> Maybe Integer
d_nopt_548 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_550 :: T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_550 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_552 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_552 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_554 ::
  T_PParamsUpdate_452 -> Maybe T_DrepThresholds_180
d_drepThresholds_554 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_556 ::
  T_PParamsUpdate_452 -> Maybe T_PoolThresholds_222
d_poolThresholds_556 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_558 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_558 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_560 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_560 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_562 :: T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_562 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_564 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_564 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_566 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_566 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_568 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_568 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_622089 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_638 :: T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_638 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_640 :: T_PParamsUpdate_512 -> Maybe AgdaAny
d_drepActivity_640 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_642 :: T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_642 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_644 :: T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_644 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_570 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 -> ()
d_paramsUpdateWellFormed_570 = erased
-- Ledger.PParams.PParamsUpdate._._.Emax
d_Emax_580 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_580 v0 = coe d_Emax_546 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a
d_a_582 :: T_PParamsUpdate_452 -> Maybe Integer
d_a_582 v0 = coe d_a_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a0
d_a0_584 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_584 v0 = coe d_a0_544 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.b
d_b_586 :: T_PParamsUpdate_452 -> Maybe Integer
d_b_586 v0 = coe d_b_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_588 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_588 v0 = coe d_ccMaxTermLength_568 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_590 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_590 v0 = coe d_ccMinSize_566 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_592 :: T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_592 v0 = coe d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_594 :: T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_594 v0
  = coe d_collateralPercentage_550 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.costmdls
d_costmdls_596 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_596 v0 = coe d_costmdls_552 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_598 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_598 v0 = coe d_drepActivity_564 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_600 :: T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_600 v0 = coe d_drepDeposit_562 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_602 ::
  T_PParamsUpdate_452 -> Maybe T_DrepThresholds_180
d_drepThresholds_602 v0 = coe d_drepThresholds_554 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_604 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_604 v0 = coe d_govActionDeposit_560 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_606 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_606 v0 = coe d_govActionLifetime_558 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_608 :: T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_608 v0 = coe d_keyDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_610 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_610 v0 = coe d_maxBlockExUnits_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_612 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_612 v0 = coe d_maxBlockSize_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_614 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_614 v0
  = coe d_maxCollateralInputs_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_616 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_616 v0 = coe d_maxHeaderSize_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_618 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_618 v0 = coe d_maxTxExUnits_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_620 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_620 v0 = coe d_maxTxSize_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_622 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_622 v0 = coe d_maxValSize_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_624 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_624 v0
  = coe d_minFeeRefScriptCoinsPerByte_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_626 :: T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_626 v0 = coe d_minUTxOValue_542 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.nopt
d_nopt_628 :: T_PParamsUpdate_452 -> Maybe Integer
d_nopt_628 v0 = coe d_nopt_548 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_630 :: T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_630 v0 = coe d_poolDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_632 ::
  T_PParamsUpdate_452 -> Maybe T_PoolThresholds_222
d_poolThresholds_632 v0 = coe d_poolThresholds_556 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.prices
d_prices_634 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_634 v0 = coe d_prices_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.pv
d_pv_636 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_636 v0 = coe d_pv_526 (coe v0)
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_640 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_640 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_640 v3
du_paramsUpdateWellFormed'63'_640 ::
  T_PParamsUpdate_452 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_640 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
            (coe
               MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_416
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_maxBlockSize_512 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_514 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_516 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_518 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_minUTxOValue_542 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_534 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_550 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_568 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_558 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_560 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_562 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_644 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 -> Bool
d_modifiesNetworkGroup_644 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_644 v3
du_modifiesNetworkGroup_644 :: T_PParamsUpdate_452 -> Bool
du_modifiesNetworkGroup_644 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_512 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_514 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_516 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_518 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_520 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_522 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_524 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_526 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_650 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_650 v0 = coe d_Emax_546 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_652 :: T_PParamsUpdate_452 -> Maybe Integer
d_a_652 v0 = coe d_a_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_654 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_654 v0 = coe d_a0_544 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_656 :: T_PParamsUpdate_452 -> Maybe Integer
d_b_656 v0 = coe d_b_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_658 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_658 v0 = coe d_ccMaxTermLength_568 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_660 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_660 v0 = coe d_ccMinSize_566 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_662 :: T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_662 v0 = coe d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_664 :: T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_664 v0
  = coe d_collateralPercentage_550 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_666 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_666 v0 = coe d_costmdls_552 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_668 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_668 v0 = coe d_drepActivity_564 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_670 :: T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_670 v0 = coe d_drepDeposit_562 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_672 ::
  T_PParamsUpdate_452 -> Maybe T_DrepThresholds_180
d_drepThresholds_672 v0 = coe d_drepThresholds_554 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_674 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_674 v0 = coe d_govActionDeposit_560 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_676 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_676 v0 = coe d_govActionLifetime_558 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_678 :: T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_678 v0 = coe d_keyDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_680 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_680 v0 = coe d_maxBlockExUnits_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_682 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_682 v0 = coe d_maxBlockSize_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_684 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_684 v0
  = coe d_maxCollateralInputs_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_686 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_686 v0 = coe d_maxHeaderSize_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_688 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_688 v0 = coe d_maxTxExUnits_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_690 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_690 v0 = coe d_maxTxSize_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_692 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_692 v0 = coe d_maxValSize_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_694 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_694 v0
  = coe d_minFeeRefScriptCoinsPerByte_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_696 :: T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_696 v0 = coe d_minUTxOValue_542 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_698 :: T_PParamsUpdate_452 -> Maybe Integer
d_nopt_698 v0 = coe d_nopt_548 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_700 :: T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_700 v0 = coe d_poolDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_702 ::
  T_PParamsUpdate_452 -> Maybe T_PoolThresholds_222
d_poolThresholds_702 v0 = coe d_poolThresholds_556 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_704 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_704 v0 = coe d_prices_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_706 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_706 v0 = coe d_pv_526 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_708 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 -> Bool
d_modifiesEconomicGroup_708 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_708 v3
du_modifiesEconomicGroup_708 :: T_PParamsUpdate_452 -> Bool
du_modifiesEconomicGroup_708 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_528 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_530 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_532 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_534 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_coinsPerUTxOByte_536 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_minFeeRefScriptCoinsPerByte_538 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_prices_540 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minUTxOValue_542 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_714 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_714 v0 = coe d_Emax_546 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_716 :: T_PParamsUpdate_452 -> Maybe Integer
d_a_716 v0 = coe d_a_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_718 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_718 v0 = coe d_a0_544 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_720 :: T_PParamsUpdate_452 -> Maybe Integer
d_b_720 v0 = coe d_b_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_722 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_722 v0 = coe d_ccMaxTermLength_568 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_724 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_724 v0 = coe d_ccMinSize_566 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_726 :: T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_726 v0 = coe d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_728 :: T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_728 v0
  = coe d_collateralPercentage_550 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_730 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_730 v0 = coe d_costmdls_552 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_732 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_732 v0 = coe d_drepActivity_564 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_734 :: T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_734 v0 = coe d_drepDeposit_562 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_736 ::
  T_PParamsUpdate_452 -> Maybe T_DrepThresholds_180
d_drepThresholds_736 v0 = coe d_drepThresholds_554 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_738 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_738 v0 = coe d_govActionDeposit_560 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_740 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_740 v0 = coe d_govActionLifetime_558 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_742 :: T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_742 v0 = coe d_keyDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_744 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_744 v0 = coe d_maxBlockExUnits_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_746 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_746 v0 = coe d_maxBlockSize_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_748 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_748 v0
  = coe d_maxCollateralInputs_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_750 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_750 v0 = coe d_maxHeaderSize_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_752 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_752 v0 = coe d_maxTxExUnits_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_754 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_754 v0 = coe d_maxTxSize_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_756 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_756 v0 = coe d_maxValSize_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_758 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_758 v0
  = coe d_minFeeRefScriptCoinsPerByte_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_760 :: T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_760 v0 = coe d_minUTxOValue_542 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_762 :: T_PParamsUpdate_452 -> Maybe Integer
d_nopt_762 v0 = coe d_nopt_548 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_764 :: T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_764 v0 = coe d_poolDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_766 ::
  T_PParamsUpdate_452 -> Maybe T_PoolThresholds_222
d_poolThresholds_766 v0 = coe d_poolThresholds_556 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_768 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_768 v0 = coe d_prices_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_770 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_770 v0 = coe d_pv_526 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_772 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 -> Bool
d_modifiesTechnicalGroup_772 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_772 v3
du_modifiesTechnicalGroup_772 :: T_PParamsUpdate_452 -> Bool
du_modifiesTechnicalGroup_772 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_544 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_546 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_548 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_550 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_552 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_778 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_778 v0 = coe d_Emax_546 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_780 :: T_PParamsUpdate_452 -> Maybe Integer
d_a_780 v0 = coe d_a_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_782 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_782 v0 = coe d_a0_544 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_784 :: T_PParamsUpdate_452 -> Maybe Integer
d_b_784 v0 = coe d_b_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_786 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_786 v0 = coe d_ccMaxTermLength_568 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_788 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_788 v0 = coe d_ccMinSize_566 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_790 :: T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_790 v0 = coe d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_792 :: T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_792 v0
  = coe d_collateralPercentage_550 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_794 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_794 v0 = coe d_costmdls_552 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_796 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_796 v0 = coe d_drepActivity_564 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_798 :: T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_798 v0 = coe d_drepDeposit_562 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_800 ::
  T_PParamsUpdate_452 -> Maybe T_DrepThresholds_180
d_drepThresholds_800 v0 = coe d_drepThresholds_554 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_802 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_802 v0 = coe d_govActionDeposit_560 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_804 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_804 v0 = coe d_govActionLifetime_558 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_806 :: T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_806 v0 = coe d_keyDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_808 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_808 v0 = coe d_maxBlockExUnits_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_810 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_810 v0 = coe d_maxBlockSize_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_812 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_812 v0
  = coe d_maxCollateralInputs_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_814 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_814 v0 = coe d_maxHeaderSize_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_816 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_816 v0 = coe d_maxTxExUnits_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_818 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_818 v0 = coe d_maxTxSize_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_820 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_820 v0 = coe d_maxValSize_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_822 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_822 v0
  = coe d_minFeeRefScriptCoinsPerByte_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_824 :: T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_824 v0 = coe d_minUTxOValue_542 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_826 :: T_PParamsUpdate_452 -> Maybe Integer
d_nopt_826 v0 = coe d_nopt_548 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_828 :: T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_828 v0 = coe d_poolDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_830 ::
  T_PParamsUpdate_452 -> Maybe T_PoolThresholds_222
d_poolThresholds_830 v0 = coe d_poolThresholds_556 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_832 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_832 v0 = coe d_prices_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_834 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_834 v0 = coe d_pv_526 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_836 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 -> Bool
d_modifiesGovernanceGroup_836 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_836 v3
du_modifiesGovernanceGroup_836 :: T_PParamsUpdate_452 -> Bool
du_modifiesGovernanceGroup_836 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_554 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_556 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_558 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_560 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_562 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_564 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_566 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_568 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_842 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_842 v0 = coe d_Emax_546 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_844 :: T_PParamsUpdate_452 -> Maybe Integer
d_a_844 v0 = coe d_a_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_846 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_846 v0 = coe d_a0_544 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_848 :: T_PParamsUpdate_452 -> Maybe Integer
d_b_848 v0 = coe d_b_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_850 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_850 v0 = coe d_ccMaxTermLength_568 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_852 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_852 v0 = coe d_ccMinSize_566 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_854 :: T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_854 v0 = coe d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_856 :: T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_856 v0
  = coe d_collateralPercentage_550 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_858 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_858 v0 = coe d_costmdls_552 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_860 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_860 v0 = coe d_drepActivity_564 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_862 :: T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_862 v0 = coe d_drepDeposit_562 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_864 ::
  T_PParamsUpdate_452 -> Maybe T_DrepThresholds_180
d_drepThresholds_864 v0 = coe d_drepThresholds_554 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_866 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_866 v0 = coe d_govActionDeposit_560 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_868 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_868 v0 = coe d_govActionLifetime_558 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_870 :: T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_870 v0 = coe d_keyDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_872 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_872 v0 = coe d_maxBlockExUnits_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_874 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_874 v0 = coe d_maxBlockSize_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_876 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_876 v0
  = coe d_maxCollateralInputs_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_878 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_878 v0 = coe d_maxHeaderSize_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_880 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_880 v0 = coe d_maxTxExUnits_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_882 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_882 v0 = coe d_maxTxSize_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_884 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_884 v0 = coe d_maxValSize_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_886 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_886 v0
  = coe d_minFeeRefScriptCoinsPerByte_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_888 :: T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_888 v0 = coe d_minUTxOValue_542 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_890 :: T_PParamsUpdate_452 -> Maybe Integer
d_nopt_890 v0 = coe d_nopt_548 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_892 :: T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_892 v0 = coe d_poolDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_894 ::
  T_PParamsUpdate_452 -> Maybe T_PoolThresholds_222
d_poolThresholds_894 v0 = coe d_poolThresholds_556 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_896 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_896 v0 = coe d_prices_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_898 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_898 v0 = coe d_pv_526 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_900 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 -> [T_PParamGroup_168]
d_modifiedUpdateGroups_900 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_900 v3
du_modifiedUpdateGroups_900 ::
  T_PParamsUpdate_452 -> [T_PParamGroup_168]
du_modifiedUpdateGroups_900 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         du__'63''9552''8658'__908 (coe v0)
         (coe du_modifiesNetworkGroup_644) (coe C_NetworkGroup_170))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            du__'63''9552''8658'__908 (coe v0)
            (coe du_modifiesEconomicGroup_708) (coe C_EconomicGroup_172))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__668
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               du__'63''9552''8658'__908 (coe v0)
               (coe du_modifiesTechnicalGroup_772) (coe C_TechnicalGroup_174))
            (coe
               du__'63''9552''8658'__908 (coe v0)
               (coe du_modifiesGovernanceGroup_836) (coe C_GovernanceGroup_176))))
-- Ledger.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__908 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_452 ->
  (T_PParamsUpdate_452 -> Bool) ->
  T_PParamGroup_168 -> [T_PParamGroup_168]
d__'63''9552''8658'__908 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__908 v3 v4 v5
du__'63''9552''8658'__908 ::
  T_PParamsUpdate_452 ->
  (T_PParamsUpdate_452 -> Bool) ->
  T_PParamGroup_168 -> [T_PParamGroup_168]
du__'63''9552''8658'__908 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v1 v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
              (coe
                 MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
              v2))
      (coe
         (\ v3 ->
            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
              (coe
                 MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_296
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
-- Ledger.PParams.PParamsUpdate._?↗_
d__'63''8599'__916 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__916 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__916 v4 v5
du__'63''8599'__916 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__916 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.≡-update
d_'8801''45'update_930 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_930 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_930 v4
du_'8801''45'update_930 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_930 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (\ v1 -> coe du_to_950 (coe v0)) erased
-- Ledger.PParams.PParamsUpdate._.to
d_to_950 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
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
d_to_950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_950 v8
du_to_950 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_950 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate._.from
d_from_962 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
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
d_from_962 = erased
-- Ledger.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_964 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParams_244 -> T_PParamsUpdate_452 -> T_PParams_244
d_applyPParamsUpdate_964 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_964 v3 v4
du_applyPParamsUpdate_964 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> T_PParams_244
du_applyPParamsUpdate_964 v0 v1
  = coe
      C_PParams'46'constructor_3321
      (coe
         du__'63''8599'__916 (coe d_maxBlockSize_512 (coe v1))
         (coe d_maxBlockSize_304 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_maxTxSize_514 (coe v1))
         (coe d_maxTxSize_306 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_maxHeaderSize_516 (coe v1))
         (coe d_maxHeaderSize_308 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_maxTxExUnits_522 (coe v1))
         (coe d_maxTxExUnits_310 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_maxBlockExUnits_524 (coe v1))
         (coe d_maxBlockExUnits_312 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_maxValSize_518 (coe v1))
         (coe d_maxValSize_314 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_maxCollateralInputs_520 (coe v1))
         (coe d_maxCollateralInputs_316 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_pv_526 (coe v1))
         (coe d_pv_318 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_a_528 (coe v1)) (coe d_a_320 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_b_530 (coe v1)) (coe d_b_322 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_keyDeposit_532 (coe v1))
         (coe d_keyDeposit_324 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_poolDeposit_534 (coe v1))
         (coe d_poolDeposit_326 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_coinsPerUTxOByte_536 (coe v1))
         (coe d_coinsPerUTxOByte_328 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_prices_540 (coe v1))
         (coe d_prices_330 (coe v0)))
      (coe
         du__'63''8599'__916
         (coe d_minFeeRefScriptCoinsPerByte_538 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_332 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_minUTxOValue_542 (coe v1))
         (coe d_minUTxOValue_334 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_Emax_546 (coe v1))
         (coe d_Emax_336 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_nopt_548 (coe v1))
         (coe d_nopt_338 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_a0_544 (coe v1))
         (coe d_a0_340 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_collateralPercentage_550 (coe v1))
         (coe d_collateralPercentage_342 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_costmdls_552 (coe v1))
         (coe d_costmdls_344 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_poolThresholds_556 (coe v1))
         (coe d_poolThresholds_346 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_drepThresholds_554 (coe v1))
         (coe d_drepThresholds_348 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_ccMinSize_566 (coe v1))
         (coe d_ccMinSize_350 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_ccMaxTermLength_568 (coe v1))
         (coe d_ccMaxTermLength_352 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_govActionLifetime_558 (coe v1))
         (coe d_govActionLifetime_354 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_govActionDeposit_560 (coe v1))
         (coe d_govActionDeposit_356 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_drepDeposit_562 (coe v1))
         (coe d_drepDeposit_358 (coe v0)))
      (coe
         du__'63''8599'__916 (coe d_drepActivity_564 (coe v1))
         (coe d_drepActivity_360 (coe v0)))
-- Ledger.PParams.PParamsUpdate._.P.Emax
d_Emax_976 :: T_PParams_244 -> T_PParamsUpdate_452 -> AgdaAny
d_Emax_976 v0 ~v1 = du_Emax_976 v0
du_Emax_976 :: T_PParams_244 -> AgdaAny
du_Emax_976 v0 = coe d_Emax_336 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a
d_a_978 :: T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_a_978 v0 ~v1 = du_a_978 v0
du_a_978 :: T_PParams_244 -> Integer
du_a_978 v0 = coe d_a_320 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a0
d_a0_980 ::
  T_PParams_244 ->
  T_PParamsUpdate_452 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_980 v0 ~v1 = du_a0_980 v0
du_a0_980 :: T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_980 v0 = coe d_a0_340 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.b
d_b_982 :: T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_b_982 v0 ~v1 = du_b_982 v0
du_b_982 :: T_PParams_244 -> Integer
du_b_982 v0 = coe d_b_322 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_984 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_ccMaxTermLength_984 v0 ~v1 = du_ccMaxTermLength_984 v0
du_ccMaxTermLength_984 :: T_PParams_244 -> Integer
du_ccMaxTermLength_984 v0 = coe d_ccMaxTermLength_352 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_986 :: T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_ccMinSize_986 v0 ~v1 = du_ccMinSize_986 v0
du_ccMinSize_986 :: T_PParams_244 -> Integer
du_ccMinSize_986 v0 = coe d_ccMinSize_350 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_988 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_coinsPerUTxOByte_988 v0 ~v1 = du_coinsPerUTxOByte_988 v0
du_coinsPerUTxOByte_988 :: T_PParams_244 -> Integer
du_coinsPerUTxOByte_988 v0 = coe d_coinsPerUTxOByte_328 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_990 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_collateralPercentage_990 v0 ~v1 = du_collateralPercentage_990 v0
du_collateralPercentage_990 :: T_PParams_244 -> Integer
du_collateralPercentage_990 v0
  = coe d_collateralPercentage_342 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.costmdls
d_costmdls_992 :: T_PParams_244 -> T_PParamsUpdate_452 -> AgdaAny
d_costmdls_992 v0 ~v1 = du_costmdls_992 v0
du_costmdls_992 :: T_PParams_244 -> AgdaAny
du_costmdls_992 v0 = coe d_costmdls_344 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_994 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> AgdaAny
d_drepActivity_994 v0 ~v1 = du_drepActivity_994 v0
du_drepActivity_994 :: T_PParams_244 -> AgdaAny
du_drepActivity_994 v0 = coe d_drepActivity_360 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_996 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_drepDeposit_996 v0 ~v1 = du_drepDeposit_996 v0
du_drepDeposit_996 :: T_PParams_244 -> Integer
du_drepDeposit_996 v0 = coe d_drepDeposit_358 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_998 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> T_DrepThresholds_180
d_drepThresholds_998 v0 ~v1 = du_drepThresholds_998 v0
du_drepThresholds_998 :: T_PParams_244 -> T_DrepThresholds_180
du_drepThresholds_998 v0 = coe d_drepThresholds_348 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1000 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_govActionDeposit_1000 v0 ~v1 = du_govActionDeposit_1000 v0
du_govActionDeposit_1000 :: T_PParams_244 -> Integer
du_govActionDeposit_1000 v0 = coe d_govActionDeposit_356 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1002 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_govActionLifetime_1002 v0 ~v1 = du_govActionLifetime_1002 v0
du_govActionLifetime_1002 :: T_PParams_244 -> Integer
du_govActionLifetime_1002 v0 = coe d_govActionLifetime_354 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1004 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_keyDeposit_1004 v0 ~v1 = du_keyDeposit_1004 v0
du_keyDeposit_1004 :: T_PParams_244 -> Integer
du_keyDeposit_1004 v0 = coe d_keyDeposit_324 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1006 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> AgdaAny
d_maxBlockExUnits_1006 v0 ~v1 = du_maxBlockExUnits_1006 v0
du_maxBlockExUnits_1006 :: T_PParams_244 -> AgdaAny
du_maxBlockExUnits_1006 v0 = coe d_maxBlockExUnits_312 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1008 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_maxBlockSize_1008 v0 ~v1 = du_maxBlockSize_1008 v0
du_maxBlockSize_1008 :: T_PParams_244 -> Integer
du_maxBlockSize_1008 v0 = coe d_maxBlockSize_304 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1010 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_maxCollateralInputs_1010 v0 ~v1 = du_maxCollateralInputs_1010 v0
du_maxCollateralInputs_1010 :: T_PParams_244 -> Integer
du_maxCollateralInputs_1010 v0
  = coe d_maxCollateralInputs_316 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1012 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_maxHeaderSize_1012 v0 ~v1 = du_maxHeaderSize_1012 v0
du_maxHeaderSize_1012 :: T_PParams_244 -> Integer
du_maxHeaderSize_1012 v0 = coe d_maxHeaderSize_308 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1014 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> AgdaAny
d_maxTxExUnits_1014 v0 ~v1 = du_maxTxExUnits_1014 v0
du_maxTxExUnits_1014 :: T_PParams_244 -> AgdaAny
du_maxTxExUnits_1014 v0 = coe d_maxTxExUnits_310 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1016 :: T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_maxTxSize_1016 v0 ~v1 = du_maxTxSize_1016 v0
du_maxTxSize_1016 :: T_PParams_244 -> Integer
du_maxTxSize_1016 v0 = coe d_maxTxSize_306 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1018 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_maxValSize_1018 v0 ~v1 = du_maxValSize_1018 v0
du_maxValSize_1018 :: T_PParams_244 -> Integer
du_maxValSize_1018 v0 = coe d_maxValSize_314 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1020 ::
  T_PParams_244 ->
  T_PParamsUpdate_452 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1020 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1020 v0
du_minFeeRefScriptCoinsPerByte_1020 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1020 v0
  = coe d_minFeeRefScriptCoinsPerByte_332 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1022 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_minUTxOValue_1022 v0 ~v1 = du_minUTxOValue_1022 v0
du_minUTxOValue_1022 :: T_PParams_244 -> Integer
du_minUTxOValue_1022 v0 = coe d_minUTxOValue_334 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.nopt
d_nopt_1024 :: T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_nopt_1024 v0 ~v1 = du_nopt_1024 v0
du_nopt_1024 :: T_PParams_244 -> Integer
du_nopt_1024 v0 = coe d_nopt_338 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1026 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> Integer
d_poolDeposit_1026 v0 ~v1 = du_poolDeposit_1026 v0
du_poolDeposit_1026 :: T_PParams_244 -> Integer
du_poolDeposit_1026 v0 = coe d_poolDeposit_326 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1028 ::
  T_PParams_244 -> T_PParamsUpdate_452 -> T_PoolThresholds_222
d_poolThresholds_1028 v0 ~v1 = du_poolThresholds_1028 v0
du_poolThresholds_1028 :: T_PParams_244 -> T_PoolThresholds_222
du_poolThresholds_1028 v0 = coe d_poolThresholds_346 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.prices
d_prices_1030 :: T_PParams_244 -> T_PParamsUpdate_452 -> AgdaAny
d_prices_1030 v0 ~v1 = du_prices_1030 v0
du_prices_1030 :: T_PParams_244 -> AgdaAny
du_prices_1030 v0 = coe d_prices_330 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.pv
d_pv_1032 ::
  T_PParams_244 ->
  T_PParamsUpdate_452 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1032 v0 ~v1 = du_pv_1032 v0
du_pv_1032 ::
  T_PParams_244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1032 v0 = coe d_pv_318 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.Emax
d_Emax_1036 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_1036 v0 = coe d_Emax_546 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a
d_a_1038 :: T_PParamsUpdate_452 -> Maybe Integer
d_a_1038 v0 = coe d_a_528 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a0
d_a0_1040 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1040 v0 = coe d_a0_544 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.b
d_b_1042 :: T_PParamsUpdate_452 -> Maybe Integer
d_b_1042 v0 = coe d_b_530 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1044 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_1044 v0 = coe d_ccMaxTermLength_568 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1046 :: T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_1046 v0 = coe d_ccMinSize_566 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1048 :: T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_1048 v0 = coe d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1050 :: T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_1050 v0
  = coe d_collateralPercentage_550 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1052 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_1052 v0 = coe d_costmdls_552 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1054 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_1054 v0 = coe d_drepActivity_564 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1056 :: T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_1056 v0 = coe d_drepDeposit_562 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1058 ::
  T_PParamsUpdate_452 -> Maybe T_DrepThresholds_180
d_drepThresholds_1058 v0 = coe d_drepThresholds_554 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1060 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_1060 v0 = coe d_govActionDeposit_560 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1062 :: T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_1062 v0 = coe d_govActionLifetime_558 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1064 :: T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_1064 v0 = coe d_keyDeposit_532 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1066 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_1066 v0 = coe d_maxBlockExUnits_524 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1068 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_1068 v0 = coe d_maxBlockSize_512 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1070 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_1070 v0
  = coe d_maxCollateralInputs_520 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1072 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_1072 v0 = coe d_maxHeaderSize_516 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1074 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_1074 v0 = coe d_maxTxExUnits_522 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1076 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_1076 v0 = coe d_maxTxSize_514 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1078 :: T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_1078 v0 = coe d_maxValSize_518 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1080 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1080 v0
  = coe d_minFeeRefScriptCoinsPerByte_538 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1082 :: T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_1082 v0 = coe d_minUTxOValue_542 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.nopt
d_nopt_1084 :: T_PParamsUpdate_452 -> Maybe Integer
d_nopt_1084 v0 = coe d_nopt_548 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1086 :: T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_1086 v0 = coe d_poolDeposit_534 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1088 ::
  T_PParamsUpdate_452 -> Maybe T_PoolThresholds_222
d_poolThresholds_1088 v0 = coe d_poolThresholds_556 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.prices
d_prices_1090 :: T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_1090 v0 = coe d_prices_540 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.pv
d_pv_1092 ::
  T_PParamsUpdate_452 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1092 v0 = coe d_pv_526 (coe v0)
-- Ledger.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1094 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1094 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1094 v1 v2
du_DecEq'45'PParamsUpdate_1094 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1094 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_622089 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParamsUpdate'46'constructor_622089 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
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
                                                                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                       (coe
                                                                                                                                          v69)
                                                                                                                                       (coe
                                                                                                                                          v35)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                    (coe
                                                                                                                                       v68)
                                                                                                                                    (coe
                                                                                                                                       v34)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    v67)
                                                                                                                                 (coe
                                                                                                                                    v33)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                              (coe
                                                                                                                                 v66)
                                                                                                                              (coe
                                                                                                                                 v32)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                           (coe
                                                                                                                              v65)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                        (coe
                                                                                                                           v64)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                                           (coe
                                                                                                                              v0)))
                                                                                                                     (coe
                                                                                                                        v63)
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                     (coe
                                                                                                                        du_DecEq'45'DrepThresholds_496))
                                                                                                                  (coe
                                                                                                                     v62)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                                                        (coe
                                                                                                                           v1))))
                                                                                                               (coe
                                                                                                                  v61)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                            (coe
                                                                                                               v60)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                            (coe
                                                                                                               du_DecEq'45'PoolThresholds_438))
                                                                                                         (coe
                                                                                                            v59)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                         (coe
                                                                                                            du_DecEq'45'DrepThresholds_436))
                                                                                                      (coe
                                                                                                         v58)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                                            (coe
                                                                                                               v1))))
                                                                                                   (coe
                                                                                                      v57)
                                                                                                   (coe
                                                                                                      v23)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                (coe
                                                                                                   v56)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                             (coe
                                                                                                v55)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe v50)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                       (coe v53)
                                                                                       (coe v19)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                    (coe v52)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                          (coe
                                                                                             v1))))
                                                                                 (coe v47)
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                       (coe v1))))
                                                                              (coe v50) (coe v16)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                           (coe v49) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                        (coe
                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                        (coe v48) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                        (coe
                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                     (coe v47) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                  (coe v46) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                               (coe v45) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  () erased () erased
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                            (coe v44) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_454
                                                                  (coe v1))))
                                                         (coe v43) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_454
                                                               (coe v1))))
                                                      (coe v42) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                   (coe v41) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                (coe v40) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                             (coe v39) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                          (coe v38) (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                       (coe v37) (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v70 ->
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
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.pvCanFollow?
d_pvCanFollow'63'_1100 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1100 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1100 v3 v4
du_pvCanFollow'63'_1100 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1100 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                     erased
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                        (coe
                           eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                           (coe addInt (coe (1 :: Integer)) (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
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
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                               erased erased
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                  v5 v6)) in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                         -> if coe v10
                                              then coe
                                                     seq (coe v11)
                                                     (let v12
                                                            = coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                erased
                                                                (\ v12 ->
                                                                   coe
                                                                     MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v1)))
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe
                                                                      eqInt
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
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
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                    erased erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v1))
                                                                                       (addInt
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
                                                                                                   C_canFollowMajor_164)))
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
                                                                                                    C_canFollowMajor_164)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                              else coe
                                                     seq (coe v11)
                                                     (let v12
                                                            = coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                erased
                                                                (\ v12 ->
                                                                   coe
                                                                     MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v1)))
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe
                                                                      eqInt
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
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
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                    erased erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v1))
                                                                                       (addInt
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
                                                                                                   C_canFollowMinor_166)))
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
                                                                                                    C_canFollowMinor_166)))
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
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                 erased
                                                                 (\ v12 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1)))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe
                                                                       eqInt
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v1))
                                                                       (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
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
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                     erased erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v1))
                                                                                        (addInt
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
                                                                                                    C_canFollowMajor_164)))
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
                                                                                                     C_canFollowMajor_164)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                               else coe
                                                      seq (coe v11)
                                                      (let v12
                                                             = coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                 erased
                                                                 (\ v12 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1)))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe
                                                                       eqInt
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v1))
                                                                       (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
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
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                     erased erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v1))
                                                                                        (addInt
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
                                                                                                    C_canFollowMinor_166)))
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
                                                                                                     C_canFollowMinor_166)))
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
d_PParamsDiff_1148 a0 a1 a2 = ()
data T_PParamsDiff_1148
  = C_PParamsDiff'46'constructor_1161271 (T_PParams_244 ->
                                          AgdaAny -> T_PParams_244)
                                         (AgdaAny -> [T_PParamGroup_168])
                                         (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_1162 :: T_PParamsDiff_1148 -> ()
d_UpdateT_1162 = erased
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1164 ::
  T_PParamsDiff_1148 -> T_PParams_244 -> AgdaAny -> T_PParams_244
d_applyUpdate_1164 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1161271 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_1166 ::
  T_PParamsDiff_1148 -> AgdaAny -> [T_PParamGroup_168]
d_updateGroups_1166 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1161271 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1172 ::
  T_PParamsDiff_1148 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1172 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1161271 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1174 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsDiff_1148 -> AgdaAny -> ()
d_ppdWellFormed_1174 = erased
-- Ledger.PParams.GovParams
d_GovParams_1180 a0 a1 a2 = ()
data T_GovParams_1180
  = C_GovParams'46'constructor_1162021 T_PParamsDiff_1148
                                       MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_1186 :: T_PParamsDiff_1148 -> ()
d_UpdateT_1186 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_1188 ::
  T_PParamsDiff_1148 -> T_PParams_244 -> AgdaAny -> T_PParams_244
d_applyUpdate_1188 v0 = coe d_applyUpdate_1164 (coe v0)
-- Ledger.PParams._.ppWF?
d_ppWF'63'_1190 ::
  T_PParamsDiff_1148 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1190 v0 = coe d_ppWF'63'_1172 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_1192 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_PParamsDiff_1148 -> AgdaAny -> ()
d_ppdWellFormed_1192 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_1194 ::
  T_PParamsDiff_1148 -> AgdaAny -> [T_PParamGroup_168]
d_updateGroups_1194 v0 = coe d_updateGroups_1166 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_1212 :: T_GovParams_1180 -> T_PParamsDiff_1148
d_ppUpd_1212 v0
  = case coe v0 of
      C_GovParams'46'constructor_1162021 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_1216 :: T_GovParams_1180 -> ()
d_UpdateT_1216 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_1218 ::
  T_GovParams_1180 -> T_PParams_244 -> AgdaAny -> T_PParams_244
d_applyUpdate_1218 v0
  = coe d_applyUpdate_1164 (coe d_ppUpd_1212 (coe v0))
-- Ledger.PParams.GovParams._.ppWF?
d_ppWF'63'_1220 ::
  T_GovParams_1180 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1220 v0
  = coe d_ppWF'63'_1172 (coe d_ppUpd_1212 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1222 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  T_GovParams_1180 -> AgdaAny -> ()
d_ppdWellFormed_1222 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_1224 ::
  T_GovParams_1180 -> AgdaAny -> [T_PParamGroup_168]
d_updateGroups_1224 v0
  = coe d_updateGroups_1166 (coe d_ppUpd_1212 (coe v0))
-- Ledger.PParams.GovParams.ppHashingScheme
d_ppHashingScheme_1226 ::
  T_GovParams_1180 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1226 v0
  = case coe v0 of
      C_GovParams'46'constructor_1162021 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.DecEq-T
d_DecEq'45'T_1230 ::
  T_GovParams_1180 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1230 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe d_ppHashingScheme_1226 (coe v0))
-- Ledger.PParams.GovParams._.DecEq-THash
d_DecEq'45'THash_1232 ::
  T_GovParams_1180 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1232 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe d_ppHashingScheme_1226 (coe v0))
-- Ledger.PParams.GovParams._.THash
d_THash_1234 :: T_GovParams_1180 -> ()
d_THash_1234 = erased
-- Ledger.PParams.GovParams._.Show-THash
d_Show'45'THash_1236 ::
  T_GovParams_1180 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1236 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe d_ppHashingScheme_1226 (coe v0))
-- Ledger.PParams.GovParams._.T-Hashable
d_T'45'Hashable_1238 ::
  T_GovParams_1180 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1238 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe d_ppHashingScheme_1226 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1240 ::
  T_GovParams_1180 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1240 v0
  = case coe v0 of
      C_GovParams'46'constructor_1162021 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
