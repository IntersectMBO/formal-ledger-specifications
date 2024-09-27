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

module MAlonzo.Code.Ledger.Conway.Conformance.PParams where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.Tactic.Derive.Show

-- Ledger.Conway.Conformance.PParams.Acnt
d_Acnt_150 a0 a1 a2 = ()
data T_Acnt_150 = C_'10214'_'44'_'10215''7491'_160 Integer Integer
-- Ledger.Conway.Conformance.PParams.Acnt.treasury
d_treasury_156 :: T_Acnt_150 -> Integer
d_treasury_156 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_160 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.Acnt.reserves
d_reserves_158 :: T_Acnt_150 -> Integer
d_reserves_158 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_160 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.ProtVer
d_ProtVer_162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  ()
d_ProtVer_162 = erased
-- Ledger.Conway.Conformance.PParams.Show-ProtVer
d_Show'45'ProtVer_164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_164 ~v0 = du_Show'45'ProtVer_164
du_Show'45'ProtVer_164 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_164
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Conformance.PParams.pvCanFollow
d_pvCanFollow_166 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_166
  = C_canFollowMajor_168 | C_canFollowMinor_170
-- Ledger.Conway.Conformance.PParams.PParamGroup
d_PParamGroup_172 a0 a1 a2 = ()
data T_PParamGroup_172
  = C_NetworkGroup_174 | C_EconomicGroup_176 | C_TechnicalGroup_178 |
    C_GovernanceGroup_180 | C_SecurityGroup_182
-- Ledger.Conway.Conformance.PParams.DrepThresholds
d_DrepThresholds_184 a0 a1 a2 = ()
data T_DrepThresholds_184
  = C_DrepThresholds'46'constructor_1851 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P1
d_P1_206 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_206 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P2a
d_P2a_208 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_208 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P2b
d_P2b_210 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_210 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P3
d_P3_212 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_212 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P4
d_P4_214 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_214 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P5a
d_P5a_216 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_216 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P5b
d_P5b_218 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_218 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P5c
d_P5c_220 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_220 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P5d
d_P5d_222 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_222 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.DrepThresholds.P6
d_P6_224 ::
  T_DrepThresholds_184 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_224 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PoolThresholds
d_PoolThresholds_226 a0 a1 a2 = ()
data T_PoolThresholds_226
  = C_PoolThresholds'46'constructor_2415 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Conway.Conformance.PParams.PoolThresholds.Q1
d_Q1_238 ::
  T_PoolThresholds_226 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_238 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2415 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PoolThresholds.Q2a
d_Q2a_240 ::
  T_PoolThresholds_226 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_240 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2415 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PoolThresholds.Q2b
d_Q2b_242 ::
  T_PoolThresholds_226 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_242 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2415 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PoolThresholds.Q4
d_Q4_244 ::
  T_PoolThresholds_226 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_244 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2415 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PoolThresholds.Q5e
d_Q5e_246 ::
  T_PoolThresholds_226 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_246 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2415 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams
d_PParams_248 a0 a1 a2 = ()
data T_PParams_248
  = C_PParams'46'constructor_3863 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_226 T_DrepThresholds_184 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.Conway.Conformance.PParams.PParams.maxBlockSize
d_maxBlockSize_316 :: T_PParams_248 -> Integer
d_maxBlockSize_316 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxTxSize
d_maxTxSize_318 :: T_PParams_248 -> Integer
d_maxTxSize_318 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxHeaderSize
d_maxHeaderSize_320 :: T_PParams_248 -> Integer
d_maxHeaderSize_320 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxTxExUnits
d_maxTxExUnits_322 :: T_PParams_248 -> AgdaAny
d_maxTxExUnits_322 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_324 :: T_PParams_248 -> AgdaAny
d_maxBlockExUnits_324 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxValSize
d_maxValSize_326 :: T_PParams_248 -> Integer
d_maxValSize_326 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_328 :: T_PParams_248 -> Integer
d_maxCollateralInputs_328 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.pv
d_pv_330 :: T_PParams_248 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_330 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.a
d_a_332 :: T_PParams_248 -> Integer
d_a_332 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.b
d_b_334 :: T_PParams_248 -> Integer
d_b_334 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.keyDeposit
d_keyDeposit_336 :: T_PParams_248 -> Integer
d_keyDeposit_336 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.poolDeposit
d_poolDeposit_338 :: T_PParams_248 -> Integer
d_poolDeposit_338 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_340 :: T_PParams_248 -> Integer
d_coinsPerUTxOByte_340 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.prices
d_prices_342 :: T_PParams_248 -> AgdaAny
d_prices_342 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_344 ::
  T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_344 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_346 :: T_PParams_248 -> Integer
d_maxRefScriptSizePerTx_346 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_348 :: T_PParams_248 -> Integer
d_maxRefScriptSizePerBlock_348 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.refScriptCostStride
d_refScriptCostStride_350 :: T_PParams_248 -> Integer
d_refScriptCostStride_350 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_352 ::
  T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_352 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.minUTxOValue
d_minUTxOValue_354 :: T_PParams_248 -> Integer
d_minUTxOValue_354 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.Emax
d_Emax_356 :: T_PParams_248 -> AgdaAny
d_Emax_356 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.nopt
d_nopt_358 :: T_PParams_248 -> Integer
d_nopt_358 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.a0
d_a0_360 :: T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_360 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.collateralPercentage
d_collateralPercentage_362 :: T_PParams_248 -> Integer
d_collateralPercentage_362 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.costmdls
d_costmdls_364 :: T_PParams_248 -> AgdaAny
d_costmdls_364 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.poolThresholds
d_poolThresholds_366 :: T_PParams_248 -> T_PoolThresholds_226
d_poolThresholds_366 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.drepThresholds
d_drepThresholds_368 :: T_PParams_248 -> T_DrepThresholds_184
d_drepThresholds_368 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.ccMinSize
d_ccMinSize_370 :: T_PParams_248 -> Integer
d_ccMinSize_370 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_372 :: T_PParams_248 -> Integer
d_ccMaxTermLength_372 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.govActionLifetime
d_govActionLifetime_374 :: T_PParams_248 -> Integer
d_govActionLifetime_374 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.govActionDeposit
d_govActionDeposit_376 :: T_PParams_248 -> Integer
d_govActionDeposit_376 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.drepDeposit
d_drepDeposit_378 :: T_PParams_248 -> Integer
d_drepDeposit_378 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParams.drepActivity
d_drepActivity_380 :: T_PParams_248 -> AgdaAny
d_drepActivity_380 v0
  = case coe v0 of
      C_PParams'46'constructor_3863 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.positivePParams
d_positivePParams_382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParams_248 -> [Integer]
d_positivePParams_382 ~v0 ~v1 ~v2 v3 = du_positivePParams_382 v3
du_positivePParams_382 :: T_PParams_248 -> [Integer]
du_positivePParams_382 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_316 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_318 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_320 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_326 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_refScriptCostStride_350 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_minUTxOValue_354 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_poolDeposit_338 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_collateralPercentage_362 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_ccMaxTermLength_372 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionLifetime_374 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_govActionDeposit_376 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_drepDeposit_378 (coe v0))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))
-- Ledger.Conway.Conformance.PParams._._.Emax
d_Emax_392 :: T_PParams_248 -> AgdaAny
d_Emax_392 v0 = coe d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.a
d_a_394 :: T_PParams_248 -> Integer
d_a_394 v0 = coe d_a_332 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.a0
d_a0_396 :: T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_396 v0 = coe d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.b
d_b_398 :: T_PParams_248 -> Integer
d_b_398 v0 = coe d_b_334 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.ccMaxTermLength
d_ccMaxTermLength_400 :: T_PParams_248 -> Integer
d_ccMaxTermLength_400 v0 = coe d_ccMaxTermLength_372 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.ccMinSize
d_ccMinSize_402 :: T_PParams_248 -> Integer
d_ccMinSize_402 v0 = coe d_ccMinSize_370 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_404 :: T_PParams_248 -> Integer
d_coinsPerUTxOByte_404 v0 = coe d_coinsPerUTxOByte_340 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.collateralPercentage
d_collateralPercentage_406 :: T_PParams_248 -> Integer
d_collateralPercentage_406 v0
  = coe d_collateralPercentage_362 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.costmdls
d_costmdls_408 :: T_PParams_248 -> AgdaAny
d_costmdls_408 v0 = coe d_costmdls_364 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.drepActivity
d_drepActivity_410 :: T_PParams_248 -> AgdaAny
d_drepActivity_410 v0 = coe d_drepActivity_380 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.drepDeposit
d_drepDeposit_412 :: T_PParams_248 -> Integer
d_drepDeposit_412 v0 = coe d_drepDeposit_378 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.drepThresholds
d_drepThresholds_414 :: T_PParams_248 -> T_DrepThresholds_184
d_drepThresholds_414 v0 = coe d_drepThresholds_368 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.govActionDeposit
d_govActionDeposit_416 :: T_PParams_248 -> Integer
d_govActionDeposit_416 v0 = coe d_govActionDeposit_376 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.govActionLifetime
d_govActionLifetime_418 :: T_PParams_248 -> Integer
d_govActionLifetime_418 v0 = coe d_govActionLifetime_374 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.keyDeposit
d_keyDeposit_420 :: T_PParams_248 -> Integer
d_keyDeposit_420 v0 = coe d_keyDeposit_336 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxBlockExUnits
d_maxBlockExUnits_422 :: T_PParams_248 -> AgdaAny
d_maxBlockExUnits_422 v0 = coe d_maxBlockExUnits_324 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxBlockSize
d_maxBlockSize_424 :: T_PParams_248 -> Integer
d_maxBlockSize_424 v0 = coe d_maxBlockSize_316 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxCollateralInputs
d_maxCollateralInputs_426 :: T_PParams_248 -> Integer
d_maxCollateralInputs_426 v0
  = coe d_maxCollateralInputs_328 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxHeaderSize
d_maxHeaderSize_428 :: T_PParams_248 -> Integer
d_maxHeaderSize_428 v0 = coe d_maxHeaderSize_320 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_430 :: T_PParams_248 -> Integer
d_maxRefScriptSizePerBlock_430 v0
  = coe d_maxRefScriptSizePerBlock_348 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_432 :: T_PParams_248 -> Integer
d_maxRefScriptSizePerTx_432 v0
  = coe d_maxRefScriptSizePerTx_346 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxTxExUnits
d_maxTxExUnits_434 :: T_PParams_248 -> AgdaAny
d_maxTxExUnits_434 v0 = coe d_maxTxExUnits_322 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxTxSize
d_maxTxSize_436 :: T_PParams_248 -> Integer
d_maxTxSize_436 v0 = coe d_maxTxSize_318 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.maxValSize
d_maxValSize_438 :: T_PParams_248 -> Integer
d_maxValSize_438 v0 = coe d_maxValSize_326 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_440 ::
  T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_440 v0
  = coe d_minFeeRefScriptCoinsPerByte_344 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.minUTxOValue
d_minUTxOValue_442 :: T_PParams_248 -> Integer
d_minUTxOValue_442 v0 = coe d_minUTxOValue_354 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.nopt
d_nopt_444 :: T_PParams_248 -> Integer
d_nopt_444 v0 = coe d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.poolDeposit
d_poolDeposit_446 :: T_PParams_248 -> Integer
d_poolDeposit_446 v0 = coe d_poolDeposit_338 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.poolThresholds
d_poolThresholds_448 :: T_PParams_248 -> T_PoolThresholds_226
d_poolThresholds_448 v0 = coe d_poolThresholds_366 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.prices
d_prices_450 :: T_PParams_248 -> AgdaAny
d_prices_450 v0 = coe d_prices_342 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.pv
d_pv_452 :: T_PParams_248 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_452 v0 = coe d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_454 ::
  T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_454 v0
  = coe d_refScriptCostMultiplier_352 (coe v0)
-- Ledger.Conway.Conformance.PParams._._.refScriptCostStride
d_refScriptCostStride_456 :: T_PParams_248 -> Integer
d_refScriptCostStride_456 v0
  = coe d_refScriptCostStride_350 (coe v0)
-- Ledger.Conway.Conformance.PParams.paramsWellFormed
d_paramsWellFormed_458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParams_248 -> ()
d_paramsWellFormed_458 = erased
-- Ledger.Conway.Conformance.PParams.paramsWF-elim
d_paramsWF'45'elim_466 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_466 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_466 v5
du_paramsWF'45'elim_466 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_466 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.Conway.Conformance.PParams.refScriptCostStride>0
d_refScriptCostStride'62'0_488 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_488 ~v0 ~v1 ~v2 v3 ~v4
  = du_refScriptCostStride'62'0_488 v3
du_refScriptCostStride'62'0_488 ::
  T_PParams_248 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_488 v0
  = coe
      du_paramsWF'45'elim_466 (coe d_refScriptCostStride_350 (coe v0))
-- Ledger.Conway.Conformance.PParams.Show-ℚ
d_Show'45'ℚ_494 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_494 ~v0 = du_Show'45'ℚ_494
du_Show'45'ℚ_494 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_494
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Conformance.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_500 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_500
du_DecEq'45'DrepThresholds_500 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_500
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_1851 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
-- Ledger.Conway.Conformance.PParams.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_502 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_502
du_DecEq'45'PoolThresholds_502 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_502
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_2415 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_2415 v7 v8 v9 v10 v11
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
-- Ledger.Conway.Conformance.PParams.DecEq-PParams
d_DecEq'45'PParams_504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_504 ~v0 v1 v2 = du_DecEq'45'PParams_504 v1 v2
du_DecEq'45'PParams_504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_504 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3863 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     (\ v36 ->
                        case coe v36 of
                          C_PParams'46'constructor_3863 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69
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
                                                                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
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
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                                                           (coe
                                                                                                                              v65)
                                                                                                                           (coe
                                                                                                                              v31)))
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
                                                                                                                                                      (coe
                                                                                                                                                         d_P6_224
                                                                                                                                                         (coe
                                                                                                                                                            v29))
                                                                                                                                                      (coe
                                                                                                                                                         d_P6_224
                                                                                                                                                         (coe
                                                                                                                                                            v63))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                                   (coe
                                                                                                                                                      d_P5d_222
                                                                                                                                                      (coe
                                                                                                                                                         v29))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5d_222
                                                                                                                                                      (coe
                                                                                                                                                         v63))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                                (coe
                                                                                                                                                   d_P5c_220
                                                                                                                                                   (coe
                                                                                                                                                      v29))
                                                                                                                                                (coe
                                                                                                                                                   d_P5c_220
                                                                                                                                                   (coe
                                                                                                                                                      v63))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                             (coe
                                                                                                                                                d_P5b_218
                                                                                                                                                (coe
                                                                                                                                                   v29))
                                                                                                                                             (coe
                                                                                                                                                d_P5b_218
                                                                                                                                                (coe
                                                                                                                                                   v63))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                          (coe
                                                                                                                                             d_P5a_216
                                                                                                                                             (coe
                                                                                                                                                v29))
                                                                                                                                          (coe
                                                                                                                                             d_P5a_216
                                                                                                                                             (coe
                                                                                                                                                v63))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                       (coe
                                                                                                                                          d_P4_214
                                                                                                                                          (coe
                                                                                                                                             v29))
                                                                                                                                       (coe
                                                                                                                                          d_P4_214
                                                                                                                                          (coe
                                                                                                                                             v63))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                    (coe
                                                                                                                                       d_P3_212
                                                                                                                                       (coe
                                                                                                                                          v29))
                                                                                                                                    (coe
                                                                                                                                       d_P3_212
                                                                                                                                       (coe
                                                                                                                                          v63))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                 (coe
                                                                                                                                    d_P2b_210
                                                                                                                                    (coe
                                                                                                                                       v29))
                                                                                                                                 (coe
                                                                                                                                    d_P2b_210
                                                                                                                                    (coe
                                                                                                                                       v63))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                              (coe
                                                                                                                                 d_P2a_208
                                                                                                                                 (coe
                                                                                                                                    v29))
                                                                                                                              (coe
                                                                                                                                 d_P2a_208
                                                                                                                                 (coe
                                                                                                                                    v63))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                           (coe
                                                                                                                              d_P1_206
                                                                                                                              (coe
                                                                                                                                 v29))
                                                                                                                           (coe
                                                                                                                              d_P1_206
                                                                                                                              (coe
                                                                                                                                 v63))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
                                                                                                                        erased
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
                                                                                                                                    (coe
                                                                                                                                       d_Q5e_246
                                                                                                                                       (coe
                                                                                                                                          v28))
                                                                                                                                    (coe
                                                                                                                                       d_Q5e_246
                                                                                                                                       (coe
                                                                                                                                          v62))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                 (coe
                                                                                                                                    d_Q4_244
                                                                                                                                    (coe
                                                                                                                                       v28))
                                                                                                                                 (coe
                                                                                                                                    d_Q4_244
                                                                                                                                    (coe
                                                                                                                                       v62))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                              (coe
                                                                                                                                 d_Q2b_242
                                                                                                                                 (coe
                                                                                                                                    v28))
                                                                                                                              (coe
                                                                                                                                 d_Q2b_242
                                                                                                                                 (coe
                                                                                                                                    v62))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                           (coe
                                                                                                                              d_Q2a_240
                                                                                                                              (coe
                                                                                                                                 v28))
                                                                                                                           (coe
                                                                                                                              d_Q2a_240
                                                                                                                              (coe
                                                                                                                                 v62))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                        (coe
                                                                                                                           d_Q1_238
                                                                                                                           (coe
                                                                                                                              v28))
                                                                                                                        (coe
                                                                                                                           d_Q1_238
                                                                                                                           (coe
                                                                                                                              v62))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
                                                                                                                     erased
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
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                         erased)
                                                                                                                                      erased)
                                                                                                                                   erased)
                                                                                                                                erased)
                                                                                                                             erased)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
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
                                                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   v57
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
                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                                                                                       (coe v53)
                                                                                       (coe v19)))
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
                                                                              (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
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
                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                                         (coe v1)))
                                                   v41 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                                      (coe v1)))
                                                v40 v6))
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
-- Ledger.Conway.Conformance.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_506 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_506
du_DecEq'45'PParamGroup_506 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_506
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_174
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_174
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
                          C_EconomicGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_180
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_182
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_176
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_176
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
                          C_TechnicalGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_180
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_182
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_178
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_178
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
                          C_GovernanceGroup_180
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_182
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_180
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_180
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
                          C_SecurityGroup_182
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_182
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_178
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_180
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_182
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
-- Ledger.Conway.Conformance.PParams.Show-DrepThresholds
d_Show'45'DrepThresholds_508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_508 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_508
du_Show'45'DrepThresholds_508 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_508
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                           (coe
                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
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
-- Ledger.Conway.Conformance.PParams.Show-PoolThresholds
d_Show'45'PoolThresholds_510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_510 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_510
du_Show'45'PoolThresholds_510 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_510
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_2415 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                           (coe
                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
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
-- Ledger.Conway.Conformance.PParams.Show-PParams
d_Show'45'PParams_512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_512 ~v0 v1 v2 = du_Show'45'PParams_512 v1 v2
du_Show'45'PParams_512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_512 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3863 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                           (coe
                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                (coe
                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                   (coe
                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                            (coe
                                                               MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                               (coe
                                                                  MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                  (coe
                                                                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                        (coe
                                                                           MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                           (coe
                                                                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                              (coe
                                                                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
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
                                                                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                                                                                                        (coe
                                                                                                                           v1)))
                                                                                                                  v6)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
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
                                                                                                      MAlonzo.Code.Data.String.Base.d_parens_46
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
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
                                                                           MAlonzo.Code.Data.Nat.Show.d_show_56
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
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                  v22)))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Class.Show.Core.d_show_16
                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Epoch_64
                                                                  (coe v0))
                                                               v23)))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Show.d_show_56
                                                            v24)))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe v25))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v26)))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Class.Show.Core.d_show_16
                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                                         (coe v1)))
                                                   v27)))
                                          (coe
                                             MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                (coe
                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                   (coe
                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                            (coe ("constructor" :: Data.Text.Text))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_Q1_238 (coe v28)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_240 (coe v28)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_242 (coe v28)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_244 (coe v28)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5e_246 (coe v28)))))))
                                       (coe
                                          MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                (coe
                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                   (coe
                                                      MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                            (coe
                                                               MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                               (coe
                                                                  MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                  (coe
                                                                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                        (coe
                                                                           ("constructor"
                                                                            ::
                                                                            Data.Text.Text))
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                           (coe
                                                                              MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                              (coe
                                                                                 d_P1_206
                                                                                 (coe v29)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_208
                                                                              (coe v29)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_210 (coe v29)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_212 (coe v29)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_214 (coe v29)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_216 (coe v29)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_218 (coe v29)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_220 (coe v29)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_222 (coe v29)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_224 (coe v29)))))))
                                    (coe
                                       MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                       (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v30)))
                                 (coe
                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                    (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v31)))
                              (coe
                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                 (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v32)))
                           (coe
                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                              (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v33)))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v34)))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Epoch_64
                              (coe v0))
                           v35))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_516 a0 a1 a2 = ()
data T_PParamsUpdate_516
  = C_PParamsUpdate'46'constructor_784873 (Maybe Integer)
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
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_184)
                                          (Maybe T_PoolThresholds_226) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_584 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxBlockSize_584 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_586 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxTxSize_586 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_588 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxHeaderSize_588 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_590 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxValSize_590 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_592 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxCollateralInputs_592 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_594 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxTxExUnits_594 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_596 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxBlockExUnits_596 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_598 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_598 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.a
d_a_600 :: T_PParamsUpdate_516 -> Maybe Integer
d_a_600 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.b
d_b_602 :: T_PParamsUpdate_516 -> Maybe Integer
d_b_602 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_604 :: T_PParamsUpdate_516 -> Maybe Integer
d_keyDeposit_604 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_606 :: T_PParamsUpdate_516 -> Maybe Integer
d_poolDeposit_606 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_608 :: T_PParamsUpdate_516 -> Maybe Integer
d_coinsPerUTxOByte_608 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_610 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_prices_610 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_612 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_612 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_614 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerTx_614 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_616 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerBlock_616 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_618 :: T_PParamsUpdate_516 -> Maybe Integer
d_refScriptCostStride_618 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_620 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_620 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_622 :: T_PParamsUpdate_516 -> Maybe Integer
d_minUTxOValue_622 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_624 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_624 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_626 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_Emax_626 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_628 :: T_PParamsUpdate_516 -> Maybe Integer
d_nopt_628 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_630 :: T_PParamsUpdate_516 -> Maybe Integer
d_collateralPercentage_630 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_632 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_costmdls_632 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_634 ::
  T_PParamsUpdate_516 -> Maybe T_DrepThresholds_184
d_drepThresholds_634 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_636 ::
  T_PParamsUpdate_516 -> Maybe T_PoolThresholds_226
d_poolThresholds_636 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_638 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionLifetime_638 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_640 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionDeposit_640 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_642 :: T_PParamsUpdate_516 -> Maybe Integer
d_drepDeposit_642 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_644 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_drepActivity_644 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_646 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMinSize_646 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_648 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMaxTermLength_648 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_784873 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 -> ()
d_paramsUpdateWellFormed_650 = erased
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.Emax
d_Emax_660 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_Emax_660 v0 = coe d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.a
d_a_662 :: T_PParamsUpdate_516 -> Maybe Integer
d_a_662 v0 = coe d_a_600 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.a0
d_a0_664 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_664 v0 = coe d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.b
d_b_666 :: T_PParamsUpdate_516 -> Maybe Integer
d_b_666 v0 = coe d_b_602 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_668 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMaxTermLength_668 v0 = coe d_ccMaxTermLength_648 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_670 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMinSize_670 v0 = coe d_ccMinSize_646 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_672 :: T_PParamsUpdate_516 -> Maybe Integer
d_coinsPerUTxOByte_672 v0 = coe d_coinsPerUTxOByte_608 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_674 :: T_PParamsUpdate_516 -> Maybe Integer
d_collateralPercentage_674 v0
  = coe d_collateralPercentage_630 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.costmdls
d_costmdls_676 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_costmdls_676 v0 = coe d_costmdls_632 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_678 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_drepActivity_678 v0 = coe d_drepActivity_644 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_680 :: T_PParamsUpdate_516 -> Maybe Integer
d_drepDeposit_680 v0 = coe d_drepDeposit_642 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_682 ::
  T_PParamsUpdate_516 -> Maybe T_DrepThresholds_184
d_drepThresholds_682 v0 = coe d_drepThresholds_634 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_684 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionDeposit_684 v0 = coe d_govActionDeposit_640 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_686 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionLifetime_686 v0 = coe d_govActionLifetime_638 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_688 :: T_PParamsUpdate_516 -> Maybe Integer
d_keyDeposit_688 v0 = coe d_keyDeposit_604 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_690 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxBlockExUnits_690 v0 = coe d_maxBlockExUnits_596 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_692 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxBlockSize_692 v0 = coe d_maxBlockSize_584 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_694 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxCollateralInputs_694 v0
  = coe d_maxCollateralInputs_592 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_696 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxHeaderSize_696 v0 = coe d_maxHeaderSize_588 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_698 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerBlock_698 v0
  = coe d_maxRefScriptSizePerBlock_616 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_700 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerTx_700 v0
  = coe d_maxRefScriptSizePerTx_614 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_702 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxTxExUnits_702 v0 = coe d_maxTxExUnits_594 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_704 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxTxSize_704 v0 = coe d_maxTxSize_586 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_706 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxValSize_706 v0 = coe d_maxValSize_590 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_708 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_708 v0
  = coe d_minFeeRefScriptCoinsPerByte_612 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_710 :: T_PParamsUpdate_516 -> Maybe Integer
d_minUTxOValue_710 v0 = coe d_minUTxOValue_622 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.nopt
d_nopt_712 :: T_PParamsUpdate_516 -> Maybe Integer
d_nopt_712 v0 = coe d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_714 :: T_PParamsUpdate_516 -> Maybe Integer
d_poolDeposit_714 v0 = coe d_poolDeposit_606 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_716 ::
  T_PParamsUpdate_516 -> Maybe T_PoolThresholds_226
d_poolThresholds_716 v0 = coe d_poolThresholds_636 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.prices
d_prices_718 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_prices_718 v0 = coe d_prices_610 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.pv
d_pv_720 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_720 v0 = coe d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_722 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_722 v0
  = coe d_refScriptCostMultiplier_620 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_724 :: T_PParamsUpdate_516 -> Maybe Integer
d_refScriptCostStride_724 v0
  = coe d_refScriptCostStride_618 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_728 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_728 v3
du_paramsUpdateWellFormed'63'_728 ::
  T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_728 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_416
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_maxBlockSize_584 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_586 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_588 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_590 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_minUTxOValue_622 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_606 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_630 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_648 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_638 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_640 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_642 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_732 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 -> Bool
d_modifiesNetworkGroup_732 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_732 v3
du_modifiesNetworkGroup_732 :: T_PParamsUpdate_516 -> Bool
du_modifiesNetworkGroup_732 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_584 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_586 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_588 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_590 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_592 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_594 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_596 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_598 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.Emax
d_Emax_738 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_Emax_738 v0 = coe d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a
d_a_740 :: T_PParamsUpdate_516 -> Maybe Integer
d_a_740 v0 = coe d_a_600 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a0
d_a0_742 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_742 v0 = coe d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.b
d_b_744 :: T_PParamsUpdate_516 -> Maybe Integer
d_b_744 v0 = coe d_b_602 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_746 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMaxTermLength_746 v0 = coe d_ccMaxTermLength_648 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_748 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMinSize_748 v0 = coe d_ccMinSize_646 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_750 :: T_PParamsUpdate_516 -> Maybe Integer
d_coinsPerUTxOByte_750 v0 = coe d_coinsPerUTxOByte_608 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_752 :: T_PParamsUpdate_516 -> Maybe Integer
d_collateralPercentage_752 v0
  = coe d_collateralPercentage_630 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.costmdls
d_costmdls_754 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_costmdls_754 v0 = coe d_costmdls_632 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepActivity
d_drepActivity_756 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_drepActivity_756 v0 = coe d_drepActivity_644 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_758 :: T_PParamsUpdate_516 -> Maybe Integer
d_drepDeposit_758 v0 = coe d_drepDeposit_642 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_760 ::
  T_PParamsUpdate_516 -> Maybe T_DrepThresholds_184
d_drepThresholds_760 v0 = coe d_drepThresholds_634 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_762 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionDeposit_762 v0 = coe d_govActionDeposit_640 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_764 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionLifetime_764 v0 = coe d_govActionLifetime_638 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_766 :: T_PParamsUpdate_516 -> Maybe Integer
d_keyDeposit_766 v0 = coe d_keyDeposit_604 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_768 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxBlockExUnits_768 v0 = coe d_maxBlockExUnits_596 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_770 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxBlockSize_770 v0 = coe d_maxBlockSize_584 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_772 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxCollateralInputs_772 v0
  = coe d_maxCollateralInputs_592 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_774 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxHeaderSize_774 v0 = coe d_maxHeaderSize_588 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_776 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerBlock_776 v0
  = coe d_maxRefScriptSizePerBlock_616 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_778 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerTx_778 v0
  = coe d_maxRefScriptSizePerTx_614 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_780 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxTxExUnits_780 v0 = coe d_maxTxExUnits_594 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_782 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxTxSize_782 v0 = coe d_maxTxSize_586 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxValSize
d_maxValSize_784 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxValSize_784 v0 = coe d_maxValSize_590 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_786 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_786 v0
  = coe d_minFeeRefScriptCoinsPerByte_612 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_788 :: T_PParamsUpdate_516 -> Maybe Integer
d_minUTxOValue_788 v0 = coe d_minUTxOValue_622 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.nopt
d_nopt_790 :: T_PParamsUpdate_516 -> Maybe Integer
d_nopt_790 v0 = coe d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_792 :: T_PParamsUpdate_516 -> Maybe Integer
d_poolDeposit_792 v0 = coe d_poolDeposit_606 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_794 ::
  T_PParamsUpdate_516 -> Maybe T_PoolThresholds_226
d_poolThresholds_794 v0 = coe d_poolThresholds_636 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.prices
d_prices_796 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_prices_796 v0 = coe d_prices_610 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.pv
d_pv_798 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_798 v0 = coe d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_800 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_800 v0
  = coe d_refScriptCostMultiplier_620 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_802 :: T_PParamsUpdate_516 -> Maybe Integer
d_refScriptCostStride_802 v0
  = coe d_refScriptCostStride_618 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 -> Bool
d_modifiesEconomicGroup_804 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_804 v3
du_modifiesEconomicGroup_804 :: T_PParamsUpdate_516 -> Bool
du_modifiesEconomicGroup_804 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_600 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_602 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_604 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_606 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_coinsPerUTxOByte_608 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_minFeeRefScriptCoinsPerByte_612 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxRefScriptSizePerTx_614 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_maxRefScriptSizePerBlock_616 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_refScriptCostStride_618 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_refScriptCostMultiplier_620 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_prices_610 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_minUTxOValue_622 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.Emax
d_Emax_810 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_Emax_810 v0 = coe d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a
d_a_812 :: T_PParamsUpdate_516 -> Maybe Integer
d_a_812 v0 = coe d_a_600 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a0
d_a0_814 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_814 v0 = coe d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.b
d_b_816 :: T_PParamsUpdate_516 -> Maybe Integer
d_b_816 v0 = coe d_b_602 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_818 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMaxTermLength_818 v0 = coe d_ccMaxTermLength_648 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_820 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMinSize_820 v0 = coe d_ccMinSize_646 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_822 :: T_PParamsUpdate_516 -> Maybe Integer
d_coinsPerUTxOByte_822 v0 = coe d_coinsPerUTxOByte_608 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_824 :: T_PParamsUpdate_516 -> Maybe Integer
d_collateralPercentage_824 v0
  = coe d_collateralPercentage_630 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.costmdls
d_costmdls_826 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_costmdls_826 v0 = coe d_costmdls_632 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepActivity
d_drepActivity_828 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_drepActivity_828 v0 = coe d_drepActivity_644 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_830 :: T_PParamsUpdate_516 -> Maybe Integer
d_drepDeposit_830 v0 = coe d_drepDeposit_642 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_832 ::
  T_PParamsUpdate_516 -> Maybe T_DrepThresholds_184
d_drepThresholds_832 v0 = coe d_drepThresholds_634 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_834 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionDeposit_834 v0 = coe d_govActionDeposit_640 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_836 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionLifetime_836 v0 = coe d_govActionLifetime_638 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_838 :: T_PParamsUpdate_516 -> Maybe Integer
d_keyDeposit_838 v0 = coe d_keyDeposit_604 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_840 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxBlockExUnits_840 v0 = coe d_maxBlockExUnits_596 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_842 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxBlockSize_842 v0 = coe d_maxBlockSize_584 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_844 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxCollateralInputs_844 v0
  = coe d_maxCollateralInputs_592 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_846 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxHeaderSize_846 v0 = coe d_maxHeaderSize_588 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_848 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerBlock_848 v0
  = coe d_maxRefScriptSizePerBlock_616 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_850 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerTx_850 v0
  = coe d_maxRefScriptSizePerTx_614 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_852 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxTxExUnits_852 v0 = coe d_maxTxExUnits_594 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_854 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxTxSize_854 v0 = coe d_maxTxSize_586 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxValSize
d_maxValSize_856 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxValSize_856 v0 = coe d_maxValSize_590 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_858 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_858 v0
  = coe d_minFeeRefScriptCoinsPerByte_612 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_860 :: T_PParamsUpdate_516 -> Maybe Integer
d_minUTxOValue_860 v0 = coe d_minUTxOValue_622 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.nopt
d_nopt_862 :: T_PParamsUpdate_516 -> Maybe Integer
d_nopt_862 v0 = coe d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_864 :: T_PParamsUpdate_516 -> Maybe Integer
d_poolDeposit_864 v0 = coe d_poolDeposit_606 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_866 ::
  T_PParamsUpdate_516 -> Maybe T_PoolThresholds_226
d_poolThresholds_866 v0 = coe d_poolThresholds_636 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.prices
d_prices_868 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_prices_868 v0 = coe d_prices_610 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.pv
d_pv_870 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_870 v0 = coe d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_872 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_872 v0
  = coe d_refScriptCostMultiplier_620 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_874 :: T_PParamsUpdate_516 -> Maybe Integer
d_refScriptCostStride_874 v0
  = coe d_refScriptCostStride_618 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 -> Bool
d_modifiesTechnicalGroup_876 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_876 v3
du_modifiesTechnicalGroup_876 :: T_PParamsUpdate_516 -> Bool
du_modifiesTechnicalGroup_876 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_624 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_626 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_628 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_630 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_632 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.Emax
d_Emax_882 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_Emax_882 v0 = coe d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a
d_a_884 :: T_PParamsUpdate_516 -> Maybe Integer
d_a_884 v0 = coe d_a_600 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a0
d_a0_886 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_886 v0 = coe d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.b
d_b_888 :: T_PParamsUpdate_516 -> Maybe Integer
d_b_888 v0 = coe d_b_602 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_890 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMaxTermLength_890 v0 = coe d_ccMaxTermLength_648 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_892 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMinSize_892 v0 = coe d_ccMinSize_646 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_894 :: T_PParamsUpdate_516 -> Maybe Integer
d_coinsPerUTxOByte_894 v0 = coe d_coinsPerUTxOByte_608 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_896 :: T_PParamsUpdate_516 -> Maybe Integer
d_collateralPercentage_896 v0
  = coe d_collateralPercentage_630 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.costmdls
d_costmdls_898 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_costmdls_898 v0 = coe d_costmdls_632 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepActivity
d_drepActivity_900 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_drepActivity_900 v0 = coe d_drepActivity_644 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_902 :: T_PParamsUpdate_516 -> Maybe Integer
d_drepDeposit_902 v0 = coe d_drepDeposit_642 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_904 ::
  T_PParamsUpdate_516 -> Maybe T_DrepThresholds_184
d_drepThresholds_904 v0 = coe d_drepThresholds_634 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_906 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionDeposit_906 v0 = coe d_govActionDeposit_640 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_908 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionLifetime_908 v0 = coe d_govActionLifetime_638 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_910 :: T_PParamsUpdate_516 -> Maybe Integer
d_keyDeposit_910 v0 = coe d_keyDeposit_604 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_912 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxBlockExUnits_912 v0 = coe d_maxBlockExUnits_596 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_914 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxBlockSize_914 v0 = coe d_maxBlockSize_584 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_916 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxCollateralInputs_916 v0
  = coe d_maxCollateralInputs_592 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_918 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxHeaderSize_918 v0 = coe d_maxHeaderSize_588 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_920 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerBlock_920 v0
  = coe d_maxRefScriptSizePerBlock_616 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_922 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerTx_922 v0
  = coe d_maxRefScriptSizePerTx_614 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_924 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxTxExUnits_924 v0 = coe d_maxTxExUnits_594 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_926 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxTxSize_926 v0 = coe d_maxTxSize_586 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxValSize
d_maxValSize_928 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxValSize_928 v0 = coe d_maxValSize_590 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_930 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_930 v0
  = coe d_minFeeRefScriptCoinsPerByte_612 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_932 :: T_PParamsUpdate_516 -> Maybe Integer
d_minUTxOValue_932 v0 = coe d_minUTxOValue_622 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.nopt
d_nopt_934 :: T_PParamsUpdate_516 -> Maybe Integer
d_nopt_934 v0 = coe d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_936 :: T_PParamsUpdate_516 -> Maybe Integer
d_poolDeposit_936 v0 = coe d_poolDeposit_606 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_938 ::
  T_PParamsUpdate_516 -> Maybe T_PoolThresholds_226
d_poolThresholds_938 v0 = coe d_poolThresholds_636 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.prices
d_prices_940 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_prices_940 v0 = coe d_prices_610 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.pv
d_pv_942 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_942 v0 = coe d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_944 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_944 v0
  = coe d_refScriptCostMultiplier_620 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_946 :: T_PParamsUpdate_516 -> Maybe Integer
d_refScriptCostStride_946 v0
  = coe d_refScriptCostStride_618 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 -> Bool
d_modifiesGovernanceGroup_948 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_948 v3
du_modifiesGovernanceGroup_948 :: T_PParamsUpdate_516 -> Bool
du_modifiesGovernanceGroup_948 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_634 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_636 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_638 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_640 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_642 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_644 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_646 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_648 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.Emax
d_Emax_954 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_Emax_954 v0 = coe d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a
d_a_956 :: T_PParamsUpdate_516 -> Maybe Integer
d_a_956 v0 = coe d_a_600 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.a0
d_a0_958 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_958 v0 = coe d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.b
d_b_960 :: T_PParamsUpdate_516 -> Maybe Integer
d_b_960 v0 = coe d_b_602 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_962 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMaxTermLength_962 v0 = coe d_ccMaxTermLength_648 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_964 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMinSize_964 v0 = coe d_ccMinSize_646 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_966 :: T_PParamsUpdate_516 -> Maybe Integer
d_coinsPerUTxOByte_966 v0 = coe d_coinsPerUTxOByte_608 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_968 :: T_PParamsUpdate_516 -> Maybe Integer
d_collateralPercentage_968 v0
  = coe d_collateralPercentage_630 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.costmdls
d_costmdls_970 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_costmdls_970 v0 = coe d_costmdls_632 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepActivity
d_drepActivity_972 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_drepActivity_972 v0 = coe d_drepActivity_644 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_974 :: T_PParamsUpdate_516 -> Maybe Integer
d_drepDeposit_974 v0 = coe d_drepDeposit_642 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_976 ::
  T_PParamsUpdate_516 -> Maybe T_DrepThresholds_184
d_drepThresholds_976 v0 = coe d_drepThresholds_634 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_978 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionDeposit_978 v0 = coe d_govActionDeposit_640 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_980 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionLifetime_980 v0 = coe d_govActionLifetime_638 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_982 :: T_PParamsUpdate_516 -> Maybe Integer
d_keyDeposit_982 v0 = coe d_keyDeposit_604 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_984 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxBlockExUnits_984 v0 = coe d_maxBlockExUnits_596 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_986 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxBlockSize_986 v0 = coe d_maxBlockSize_584 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_988 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxCollateralInputs_988 v0
  = coe d_maxCollateralInputs_592 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_990 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxHeaderSize_990 v0 = coe d_maxHeaderSize_588 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_992 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerBlock_992 v0
  = coe d_maxRefScriptSizePerBlock_616 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_994 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerTx_994 v0
  = coe d_maxRefScriptSizePerTx_614 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_996 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxTxExUnits_996 v0 = coe d_maxTxExUnits_594 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_998 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxTxSize_998 v0 = coe d_maxTxSize_586 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1000 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxValSize_1000 v0 = coe d_maxValSize_590 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1002 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1002 v0
  = coe d_minFeeRefScriptCoinsPerByte_612 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1004 :: T_PParamsUpdate_516 -> Maybe Integer
d_minUTxOValue_1004 v0 = coe d_minUTxOValue_622 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.nopt
d_nopt_1006 :: T_PParamsUpdate_516 -> Maybe Integer
d_nopt_1006 v0 = coe d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1008 :: T_PParamsUpdate_516 -> Maybe Integer
d_poolDeposit_1008 v0 = coe d_poolDeposit_606 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1010 ::
  T_PParamsUpdate_516 -> Maybe T_PoolThresholds_226
d_poolThresholds_1010 v0 = coe d_poolThresholds_636 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.prices
d_prices_1012 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_prices_1012 v0 = coe d_prices_610 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.pv
d_pv_1014 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1014 v0 = coe d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1016 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1016 v0
  = coe d_refScriptCostMultiplier_620 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1018 :: T_PParamsUpdate_516 -> Maybe Integer
d_refScriptCostStride_1018 v0
  = coe d_refScriptCostStride_618 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1020 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 -> [T_PParamGroup_172]
d_modifiedUpdateGroups_1020 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1020 v3
du_modifiedUpdateGroups_1020 ::
  T_PParamsUpdate_516 -> [T_PParamGroup_172]
du_modifiedUpdateGroups_1020 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         du__'63''9552''8658'__1028 (coe v0)
         (coe du_modifiesNetworkGroup_732) (coe C_NetworkGroup_174))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            du__'63''9552''8658'__1028 (coe v0)
            (coe du_modifiesEconomicGroup_804) (coe C_EconomicGroup_176))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__668
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               du__'63''9552''8658'__1028 (coe v0)
               (coe du_modifiesTechnicalGroup_876) (coe C_TechnicalGroup_178))
            (coe
               du__'63''9552''8658'__1028 (coe v0)
               (coe du_modifiesGovernanceGroup_948) (coe C_GovernanceGroup_180))))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsUpdate_516 ->
  (T_PParamsUpdate_516 -> Bool) ->
  T_PParamGroup_172 -> [T_PParamGroup_172]
d__'63''9552''8658'__1028 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1028 v3 v4 v5
du__'63''9552''8658'__1028 ::
  T_PParamsUpdate_516 ->
  (T_PParamsUpdate_516 -> Bool) ->
  T_PParamGroup_172 -> [T_PParamGroup_172]
du__'63''9552''8658'__1028 v0 v1 v2
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
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._?↗_
d__'63''8599'__1036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1036 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1036 v4 v5
du__'63''8599'__1036 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1036 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1050 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1050 v4
du_'8801''45'update_1050 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_1050 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (\ v1 -> coe du_to_1070 (coe v0)) erased
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.to
d_to_1070 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
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
d_to_1070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1070 v8
du_to_1070 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1070 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.from
d_from_1082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
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
d_from_1082 = erased
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParams_248 -> T_PParamsUpdate_516 -> T_PParams_248
d_applyPParamsUpdate_1084 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1084 v3 v4
du_applyPParamsUpdate_1084 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> T_PParams_248
du_applyPParamsUpdate_1084 v0 v1
  = coe
      C_PParams'46'constructor_3863
      (coe
         du__'63''8599'__1036 (coe d_maxBlockSize_584 (coe v1))
         (coe d_maxBlockSize_316 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxTxSize_586 (coe v1))
         (coe d_maxTxSize_318 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxHeaderSize_588 (coe v1))
         (coe d_maxHeaderSize_320 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxTxExUnits_594 (coe v1))
         (coe d_maxTxExUnits_322 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxBlockExUnits_596 (coe v1))
         (coe d_maxBlockExUnits_324 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxValSize_590 (coe v1))
         (coe d_maxValSize_326 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxCollateralInputs_592 (coe v1))
         (coe d_maxCollateralInputs_328 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_pv_598 (coe v1))
         (coe d_pv_330 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_a_600 (coe v1)) (coe d_a_332 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_b_602 (coe v1)) (coe d_b_334 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_keyDeposit_604 (coe v1))
         (coe d_keyDeposit_336 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_poolDeposit_606 (coe v1))
         (coe d_poolDeposit_338 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_coinsPerUTxOByte_608 (coe v1))
         (coe d_coinsPerUTxOByte_340 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_prices_610 (coe v1))
         (coe d_prices_342 (coe v0)))
      (coe
         du__'63''8599'__1036
         (coe d_minFeeRefScriptCoinsPerByte_612 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_344 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxRefScriptSizePerTx_614 (coe v1))
         (coe d_maxRefScriptSizePerTx_346 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_maxRefScriptSizePerBlock_616 (coe v1))
         (coe d_maxRefScriptSizePerBlock_348 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_refScriptCostStride_618 (coe v1))
         (coe d_refScriptCostStride_350 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_refScriptCostMultiplier_620 (coe v1))
         (coe d_refScriptCostMultiplier_352 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_minUTxOValue_622 (coe v1))
         (coe d_minUTxOValue_354 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_Emax_626 (coe v1))
         (coe d_Emax_356 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_nopt_628 (coe v1))
         (coe d_nopt_358 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_a0_624 (coe v1))
         (coe d_a0_360 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_collateralPercentage_630 (coe v1))
         (coe d_collateralPercentage_362 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_costmdls_632 (coe v1))
         (coe d_costmdls_364 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_poolThresholds_636 (coe v1))
         (coe d_poolThresholds_366 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_drepThresholds_634 (coe v1))
         (coe d_drepThresholds_368 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_ccMinSize_646 (coe v1))
         (coe d_ccMinSize_370 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_ccMaxTermLength_648 (coe v1))
         (coe d_ccMaxTermLength_372 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_govActionLifetime_638 (coe v1))
         (coe d_govActionLifetime_374 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_govActionDeposit_640 (coe v1))
         (coe d_govActionDeposit_376 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_drepDeposit_642 (coe v1))
         (coe d_drepDeposit_378 (coe v0)))
      (coe
         du__'63''8599'__1036 (coe d_drepActivity_644 (coe v1))
         (coe d_drepActivity_380 (coe v0)))
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.Emax
d_Emax_1096 :: T_PParams_248 -> T_PParamsUpdate_516 -> AgdaAny
d_Emax_1096 v0 ~v1 = du_Emax_1096 v0
du_Emax_1096 :: T_PParams_248 -> AgdaAny
du_Emax_1096 v0 = coe d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.a
d_a_1098 :: T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_a_1098 v0 ~v1 = du_a_1098 v0
du_a_1098 :: T_PParams_248 -> Integer
du_a_1098 v0 = coe d_a_332 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.a0
d_a0_1100 ::
  T_PParams_248 ->
  T_PParamsUpdate_516 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1100 v0 ~v1 = du_a0_1100 v0
du_a0_1100 ::
  T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1100 v0 = coe d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.b
d_b_1102 :: T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_b_1102 v0 ~v1 = du_b_1102 v0
du_b_1102 :: T_PParams_248 -> Integer
du_b_1102 v0 = coe d_b_334 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1104 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_ccMaxTermLength_1104 v0 ~v1 = du_ccMaxTermLength_1104 v0
du_ccMaxTermLength_1104 :: T_PParams_248 -> Integer
du_ccMaxTermLength_1104 v0 = coe d_ccMaxTermLength_372 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1106 :: T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_ccMinSize_1106 v0 ~v1 = du_ccMinSize_1106 v0
du_ccMinSize_1106 :: T_PParams_248 -> Integer
du_ccMinSize_1106 v0 = coe d_ccMinSize_370 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1108 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_coinsPerUTxOByte_1108 v0 ~v1 = du_coinsPerUTxOByte_1108 v0
du_coinsPerUTxOByte_1108 :: T_PParams_248 -> Integer
du_coinsPerUTxOByte_1108 v0 = coe d_coinsPerUTxOByte_340 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1110 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_collateralPercentage_1110 v0 ~v1
  = du_collateralPercentage_1110 v0
du_collateralPercentage_1110 :: T_PParams_248 -> Integer
du_collateralPercentage_1110 v0
  = coe d_collateralPercentage_362 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1112 :: T_PParams_248 -> T_PParamsUpdate_516 -> AgdaAny
d_costmdls_1112 v0 ~v1 = du_costmdls_1112 v0
du_costmdls_1112 :: T_PParams_248 -> AgdaAny
du_costmdls_1112 v0 = coe d_costmdls_364 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1114 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> AgdaAny
d_drepActivity_1114 v0 ~v1 = du_drepActivity_1114 v0
du_drepActivity_1114 :: T_PParams_248 -> AgdaAny
du_drepActivity_1114 v0 = coe d_drepActivity_380 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1116 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_drepDeposit_1116 v0 ~v1 = du_drepDeposit_1116 v0
du_drepDeposit_1116 :: T_PParams_248 -> Integer
du_drepDeposit_1116 v0 = coe d_drepDeposit_378 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1118 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> T_DrepThresholds_184
d_drepThresholds_1118 v0 ~v1 = du_drepThresholds_1118 v0
du_drepThresholds_1118 :: T_PParams_248 -> T_DrepThresholds_184
du_drepThresholds_1118 v0 = coe d_drepThresholds_368 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1120 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_govActionDeposit_1120 v0 ~v1 = du_govActionDeposit_1120 v0
du_govActionDeposit_1120 :: T_PParams_248 -> Integer
du_govActionDeposit_1120 v0 = coe d_govActionDeposit_376 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1122 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_govActionLifetime_1122 v0 ~v1 = du_govActionLifetime_1122 v0
du_govActionLifetime_1122 :: T_PParams_248 -> Integer
du_govActionLifetime_1122 v0 = coe d_govActionLifetime_374 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1124 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_keyDeposit_1124 v0 ~v1 = du_keyDeposit_1124 v0
du_keyDeposit_1124 :: T_PParams_248 -> Integer
du_keyDeposit_1124 v0 = coe d_keyDeposit_336 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1126 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> AgdaAny
d_maxBlockExUnits_1126 v0 ~v1 = du_maxBlockExUnits_1126 v0
du_maxBlockExUnits_1126 :: T_PParams_248 -> AgdaAny
du_maxBlockExUnits_1126 v0 = coe d_maxBlockExUnits_324 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1128 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_maxBlockSize_1128 v0 ~v1 = du_maxBlockSize_1128 v0
du_maxBlockSize_1128 :: T_PParams_248 -> Integer
du_maxBlockSize_1128 v0 = coe d_maxBlockSize_316 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1130 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_maxCollateralInputs_1130 v0 ~v1 = du_maxCollateralInputs_1130 v0
du_maxCollateralInputs_1130 :: T_PParams_248 -> Integer
du_maxCollateralInputs_1130 v0
  = coe d_maxCollateralInputs_328 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1132 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_maxHeaderSize_1132 v0 ~v1 = du_maxHeaderSize_1132 v0
du_maxHeaderSize_1132 :: T_PParams_248 -> Integer
du_maxHeaderSize_1132 v0 = coe d_maxHeaderSize_320 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1134 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_maxRefScriptSizePerBlock_1134 v0 ~v1
  = du_maxRefScriptSizePerBlock_1134 v0
du_maxRefScriptSizePerBlock_1134 :: T_PParams_248 -> Integer
du_maxRefScriptSizePerBlock_1134 v0
  = coe d_maxRefScriptSizePerBlock_348 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1136 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_maxRefScriptSizePerTx_1136 v0 ~v1
  = du_maxRefScriptSizePerTx_1136 v0
du_maxRefScriptSizePerTx_1136 :: T_PParams_248 -> Integer
du_maxRefScriptSizePerTx_1136 v0
  = coe d_maxRefScriptSizePerTx_346 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1138 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> AgdaAny
d_maxTxExUnits_1138 v0 ~v1 = du_maxTxExUnits_1138 v0
du_maxTxExUnits_1138 :: T_PParams_248 -> AgdaAny
du_maxTxExUnits_1138 v0 = coe d_maxTxExUnits_322 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1140 :: T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_maxTxSize_1140 v0 ~v1 = du_maxTxSize_1140 v0
du_maxTxSize_1140 :: T_PParams_248 -> Integer
du_maxTxSize_1140 v0 = coe d_maxTxSize_318 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1142 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_maxValSize_1142 v0 ~v1 = du_maxValSize_1142 v0
du_maxValSize_1142 :: T_PParams_248 -> Integer
du_maxValSize_1142 v0 = coe d_maxValSize_326 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1144 ::
  T_PParams_248 ->
  T_PParamsUpdate_516 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1144 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1144 v0
du_minFeeRefScriptCoinsPerByte_1144 ::
  T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1144 v0
  = coe d_minFeeRefScriptCoinsPerByte_344 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1146 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_minUTxOValue_1146 v0 ~v1 = du_minUTxOValue_1146 v0
du_minUTxOValue_1146 :: T_PParams_248 -> Integer
du_minUTxOValue_1146 v0 = coe d_minUTxOValue_354 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.nopt
d_nopt_1148 :: T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_nopt_1148 v0 ~v1 = du_nopt_1148 v0
du_nopt_1148 :: T_PParams_248 -> Integer
du_nopt_1148 v0 = coe d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1150 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_poolDeposit_1150 v0 ~v1 = du_poolDeposit_1150 v0
du_poolDeposit_1150 :: T_PParams_248 -> Integer
du_poolDeposit_1150 v0 = coe d_poolDeposit_338 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1152 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> T_PoolThresholds_226
d_poolThresholds_1152 v0 ~v1 = du_poolThresholds_1152 v0
du_poolThresholds_1152 :: T_PParams_248 -> T_PoolThresholds_226
du_poolThresholds_1152 v0 = coe d_poolThresholds_366 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.prices
d_prices_1154 :: T_PParams_248 -> T_PParamsUpdate_516 -> AgdaAny
d_prices_1154 v0 ~v1 = du_prices_1154 v0
du_prices_1154 :: T_PParams_248 -> AgdaAny
du_prices_1154 v0 = coe d_prices_342 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.pv
d_pv_1156 ::
  T_PParams_248 ->
  T_PParamsUpdate_516 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1156 v0 ~v1 = du_pv_1156 v0
du_pv_1156 ::
  T_PParams_248 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1156 v0 = coe d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1158 ::
  T_PParams_248 ->
  T_PParamsUpdate_516 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1158 v0 ~v1
  = du_refScriptCostMultiplier_1158 v0
du_refScriptCostMultiplier_1158 ::
  T_PParams_248 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1158 v0
  = coe d_refScriptCostMultiplier_352 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1160 ::
  T_PParams_248 -> T_PParamsUpdate_516 -> Integer
d_refScriptCostStride_1160 v0 ~v1 = du_refScriptCostStride_1160 v0
du_refScriptCostStride_1160 :: T_PParams_248 -> Integer
du_refScriptCostStride_1160 v0
  = coe d_refScriptCostStride_350 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.Emax
d_Emax_1164 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_Emax_1164 v0 = coe d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.a
d_a_1166 :: T_PParamsUpdate_516 -> Maybe Integer
d_a_1166 v0 = coe d_a_600 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.a0
d_a0_1168 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1168 v0 = coe d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.b
d_b_1170 :: T_PParamsUpdate_516 -> Maybe Integer
d_b_1170 v0 = coe d_b_602 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1172 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMaxTermLength_1172 v0 = coe d_ccMaxTermLength_648 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1174 :: T_PParamsUpdate_516 -> Maybe Integer
d_ccMinSize_1174 v0 = coe d_ccMinSize_646 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1176 :: T_PParamsUpdate_516 -> Maybe Integer
d_coinsPerUTxOByte_1176 v0 = coe d_coinsPerUTxOByte_608 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1178 :: T_PParamsUpdate_516 -> Maybe Integer
d_collateralPercentage_1178 v0
  = coe d_collateralPercentage_630 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1180 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_costmdls_1180 v0 = coe d_costmdls_632 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1182 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_drepActivity_1182 v0 = coe d_drepActivity_644 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1184 :: T_PParamsUpdate_516 -> Maybe Integer
d_drepDeposit_1184 v0 = coe d_drepDeposit_642 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1186 ::
  T_PParamsUpdate_516 -> Maybe T_DrepThresholds_184
d_drepThresholds_1186 v0 = coe d_drepThresholds_634 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1188 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionDeposit_1188 v0 = coe d_govActionDeposit_640 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1190 :: T_PParamsUpdate_516 -> Maybe Integer
d_govActionLifetime_1190 v0 = coe d_govActionLifetime_638 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1192 :: T_PParamsUpdate_516 -> Maybe Integer
d_keyDeposit_1192 v0 = coe d_keyDeposit_604 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1194 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxBlockExUnits_1194 v0 = coe d_maxBlockExUnits_596 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1196 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxBlockSize_1196 v0 = coe d_maxBlockSize_584 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1198 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxCollateralInputs_1198 v0
  = coe d_maxCollateralInputs_592 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1200 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxHeaderSize_1200 v0 = coe d_maxHeaderSize_588 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1202 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerBlock_1202 v0
  = coe d_maxRefScriptSizePerBlock_616 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1204 ::
  T_PParamsUpdate_516 -> Maybe Integer
d_maxRefScriptSizePerTx_1204 v0
  = coe d_maxRefScriptSizePerTx_614 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1206 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_maxTxExUnits_1206 v0 = coe d_maxTxExUnits_594 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1208 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxTxSize_1208 v0 = coe d_maxTxSize_586 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1210 :: T_PParamsUpdate_516 -> Maybe Integer
d_maxValSize_1210 v0 = coe d_maxValSize_590 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1212 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1212 v0
  = coe d_minFeeRefScriptCoinsPerByte_612 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1214 :: T_PParamsUpdate_516 -> Maybe Integer
d_minUTxOValue_1214 v0 = coe d_minUTxOValue_622 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.nopt
d_nopt_1216 :: T_PParamsUpdate_516 -> Maybe Integer
d_nopt_1216 v0 = coe d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1218 :: T_PParamsUpdate_516 -> Maybe Integer
d_poolDeposit_1218 v0 = coe d_poolDeposit_606 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1220 ::
  T_PParamsUpdate_516 -> Maybe T_PoolThresholds_226
d_poolThresholds_1220 v0 = coe d_poolThresholds_636 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.prices
d_prices_1222 :: T_PParamsUpdate_516 -> Maybe AgdaAny
d_prices_1222 v0 = coe d_prices_610 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.pv
d_pv_1224 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1224 v0 = coe d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1226 ::
  T_PParamsUpdate_516 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1226 v0
  = coe d_refScriptCostMultiplier_620 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1228 :: T_PParamsUpdate_516 -> Maybe Integer
d_refScriptCostStride_1228 v0
  = coe d_refScriptCostStride_618 (coe v0)
-- Ledger.Conway.Conformance.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1230 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1230 v1 v2
du_DecEq'45'PParamsUpdate_1230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1230 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_784873 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     (\ v36 ->
                        case coe v36 of
                          C_PParamsUpdate'46'constructor_784873 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69
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
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
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
                                                                                                                           du_DecEq'45'PoolThresholds_502))
                                                                                                                     (coe
                                                                                                                        v63)
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                     (coe
                                                                                                                        du_DecEq'45'DrepThresholds_500))
                                                                                                                  (coe
                                                                                                                     v62)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
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
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                         (coe
                                                                                                            v59)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                                                                                                            (coe
                                                                                                               v0)))
                                                                                                      (coe
                                                                                                         v58)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
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
                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                          (coe v54)
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
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                 (coe v51)
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                                                  (coe v1))))
                                                         (coe v43) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
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
-- Ledger.Conway.Conformance.PParams.pvCanFollow?
d_pvCanFollow'63'_1236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1236 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1236 v3 v4
du_pvCanFollow'63'_1236 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1236 v0 v1
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
                                                                                                   C_canFollowMajor_168)))
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
                                                                                                    C_canFollowMajor_168)))
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
                                                                                                   C_canFollowMinor_170)))
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
                                                                                                    C_canFollowMinor_170)))
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
                                                                                                    C_canFollowMajor_168)))
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
                                                                                                     C_canFollowMajor_168)))
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
                                                                                                    C_canFollowMinor_170)))
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
                                                                                                     C_canFollowMinor_170)))
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
-- Ledger.Conway.Conformance.PParams.PParamsDiff
d_PParamsDiff_1284 a0 a1 a2 = ()
data T_PParamsDiff_1284
  = C_PParamsDiff'46'constructor_1470197 (T_PParams_248 ->
                                          AgdaAny -> T_PParams_248)
                                         (AgdaAny -> [T_PParamGroup_172])
                                         (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.Conformance.PParams.PParamsDiff.UpdateT
d_UpdateT_1298 :: T_PParamsDiff_1284 -> ()
d_UpdateT_1298 = erased
-- Ledger.Conway.Conformance.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1300 ::
  T_PParamsDiff_1284 -> T_PParams_248 -> AgdaAny -> T_PParams_248
d_applyUpdate_1300 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1470197 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsDiff.updateGroups
d_updateGroups_1302 ::
  T_PParamsDiff_1284 -> AgdaAny -> [T_PParamGroup_172]
d_updateGroups_1302 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1470197 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1308 ::
  T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1308 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1470197 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsDiff_1284 -> AgdaAny -> ()
d_ppdWellFormed_1310 = erased
-- Ledger.Conway.Conformance.PParams.GovParams
d_GovParams_1316 a0 a1 a2 = ()
data T_GovParams_1316
  = C_GovParams'46'constructor_1470983 T_PParamsDiff_1284
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.Conformance.PParams._.UpdateT
d_UpdateT_1322 :: T_PParamsDiff_1284 -> ()
d_UpdateT_1322 = erased
-- Ledger.Conway.Conformance.PParams._.applyUpdate
d_applyUpdate_1324 ::
  T_PParamsDiff_1284 -> T_PParams_248 -> AgdaAny -> T_PParams_248
d_applyUpdate_1324 v0 = coe d_applyUpdate_1300 (coe v0)
-- Ledger.Conway.Conformance.PParams._.ppWF?
d_ppWF'63'_1326 ::
  T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1326 v0 = coe d_ppWF'63'_1308 (coe v0)
-- Ledger.Conway.Conformance.PParams._.ppdWellFormed
d_ppdWellFormed_1328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_PParamsDiff_1284 -> AgdaAny -> ()
d_ppdWellFormed_1328 = erased
-- Ledger.Conway.Conformance.PParams._.updateGroups
d_updateGroups_1330 ::
  T_PParamsDiff_1284 -> AgdaAny -> [T_PParamGroup_172]
d_updateGroups_1330 v0 = coe d_updateGroups_1302 (coe v0)
-- Ledger.Conway.Conformance.PParams.GovParams.ppUpd
d_ppUpd_1348 :: T_GovParams_1316 -> T_PParamsDiff_1284
d_ppUpd_1348 v0
  = case coe v0 of
      C_GovParams'46'constructor_1470983 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.GovParams._.UpdateT
d_UpdateT_1352 :: T_GovParams_1316 -> ()
d_UpdateT_1352 = erased
-- Ledger.Conway.Conformance.PParams.GovParams._.applyUpdate
d_applyUpdate_1354 ::
  T_GovParams_1316 -> T_PParams_248 -> AgdaAny -> T_PParams_248
d_applyUpdate_1354 v0
  = coe d_applyUpdate_1300 (coe d_ppUpd_1348 (coe v0))
-- Ledger.Conway.Conformance.PParams.GovParams._.ppWF?
d_ppWF'63'_1356 ::
  T_GovParams_1316 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1356 v0
  = coe d_ppWF'63'_1308 (coe d_ppUpd_1348 (coe v0))
-- Ledger.Conway.Conformance.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_406 ->
  T_GovParams_1316 -> AgdaAny -> ()
d_ppdWellFormed_1358 = erased
-- Ledger.Conway.Conformance.PParams.GovParams._.updateGroups
d_updateGroups_1360 ::
  T_GovParams_1316 -> AgdaAny -> [T_PParamGroup_172]
d_updateGroups_1360 v0
  = coe d_updateGroups_1302 (coe d_ppUpd_1348 (coe v0))
-- Ledger.Conway.Conformance.PParams.GovParams.ppHashingScheme
d_ppHashingScheme_1362 ::
  T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_1362 v0
  = case coe v0 of
      C_GovParams'46'constructor_1470983 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.PParams.GovParams._.DecEq-T
d_DecEq'45'T_1366 ::
  T_GovParams_1316 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
      (coe d_ppHashingScheme_1362 (coe v0))
-- Ledger.Conway.Conformance.PParams.GovParams._.DecEq-THash
d_DecEq'45'THash_1368 ::
  T_GovParams_1316 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
      (coe d_ppHashingScheme_1362 (coe v0))
-- Ledger.Conway.Conformance.PParams.GovParams._.THash
d_THash_1370 :: T_GovParams_1316 -> ()
d_THash_1370 = erased
-- Ledger.Conway.Conformance.PParams.GovParams._.Show-THash
d_Show'45'THash_1372 ::
  T_GovParams_1316 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
      (coe d_ppHashingScheme_1362 (coe v0))
-- Ledger.Conway.Conformance.PParams.GovParams._.T-Hashable
d_T'45'Hashable_1374 ::
  T_GovParams_1316 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
      (coe d_ppHashingScheme_1362 (coe v0))
-- Ledger.Conway.Conformance.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1376 ::
  T_GovParams_1316 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1376 v0
  = case coe v0 of
      C_GovParams'46'constructor_1470983 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
