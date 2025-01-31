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
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Class.ToBool
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
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.PParams.Acnt
d_Acnt_144 a0 a1 a2 = ()
data T_Acnt_144 = C_'10214'_'44'_'10215''7491'_154 Integer Integer
-- Ledger.PParams.Acnt.treasury
d_treasury_150 :: T_Acnt_144 -> Integer
d_treasury_150 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_154 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.Acnt.reserves
d_reserves_152 :: T_Acnt_144 -> Integer
d_reserves_152 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_154 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.ProtVer
d_ProtVer_156 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ProtVer_156 = erased
-- Ledger.PParams.Show-ProtVer
d_Show'45'ProtVer_158 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_158 ~v0 = du_Show'45'ProtVer_158
du_Show'45'ProtVer_158 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_158
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.PParams.pvCanFollow
d_pvCanFollow_160 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_160
  = C_canFollowMajor_162 | C_canFollowMinor_164
-- Ledger.PParams.PParamGroup
d_PParamGroup_166 a0 a1 a2 = ()
data T_PParamGroup_166
  = C_NetworkGroup_168 | C_EconomicGroup_170 | C_TechnicalGroup_172 |
    C_GovernanceGroup_174 | C_SecurityGroup_176
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_178 a0 a1 a2 = ()
data T_DrepThresholds_178
  = C_DrepThresholds'46'constructor_1839 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
d_P1_200 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_200 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_202 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_202 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_204 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_204 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_206 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_206 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_208 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_208 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_210 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_210 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_212 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_212 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_214 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_214 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_216 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_216 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_218 ::
  T_DrepThresholds_178 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_218 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_220 a0 a1 a2 = ()
data T_PoolThresholds_220
  = C_PoolThresholds'46'constructor_2403 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_232 ::
  T_PoolThresholds_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_232 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2403 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_234 ::
  T_PoolThresholds_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_234 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2403 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_236 ::
  T_PoolThresholds_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_236 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2403 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_238 ::
  T_PoolThresholds_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_238 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2403 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5
d_Q5_240 ::
  T_PoolThresholds_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_240 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2403 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_242 a0 a1 a2 = ()
data T_PParams_242
  = C_PParams'46'constructor_3851 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_220 T_DrepThresholds_178 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_310 :: T_PParams_242 -> Integer
d_maxBlockSize_310 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_312 :: T_PParams_242 -> Integer
d_maxTxSize_312 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_314 :: T_PParams_242 -> Integer
d_maxHeaderSize_314 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_316 :: T_PParams_242 -> AgdaAny
d_maxTxExUnits_316 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_318 :: T_PParams_242 -> AgdaAny
d_maxBlockExUnits_318 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_320 :: T_PParams_242 -> Integer
d_maxValSize_320 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_322 :: T_PParams_242 -> Integer
d_maxCollateralInputs_322 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_324 :: T_PParams_242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_324 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_326 :: T_PParams_242 -> Integer
d_a_326 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_328 :: T_PParams_242 -> Integer
d_b_328 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.keyDeposit
d_keyDeposit_330 :: T_PParams_242 -> Integer
d_keyDeposit_330 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_332 :: T_PParams_242 -> Integer
d_poolDeposit_332 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_334 :: T_PParams_242 -> Integer
d_coinsPerUTxOByte_334 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_336 :: T_PParams_242 -> AgdaAny
d_prices_336 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_338 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_338 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_340 :: T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_340 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_342 :: T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_342 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.refScriptCostStride
d_refScriptCostStride_344 :: T_PParams_242 -> Integer
d_refScriptCostStride_344 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_346 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_346 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_348 :: T_PParams_242 -> Integer
d_minUTxOValue_348 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_350 :: T_PParams_242 -> AgdaAny
d_Emax_350 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_352 :: T_PParams_242 -> Integer
d_nopt_352 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_354 :: T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_354 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_356 :: T_PParams_242 -> Integer
d_collateralPercentage_356 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_358 :: T_PParams_242 -> AgdaAny
d_costmdls_358 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_360 :: T_PParams_242 -> T_PoolThresholds_220
d_poolThresholds_360 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_362 :: T_PParams_242 -> T_DrepThresholds_178
d_drepThresholds_362 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_364 :: T_PParams_242 -> Integer
d_ccMinSize_364 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_366 :: T_PParams_242 -> Integer
d_ccMaxTermLength_366 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_368 :: T_PParams_242 -> Integer
d_govActionLifetime_368 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_370 :: T_PParams_242 -> Integer
d_govActionDeposit_370 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_372 :: T_PParams_242 -> Integer
d_drepDeposit_372 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_374 :: T_PParams_242 -> AgdaAny
d_drepActivity_374 v0
  = case coe v0 of
      C_PParams'46'constructor_3851 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.SecurityGroupParams
d_SecurityGroupParams_376 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SecurityGroupParams_376 ~v0 ~v1 ~v2 v3
  = du_SecurityGroupParams_376 v3
du_SecurityGroupParams_376 ::
  T_PParams_242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SecurityGroupParams_376 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_maxBlockSize_310 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_maxTxSize_312 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe d_maxHeaderSize_314 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe d_maxValSize_320 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe d_maxBlockExUnits_318 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe d_a_326 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe d_b_328 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe d_minFeeRefScriptCoinsPerByte_338 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe d_coinsPerUTxOByte_334 (coe v0))
                              (coe d_govActionDeposit_370 (coe v0))))))))))
-- Ledger.PParams._._.Emax
d_Emax_386 :: T_PParams_242 -> AgdaAny
d_Emax_386 v0 = coe d_Emax_350 (coe v0)
-- Ledger.PParams._._.a
d_a_388 :: T_PParams_242 -> Integer
d_a_388 v0 = coe d_a_326 (coe v0)
-- Ledger.PParams._._.a0
d_a0_390 :: T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_390 v0 = coe d_a0_354 (coe v0)
-- Ledger.PParams._._.b
d_b_392 :: T_PParams_242 -> Integer
d_b_392 v0 = coe d_b_328 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_394 :: T_PParams_242 -> Integer
d_ccMaxTermLength_394 v0 = coe d_ccMaxTermLength_366 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_396 :: T_PParams_242 -> Integer
d_ccMinSize_396 v0 = coe d_ccMinSize_364 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_398 :: T_PParams_242 -> Integer
d_coinsPerUTxOByte_398 v0 = coe d_coinsPerUTxOByte_334 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_400 :: T_PParams_242 -> Integer
d_collateralPercentage_400 v0
  = coe d_collateralPercentage_356 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_402 :: T_PParams_242 -> AgdaAny
d_costmdls_402 v0 = coe d_costmdls_358 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_404 :: T_PParams_242 -> AgdaAny
d_drepActivity_404 v0 = coe d_drepActivity_374 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_406 :: T_PParams_242 -> Integer
d_drepDeposit_406 v0 = coe d_drepDeposit_372 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_408 :: T_PParams_242 -> T_DrepThresholds_178
d_drepThresholds_408 v0 = coe d_drepThresholds_362 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_410 :: T_PParams_242 -> Integer
d_govActionDeposit_410 v0 = coe d_govActionDeposit_370 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_412 :: T_PParams_242 -> Integer
d_govActionLifetime_412 v0 = coe d_govActionLifetime_368 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_414 :: T_PParams_242 -> Integer
d_keyDeposit_414 v0 = coe d_keyDeposit_330 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_416 :: T_PParams_242 -> AgdaAny
d_maxBlockExUnits_416 v0 = coe d_maxBlockExUnits_318 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_418 :: T_PParams_242 -> Integer
d_maxBlockSize_418 v0 = coe d_maxBlockSize_310 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_420 :: T_PParams_242 -> Integer
d_maxCollateralInputs_420 v0
  = coe d_maxCollateralInputs_322 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_422 :: T_PParams_242 -> Integer
d_maxHeaderSize_422 v0 = coe d_maxHeaderSize_314 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_424 :: T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_424 v0
  = coe d_maxRefScriptSizePerBlock_342 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_426 :: T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_426 v0
  = coe d_maxRefScriptSizePerTx_340 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_428 :: T_PParams_242 -> AgdaAny
d_maxTxExUnits_428 v0 = coe d_maxTxExUnits_316 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_430 :: T_PParams_242 -> Integer
d_maxTxSize_430 v0 = coe d_maxTxSize_312 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_432 :: T_PParams_242 -> Integer
d_maxValSize_432 v0 = coe d_maxValSize_320 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_434 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_434 v0
  = coe d_minFeeRefScriptCoinsPerByte_338 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_436 :: T_PParams_242 -> Integer
d_minUTxOValue_436 v0 = coe d_minUTxOValue_348 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_438 :: T_PParams_242 -> Integer
d_nopt_438 v0 = coe d_nopt_352 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_440 :: T_PParams_242 -> Integer
d_poolDeposit_440 v0 = coe d_poolDeposit_332 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_442 :: T_PParams_242 -> T_PoolThresholds_220
d_poolThresholds_442 v0 = coe d_poolThresholds_360 (coe v0)
-- Ledger.PParams._._.prices
d_prices_444 :: T_PParams_242 -> AgdaAny
d_prices_444 v0 = coe d_prices_336 (coe v0)
-- Ledger.PParams._._.pv
d_pv_446 :: T_PParams_242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_446 v0 = coe d_pv_324 (coe v0)
-- Ledger.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_448 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_448 v0
  = coe d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.PParams._._.refScriptCostStride
d_refScriptCostStride_450 :: T_PParams_242 -> Integer
d_refScriptCostStride_450 v0
  = coe d_refScriptCostStride_344 (coe v0)
-- Ledger.PParams.positivePParams
d_positivePParams_452 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_242 -> [Integer]
d_positivePParams_452 ~v0 ~v1 ~v2 v3 = du_positivePParams_452 v3
du_positivePParams_452 :: T_PParams_242 -> [Integer]
du_positivePParams_452 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_310 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_312 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_314 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_320 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_refScriptCostStride_344 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_coinsPerUTxOByte_334 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_poolDeposit_332 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_collateralPercentage_356 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_ccMaxTermLength_366 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionLifetime_368 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_govActionDeposit_370 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_drepDeposit_372 (coe v0))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))
-- Ledger.PParams._._.Emax
d_Emax_462 :: T_PParams_242 -> AgdaAny
d_Emax_462 v0 = coe d_Emax_350 (coe v0)
-- Ledger.PParams._._.a
d_a_464 :: T_PParams_242 -> Integer
d_a_464 v0 = coe d_a_326 (coe v0)
-- Ledger.PParams._._.a0
d_a0_466 :: T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_466 v0 = coe d_a0_354 (coe v0)
-- Ledger.PParams._._.b
d_b_468 :: T_PParams_242 -> Integer
d_b_468 v0 = coe d_b_328 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_470 :: T_PParams_242 -> Integer
d_ccMaxTermLength_470 v0 = coe d_ccMaxTermLength_366 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_472 :: T_PParams_242 -> Integer
d_ccMinSize_472 v0 = coe d_ccMinSize_364 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_474 :: T_PParams_242 -> Integer
d_coinsPerUTxOByte_474 v0 = coe d_coinsPerUTxOByte_334 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_476 :: T_PParams_242 -> Integer
d_collateralPercentage_476 v0
  = coe d_collateralPercentage_356 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_478 :: T_PParams_242 -> AgdaAny
d_costmdls_478 v0 = coe d_costmdls_358 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_480 :: T_PParams_242 -> AgdaAny
d_drepActivity_480 v0 = coe d_drepActivity_374 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_482 :: T_PParams_242 -> Integer
d_drepDeposit_482 v0 = coe d_drepDeposit_372 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_484 :: T_PParams_242 -> T_DrepThresholds_178
d_drepThresholds_484 v0 = coe d_drepThresholds_362 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_486 :: T_PParams_242 -> Integer
d_govActionDeposit_486 v0 = coe d_govActionDeposit_370 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_488 :: T_PParams_242 -> Integer
d_govActionLifetime_488 v0 = coe d_govActionLifetime_368 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_490 :: T_PParams_242 -> Integer
d_keyDeposit_490 v0 = coe d_keyDeposit_330 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_492 :: T_PParams_242 -> AgdaAny
d_maxBlockExUnits_492 v0 = coe d_maxBlockExUnits_318 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_494 :: T_PParams_242 -> Integer
d_maxBlockSize_494 v0 = coe d_maxBlockSize_310 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_496 :: T_PParams_242 -> Integer
d_maxCollateralInputs_496 v0
  = coe d_maxCollateralInputs_322 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_498 :: T_PParams_242 -> Integer
d_maxHeaderSize_498 v0 = coe d_maxHeaderSize_314 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_500 :: T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_500 v0
  = coe d_maxRefScriptSizePerBlock_342 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_502 :: T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_502 v0
  = coe d_maxRefScriptSizePerTx_340 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_504 :: T_PParams_242 -> AgdaAny
d_maxTxExUnits_504 v0 = coe d_maxTxExUnits_316 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_506 :: T_PParams_242 -> Integer
d_maxTxSize_506 v0 = coe d_maxTxSize_312 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_508 :: T_PParams_242 -> Integer
d_maxValSize_508 v0 = coe d_maxValSize_320 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_510 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_510 v0
  = coe d_minFeeRefScriptCoinsPerByte_338 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_512 :: T_PParams_242 -> Integer
d_minUTxOValue_512 v0 = coe d_minUTxOValue_348 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_514 :: T_PParams_242 -> Integer
d_nopt_514 v0 = coe d_nopt_352 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_516 :: T_PParams_242 -> Integer
d_poolDeposit_516 v0 = coe d_poolDeposit_332 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_518 :: T_PParams_242 -> T_PoolThresholds_220
d_poolThresholds_518 v0 = coe d_poolThresholds_360 (coe v0)
-- Ledger.PParams._._.prices
d_prices_520 :: T_PParams_242 -> AgdaAny
d_prices_520 v0 = coe d_prices_336 (coe v0)
-- Ledger.PParams._._.pv
d_pv_522 :: T_PParams_242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_522 v0 = coe d_pv_324 (coe v0)
-- Ledger.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_524 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_524 v0
  = coe d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.PParams._._.refScriptCostStride
d_refScriptCostStride_526 :: T_PParams_242 -> Integer
d_refScriptCostStride_526 v0
  = coe d_refScriptCostStride_344 (coe v0)
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_528 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_242 -> ()
d_paramsWellFormed_528 = erased
-- Ledger.PParams.paramsWF-elim
d_paramsWF'45'elim_536 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_536 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_536 v5
du_paramsWF'45'elim_536 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_536 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.PParams.refScriptCostStride>0
d_refScriptCostStride'62'0_558 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_558 ~v0 ~v1 ~v2 v3 ~v4
  = du_refScriptCostStride'62'0_558 v3
du_refScriptCostStride'62'0_558 ::
  T_PParams_242 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_558 v0
  = coe
      du_paramsWF'45'elim_536 (coe d_refScriptCostStride_344 (coe v0))
-- Ledger.PParams.Show-ℚ
d_Show'45'ℚ_564 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_564 ~v0 = du_Show'45'ℚ_564
du_Show'45'ℚ_564 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_564
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_570 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_570 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_570
du_DecEq'45'DrepThresholds_570 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_570
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_1839 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
d_DecEq'45'PoolThresholds_572 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_572 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_572
du_DecEq'45'PoolThresholds_572 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_572
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_2403 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_2403 v7 v8 v9 v10 v11
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
d_DecEq'45'PParams_574 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_574 ~v0 v1 v2 = du_DecEq'45'PParams_574 v1 v2
du_DecEq'45'PParams_574 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_574 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3851 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     (\ v36 ->
                        case coe v36 of
                          C_PParams'46'constructor_3851 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69
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
                                                                                                                                                         d_P6_218
                                                                                                                                                         (coe
                                                                                                                                                            v29))
                                                                                                                                                      (coe
                                                                                                                                                         d_P6_218
                                                                                                                                                         (coe
                                                                                                                                                            v63))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                                   (coe
                                                                                                                                                      d_P5d_216
                                                                                                                                                      (coe
                                                                                                                                                         v29))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5d_216
                                                                                                                                                      (coe
                                                                                                                                                         v63))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                                (coe
                                                                                                                                                   d_P5c_214
                                                                                                                                                   (coe
                                                                                                                                                      v29))
                                                                                                                                                (coe
                                                                                                                                                   d_P5c_214
                                                                                                                                                   (coe
                                                                                                                                                      v63))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                             (coe
                                                                                                                                                d_P5b_212
                                                                                                                                                (coe
                                                                                                                                                   v29))
                                                                                                                                             (coe
                                                                                                                                                d_P5b_212
                                                                                                                                                (coe
                                                                                                                                                   v63))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                          (coe
                                                                                                                                             d_P5a_210
                                                                                                                                             (coe
                                                                                                                                                v29))
                                                                                                                                          (coe
                                                                                                                                             d_P5a_210
                                                                                                                                             (coe
                                                                                                                                                v63))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                       (coe
                                                                                                                                          d_P4_208
                                                                                                                                          (coe
                                                                                                                                             v29))
                                                                                                                                       (coe
                                                                                                                                          d_P4_208
                                                                                                                                          (coe
                                                                                                                                             v63))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                    (coe
                                                                                                                                       d_P3_206
                                                                                                                                       (coe
                                                                                                                                          v29))
                                                                                                                                    (coe
                                                                                                                                       d_P3_206
                                                                                                                                       (coe
                                                                                                                                          v63))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                 (coe
                                                                                                                                    d_P2b_204
                                                                                                                                    (coe
                                                                                                                                       v29))
                                                                                                                                 (coe
                                                                                                                                    d_P2b_204
                                                                                                                                    (coe
                                                                                                                                       v63))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                              (coe
                                                                                                                                 d_P2a_202
                                                                                                                                 (coe
                                                                                                                                    v29))
                                                                                                                              (coe
                                                                                                                                 d_P2a_202
                                                                                                                                 (coe
                                                                                                                                    v63))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                           (coe
                                                                                                                              d_P1_200
                                                                                                                              (coe
                                                                                                                                 v29))
                                                                                                                           (coe
                                                                                                                              d_P1_200
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
                                                                                                                                       d_Q5_240
                                                                                                                                       (coe
                                                                                                                                          v28))
                                                                                                                                    (coe
                                                                                                                                       d_Q5_240
                                                                                                                                       (coe
                                                                                                                                          v62))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                                 (coe
                                                                                                                                    d_Q4_238
                                                                                                                                    (coe
                                                                                                                                       v28))
                                                                                                                                 (coe
                                                                                                                                    d_Q4_238
                                                                                                                                    (coe
                                                                                                                                       v62))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                              (coe
                                                                                                                                 d_Q2b_236
                                                                                                                                 (coe
                                                                                                                                    v28))
                                                                                                                              (coe
                                                                                                                                 d_Q2b_236
                                                                                                                                 (coe
                                                                                                                                    v62))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                           (coe
                                                                                                                              d_Q2a_234
                                                                                                                              (coe
                                                                                                                                 v28))
                                                                                                                           (coe
                                                                                                                              d_Q2a_234
                                                                                                                              (coe
                                                                                                                                 v62))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2684
                                                                                                                        (coe
                                                                                                                           d_Q1_232
                                                                                                                           (coe
                                                                                                                              v28))
                                                                                                                        (coe
                                                                                                                           d_Q1_232
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
                                                                                                               (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Script.d_ps_448
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
                                                                                                   (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
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
                                                                              (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Script.d_ps_448
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
                                                         MAlonzo.Code.Ledger.Script.d_ps_448
                                                         (coe v1)))
                                                   v41 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_448 (coe v1)))
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
-- Ledger.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_576 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_576 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_576
du_DecEq'45'PParamGroup_576 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_576
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_168
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_168
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
                          C_EconomicGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_170
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_168
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_170
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
                          C_TechnicalGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_172
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_168
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_172
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
                          C_GovernanceGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_174
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_168
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_174
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
                          C_SecurityGroup_176
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_176
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_168
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_170
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_172
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_174
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_176
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
d_Show'45'DrepThresholds_578 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_578 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_578
du_Show'45'DrepThresholds_578 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_578
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
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
-- Ledger.PParams.Show-PoolThresholds
d_Show'45'PoolThresholds_580 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_580 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_580
du_Show'45'PoolThresholds_580 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_580
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_2403 v1 v2 v3 v4 v5
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
-- Ledger.PParams.Show-PParams
d_Show'45'PParams_582 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_582 ~v0 v1 v2 = du_Show'45'PParams_582 v1 v2
du_Show'45'PParams_582 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_582 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3851 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
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
                                                                                                                  (MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Script.d_ps_448
                                                                                                                        (coe
                                                                                                                           v1)))
                                                                                                                  v6)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                               (MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Script.d_ps_448
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
                                                                                    (MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_448
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
                                                               (MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
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
                                                   (MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_448
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
                                                                  (coe d_Q1_232 (coe v28)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_234 (coe v28)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_236 (coe v28)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_238 (coe v28)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_240 (coe v28)))))))
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
                                                                                 d_P1_200
                                                                                 (coe v29)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_202
                                                                              (coe v29)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_204 (coe v29)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_206 (coe v29)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_208 (coe v29)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_210 (coe v29)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_212 (coe v29)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_214 (coe v29)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_216 (coe v29)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_218 (coe v29)))))))
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
                           (MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60 (coe v0)) v35))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_586 a0 a1 a2 = ()
data T_PParamsUpdate_586
  = C_PParamsUpdate'46'constructor_786713 (Maybe Integer)
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
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_178)
                                          (Maybe T_PoolThresholds_220) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_654 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxBlockSize_654 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_656 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxTxSize_656 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_658 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxHeaderSize_658 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_660 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxValSize_660 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_662 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxCollateralInputs_662 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_664 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxTxExUnits_664 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_666 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxBlockExUnits_666 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_668 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_668 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a
d_a_670 :: T_PParamsUpdate_586 -> Maybe Integer
d_a_670 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.b
d_b_672 :: T_PParamsUpdate_586 -> Maybe Integer
d_b_672 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_674 :: T_PParamsUpdate_586 -> Maybe Integer
d_keyDeposit_674 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_676 :: T_PParamsUpdate_586 -> Maybe Integer
d_poolDeposit_676 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_678 :: T_PParamsUpdate_586 -> Maybe Integer
d_coinsPerUTxOByte_678 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_680 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_prices_680 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_682 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_682 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_684 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerTx_684 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_686 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerBlock_686 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_688 :: T_PParamsUpdate_586 -> Maybe Integer
d_refScriptCostStride_688 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_690 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_690 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_692 :: T_PParamsUpdate_586 -> Maybe Integer
d_minUTxOValue_692 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_694 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_694 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_696 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_Emax_696 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_698 :: T_PParamsUpdate_586 -> Maybe Integer
d_nopt_698 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_700 :: T_PParamsUpdate_586 -> Maybe Integer
d_collateralPercentage_700 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_702 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_costmdls_702 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_704 ::
  T_PParamsUpdate_586 -> Maybe T_DrepThresholds_178
d_drepThresholds_704 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_706 ::
  T_PParamsUpdate_586 -> Maybe T_PoolThresholds_220
d_poolThresholds_706 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_708 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionLifetime_708 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_710 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionDeposit_710 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_712 :: T_PParamsUpdate_586 -> Maybe Integer
d_drepDeposit_712 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_714 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_drepActivity_714 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_716 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMinSize_716 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_718 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMaxTermLength_718 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_786713 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_720 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 -> ()
d_paramsUpdateWellFormed_720 = erased
-- Ledger.PParams.PParamsUpdate._._.Emax
d_Emax_730 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_Emax_730 v0 = coe d_Emax_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a
d_a_732 :: T_PParamsUpdate_586 -> Maybe Integer
d_a_732 v0 = coe d_a_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a0
d_a0_734 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_734 v0 = coe d_a0_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.b
d_b_736 :: T_PParamsUpdate_586 -> Maybe Integer
d_b_736 v0 = coe d_b_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_738 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMaxTermLength_738 v0 = coe d_ccMaxTermLength_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_740 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMinSize_740 v0 = coe d_ccMinSize_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_742 :: T_PParamsUpdate_586 -> Maybe Integer
d_coinsPerUTxOByte_742 v0 = coe d_coinsPerUTxOByte_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_744 :: T_PParamsUpdate_586 -> Maybe Integer
d_collateralPercentage_744 v0
  = coe d_collateralPercentage_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.costmdls
d_costmdls_746 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_costmdls_746 v0 = coe d_costmdls_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_748 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_drepActivity_748 v0 = coe d_drepActivity_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_750 :: T_PParamsUpdate_586 -> Maybe Integer
d_drepDeposit_750 v0 = coe d_drepDeposit_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_752 ::
  T_PParamsUpdate_586 -> Maybe T_DrepThresholds_178
d_drepThresholds_752 v0 = coe d_drepThresholds_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_754 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionDeposit_754 v0 = coe d_govActionDeposit_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_756 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionLifetime_756 v0 = coe d_govActionLifetime_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_758 :: T_PParamsUpdate_586 -> Maybe Integer
d_keyDeposit_758 v0 = coe d_keyDeposit_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_760 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxBlockExUnits_760 v0 = coe d_maxBlockExUnits_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_762 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxBlockSize_762 v0 = coe d_maxBlockSize_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_764 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxCollateralInputs_764 v0
  = coe d_maxCollateralInputs_662 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_766 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxHeaderSize_766 v0 = coe d_maxHeaderSize_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_768 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerBlock_768 v0
  = coe d_maxRefScriptSizePerBlock_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_770 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerTx_770 v0
  = coe d_maxRefScriptSizePerTx_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_772 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxTxExUnits_772 v0 = coe d_maxTxExUnits_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_774 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxTxSize_774 v0 = coe d_maxTxSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_776 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxValSize_776 v0 = coe d_maxValSize_660 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_778 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_778 v0
  = coe d_minFeeRefScriptCoinsPerByte_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_780 :: T_PParamsUpdate_586 -> Maybe Integer
d_minUTxOValue_780 v0 = coe d_minUTxOValue_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.nopt
d_nopt_782 :: T_PParamsUpdate_586 -> Maybe Integer
d_nopt_782 v0 = coe d_nopt_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_784 :: T_PParamsUpdate_586 -> Maybe Integer
d_poolDeposit_784 v0 = coe d_poolDeposit_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_786 ::
  T_PParamsUpdate_586 -> Maybe T_PoolThresholds_220
d_poolThresholds_786 v0 = coe d_poolThresholds_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.prices
d_prices_788 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_prices_788 v0 = coe d_prices_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.pv
d_pv_790 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_790 v0 = coe d_pv_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_792 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_792 v0
  = coe d_refScriptCostMultiplier_690 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_794 :: T_PParamsUpdate_586 -> Maybe Integer
d_refScriptCostStride_794 v0
  = coe d_refScriptCostStride_688 (coe v0)
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_798 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_798 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_798 v3
du_paramsUpdateWellFormed'63'_798 ::
  T_PParamsUpdate_586 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_798 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_428
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_maxBlockSize_654 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_656 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_658 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_660 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_coinsPerUTxOByte_678 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_676 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_700 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_718 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_708 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_710 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_712 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_802 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 -> Bool
d_modifiesNetworkGroup_802 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_802 v3
du_modifiesNetworkGroup_802 :: T_PParamsUpdate_586 -> Bool
du_modifiesNetworkGroup_802 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_654 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_656 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_658 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_660 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_662 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_664 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_666 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_668 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_808 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_Emax_808 v0 = coe d_Emax_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_810 :: T_PParamsUpdate_586 -> Maybe Integer
d_a_810 v0 = coe d_a_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_812 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_812 v0 = coe d_a0_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_814 :: T_PParamsUpdate_586 -> Maybe Integer
d_b_814 v0 = coe d_b_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_816 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMaxTermLength_816 v0 = coe d_ccMaxTermLength_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_818 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMinSize_818 v0 = coe d_ccMinSize_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_820 :: T_PParamsUpdate_586 -> Maybe Integer
d_coinsPerUTxOByte_820 v0 = coe d_coinsPerUTxOByte_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_822 :: T_PParamsUpdate_586 -> Maybe Integer
d_collateralPercentage_822 v0
  = coe d_collateralPercentage_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_824 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_costmdls_824 v0 = coe d_costmdls_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_826 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_drepActivity_826 v0 = coe d_drepActivity_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_828 :: T_PParamsUpdate_586 -> Maybe Integer
d_drepDeposit_828 v0 = coe d_drepDeposit_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_830 ::
  T_PParamsUpdate_586 -> Maybe T_DrepThresholds_178
d_drepThresholds_830 v0 = coe d_drepThresholds_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_832 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionDeposit_832 v0 = coe d_govActionDeposit_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_834 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionLifetime_834 v0 = coe d_govActionLifetime_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_836 :: T_PParamsUpdate_586 -> Maybe Integer
d_keyDeposit_836 v0 = coe d_keyDeposit_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_838 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxBlockExUnits_838 v0 = coe d_maxBlockExUnits_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_840 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxBlockSize_840 v0 = coe d_maxBlockSize_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_842 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxCollateralInputs_842 v0
  = coe d_maxCollateralInputs_662 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_844 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxHeaderSize_844 v0 = coe d_maxHeaderSize_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_846 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerBlock_846 v0
  = coe d_maxRefScriptSizePerBlock_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_848 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerTx_848 v0
  = coe d_maxRefScriptSizePerTx_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_850 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxTxExUnits_850 v0 = coe d_maxTxExUnits_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_852 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxTxSize_852 v0 = coe d_maxTxSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_854 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxValSize_854 v0 = coe d_maxValSize_660 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_856 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_856 v0
  = coe d_minFeeRefScriptCoinsPerByte_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_858 :: T_PParamsUpdate_586 -> Maybe Integer
d_minUTxOValue_858 v0 = coe d_minUTxOValue_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_860 :: T_PParamsUpdate_586 -> Maybe Integer
d_nopt_860 v0 = coe d_nopt_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_862 :: T_PParamsUpdate_586 -> Maybe Integer
d_poolDeposit_862 v0 = coe d_poolDeposit_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_864 ::
  T_PParamsUpdate_586 -> Maybe T_PoolThresholds_220
d_poolThresholds_864 v0 = coe d_poolThresholds_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_866 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_prices_866 v0 = coe d_prices_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_868 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_868 v0 = coe d_pv_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_870 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_870 v0
  = coe d_refScriptCostMultiplier_690 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_872 :: T_PParamsUpdate_586 -> Maybe Integer
d_refScriptCostStride_872 v0
  = coe d_refScriptCostStride_688 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_874 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 -> Bool
d_modifiesEconomicGroup_874 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_874 v3
du_modifiesEconomicGroup_874 :: T_PParamsUpdate_586 -> Bool
du_modifiesEconomicGroup_874 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_670 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_672 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_674 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_676 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_coinsPerUTxOByte_678 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_minFeeRefScriptCoinsPerByte_682 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxRefScriptSizePerTx_684 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_maxRefScriptSizePerBlock_686 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_refScriptCostStride_688 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_refScriptCostMultiplier_690 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_prices_680 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_minUTxOValue_692 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_880 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_Emax_880 v0 = coe d_Emax_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_882 :: T_PParamsUpdate_586 -> Maybe Integer
d_a_882 v0 = coe d_a_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_884 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_884 v0 = coe d_a0_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_886 :: T_PParamsUpdate_586 -> Maybe Integer
d_b_886 v0 = coe d_b_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_888 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMaxTermLength_888 v0 = coe d_ccMaxTermLength_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_890 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMinSize_890 v0 = coe d_ccMinSize_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_892 :: T_PParamsUpdate_586 -> Maybe Integer
d_coinsPerUTxOByte_892 v0 = coe d_coinsPerUTxOByte_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_894 :: T_PParamsUpdate_586 -> Maybe Integer
d_collateralPercentage_894 v0
  = coe d_collateralPercentage_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_896 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_costmdls_896 v0 = coe d_costmdls_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_898 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_drepActivity_898 v0 = coe d_drepActivity_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_900 :: T_PParamsUpdate_586 -> Maybe Integer
d_drepDeposit_900 v0 = coe d_drepDeposit_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_902 ::
  T_PParamsUpdate_586 -> Maybe T_DrepThresholds_178
d_drepThresholds_902 v0 = coe d_drepThresholds_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_904 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionDeposit_904 v0 = coe d_govActionDeposit_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_906 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionLifetime_906 v0 = coe d_govActionLifetime_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_908 :: T_PParamsUpdate_586 -> Maybe Integer
d_keyDeposit_908 v0 = coe d_keyDeposit_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_910 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxBlockExUnits_910 v0 = coe d_maxBlockExUnits_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_912 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxBlockSize_912 v0 = coe d_maxBlockSize_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_914 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxCollateralInputs_914 v0
  = coe d_maxCollateralInputs_662 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_916 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxHeaderSize_916 v0 = coe d_maxHeaderSize_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_918 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerBlock_918 v0
  = coe d_maxRefScriptSizePerBlock_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_920 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerTx_920 v0
  = coe d_maxRefScriptSizePerTx_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_922 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxTxExUnits_922 v0 = coe d_maxTxExUnits_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_924 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxTxSize_924 v0 = coe d_maxTxSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_926 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxValSize_926 v0 = coe d_maxValSize_660 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_928 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_928 v0
  = coe d_minFeeRefScriptCoinsPerByte_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_930 :: T_PParamsUpdate_586 -> Maybe Integer
d_minUTxOValue_930 v0 = coe d_minUTxOValue_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_932 :: T_PParamsUpdate_586 -> Maybe Integer
d_nopt_932 v0 = coe d_nopt_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_934 :: T_PParamsUpdate_586 -> Maybe Integer
d_poolDeposit_934 v0 = coe d_poolDeposit_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_936 ::
  T_PParamsUpdate_586 -> Maybe T_PoolThresholds_220
d_poolThresholds_936 v0 = coe d_poolThresholds_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_938 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_prices_938 v0 = coe d_prices_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_940 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_940 v0 = coe d_pv_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_942 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_942 v0
  = coe d_refScriptCostMultiplier_690 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_944 :: T_PParamsUpdate_586 -> Maybe Integer
d_refScriptCostStride_944 v0
  = coe d_refScriptCostStride_688 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_946 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 -> Bool
d_modifiesTechnicalGroup_946 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_946 v3
du_modifiesTechnicalGroup_946 :: T_PParamsUpdate_586 -> Bool
du_modifiesTechnicalGroup_946 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_694 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_696 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_698 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_700 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_702 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_952 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_Emax_952 v0 = coe d_Emax_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_954 :: T_PParamsUpdate_586 -> Maybe Integer
d_a_954 v0 = coe d_a_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_956 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_956 v0 = coe d_a0_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_958 :: T_PParamsUpdate_586 -> Maybe Integer
d_b_958 v0 = coe d_b_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_960 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMaxTermLength_960 v0 = coe d_ccMaxTermLength_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_962 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMinSize_962 v0 = coe d_ccMinSize_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_964 :: T_PParamsUpdate_586 -> Maybe Integer
d_coinsPerUTxOByte_964 v0 = coe d_coinsPerUTxOByte_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_966 :: T_PParamsUpdate_586 -> Maybe Integer
d_collateralPercentage_966 v0
  = coe d_collateralPercentage_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_968 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_costmdls_968 v0 = coe d_costmdls_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_970 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_drepActivity_970 v0 = coe d_drepActivity_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_972 :: T_PParamsUpdate_586 -> Maybe Integer
d_drepDeposit_972 v0 = coe d_drepDeposit_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_974 ::
  T_PParamsUpdate_586 -> Maybe T_DrepThresholds_178
d_drepThresholds_974 v0 = coe d_drepThresholds_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_976 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionDeposit_976 v0 = coe d_govActionDeposit_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_978 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionLifetime_978 v0 = coe d_govActionLifetime_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_980 :: T_PParamsUpdate_586 -> Maybe Integer
d_keyDeposit_980 v0 = coe d_keyDeposit_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_982 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxBlockExUnits_982 v0 = coe d_maxBlockExUnits_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_984 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxBlockSize_984 v0 = coe d_maxBlockSize_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_986 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxCollateralInputs_986 v0
  = coe d_maxCollateralInputs_662 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_988 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxHeaderSize_988 v0 = coe d_maxHeaderSize_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_990 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerBlock_990 v0
  = coe d_maxRefScriptSizePerBlock_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_992 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerTx_992 v0
  = coe d_maxRefScriptSizePerTx_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_994 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxTxExUnits_994 v0 = coe d_maxTxExUnits_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_996 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxTxSize_996 v0 = coe d_maxTxSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_998 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxValSize_998 v0 = coe d_maxValSize_660 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1000 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1000 v0
  = coe d_minFeeRefScriptCoinsPerByte_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1002 :: T_PParamsUpdate_586 -> Maybe Integer
d_minUTxOValue_1002 v0 = coe d_minUTxOValue_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_1004 :: T_PParamsUpdate_586 -> Maybe Integer
d_nopt_1004 v0 = coe d_nopt_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1006 :: T_PParamsUpdate_586 -> Maybe Integer
d_poolDeposit_1006 v0 = coe d_poolDeposit_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1008 ::
  T_PParamsUpdate_586 -> Maybe T_PoolThresholds_220
d_poolThresholds_1008 v0 = coe d_poolThresholds_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_1010 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_prices_1010 v0 = coe d_prices_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_1012 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1012 v0 = coe d_pv_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1014 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1014 v0
  = coe d_refScriptCostMultiplier_690 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1016 :: T_PParamsUpdate_586 -> Maybe Integer
d_refScriptCostStride_1016 v0
  = coe d_refScriptCostStride_688 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1018 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 -> Bool
d_modifiesGovernanceGroup_1018 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_1018 v3
du_modifiesGovernanceGroup_1018 :: T_PParamsUpdate_586 -> Bool
du_modifiesGovernanceGroup_1018 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_704 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_706 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_708 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_710 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_712 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_714 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_716 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_718 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_1024 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_Emax_1024 v0 = coe d_Emax_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_1026 :: T_PParamsUpdate_586 -> Maybe Integer
d_a_1026 v0 = coe d_a_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_1028 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1028 v0 = coe d_a0_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_1030 :: T_PParamsUpdate_586 -> Maybe Integer
d_b_1030 v0 = coe d_b_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1032 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMaxTermLength_1032 v0 = coe d_ccMaxTermLength_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1034 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMinSize_1034 v0 = coe d_ccMinSize_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1036 :: T_PParamsUpdate_586 -> Maybe Integer
d_coinsPerUTxOByte_1036 v0 = coe d_coinsPerUTxOByte_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1038 :: T_PParamsUpdate_586 -> Maybe Integer
d_collateralPercentage_1038 v0
  = coe d_collateralPercentage_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_1040 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_costmdls_1040 v0 = coe d_costmdls_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1042 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_drepActivity_1042 v0 = coe d_drepActivity_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1044 :: T_PParamsUpdate_586 -> Maybe Integer
d_drepDeposit_1044 v0 = coe d_drepDeposit_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1046 ::
  T_PParamsUpdate_586 -> Maybe T_DrepThresholds_178
d_drepThresholds_1046 v0 = coe d_drepThresholds_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1048 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionDeposit_1048 v0 = coe d_govActionDeposit_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1050 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionLifetime_1050 v0 = coe d_govActionLifetime_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1052 :: T_PParamsUpdate_586 -> Maybe Integer
d_keyDeposit_1052 v0 = coe d_keyDeposit_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1054 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxBlockExUnits_1054 v0 = coe d_maxBlockExUnits_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1056 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxBlockSize_1056 v0 = coe d_maxBlockSize_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1058 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxCollateralInputs_1058 v0
  = coe d_maxCollateralInputs_662 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1060 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxHeaderSize_1060 v0 = coe d_maxHeaderSize_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1062 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerBlock_1062 v0
  = coe d_maxRefScriptSizePerBlock_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1064 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerTx_1064 v0
  = coe d_maxRefScriptSizePerTx_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1066 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxTxExUnits_1066 v0 = coe d_maxTxExUnits_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1068 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxTxSize_1068 v0 = coe d_maxTxSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1070 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxValSize_1070 v0 = coe d_maxValSize_660 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1072 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1072 v0
  = coe d_minFeeRefScriptCoinsPerByte_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1074 :: T_PParamsUpdate_586 -> Maybe Integer
d_minUTxOValue_1074 v0 = coe d_minUTxOValue_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_1076 :: T_PParamsUpdate_586 -> Maybe Integer
d_nopt_1076 v0 = coe d_nopt_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1078 :: T_PParamsUpdate_586 -> Maybe Integer
d_poolDeposit_1078 v0 = coe d_poolDeposit_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1080 ::
  T_PParamsUpdate_586 -> Maybe T_PoolThresholds_220
d_poolThresholds_1080 v0 = coe d_poolThresholds_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_1082 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_prices_1082 v0 = coe d_prices_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_1084 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1084 v0 = coe d_pv_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1086 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1086 v0
  = coe d_refScriptCostMultiplier_690 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1088 :: T_PParamsUpdate_586 -> Maybe Integer
d_refScriptCostStride_1088 v0
  = coe d_refScriptCostStride_688 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1090 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 -> [T_PParamGroup_166]
d_modifiedUpdateGroups_1090 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1090 v3
du_modifiedUpdateGroups_1090 ::
  T_PParamsUpdate_586 -> [T_PParamGroup_166]
du_modifiedUpdateGroups_1090 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1098 (coe v0)
         (coe du_modifiesNetworkGroup_802) (coe C_NetworkGroup_168))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1098 (coe v0)
            (coe du_modifiesEconomicGroup_874) (coe C_EconomicGroup_170))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1098 (coe v0)
               (coe du_modifiesTechnicalGroup_946) (coe C_TechnicalGroup_172))
            (coe
               du__'63''9552''8658'__1098 (coe v0)
               (coe du_modifiesGovernanceGroup_1018)
               (coe C_GovernanceGroup_174))))
-- Ledger.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1098 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_586 ->
  (T_PParamsUpdate_586 -> Bool) ->
  T_PParamGroup_166 -> [T_PParamGroup_166]
d__'63''9552''8658'__1098 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1098 v3 v4 v5
du__'63''9552''8658'__1098 ::
  T_PParamsUpdate_586 ->
  (T_PParamsUpdate_586 -> Bool) ->
  T_PParamGroup_166 -> [T_PParamGroup_166]
du__'63''9552''8658'__1098 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94) (coe v1 v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
              (coe
                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
              v2))
      (coe
         (\ v3 ->
            MAlonzo.Code.Class.HasEmptySet.d_'8709'_306
              (coe
                 MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_314
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
-- Ledger.PParams.PParamsUpdate._?↗_
d__'63''8599'__1106 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1106 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1106 v4 v5
du__'63''8599'__1106 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1106 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1120 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1120 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1120 v4
du_'8801''45'update_1120 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_1120 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (\ v1 -> coe du_to_1140 (coe v0)) erased
-- Ledger.PParams.PParamsUpdate._.to
d_to_1140 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
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
d_to_1140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1140 v8
du_to_1140 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1140 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate._.from
d_from_1152 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
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
d_from_1152 = erased
-- Ledger.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1154 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_242 -> T_PParamsUpdate_586 -> T_PParams_242
d_applyPParamsUpdate_1154 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1154 v3 v4
du_applyPParamsUpdate_1154 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> T_PParams_242
du_applyPParamsUpdate_1154 v0 v1
  = coe
      C_PParams'46'constructor_3851
      (coe
         du__'63''8599'__1106 (coe d_maxBlockSize_654 (coe v1))
         (coe d_maxBlockSize_310 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxTxSize_656 (coe v1))
         (coe d_maxTxSize_312 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxHeaderSize_658 (coe v1))
         (coe d_maxHeaderSize_314 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxTxExUnits_664 (coe v1))
         (coe d_maxTxExUnits_316 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxBlockExUnits_666 (coe v1))
         (coe d_maxBlockExUnits_318 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxValSize_660 (coe v1))
         (coe d_maxValSize_320 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxCollateralInputs_662 (coe v1))
         (coe d_maxCollateralInputs_322 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_pv_668 (coe v1))
         (coe d_pv_324 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_a_670 (coe v1)) (coe d_a_326 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_b_672 (coe v1)) (coe d_b_328 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_keyDeposit_674 (coe v1))
         (coe d_keyDeposit_330 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_poolDeposit_676 (coe v1))
         (coe d_poolDeposit_332 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_coinsPerUTxOByte_678 (coe v1))
         (coe d_coinsPerUTxOByte_334 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_prices_680 (coe v1))
         (coe d_prices_336 (coe v0)))
      (coe
         du__'63''8599'__1106
         (coe d_minFeeRefScriptCoinsPerByte_682 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_338 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxRefScriptSizePerTx_684 (coe v1))
         (coe d_maxRefScriptSizePerTx_340 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_maxRefScriptSizePerBlock_686 (coe v1))
         (coe d_maxRefScriptSizePerBlock_342 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_refScriptCostStride_688 (coe v1))
         (coe d_refScriptCostStride_344 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_refScriptCostMultiplier_690 (coe v1))
         (coe d_refScriptCostMultiplier_346 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_minUTxOValue_692 (coe v1))
         (coe d_minUTxOValue_348 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_Emax_696 (coe v1))
         (coe d_Emax_350 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_nopt_698 (coe v1))
         (coe d_nopt_352 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_a0_694 (coe v1))
         (coe d_a0_354 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_collateralPercentage_700 (coe v1))
         (coe d_collateralPercentage_356 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_costmdls_702 (coe v1))
         (coe d_costmdls_358 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_poolThresholds_706 (coe v1))
         (coe d_poolThresholds_360 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_drepThresholds_704 (coe v1))
         (coe d_drepThresholds_362 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_ccMinSize_716 (coe v1))
         (coe d_ccMinSize_364 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_ccMaxTermLength_718 (coe v1))
         (coe d_ccMaxTermLength_366 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_govActionLifetime_708 (coe v1))
         (coe d_govActionLifetime_368 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_govActionDeposit_710 (coe v1))
         (coe d_govActionDeposit_370 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_drepDeposit_712 (coe v1))
         (coe d_drepDeposit_372 (coe v0)))
      (coe
         du__'63''8599'__1106 (coe d_drepActivity_714 (coe v1))
         (coe d_drepActivity_374 (coe v0)))
-- Ledger.PParams.PParamsUpdate._.P.Emax
d_Emax_1166 :: T_PParams_242 -> T_PParamsUpdate_586 -> AgdaAny
d_Emax_1166 v0 ~v1 = du_Emax_1166 v0
du_Emax_1166 :: T_PParams_242 -> AgdaAny
du_Emax_1166 v0 = coe d_Emax_350 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a
d_a_1168 :: T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_a_1168 v0 ~v1 = du_a_1168 v0
du_a_1168 :: T_PParams_242 -> Integer
du_a_1168 v0 = coe d_a_326 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a0
d_a0_1170 ::
  T_PParams_242 ->
  T_PParamsUpdate_586 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1170 v0 ~v1 = du_a0_1170 v0
du_a0_1170 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1170 v0 = coe d_a0_354 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.b
d_b_1172 :: T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_b_1172 v0 ~v1 = du_b_1172 v0
du_b_1172 :: T_PParams_242 -> Integer
du_b_1172 v0 = coe d_b_328 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1174 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_ccMaxTermLength_1174 v0 ~v1 = du_ccMaxTermLength_1174 v0
du_ccMaxTermLength_1174 :: T_PParams_242 -> Integer
du_ccMaxTermLength_1174 v0 = coe d_ccMaxTermLength_366 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1176 :: T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_ccMinSize_1176 v0 ~v1 = du_ccMinSize_1176 v0
du_ccMinSize_1176 :: T_PParams_242 -> Integer
du_ccMinSize_1176 v0 = coe d_ccMinSize_364 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1178 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_coinsPerUTxOByte_1178 v0 ~v1 = du_coinsPerUTxOByte_1178 v0
du_coinsPerUTxOByte_1178 :: T_PParams_242 -> Integer
du_coinsPerUTxOByte_1178 v0 = coe d_coinsPerUTxOByte_334 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1180 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_collateralPercentage_1180 v0 ~v1
  = du_collateralPercentage_1180 v0
du_collateralPercentage_1180 :: T_PParams_242 -> Integer
du_collateralPercentage_1180 v0
  = coe d_collateralPercentage_356 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1182 :: T_PParams_242 -> T_PParamsUpdate_586 -> AgdaAny
d_costmdls_1182 v0 ~v1 = du_costmdls_1182 v0
du_costmdls_1182 :: T_PParams_242 -> AgdaAny
du_costmdls_1182 v0 = coe d_costmdls_358 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1184 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> AgdaAny
d_drepActivity_1184 v0 ~v1 = du_drepActivity_1184 v0
du_drepActivity_1184 :: T_PParams_242 -> AgdaAny
du_drepActivity_1184 v0 = coe d_drepActivity_374 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1186 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_drepDeposit_1186 v0 ~v1 = du_drepDeposit_1186 v0
du_drepDeposit_1186 :: T_PParams_242 -> Integer
du_drepDeposit_1186 v0 = coe d_drepDeposit_372 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1188 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> T_DrepThresholds_178
d_drepThresholds_1188 v0 ~v1 = du_drepThresholds_1188 v0
du_drepThresholds_1188 :: T_PParams_242 -> T_DrepThresholds_178
du_drepThresholds_1188 v0 = coe d_drepThresholds_362 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1190 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_govActionDeposit_1190 v0 ~v1 = du_govActionDeposit_1190 v0
du_govActionDeposit_1190 :: T_PParams_242 -> Integer
du_govActionDeposit_1190 v0 = coe d_govActionDeposit_370 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1192 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_govActionLifetime_1192 v0 ~v1 = du_govActionLifetime_1192 v0
du_govActionLifetime_1192 :: T_PParams_242 -> Integer
du_govActionLifetime_1192 v0 = coe d_govActionLifetime_368 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1194 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_keyDeposit_1194 v0 ~v1 = du_keyDeposit_1194 v0
du_keyDeposit_1194 :: T_PParams_242 -> Integer
du_keyDeposit_1194 v0 = coe d_keyDeposit_330 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1196 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> AgdaAny
d_maxBlockExUnits_1196 v0 ~v1 = du_maxBlockExUnits_1196 v0
du_maxBlockExUnits_1196 :: T_PParams_242 -> AgdaAny
du_maxBlockExUnits_1196 v0 = coe d_maxBlockExUnits_318 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1198 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_maxBlockSize_1198 v0 ~v1 = du_maxBlockSize_1198 v0
du_maxBlockSize_1198 :: T_PParams_242 -> Integer
du_maxBlockSize_1198 v0 = coe d_maxBlockSize_310 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1200 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_maxCollateralInputs_1200 v0 ~v1 = du_maxCollateralInputs_1200 v0
du_maxCollateralInputs_1200 :: T_PParams_242 -> Integer
du_maxCollateralInputs_1200 v0
  = coe d_maxCollateralInputs_322 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1202 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_maxHeaderSize_1202 v0 ~v1 = du_maxHeaderSize_1202 v0
du_maxHeaderSize_1202 :: T_PParams_242 -> Integer
du_maxHeaderSize_1202 v0 = coe d_maxHeaderSize_314 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1204 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_maxRefScriptSizePerBlock_1204 v0 ~v1
  = du_maxRefScriptSizePerBlock_1204 v0
du_maxRefScriptSizePerBlock_1204 :: T_PParams_242 -> Integer
du_maxRefScriptSizePerBlock_1204 v0
  = coe d_maxRefScriptSizePerBlock_342 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1206 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_maxRefScriptSizePerTx_1206 v0 ~v1
  = du_maxRefScriptSizePerTx_1206 v0
du_maxRefScriptSizePerTx_1206 :: T_PParams_242 -> Integer
du_maxRefScriptSizePerTx_1206 v0
  = coe d_maxRefScriptSizePerTx_340 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1208 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> AgdaAny
d_maxTxExUnits_1208 v0 ~v1 = du_maxTxExUnits_1208 v0
du_maxTxExUnits_1208 :: T_PParams_242 -> AgdaAny
du_maxTxExUnits_1208 v0 = coe d_maxTxExUnits_316 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1210 :: T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_maxTxSize_1210 v0 ~v1 = du_maxTxSize_1210 v0
du_maxTxSize_1210 :: T_PParams_242 -> Integer
du_maxTxSize_1210 v0 = coe d_maxTxSize_312 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1212 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_maxValSize_1212 v0 ~v1 = du_maxValSize_1212 v0
du_maxValSize_1212 :: T_PParams_242 -> Integer
du_maxValSize_1212 v0 = coe d_maxValSize_320 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1214 ::
  T_PParams_242 ->
  T_PParamsUpdate_586 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1214 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1214 v0
du_minFeeRefScriptCoinsPerByte_1214 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1214 v0
  = coe d_minFeeRefScriptCoinsPerByte_338 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1216 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_minUTxOValue_1216 v0 ~v1 = du_minUTxOValue_1216 v0
du_minUTxOValue_1216 :: T_PParams_242 -> Integer
du_minUTxOValue_1216 v0 = coe d_minUTxOValue_348 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.nopt
d_nopt_1218 :: T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_nopt_1218 v0 ~v1 = du_nopt_1218 v0
du_nopt_1218 :: T_PParams_242 -> Integer
du_nopt_1218 v0 = coe d_nopt_352 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1220 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_poolDeposit_1220 v0 ~v1 = du_poolDeposit_1220 v0
du_poolDeposit_1220 :: T_PParams_242 -> Integer
du_poolDeposit_1220 v0 = coe d_poolDeposit_332 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1222 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> T_PoolThresholds_220
d_poolThresholds_1222 v0 ~v1 = du_poolThresholds_1222 v0
du_poolThresholds_1222 :: T_PParams_242 -> T_PoolThresholds_220
du_poolThresholds_1222 v0 = coe d_poolThresholds_360 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.prices
d_prices_1224 :: T_PParams_242 -> T_PParamsUpdate_586 -> AgdaAny
d_prices_1224 v0 ~v1 = du_prices_1224 v0
du_prices_1224 :: T_PParams_242 -> AgdaAny
du_prices_1224 v0 = coe d_prices_336 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.pv
d_pv_1226 ::
  T_PParams_242 ->
  T_PParamsUpdate_586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1226 v0 ~v1 = du_pv_1226 v0
du_pv_1226 ::
  T_PParams_242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1226 v0 = coe d_pv_324 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1228 ::
  T_PParams_242 ->
  T_PParamsUpdate_586 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1228 v0 ~v1
  = du_refScriptCostMultiplier_1228 v0
du_refScriptCostMultiplier_1228 ::
  T_PParams_242 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1228 v0
  = coe d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1230 ::
  T_PParams_242 -> T_PParamsUpdate_586 -> Integer
d_refScriptCostStride_1230 v0 ~v1 = du_refScriptCostStride_1230 v0
du_refScriptCostStride_1230 :: T_PParams_242 -> Integer
du_refScriptCostStride_1230 v0
  = coe d_refScriptCostStride_344 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.Emax
d_Emax_1234 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_Emax_1234 v0 = coe d_Emax_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a
d_a_1236 :: T_PParamsUpdate_586 -> Maybe Integer
d_a_1236 v0 = coe d_a_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a0
d_a0_1238 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1238 v0 = coe d_a0_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.b
d_b_1240 :: T_PParamsUpdate_586 -> Maybe Integer
d_b_1240 v0 = coe d_b_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1242 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMaxTermLength_1242 v0 = coe d_ccMaxTermLength_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1244 :: T_PParamsUpdate_586 -> Maybe Integer
d_ccMinSize_1244 v0 = coe d_ccMinSize_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1246 :: T_PParamsUpdate_586 -> Maybe Integer
d_coinsPerUTxOByte_1246 v0 = coe d_coinsPerUTxOByte_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1248 :: T_PParamsUpdate_586 -> Maybe Integer
d_collateralPercentage_1248 v0
  = coe d_collateralPercentage_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1250 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_costmdls_1250 v0 = coe d_costmdls_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1252 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_drepActivity_1252 v0 = coe d_drepActivity_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1254 :: T_PParamsUpdate_586 -> Maybe Integer
d_drepDeposit_1254 v0 = coe d_drepDeposit_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1256 ::
  T_PParamsUpdate_586 -> Maybe T_DrepThresholds_178
d_drepThresholds_1256 v0 = coe d_drepThresholds_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1258 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionDeposit_1258 v0 = coe d_govActionDeposit_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1260 :: T_PParamsUpdate_586 -> Maybe Integer
d_govActionLifetime_1260 v0 = coe d_govActionLifetime_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1262 :: T_PParamsUpdate_586 -> Maybe Integer
d_keyDeposit_1262 v0 = coe d_keyDeposit_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1264 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxBlockExUnits_1264 v0 = coe d_maxBlockExUnits_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1266 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxBlockSize_1266 v0 = coe d_maxBlockSize_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1268 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxCollateralInputs_1268 v0
  = coe d_maxCollateralInputs_662 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1270 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxHeaderSize_1270 v0 = coe d_maxHeaderSize_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1272 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerBlock_1272 v0
  = coe d_maxRefScriptSizePerBlock_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1274 ::
  T_PParamsUpdate_586 -> Maybe Integer
d_maxRefScriptSizePerTx_1274 v0
  = coe d_maxRefScriptSizePerTx_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1276 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_maxTxExUnits_1276 v0 = coe d_maxTxExUnits_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1278 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxTxSize_1278 v0 = coe d_maxTxSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1280 :: T_PParamsUpdate_586 -> Maybe Integer
d_maxValSize_1280 v0 = coe d_maxValSize_660 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1282 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1282 v0
  = coe d_minFeeRefScriptCoinsPerByte_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1284 :: T_PParamsUpdate_586 -> Maybe Integer
d_minUTxOValue_1284 v0 = coe d_minUTxOValue_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.nopt
d_nopt_1286 :: T_PParamsUpdate_586 -> Maybe Integer
d_nopt_1286 v0 = coe d_nopt_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1288 :: T_PParamsUpdate_586 -> Maybe Integer
d_poolDeposit_1288 v0 = coe d_poolDeposit_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1290 ::
  T_PParamsUpdate_586 -> Maybe T_PoolThresholds_220
d_poolThresholds_1290 v0 = coe d_poolThresholds_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.prices
d_prices_1292 :: T_PParamsUpdate_586 -> Maybe AgdaAny
d_prices_1292 v0 = coe d_prices_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.pv
d_pv_1294 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1294 v0 = coe d_pv_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1296 ::
  T_PParamsUpdate_586 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1296 v0
  = coe d_refScriptCostMultiplier_690 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1298 :: T_PParamsUpdate_586 -> Maybe Integer
d_refScriptCostStride_1298 v0
  = coe d_refScriptCostStride_688 (coe v0)
-- Ledger.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1300 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1300 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1300 v1 v2
du_DecEq'45'PParamsUpdate_1300 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1300 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_786713 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     (\ v36 ->
                        case coe v36 of
                          C_PParamsUpdate'46'constructor_786713 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69
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
                                                                                                                           du_DecEq'45'PoolThresholds_572))
                                                                                                                     (coe
                                                                                                                        v63)
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                     (coe
                                                                                                                        du_DecEq'45'DrepThresholds_570))
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
                                                                                                                        MAlonzo.Code.Ledger.Script.d_ps_448
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
                                                                                                            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
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
                                                                                    MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_ps_448
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
                                                                  MAlonzo.Code.Ledger.Script.d_ps_448
                                                                  (coe v1))))
                                                         (coe v43) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_448
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
d_pvCanFollow'63'_1306 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1306 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1306 v3 v4
du_pvCanFollow'63'_1306 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1306 v0 v1
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
                                                                                                   C_canFollowMajor_162)))
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
                                                                                                    C_canFollowMajor_162)))
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
                                                                                                   C_canFollowMinor_164)))
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
                                                                                                    C_canFollowMinor_164)))
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
                                                                                                    C_canFollowMajor_162)))
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
                                                                                                     C_canFollowMajor_162)))
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
                                                                                                    C_canFollowMinor_164)))
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
                                                                                                     C_canFollowMinor_164)))
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
d_PParamsDiff_1354 a0 a1 a2 = ()
data T_PParamsDiff_1354
  = C_PParamsDiff'46'constructor_1472559 (T_PParams_242 ->
                                          AgdaAny -> T_PParams_242)
                                         (AgdaAny -> [T_PParamGroup_166])
                                         (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_1368 :: T_PParamsDiff_1354 -> ()
d_UpdateT_1368 = erased
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1370 ::
  T_PParamsDiff_1354 -> T_PParams_242 -> AgdaAny -> T_PParams_242
d_applyUpdate_1370 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1472559 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_1372 ::
  T_PParamsDiff_1354 -> AgdaAny -> [T_PParamGroup_166]
d_updateGroups_1372 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1472559 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1378 ::
  T_PParamsDiff_1354 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1378 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1472559 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1380 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsDiff_1354 -> AgdaAny -> ()
d_ppdWellFormed_1380 = erased
-- Ledger.PParams.GovParams
d_GovParams_1386 a0 a1 a2 = ()
data T_GovParams_1386
  = C_GovParams'46'constructor_1473263 T_PParamsDiff_1354
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_1392 :: T_PParamsDiff_1354 -> ()
d_UpdateT_1392 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_1394 ::
  T_PParamsDiff_1354 -> T_PParams_242 -> AgdaAny -> T_PParams_242
d_applyUpdate_1394 v0 = coe d_applyUpdate_1370 (coe v0)
-- Ledger.PParams._.ppWF?
d_ppWF'63'_1396 ::
  T_PParamsDiff_1354 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1396 v0 = coe d_ppWF'63'_1378 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_1398 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsDiff_1354 -> AgdaAny -> ()
d_ppdWellFormed_1398 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_1400 ::
  T_PParamsDiff_1354 -> AgdaAny -> [T_PParamGroup_166]
d_updateGroups_1400 v0 = coe d_updateGroups_1372 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_1404 :: T_GovParams_1386 -> T_PParamsDiff_1354
d_ppUpd_1404 v0
  = case coe v0 of
      C_GovParams'46'constructor_1473263 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_1408 :: T_GovParams_1386 -> ()
d_UpdateT_1408 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_1410 ::
  T_GovParams_1386 -> T_PParams_242 -> AgdaAny -> T_PParams_242
d_applyUpdate_1410 v0
  = coe d_applyUpdate_1370 (coe d_ppUpd_1404 (coe v0))
-- Ledger.PParams.GovParams._.ppWF?
d_ppWF'63'_1412 ::
  T_GovParams_1386 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1412 v0
  = coe d_ppWF'63'_1378 (coe d_ppUpd_1404 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1414 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_GovParams_1386 -> AgdaAny -> ()
d_ppdWellFormed_1414 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_1416 ::
  T_GovParams_1386 -> AgdaAny -> [T_PParamGroup_166]
d_updateGroups_1416 v0
  = coe d_updateGroups_1372 (coe d_ppUpd_1404 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1418 ::
  T_GovParams_1386 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1418 v0
  = case coe v0 of
      C_GovParams'46'constructor_1473263 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
