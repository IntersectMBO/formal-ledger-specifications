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
import qualified MAlonzo.Code.Agda.Builtin.Reflection
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
import qualified MAlonzo.Code.Class.To
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
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Refinement.Base
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
-- Ledger.PParams.To-Acnt
d_To'45'Acnt_166 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'Acnt_166 ~v0 ~v1 ~v2 = du_To'45'Acnt_166
du_To'45'Acnt_166 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'Acnt_166
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (144 :: Integer) (14206265836666911035 :: Integer)
                                 "Ledger.PParams.Acnt"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (6 :: Integer) (14798748958053396954 :: Integer)
                                 "Ledger.Prelude.Base.Coin"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (144 :: Integer) (14206265836666911035 :: Integer)
                                    "Ledger.PParams.Acnt"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (6 :: Integer) (14798748958053396954 :: Integer)
                                    "Ledger.Prelude.Base.Coin"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe C_'10214'_'44'_'10215''7491'_154))
-- Ledger.PParams.PParamGroup
d_PParamGroup_168 a0 a1 a2 = ()
data T_PParamGroup_168
  = C_NetworkGroup_170 | C_EconomicGroup_172 | C_TechnicalGroup_174 |
    C_GovernanceGroup_176 | C_SecurityGroup_178
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_180 a0 a1 a2 = ()
data T_DrepThresholds_180
  = C_DrepThresholds'46'constructor_2461 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_204 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_204 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_206 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_206 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_208 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_208 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_210 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_210 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_212 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_212 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_214 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_214 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_216 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_216 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_218 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_218 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_220 ::
  T_DrepThresholds_180 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_220 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_222 a0 a1 a2 = ()
data T_PoolThresholds_222
  = C_PoolThresholds'46'constructor_3025 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_234 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_234 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3025 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_236 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_236 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3025 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_238 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_238 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3025 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_240 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_240 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3025 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5
d_Q5_242 ::
  T_PoolThresholds_222 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_242 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3025 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_244 a0 a1 a2 = ()
data T_PParams_244
  = C_PParams'46'constructor_4619 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_222 T_DrepThresholds_180 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_316 :: T_PParams_244 -> Integer
d_maxBlockSize_316 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_318 :: T_PParams_244 -> Integer
d_maxTxSize_318 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_320 :: T_PParams_244 -> Integer
d_maxHeaderSize_320 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_322 :: T_PParams_244 -> AgdaAny
d_maxTxExUnits_322 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_324 :: T_PParams_244 -> AgdaAny
d_maxBlockExUnits_324 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_326 :: T_PParams_244 -> Integer
d_maxValSize_326 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_328 :: T_PParams_244 -> Integer
d_maxCollateralInputs_328 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_330 :: T_PParams_244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_330 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_332 :: T_PParams_244 -> Integer
d_a_332 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_334 :: T_PParams_244 -> Integer
d_b_334 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.keyDeposit
d_keyDeposit_336 :: T_PParams_244 -> Integer
d_keyDeposit_336 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_338 :: T_PParams_244 -> Integer
d_poolDeposit_338 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.monetaryExpansion
d_monetaryExpansion_340 ::
  T_PParams_244 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_340 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.treasuryCut
d_treasuryCut_342 ::
  T_PParams_244 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_342 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_344 :: T_PParams_244 -> Integer
d_coinsPerUTxOByte_344 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_346 :: T_PParams_244 -> AgdaAny
d_prices_346 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_348 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_348 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_350 :: T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_350 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_352 :: T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_352 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.refScriptCostStride
d_refScriptCostStride_354 :: T_PParams_244 -> Integer
d_refScriptCostStride_354 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_356 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_356 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_358 :: T_PParams_244 -> Integer
d_minUTxOValue_358 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_360 :: T_PParams_244 -> AgdaAny
d_Emax_360 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_362 :: T_PParams_244 -> Integer
d_nopt_362 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_364 :: T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_364 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_366 :: T_PParams_244 -> Integer
d_collateralPercentage_366 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_368 :: T_PParams_244 -> AgdaAny
d_costmdls_368 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_370 :: T_PParams_244 -> T_PoolThresholds_222
d_poolThresholds_370 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_372 :: T_PParams_244 -> T_DrepThresholds_180
d_drepThresholds_372 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_374 :: T_PParams_244 -> Integer
d_ccMinSize_374 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_376 :: T_PParams_244 -> Integer
d_ccMaxTermLength_376 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_378 :: T_PParams_244 -> Integer
d_govActionLifetime_378 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_380 :: T_PParams_244 -> Integer
d_govActionDeposit_380 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_382 :: T_PParams_244 -> Integer
d_drepDeposit_382 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_384 :: T_PParams_244 -> AgdaAny
d_drepActivity_384 v0
  = case coe v0 of
      C_PParams'46'constructor_4619 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.positivePParams
d_positivePParams_386 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_244 -> [Integer]
d_positivePParams_386 ~v0 ~v1 ~v2 v3 = du_positivePParams_386 v3
du_positivePParams_386 :: T_PParams_244 -> [Integer]
du_positivePParams_386 v0
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
                  (coe d_refScriptCostStride_354 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_coinsPerUTxOByte_344 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_poolDeposit_338 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_collateralPercentage_366 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_ccMaxTermLength_376 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionLifetime_378 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_govActionDeposit_380 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_drepDeposit_382 (coe v0))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))
-- Ledger.PParams._._.Emax
d_Emax_396 :: T_PParams_244 -> AgdaAny
d_Emax_396 v0 = coe d_Emax_360 (coe v0)
-- Ledger.PParams._._.a
d_a_398 :: T_PParams_244 -> Integer
d_a_398 v0 = coe d_a_332 (coe v0)
-- Ledger.PParams._._.a0
d_a0_400 :: T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_400 v0 = coe d_a0_364 (coe v0)
-- Ledger.PParams._._.b
d_b_402 :: T_PParams_244 -> Integer
d_b_402 v0 = coe d_b_334 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_404 :: T_PParams_244 -> Integer
d_ccMaxTermLength_404 v0 = coe d_ccMaxTermLength_376 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_406 :: T_PParams_244 -> Integer
d_ccMinSize_406 v0 = coe d_ccMinSize_374 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_408 :: T_PParams_244 -> Integer
d_coinsPerUTxOByte_408 v0 = coe d_coinsPerUTxOByte_344 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_410 :: T_PParams_244 -> Integer
d_collateralPercentage_410 v0
  = coe d_collateralPercentage_366 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_412 :: T_PParams_244 -> AgdaAny
d_costmdls_412 v0 = coe d_costmdls_368 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_414 :: T_PParams_244 -> AgdaAny
d_drepActivity_414 v0 = coe d_drepActivity_384 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_416 :: T_PParams_244 -> Integer
d_drepDeposit_416 v0 = coe d_drepDeposit_382 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_418 :: T_PParams_244 -> T_DrepThresholds_180
d_drepThresholds_418 v0 = coe d_drepThresholds_372 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_420 :: T_PParams_244 -> Integer
d_govActionDeposit_420 v0 = coe d_govActionDeposit_380 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_422 :: T_PParams_244 -> Integer
d_govActionLifetime_422 v0 = coe d_govActionLifetime_378 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_424 :: T_PParams_244 -> Integer
d_keyDeposit_424 v0 = coe d_keyDeposit_336 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_426 :: T_PParams_244 -> AgdaAny
d_maxBlockExUnits_426 v0 = coe d_maxBlockExUnits_324 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_428 :: T_PParams_244 -> Integer
d_maxBlockSize_428 v0 = coe d_maxBlockSize_316 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_430 :: T_PParams_244 -> Integer
d_maxCollateralInputs_430 v0
  = coe d_maxCollateralInputs_328 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_432 :: T_PParams_244 -> Integer
d_maxHeaderSize_432 v0 = coe d_maxHeaderSize_320 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_434 :: T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_434 v0
  = coe d_maxRefScriptSizePerBlock_352 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_436 :: T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_436 v0
  = coe d_maxRefScriptSizePerTx_350 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_438 :: T_PParams_244 -> AgdaAny
d_maxTxExUnits_438 v0 = coe d_maxTxExUnits_322 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_440 :: T_PParams_244 -> Integer
d_maxTxSize_440 v0 = coe d_maxTxSize_318 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_442 :: T_PParams_244 -> Integer
d_maxValSize_442 v0 = coe d_maxValSize_326 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_444 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_444 v0
  = coe d_minFeeRefScriptCoinsPerByte_348 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_446 :: T_PParams_244 -> Integer
d_minUTxOValue_446 v0 = coe d_minUTxOValue_358 (coe v0)
-- Ledger.PParams._._.monetaryExpansion
d_monetaryExpansion_448 ::
  T_PParams_244 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_448 v0 = coe d_monetaryExpansion_340 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_450 :: T_PParams_244 -> Integer
d_nopt_450 v0 = coe d_nopt_362 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_452 :: T_PParams_244 -> Integer
d_poolDeposit_452 v0 = coe d_poolDeposit_338 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_454 :: T_PParams_244 -> T_PoolThresholds_222
d_poolThresholds_454 v0 = coe d_poolThresholds_370 (coe v0)
-- Ledger.PParams._._.prices
d_prices_456 :: T_PParams_244 -> AgdaAny
d_prices_456 v0 = coe d_prices_346 (coe v0)
-- Ledger.PParams._._.pv
d_pv_458 :: T_PParams_244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_458 v0 = coe d_pv_330 (coe v0)
-- Ledger.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_460 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_460 v0
  = coe d_refScriptCostMultiplier_356 (coe v0)
-- Ledger.PParams._._.refScriptCostStride
d_refScriptCostStride_462 :: T_PParams_244 -> Integer
d_refScriptCostStride_462 v0
  = coe d_refScriptCostStride_354 (coe v0)
-- Ledger.PParams._._.treasuryCut
d_treasuryCut_464 ::
  T_PParams_244 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_464 v0 = coe d_treasuryCut_342 (coe v0)
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_466 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_244 -> ()
d_paramsWellFormed_466 = erased
-- Ledger.PParams.paramsWF-elim
d_paramsWF'45'elim_474 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_474 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_474 v5
du_paramsWF'45'elim_474 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_474 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.PParams.refScriptCostStride>0
d_refScriptCostStride'62'0_496 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_496 ~v0 ~v1 ~v2 v3 ~v4
  = du_refScriptCostStride'62'0_496 v3
du_refScriptCostStride'62'0_496 ::
  T_PParams_244 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_496 v0
  = coe
      du_paramsWF'45'elim_474 (coe d_refScriptCostStride_354 (coe v0))
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_502 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_502 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_502
du_DecEq'45'DrepThresholds_502 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_502
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_2461 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                  (coe v21) (coe v10)))
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                               (coe v20) (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                            (coe v19) (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                         (coe v18) (coe v7)))
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                      (coe v17) (coe v6)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                   (coe v16) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                (coe v15) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                             (coe v14) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                          (coe v13) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                       (coe v12) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
d_DecEq'45'PoolThresholds_504 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_504 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_504
du_DecEq'45'PoolThresholds_504 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_504
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3025 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_3025 v7 v8 v9 v10 v11
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
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                   (coe v11) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                (coe v10) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                             (coe v9) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                          (coe v8) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                       (coe v7) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
d_DecEq'45'PParams_506 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_506 ~v0 v1 v2 = du_DecEq'45'PParams_506 v1 v2
du_DecEq'45'PParams_506 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_506 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_4619 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParams'46'constructor_4619 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                             v73
                                                                                                                                             v37))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                                                          (coe
                                                                                                                                             v72)
                                                                                                                                          (coe
                                                                                                                                             v36)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                                                       (coe
                                                                                                                                          v71)
                                                                                                                                       (coe
                                                                                                                                          v35)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                                                    (coe
                                                                                                                                       v70)
                                                                                                                                    (coe
                                                                                                                                       v34)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                                                 (coe
                                                                                                                                    v69)
                                                                                                                                 (coe
                                                                                                                                    v33)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                                              (coe
                                                                                                                                 v68)
                                                                                                                              (coe
                                                                                                                                 v32)))
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
                                                                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                            (coe
                                                                                                                                                               d_P6_220
                                                                                                                                                               (coe
                                                                                                                                                                  v31))
                                                                                                                                                            (coe
                                                                                                                                                               d_P6_220
                                                                                                                                                               (coe
                                                                                                                                                                  v67))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_218
                                                                                                                                                            (coe
                                                                                                                                                               v31))
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_218
                                                                                                                                                            (coe
                                                                                                                                                               v67))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_216
                                                                                                                                                         (coe
                                                                                                                                                            v31))
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_216
                                                                                                                                                         (coe
                                                                                                                                                            v67))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_214
                                                                                                                                                      (coe
                                                                                                                                                         v31))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_214
                                                                                                                                                      (coe
                                                                                                                                                         v67))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_212
                                                                                                                                                   (coe
                                                                                                                                                      v31))
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_212
                                                                                                                                                   (coe
                                                                                                                                                      v67))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                             (coe
                                                                                                                                                d_P4_210
                                                                                                                                                (coe
                                                                                                                                                   v31))
                                                                                                                                             (coe
                                                                                                                                                d_P4_210
                                                                                                                                                (coe
                                                                                                                                                   v67))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                          (coe
                                                                                                                                             d_P3_208
                                                                                                                                             (coe
                                                                                                                                                v31))
                                                                                                                                          (coe
                                                                                                                                             d_P3_208
                                                                                                                                             (coe
                                                                                                                                                v67))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_P2b_206
                                                                                                                                          (coe
                                                                                                                                             v31))
                                                                                                                                       (coe
                                                                                                                                          d_P2b_206
                                                                                                                                          (coe
                                                                                                                                             v67))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_P2a_204
                                                                                                                                       (coe
                                                                                                                                          v31))
                                                                                                                                    (coe
                                                                                                                                       d_P2a_204
                                                                                                                                       (coe
                                                                                                                                          v67))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_P1_202
                                                                                                                                    (coe
                                                                                                                                       v31))
                                                                                                                                 (coe
                                                                                                                                    d_P1_202
                                                                                                                                    (coe
                                                                                                                                       v67))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
                                                                                                                              erased
                                                                                                                              (coe
                                                                                                                                 (\ v74 ->
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
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                          (coe
                                                                                                                                             d_Q5_242
                                                                                                                                             (coe
                                                                                                                                                v30))
                                                                                                                                          (coe
                                                                                                                                             d_Q5_242
                                                                                                                                             (coe
                                                                                                                                                v66))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_Q4_240
                                                                                                                                          (coe
                                                                                                                                             v30))
                                                                                                                                       (coe
                                                                                                                                          d_Q4_240
                                                                                                                                          (coe
                                                                                                                                             v66))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_238
                                                                                                                                       (coe
                                                                                                                                          v30))
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_238
                                                                                                                                       (coe
                                                                                                                                          v66))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_236
                                                                                                                                    (coe
                                                                                                                                       v30))
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_236
                                                                                                                                    (coe
                                                                                                                                       v66))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                              (coe
                                                                                                                                 d_Q1_234
                                                                                                                                 (coe
                                                                                                                                    v30))
                                                                                                                              (coe
                                                                                                                                 d_Q1_234
                                                                                                                                 (coe
                                                                                                                                    v66))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
                                                                                                                           erased
                                                                                                                           (coe
                                                                                                                              (\ v74 ->
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
                                                                                                                     v65
                                                                                                                     v29))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                                  (coe
                                                                                                                     v64)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                               (coe
                                                                                                                  v63)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                            (coe
                                                                                                               v62)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         v61
                                                                                                         v25))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                      (coe
                                                                                                         v60)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                   (coe
                                                                                                      v59)
                                                                                                   (coe
                                                                                                      v23)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                                (coe
                                                                                                   v58)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                             (coe
                                                                                                v57)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                          (coe v56)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                       (coe v55)
                                                                                       (coe v19)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                    (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_448
                                                                                          (coe v1)))
                                                                                    v54 v18))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                                 (coe v53)
                                                                                 (coe v17)))
                                                                           (let v74
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                      (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                         (coe v52))
                                                                                      (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                         (coe
                                                                                            v16)) in
                                                                            coe
                                                                              (case coe v74 of
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v75 v76
                                                                                   -> if coe v75
                                                                                        then coe
                                                                                               seq
                                                                                               (coe
                                                                                                  v76)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                  (coe
                                                                                                     v75)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                     erased))
                                                                                        else coe
                                                                                               seq
                                                                                               (coe
                                                                                                  v76)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                  (coe
                                                                                                     v75)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                        (let v74
                                                                               = coe
                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                   (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                      (coe v51))
                                                                                   (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                      (coe v15)) in
                                                                         coe
                                                                           (case coe v74 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v75 v76
                                                                                -> if coe v75
                                                                                     then coe
                                                                                            seq
                                                                                            (coe
                                                                                               v76)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v75)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  erased))
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v76)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v75)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                        (coe v50) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                     (coe v49) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                                  (coe v48) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                               (coe v47) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                            (coe
                                                               (\ v74 ->
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                            (coe v46) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                         (coe v45) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                                      (coe v44) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_448
                                                         (coe v1)))
                                                   v43 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_448 (coe v1)))
                                                v42 v6))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                             (coe v41) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710 (coe v40)
                                          (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710 (coe v39)
                                       (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe
                                       (\ v74 ->
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
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_508 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_508 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_508
du_DecEq'45'PParamGroup_508 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_508
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.Show-DrepThresholds
d_Show'45'DrepThresholds_510 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_510 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_510
du_Show'45'DrepThresholds_510 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_510
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2461 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
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
d_Show'45'PoolThresholds_512 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_512 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_512
du_Show'45'PoolThresholds_512 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_512
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3025 v1 v2 v3 v4 v5
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
d_Show'45'PParams_514 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_514 ~v0 v1 v2 = du_Show'45'PParams_514 v1 v2
du_Show'45'PParams_514 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_514 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_4619 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
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
                                                                                             MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                (coe
                                                                                                   v15)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                             (coe
                                                                                                v16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                       v17)))
                                                                              (coe
                                                                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                    (MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_448
                                                                                          (coe v1)))
                                                                                    v18)))
                                                                           (coe
                                                                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                                 (coe v19))))
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                              v20)))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                           v21)))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                        v22)))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe v23))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                  v24)))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Class.Show.Core.d_show_16
                                                               (MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
                                                                  (coe v0))
                                                               v25)))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Show.d_show_56
                                                            v26)))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe v27))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v28)))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Class.Show.Core.d_show_16
                                                   (MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_448
                                                         (coe v1)))
                                                   v29)))
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
                                                                  (coe d_Q1_234 (coe v30)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_236 (coe v30)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_238 (coe v30)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_240 (coe v30)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_242 (coe v30)))))))
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
                                                                                 d_P1_202
                                                                                 (coe v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_204
                                                                              (coe v31)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_206 (coe v31)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_208 (coe v31)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_210 (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_212 (coe v31)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_214 (coe v31)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_216 (coe v31)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_218 (coe v31)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_220 (coe v31)))))))
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
                              (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v35)))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v36)))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60 (coe v0)) v37))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_518 a0 a1 a2 = ()
data T_PParamsUpdate_518
  = C_PParamsUpdate'46'constructor_493609 (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe AgdaAny) (Maybe AgdaAny)
                                          (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                                          (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                                          (Maybe Integer) (Maybe AgdaAny)
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
d_maxBlockSize_590 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_590 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_592 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_592 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_594 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_594 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_596 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_596 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_598 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_598 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_600 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_600 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_602 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_602 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_604 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_604 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a
d_a_606 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_606 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.b
d_b_608 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_608 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_610 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_610 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_612 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_612 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_614 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_614 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_616 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_616 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_618 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_618 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_620 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_620 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_622 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_622 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_624 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_624 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_626 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_626 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_628 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_628 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_630 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_630 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_632 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_632 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_634 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_634 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_636 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_636 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_638 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_638 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_640 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_640 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_642 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_642 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_644 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_644 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_646 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_646 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_648 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_648 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_650 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_650 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_652 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_652 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_654 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_654 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_656 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_656 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_658 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_658 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_493609 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_660 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 -> ()
d_paramsUpdateWellFormed_660 = erased
-- Ledger.PParams.PParamsUpdate._._.Emax
d_Emax_670 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_670 v0 = coe d_Emax_636 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a
d_a_672 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_672 v0 = coe d_a_606 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a0
d_a0_674 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_674 v0 = coe d_a0_634 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.b
d_b_676 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_676 v0 = coe d_b_608 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_678 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_678 v0 = coe d_ccMaxTermLength_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_680 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_680 v0 = coe d_ccMinSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_682 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_682 v0 = coe d_coinsPerUTxOByte_618 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_684 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_684 v0
  = coe d_collateralPercentage_640 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.costmdls
d_costmdls_686 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_686 v0 = coe d_costmdls_642 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_688 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_688 v0 = coe d_drepActivity_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_690 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_690 v0 = coe d_drepDeposit_652 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_692 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_692 v0 = coe d_drepThresholds_644 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_694 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_694 v0 = coe d_govActionDeposit_650 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_696 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_696 v0 = coe d_govActionLifetime_648 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_698 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_698 v0 = coe d_keyDeposit_610 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_700 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_700 v0 = coe d_maxBlockExUnits_602 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_702 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_702 v0 = coe d_maxBlockSize_590 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_704 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_704 v0
  = coe d_maxCollateralInputs_598 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_706 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_706 v0 = coe d_maxHeaderSize_594 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_708 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_708 v0
  = coe d_maxRefScriptSizePerBlock_626 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_710 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_710 v0
  = coe d_maxRefScriptSizePerTx_624 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_712 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_712 v0 = coe d_maxTxExUnits_600 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_714 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_714 v0 = coe d_maxTxSize_592 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_716 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_716 v0 = coe d_maxValSize_596 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_718 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_718 v0
  = coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_720 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_720 v0 = coe d_minUTxOValue_632 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.monetaryExpansion
d_monetaryExpansion_722 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_722 v0 = coe d_monetaryExpansion_614 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.nopt
d_nopt_724 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_724 v0 = coe d_nopt_638 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_726 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_726 v0 = coe d_poolDeposit_612 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_728 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_728 v0 = coe d_poolThresholds_646 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.prices
d_prices_730 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_730 v0 = coe d_prices_620 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.pv
d_pv_732 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_732 v0 = coe d_pv_604 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_734 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_734 v0
  = coe d_refScriptCostMultiplier_630 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_736 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_736 v0
  = coe d_refScriptCostStride_628 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.treasuryCut
d_treasuryCut_738 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_738 v0 = coe d_treasuryCut_616 (coe v0)
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_742 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_742 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_742 v3
du_paramsUpdateWellFormed'63'_742 ::
  T_PParamsUpdate_518 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_742 v0
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
                  (coe d_maxBlockSize_590 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_592 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_594 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_596 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_coinsPerUTxOByte_618 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_612 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_640 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_658 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_648 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_650 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_652 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_746 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 -> Bool
d_modifiesNetworkGroup_746 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_746 v3
du_modifiesNetworkGroup_746 :: T_PParamsUpdate_518 -> Bool
du_modifiesNetworkGroup_746 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_590 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_592 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_594 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_596 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_598 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_600 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_602 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_604 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_752 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_752 v0 = coe d_Emax_636 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_754 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_754 v0 = coe d_a_606 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_756 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_756 v0 = coe d_a0_634 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_758 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_758 v0 = coe d_b_608 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_760 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_760 v0 = coe d_ccMaxTermLength_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_762 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_762 v0 = coe d_ccMinSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_764 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_764 v0 = coe d_coinsPerUTxOByte_618 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_766 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_766 v0
  = coe d_collateralPercentage_640 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_768 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_768 v0 = coe d_costmdls_642 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_770 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_770 v0 = coe d_drepActivity_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_772 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_772 v0 = coe d_drepDeposit_652 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_774 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_774 v0 = coe d_drepThresholds_644 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_776 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_776 v0 = coe d_govActionDeposit_650 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_778 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_778 v0 = coe d_govActionLifetime_648 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_780 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_780 v0 = coe d_keyDeposit_610 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_782 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_782 v0 = coe d_maxBlockExUnits_602 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_784 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_784 v0 = coe d_maxBlockSize_590 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_786 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_786 v0
  = coe d_maxCollateralInputs_598 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_788 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_788 v0 = coe d_maxHeaderSize_594 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_790 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_790 v0
  = coe d_maxRefScriptSizePerBlock_626 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_792 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_792 v0
  = coe d_maxRefScriptSizePerTx_624 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_794 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_794 v0 = coe d_maxTxExUnits_600 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_796 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_796 v0 = coe d_maxTxSize_592 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_798 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_798 v0 = coe d_maxValSize_596 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_800 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_800 v0
  = coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_802 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_802 v0 = coe d_minUTxOValue_632 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_804 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_804 v0 = coe d_monetaryExpansion_614 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_806 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_806 v0 = coe d_nopt_638 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_808 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_808 v0 = coe d_poolDeposit_612 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_810 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_810 v0 = coe d_poolThresholds_646 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_812 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_812 v0 = coe d_prices_620 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_814 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_814 v0 = coe d_pv_604 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_816 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_816 v0
  = coe d_refScriptCostMultiplier_630 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_818 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_818 v0
  = coe d_refScriptCostStride_628 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_820 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_820 v0 = coe d_treasuryCut_616 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_822 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 -> Bool
d_modifiesEconomicGroup_822 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_822 v3
du_modifiesEconomicGroup_822 :: T_PParamsUpdate_518 -> Bool
du_modifiesEconomicGroup_822 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_606 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_608 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_610 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_612 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_monetaryExpansion_614 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_treasuryCut_616 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_coinsPerUTxOByte_618 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_maxRefScriptSizePerTx_624 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_maxRefScriptSizePerBlock_626 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_refScriptCostStride_628 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_refScriptCostMultiplier_630 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_prices_620 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_minUTxOValue_632 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_828 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_828 v0 = coe d_Emax_636 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_830 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_830 v0 = coe d_a_606 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_832 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_832 v0 = coe d_a0_634 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_834 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_834 v0 = coe d_b_608 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_836 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_836 v0 = coe d_ccMaxTermLength_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_838 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_838 v0 = coe d_ccMinSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_840 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_840 v0 = coe d_coinsPerUTxOByte_618 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_842 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_842 v0
  = coe d_collateralPercentage_640 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_844 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_844 v0 = coe d_costmdls_642 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_846 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_846 v0 = coe d_drepActivity_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_848 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_848 v0 = coe d_drepDeposit_652 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_850 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_850 v0 = coe d_drepThresholds_644 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_852 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_852 v0 = coe d_govActionDeposit_650 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_854 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_854 v0 = coe d_govActionLifetime_648 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_856 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_856 v0 = coe d_keyDeposit_610 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_858 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_858 v0 = coe d_maxBlockExUnits_602 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_860 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_860 v0 = coe d_maxBlockSize_590 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_862 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_862 v0
  = coe d_maxCollateralInputs_598 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_864 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_864 v0 = coe d_maxHeaderSize_594 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_866 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_866 v0
  = coe d_maxRefScriptSizePerBlock_626 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_868 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_868 v0
  = coe d_maxRefScriptSizePerTx_624 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_870 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_870 v0 = coe d_maxTxExUnits_600 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_872 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_872 v0 = coe d_maxTxSize_592 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_874 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_874 v0 = coe d_maxValSize_596 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_876 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_876 v0
  = coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_878 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_878 v0 = coe d_minUTxOValue_632 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_880 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_880 v0 = coe d_monetaryExpansion_614 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_882 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_882 v0 = coe d_nopt_638 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_884 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_884 v0 = coe d_poolDeposit_612 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_886 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_886 v0 = coe d_poolThresholds_646 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_888 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_888 v0 = coe d_prices_620 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_890 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_890 v0 = coe d_pv_604 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_892 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_892 v0
  = coe d_refScriptCostMultiplier_630 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_894 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_894 v0
  = coe d_refScriptCostStride_628 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_896 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_896 v0 = coe d_treasuryCut_616 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_898 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 -> Bool
d_modifiesTechnicalGroup_898 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_898 v3
du_modifiesTechnicalGroup_898 :: T_PParamsUpdate_518 -> Bool
du_modifiesTechnicalGroup_898 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_634 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_636 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_638 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_640 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_642 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_904 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_904 v0 = coe d_Emax_636 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_906 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_906 v0 = coe d_a_606 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_908 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_908 v0 = coe d_a0_634 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_910 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_910 v0 = coe d_b_608 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_912 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_912 v0 = coe d_ccMaxTermLength_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_914 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_914 v0 = coe d_ccMinSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_916 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_916 v0 = coe d_coinsPerUTxOByte_618 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_918 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_918 v0
  = coe d_collateralPercentage_640 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_920 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_920 v0 = coe d_costmdls_642 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_922 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_922 v0 = coe d_drepActivity_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_924 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_924 v0 = coe d_drepDeposit_652 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_926 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_926 v0 = coe d_drepThresholds_644 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_928 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_928 v0 = coe d_govActionDeposit_650 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_930 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_930 v0 = coe d_govActionLifetime_648 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_932 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_932 v0 = coe d_keyDeposit_610 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_934 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_934 v0 = coe d_maxBlockExUnits_602 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_936 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_936 v0 = coe d_maxBlockSize_590 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_938 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_938 v0
  = coe d_maxCollateralInputs_598 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_940 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_940 v0 = coe d_maxHeaderSize_594 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_942 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_942 v0
  = coe d_maxRefScriptSizePerBlock_626 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_944 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_944 v0
  = coe d_maxRefScriptSizePerTx_624 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_946 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_946 v0 = coe d_maxTxExUnits_600 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_948 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_948 v0 = coe d_maxTxSize_592 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_950 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_950 v0 = coe d_maxValSize_596 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_952 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_952 v0
  = coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_954 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_954 v0 = coe d_minUTxOValue_632 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_956 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_956 v0 = coe d_monetaryExpansion_614 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_958 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_958 v0 = coe d_nopt_638 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_960 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_960 v0 = coe d_poolDeposit_612 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_962 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_962 v0 = coe d_poolThresholds_646 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_964 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_964 v0 = coe d_prices_620 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_966 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_966 v0 = coe d_pv_604 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_968 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_968 v0
  = coe d_refScriptCostMultiplier_630 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_970 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_970 v0
  = coe d_refScriptCostStride_628 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_972 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_972 v0 = coe d_treasuryCut_616 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_974 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 -> Bool
d_modifiesGovernanceGroup_974 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_974 v3
du_modifiesGovernanceGroup_974 :: T_PParamsUpdate_518 -> Bool
du_modifiesGovernanceGroup_974 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_644 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_646 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_648 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_650 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_652 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_654 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_656 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_658 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_980 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_980 v0 = coe d_Emax_636 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_982 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_982 v0 = coe d_a_606 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_984 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_984 v0 = coe d_a0_634 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_986 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_986 v0 = coe d_b_608 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_988 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_988 v0 = coe d_ccMaxTermLength_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_990 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_990 v0 = coe d_ccMinSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_992 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_992 v0 = coe d_coinsPerUTxOByte_618 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_994 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_994 v0
  = coe d_collateralPercentage_640 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_996 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_996 v0 = coe d_costmdls_642 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_998 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_998 v0 = coe d_drepActivity_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1000 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_1000 v0 = coe d_drepDeposit_652 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1002 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_1002 v0 = coe d_drepThresholds_644 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1004 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_1004 v0 = coe d_govActionDeposit_650 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1006 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_1006 v0 = coe d_govActionLifetime_648 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1008 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_1008 v0 = coe d_keyDeposit_610 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1010 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_1010 v0 = coe d_maxBlockExUnits_602 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1012 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_1012 v0 = coe d_maxBlockSize_590 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1014 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_1014 v0
  = coe d_maxCollateralInputs_598 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1016 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_1016 v0 = coe d_maxHeaderSize_594 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1018 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_1018 v0
  = coe d_maxRefScriptSizePerBlock_626 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1020 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_1020 v0
  = coe d_maxRefScriptSizePerTx_624 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1022 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_1022 v0 = coe d_maxTxExUnits_600 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1024 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_1024 v0 = coe d_maxTxSize_592 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1026 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_1026 v0 = coe d_maxValSize_596 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1028 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1028 v0
  = coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1030 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_1030 v0 = coe d_minUTxOValue_632 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1032 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1032 v0 = coe d_monetaryExpansion_614 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_1034 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_1034 v0 = coe d_nopt_638 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1036 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_1036 v0 = coe d_poolDeposit_612 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1038 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_1038 v0 = coe d_poolThresholds_646 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_1040 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_1040 v0 = coe d_prices_620 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_1042 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1042 v0 = coe d_pv_604 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1044 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1044 v0
  = coe d_refScriptCostMultiplier_630 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1046 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_1046 v0
  = coe d_refScriptCostStride_628 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1048 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1048 v0 = coe d_treasuryCut_616 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1050 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 -> Bool
d_modifiesSecurityGroup_1050 ~v0 ~v1 ~v2 v3
  = du_modifiesSecurityGroup_1050 v3
du_modifiesSecurityGroup_1050 :: T_PParamsUpdate_518 -> Bool
du_modifiesSecurityGroup_1050 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_590 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_592 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_594 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_596 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxBlockExUnits_602 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_b_608 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_a_606 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_618 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_govActionDeposit_650 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_1056 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_1056 v0 = coe d_Emax_636 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_1058 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_1058 v0 = coe d_a_606 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_1060 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1060 v0 = coe d_a0_634 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_1062 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_1062 v0 = coe d_b_608 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1064 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_1064 v0 = coe d_ccMaxTermLength_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1066 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_1066 v0 = coe d_ccMinSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1068 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_1068 v0 = coe d_coinsPerUTxOByte_618 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1070 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_1070 v0
  = coe d_collateralPercentage_640 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_1072 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_1072 v0 = coe d_costmdls_642 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1074 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_1074 v0 = coe d_drepActivity_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1076 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_1076 v0 = coe d_drepDeposit_652 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1078 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_1078 v0 = coe d_drepThresholds_644 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1080 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_1080 v0 = coe d_govActionDeposit_650 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1082 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_1082 v0 = coe d_govActionLifetime_648 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1084 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_1084 v0 = coe d_keyDeposit_610 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1086 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_1086 v0 = coe d_maxBlockExUnits_602 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1088 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_1088 v0 = coe d_maxBlockSize_590 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1090 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_1090 v0
  = coe d_maxCollateralInputs_598 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1092 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_1092 v0 = coe d_maxHeaderSize_594 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1094 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_1094 v0
  = coe d_maxRefScriptSizePerBlock_626 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1096 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_1096 v0
  = coe d_maxRefScriptSizePerTx_624 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1098 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_1098 v0 = coe d_maxTxExUnits_600 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1100 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_1100 v0 = coe d_maxTxSize_592 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1102 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_1102 v0 = coe d_maxValSize_596 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1104 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1104 v0
  = coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1106 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_1106 v0 = coe d_minUTxOValue_632 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1108 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1108 v0 = coe d_monetaryExpansion_614 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_1110 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_1110 v0 = coe d_nopt_638 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1112 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_1112 v0 = coe d_poolDeposit_612 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1114 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_1114 v0 = coe d_poolThresholds_646 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_1116 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_1116 v0 = coe d_prices_620 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_1118 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1118 v0 = coe d_pv_604 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1120 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1120 v0
  = coe d_refScriptCostMultiplier_630 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1122 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_1122 v0
  = coe d_refScriptCostStride_628 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1124 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1124 v0 = coe d_treasuryCut_616 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1126 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 -> [T_PParamGroup_168]
d_modifiedUpdateGroups_1126 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1126 v3
du_modifiedUpdateGroups_1126 ::
  T_PParamsUpdate_518 -> [T_PParamGroup_168]
du_modifiedUpdateGroups_1126 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1134 (coe v0)
         (coe du_modifiesNetworkGroup_746) (coe C_NetworkGroup_170))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1134 (coe v0)
            (coe du_modifiesEconomicGroup_822) (coe C_EconomicGroup_172))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1134 (coe v0)
               (coe du_modifiesTechnicalGroup_898) (coe C_TechnicalGroup_174))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  du__'63''9552''8658'__1134 (coe v0)
                  (coe du_modifiesGovernanceGroup_974) (coe C_GovernanceGroup_176))
               (coe
                  du__'63''9552''8658'__1134 (coe v0)
                  (coe du_modifiesSecurityGroup_1050) (coe C_SecurityGroup_178)))))
-- Ledger.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1134 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_518 ->
  (T_PParamsUpdate_518 -> Bool) ->
  T_PParamGroup_168 -> [T_PParamGroup_168]
d__'63''9552''8658'__1134 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1134 v3 v4 v5
du__'63''9552''8658'__1134 ::
  T_PParamsUpdate_518 ->
  (T_PParamsUpdate_518 -> Bool) ->
  T_PParamGroup_168 -> [T_PParamGroup_168]
du__'63''9552''8658'__1134 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_90) (coe v1 v0)
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
d__'63''8599'__1142 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1142 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1142 v4 v5
du__'63''8599'__1142 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1142 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1156 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1156 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1156 v4
du_'8801''45'update_1156 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1156 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (\ v1 -> coe du_to_1176 (coe v0)) erased
-- Ledger.PParams.PParamsUpdate._.to
d_to_1176 ::
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
d_to_1176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1176 v8
du_to_1176 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1176 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate._.from
d_from_1188 ::
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
d_from_1188 = erased
-- Ledger.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1190 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_244 -> T_PParamsUpdate_518 -> T_PParams_244
d_applyPParamsUpdate_1190 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1190 v3 v4
du_applyPParamsUpdate_1190 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> T_PParams_244
du_applyPParamsUpdate_1190 v0 v1
  = coe
      C_PParams'46'constructor_4619
      (coe
         du__'63''8599'__1142 (coe d_maxBlockSize_590 (coe v1))
         (coe d_maxBlockSize_316 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxTxSize_592 (coe v1))
         (coe d_maxTxSize_318 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxHeaderSize_594 (coe v1))
         (coe d_maxHeaderSize_320 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxTxExUnits_600 (coe v1))
         (coe d_maxTxExUnits_322 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxBlockExUnits_602 (coe v1))
         (coe d_maxBlockExUnits_324 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxValSize_596 (coe v1))
         (coe d_maxValSize_326 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxCollateralInputs_598 (coe v1))
         (coe d_maxCollateralInputs_328 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_pv_604 (coe v1))
         (coe d_pv_330 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_a_606 (coe v1)) (coe d_a_332 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_b_608 (coe v1)) (coe d_b_334 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_keyDeposit_610 (coe v1))
         (coe d_keyDeposit_336 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_poolDeposit_612 (coe v1))
         (coe d_poolDeposit_338 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_monetaryExpansion_614 (coe v1))
         (coe d_monetaryExpansion_340 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_treasuryCut_616 (coe v1))
         (coe d_treasuryCut_342 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_coinsPerUTxOByte_618 (coe v1))
         (coe d_coinsPerUTxOByte_344 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_prices_620 (coe v1))
         (coe d_prices_346 (coe v0)))
      (coe
         du__'63''8599'__1142
         (coe d_minFeeRefScriptCoinsPerByte_622 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_348 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxRefScriptSizePerTx_624 (coe v1))
         (coe d_maxRefScriptSizePerTx_350 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_maxRefScriptSizePerBlock_626 (coe v1))
         (coe d_maxRefScriptSizePerBlock_352 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_refScriptCostStride_628 (coe v1))
         (coe d_refScriptCostStride_354 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_refScriptCostMultiplier_630 (coe v1))
         (coe d_refScriptCostMultiplier_356 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_minUTxOValue_632 (coe v1))
         (coe d_minUTxOValue_358 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_Emax_636 (coe v1))
         (coe d_Emax_360 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_nopt_638 (coe v1))
         (coe d_nopt_362 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_a0_634 (coe v1))
         (coe d_a0_364 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_collateralPercentage_640 (coe v1))
         (coe d_collateralPercentage_366 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_costmdls_642 (coe v1))
         (coe d_costmdls_368 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_poolThresholds_646 (coe v1))
         (coe d_poolThresholds_370 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_drepThresholds_644 (coe v1))
         (coe d_drepThresholds_372 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_ccMinSize_656 (coe v1))
         (coe d_ccMinSize_374 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_ccMaxTermLength_658 (coe v1))
         (coe d_ccMaxTermLength_376 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_govActionLifetime_648 (coe v1))
         (coe d_govActionLifetime_378 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_govActionDeposit_650 (coe v1))
         (coe d_govActionDeposit_380 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_drepDeposit_652 (coe v1))
         (coe d_drepDeposit_382 (coe v0)))
      (coe
         du__'63''8599'__1142 (coe d_drepActivity_654 (coe v1))
         (coe d_drepActivity_384 (coe v0)))
-- Ledger.PParams.PParamsUpdate._.P.Emax
d_Emax_1202 :: T_PParams_244 -> T_PParamsUpdate_518 -> AgdaAny
d_Emax_1202 v0 ~v1 = du_Emax_1202 v0
du_Emax_1202 :: T_PParams_244 -> AgdaAny
du_Emax_1202 v0 = coe d_Emax_360 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a
d_a_1204 :: T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_a_1204 v0 ~v1 = du_a_1204 v0
du_a_1204 :: T_PParams_244 -> Integer
du_a_1204 v0 = coe d_a_332 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a0
d_a0_1206 ::
  T_PParams_244 ->
  T_PParamsUpdate_518 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1206 v0 ~v1 = du_a0_1206 v0
du_a0_1206 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1206 v0 = coe d_a0_364 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.b
d_b_1208 :: T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_b_1208 v0 ~v1 = du_b_1208 v0
du_b_1208 :: T_PParams_244 -> Integer
du_b_1208 v0 = coe d_b_334 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1210 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_ccMaxTermLength_1210 v0 ~v1 = du_ccMaxTermLength_1210 v0
du_ccMaxTermLength_1210 :: T_PParams_244 -> Integer
du_ccMaxTermLength_1210 v0 = coe d_ccMaxTermLength_376 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1212 :: T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_ccMinSize_1212 v0 ~v1 = du_ccMinSize_1212 v0
du_ccMinSize_1212 :: T_PParams_244 -> Integer
du_ccMinSize_1212 v0 = coe d_ccMinSize_374 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1214 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_coinsPerUTxOByte_1214 v0 ~v1 = du_coinsPerUTxOByte_1214 v0
du_coinsPerUTxOByte_1214 :: T_PParams_244 -> Integer
du_coinsPerUTxOByte_1214 v0 = coe d_coinsPerUTxOByte_344 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1216 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_collateralPercentage_1216 v0 ~v1
  = du_collateralPercentage_1216 v0
du_collateralPercentage_1216 :: T_PParams_244 -> Integer
du_collateralPercentage_1216 v0
  = coe d_collateralPercentage_366 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1218 :: T_PParams_244 -> T_PParamsUpdate_518 -> AgdaAny
d_costmdls_1218 v0 ~v1 = du_costmdls_1218 v0
du_costmdls_1218 :: T_PParams_244 -> AgdaAny
du_costmdls_1218 v0 = coe d_costmdls_368 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1220 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> AgdaAny
d_drepActivity_1220 v0 ~v1 = du_drepActivity_1220 v0
du_drepActivity_1220 :: T_PParams_244 -> AgdaAny
du_drepActivity_1220 v0 = coe d_drepActivity_384 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1222 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_drepDeposit_1222 v0 ~v1 = du_drepDeposit_1222 v0
du_drepDeposit_1222 :: T_PParams_244 -> Integer
du_drepDeposit_1222 v0 = coe d_drepDeposit_382 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1224 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> T_DrepThresholds_180
d_drepThresholds_1224 v0 ~v1 = du_drepThresholds_1224 v0
du_drepThresholds_1224 :: T_PParams_244 -> T_DrepThresholds_180
du_drepThresholds_1224 v0 = coe d_drepThresholds_372 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1226 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_govActionDeposit_1226 v0 ~v1 = du_govActionDeposit_1226 v0
du_govActionDeposit_1226 :: T_PParams_244 -> Integer
du_govActionDeposit_1226 v0 = coe d_govActionDeposit_380 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1228 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_govActionLifetime_1228 v0 ~v1 = du_govActionLifetime_1228 v0
du_govActionLifetime_1228 :: T_PParams_244 -> Integer
du_govActionLifetime_1228 v0 = coe d_govActionLifetime_378 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1230 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_keyDeposit_1230 v0 ~v1 = du_keyDeposit_1230 v0
du_keyDeposit_1230 :: T_PParams_244 -> Integer
du_keyDeposit_1230 v0 = coe d_keyDeposit_336 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1232 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> AgdaAny
d_maxBlockExUnits_1232 v0 ~v1 = du_maxBlockExUnits_1232 v0
du_maxBlockExUnits_1232 :: T_PParams_244 -> AgdaAny
du_maxBlockExUnits_1232 v0 = coe d_maxBlockExUnits_324 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1234 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_maxBlockSize_1234 v0 ~v1 = du_maxBlockSize_1234 v0
du_maxBlockSize_1234 :: T_PParams_244 -> Integer
du_maxBlockSize_1234 v0 = coe d_maxBlockSize_316 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1236 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_maxCollateralInputs_1236 v0 ~v1 = du_maxCollateralInputs_1236 v0
du_maxCollateralInputs_1236 :: T_PParams_244 -> Integer
du_maxCollateralInputs_1236 v0
  = coe d_maxCollateralInputs_328 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1238 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_maxHeaderSize_1238 v0 ~v1 = du_maxHeaderSize_1238 v0
du_maxHeaderSize_1238 :: T_PParams_244 -> Integer
du_maxHeaderSize_1238 v0 = coe d_maxHeaderSize_320 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1240 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_maxRefScriptSizePerBlock_1240 v0 ~v1
  = du_maxRefScriptSizePerBlock_1240 v0
du_maxRefScriptSizePerBlock_1240 :: T_PParams_244 -> Integer
du_maxRefScriptSizePerBlock_1240 v0
  = coe d_maxRefScriptSizePerBlock_352 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1242 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_maxRefScriptSizePerTx_1242 v0 ~v1
  = du_maxRefScriptSizePerTx_1242 v0
du_maxRefScriptSizePerTx_1242 :: T_PParams_244 -> Integer
du_maxRefScriptSizePerTx_1242 v0
  = coe d_maxRefScriptSizePerTx_350 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1244 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> AgdaAny
d_maxTxExUnits_1244 v0 ~v1 = du_maxTxExUnits_1244 v0
du_maxTxExUnits_1244 :: T_PParams_244 -> AgdaAny
du_maxTxExUnits_1244 v0 = coe d_maxTxExUnits_322 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1246 :: T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_maxTxSize_1246 v0 ~v1 = du_maxTxSize_1246 v0
du_maxTxSize_1246 :: T_PParams_244 -> Integer
du_maxTxSize_1246 v0 = coe d_maxTxSize_318 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1248 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_maxValSize_1248 v0 ~v1 = du_maxValSize_1248 v0
du_maxValSize_1248 :: T_PParams_244 -> Integer
du_maxValSize_1248 v0 = coe d_maxValSize_326 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1250 ::
  T_PParams_244 ->
  T_PParamsUpdate_518 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1250 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1250 v0
du_minFeeRefScriptCoinsPerByte_1250 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1250 v0
  = coe d_minFeeRefScriptCoinsPerByte_348 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1252 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_minUTxOValue_1252 v0 ~v1 = du_minUTxOValue_1252 v0
du_minUTxOValue_1252 :: T_PParams_244 -> Integer
du_minUTxOValue_1252 v0 = coe d_minUTxOValue_358 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.monetaryExpansion
d_monetaryExpansion_1254 ::
  T_PParams_244 ->
  T_PParamsUpdate_518 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1254 v0 ~v1 = du_monetaryExpansion_1254 v0
du_monetaryExpansion_1254 ::
  T_PParams_244 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_monetaryExpansion_1254 v0 = coe d_monetaryExpansion_340 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.nopt
d_nopt_1256 :: T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_nopt_1256 v0 ~v1 = du_nopt_1256 v0
du_nopt_1256 :: T_PParams_244 -> Integer
du_nopt_1256 v0 = coe d_nopt_362 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1258 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_poolDeposit_1258 v0 ~v1 = du_poolDeposit_1258 v0
du_poolDeposit_1258 :: T_PParams_244 -> Integer
du_poolDeposit_1258 v0 = coe d_poolDeposit_338 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1260 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> T_PoolThresholds_222
d_poolThresholds_1260 v0 ~v1 = du_poolThresholds_1260 v0
du_poolThresholds_1260 :: T_PParams_244 -> T_PoolThresholds_222
du_poolThresholds_1260 v0 = coe d_poolThresholds_370 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.prices
d_prices_1262 :: T_PParams_244 -> T_PParamsUpdate_518 -> AgdaAny
d_prices_1262 v0 ~v1 = du_prices_1262 v0
du_prices_1262 :: T_PParams_244 -> AgdaAny
du_prices_1262 v0 = coe d_prices_346 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.pv
d_pv_1264 ::
  T_PParams_244 ->
  T_PParamsUpdate_518 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1264 v0 ~v1 = du_pv_1264 v0
du_pv_1264 ::
  T_PParams_244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1264 v0 = coe d_pv_330 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1266 ::
  T_PParams_244 ->
  T_PParamsUpdate_518 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1266 v0 ~v1
  = du_refScriptCostMultiplier_1266 v0
du_refScriptCostMultiplier_1266 ::
  T_PParams_244 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1266 v0
  = coe d_refScriptCostMultiplier_356 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1268 ::
  T_PParams_244 -> T_PParamsUpdate_518 -> Integer
d_refScriptCostStride_1268 v0 ~v1 = du_refScriptCostStride_1268 v0
du_refScriptCostStride_1268 :: T_PParams_244 -> Integer
du_refScriptCostStride_1268 v0
  = coe d_refScriptCostStride_354 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.treasuryCut
d_treasuryCut_1270 ::
  T_PParams_244 ->
  T_PParamsUpdate_518 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1270 v0 ~v1 = du_treasuryCut_1270 v0
du_treasuryCut_1270 ::
  T_PParams_244 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_treasuryCut_1270 v0 = coe d_treasuryCut_342 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.Emax
d_Emax_1274 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_Emax_1274 v0 = coe d_Emax_636 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a
d_a_1276 :: T_PParamsUpdate_518 -> Maybe Integer
d_a_1276 v0 = coe d_a_606 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a0
d_a0_1278 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1278 v0 = coe d_a0_634 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.b
d_b_1280 :: T_PParamsUpdate_518 -> Maybe Integer
d_b_1280 v0 = coe d_b_608 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1282 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMaxTermLength_1282 v0 = coe d_ccMaxTermLength_658 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1284 :: T_PParamsUpdate_518 -> Maybe Integer
d_ccMinSize_1284 v0 = coe d_ccMinSize_656 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1286 :: T_PParamsUpdate_518 -> Maybe Integer
d_coinsPerUTxOByte_1286 v0 = coe d_coinsPerUTxOByte_618 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1288 :: T_PParamsUpdate_518 -> Maybe Integer
d_collateralPercentage_1288 v0
  = coe d_collateralPercentage_640 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1290 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_costmdls_1290 v0 = coe d_costmdls_642 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1292 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_drepActivity_1292 v0 = coe d_drepActivity_654 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1294 :: T_PParamsUpdate_518 -> Maybe Integer
d_drepDeposit_1294 v0 = coe d_drepDeposit_652 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1296 ::
  T_PParamsUpdate_518 -> Maybe T_DrepThresholds_180
d_drepThresholds_1296 v0 = coe d_drepThresholds_644 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1298 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionDeposit_1298 v0 = coe d_govActionDeposit_650 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1300 :: T_PParamsUpdate_518 -> Maybe Integer
d_govActionLifetime_1300 v0 = coe d_govActionLifetime_648 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1302 :: T_PParamsUpdate_518 -> Maybe Integer
d_keyDeposit_1302 v0 = coe d_keyDeposit_610 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1304 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxBlockExUnits_1304 v0 = coe d_maxBlockExUnits_602 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1306 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxBlockSize_1306 v0 = coe d_maxBlockSize_590 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1308 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxCollateralInputs_1308 v0
  = coe d_maxCollateralInputs_598 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1310 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxHeaderSize_1310 v0 = coe d_maxHeaderSize_594 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1312 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerBlock_1312 v0
  = coe d_maxRefScriptSizePerBlock_626 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1314 ::
  T_PParamsUpdate_518 -> Maybe Integer
d_maxRefScriptSizePerTx_1314 v0
  = coe d_maxRefScriptSizePerTx_624 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1316 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_maxTxExUnits_1316 v0 = coe d_maxTxExUnits_600 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1318 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxTxSize_1318 v0 = coe d_maxTxSize_592 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1320 :: T_PParamsUpdate_518 -> Maybe Integer
d_maxValSize_1320 v0 = coe d_maxValSize_596 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1322 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1322 v0
  = coe d_minFeeRefScriptCoinsPerByte_622 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1324 :: T_PParamsUpdate_518 -> Maybe Integer
d_minUTxOValue_1324 v0 = coe d_minUTxOValue_632 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.monetaryExpansion
d_monetaryExpansion_1326 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1326 v0 = coe d_monetaryExpansion_614 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.nopt
d_nopt_1328 :: T_PParamsUpdate_518 -> Maybe Integer
d_nopt_1328 v0 = coe d_nopt_638 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1330 :: T_PParamsUpdate_518 -> Maybe Integer
d_poolDeposit_1330 v0 = coe d_poolDeposit_612 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1332 ::
  T_PParamsUpdate_518 -> Maybe T_PoolThresholds_222
d_poolThresholds_1332 v0 = coe d_poolThresholds_646 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.prices
d_prices_1334 :: T_PParamsUpdate_518 -> Maybe AgdaAny
d_prices_1334 v0 = coe d_prices_620 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.pv
d_pv_1336 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1336 v0 = coe d_pv_604 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1338 ::
  T_PParamsUpdate_518 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1338 v0
  = coe d_refScriptCostMultiplier_630 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1340 :: T_PParamsUpdate_518 -> Maybe Integer
d_refScriptCostStride_1340 v0
  = coe d_refScriptCostStride_628 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.treasuryCut
d_treasuryCut_1342 ::
  T_PParamsUpdate_518 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1342 v0 = coe d_treasuryCut_616 (coe v0)
-- Ledger.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1344 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1344 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1344 v1 v2
du_DecEq'45'PParamsUpdate_1344 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1344 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_493609 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParamsUpdate'46'constructor_493609 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                                v73)
                                                                                                                                             (coe
                                                                                                                                                v37)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                          (coe
                                                                                                                                             v72)
                                                                                                                                          (coe
                                                                                                                                             v36)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                                                             (coe
                                                                                                                                                v0)))
                                                                                                                                       (coe
                                                                                                                                          v71)
                                                                                                                                       (coe
                                                                                                                                          v35)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                    (coe
                                                                                                                                       v70)
                                                                                                                                    (coe
                                                                                                                                       v34)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                 (coe
                                                                                                                                    v69)
                                                                                                                                 (coe
                                                                                                                                    v33)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                              (coe
                                                                                                                                 v68)
                                                                                                                              (coe
                                                                                                                                 v32)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                              (coe
                                                                                                                                 du_DecEq'45'PoolThresholds_504))
                                                                                                                           (coe
                                                                                                                              v67)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (coe
                                                                                                                              du_DecEq'45'DrepThresholds_502))
                                                                                                                        (coe
                                                                                                                           v66)
                                                                                                                        (coe
                                                                                                                           v30)))
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
                                                                                                                        v65)
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                  (coe
                                                                                                                     v64)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                               (coe
                                                                                                                  v63)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                                                                  (coe
                                                                                                                     v0)))
                                                                                                            (coe
                                                                                                               v62)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                                         (coe
                                                                                                            v61)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                      (coe
                                                                                                         v60)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                                   (coe
                                                                                                      v59)
                                                                                                   (coe
                                                                                                      v23)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                (coe
                                                                                                   v58)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                             (coe
                                                                                                v57)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                          (coe v56)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                       (coe v55)
                                                                                       (coe v19)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Script.d_ps_448
                                                                                             (coe
                                                                                                v1))))
                                                                                    (coe v54)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                 (coe v53)
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                              (coe
                                                                                 (\ v74 v75 ->
                                                                                    let v76
                                                                                          = coe
                                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                              (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                 (coe
                                                                                                    v74))
                                                                                              (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                 (coe
                                                                                                    v75)) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v76 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v77 v78
                                                                                           -> if coe
                                                                                                   v77
                                                                                                then coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v78)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                          (coe
                                                                                                             v77)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                             erased))
                                                                                                else coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v78)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                          (coe
                                                                                                             v77)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                              (coe v52) (coe v16)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                           (coe
                                                                              (\ v74 v75 ->
                                                                                 let v76
                                                                                       = coe
                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                           (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                              (coe
                                                                                                 v74))
                                                                                           (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                              (coe
                                                                                                 v75)) in
                                                                                 coe
                                                                                   (case coe v76 of
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v77 v78
                                                                                        -> if coe
                                                                                                v77
                                                                                             then coe
                                                                                                    seq
                                                                                                    (coe
                                                                                                       v78)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                       (coe
                                                                                                          v77)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                          erased))
                                                                                             else coe
                                                                                                    seq
                                                                                                    (coe
                                                                                                       v78)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                       (coe
                                                                                                          v77)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                           (coe v51) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                        (coe
                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                        (coe v50) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                        (coe
                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                     (coe v49) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                  (coe v48) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                               (coe v47) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  () erased () erased
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                            (coe v46) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_448
                                                                  (coe v1))))
                                                         (coe v45) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_448
                                                               (coe v1))))
                                                      (coe v44) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                   (coe v43) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                (coe v42) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                             (coe v41) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                          (coe v40) (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                       (coe v39) (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe
                                       (\ v74 ->
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
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.pvCanFollow?
d_pvCanFollow'63'_1350 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1350 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1350 v3 v4
du_pvCanFollow'63'_1350 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1350 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                     erased
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2700
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
                                                                     MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2700
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
                                                                     MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2700
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
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2700
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
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2700
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
d_PParamsDiff_1398 a0 a1 a2 = ()
data T_PParamsDiff_1398
  = C_PParamsDiff'46'constructor_962951 (T_PParams_244 ->
                                         AgdaAny -> T_PParams_244)
                                        (AgdaAny -> [T_PParamGroup_168])
                                        (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_1412 :: T_PParamsDiff_1398 -> ()
d_UpdateT_1412 = erased
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1414 ::
  T_PParamsDiff_1398 -> T_PParams_244 -> AgdaAny -> T_PParams_244
d_applyUpdate_1414 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_962951 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_1416 ::
  T_PParamsDiff_1398 -> AgdaAny -> [T_PParamGroup_168]
d_updateGroups_1416 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_962951 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1422 ::
  T_PParamsDiff_1398 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1422 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_962951 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1424 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsDiff_1398 -> AgdaAny -> ()
d_ppdWellFormed_1424 = erased
-- Ledger.PParams.GovParams
d_GovParams_1430 a0 a1 a2 = ()
data T_GovParams_1430
  = C_GovParams'46'constructor_963655 T_PParamsDiff_1398
                                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_1436 :: T_PParamsDiff_1398 -> ()
d_UpdateT_1436 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_1438 ::
  T_PParamsDiff_1398 -> T_PParams_244 -> AgdaAny -> T_PParams_244
d_applyUpdate_1438 v0 = coe d_applyUpdate_1414 (coe v0)
-- Ledger.PParams._.ppWF?
d_ppWF'63'_1440 ::
  T_PParamsDiff_1398 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1440 v0 = coe d_ppWF'63'_1422 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_1442 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsDiff_1398 -> AgdaAny -> ()
d_ppdWellFormed_1442 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_1444 ::
  T_PParamsDiff_1398 -> AgdaAny -> [T_PParamGroup_168]
d_updateGroups_1444 v0 = coe d_updateGroups_1416 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_1448 :: T_GovParams_1430 -> T_PParamsDiff_1398
d_ppUpd_1448 v0
  = case coe v0 of
      C_GovParams'46'constructor_963655 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_1452 :: T_GovParams_1430 -> ()
d_UpdateT_1452 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_1454 ::
  T_GovParams_1430 -> T_PParams_244 -> AgdaAny -> T_PParams_244
d_applyUpdate_1454 v0
  = coe d_applyUpdate_1414 (coe d_ppUpd_1448 (coe v0))
-- Ledger.PParams.GovParams._.ppWF?
d_ppWF'63'_1456 ::
  T_GovParams_1430 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1456 v0
  = coe d_ppWF'63'_1422 (coe d_ppUpd_1448 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1458 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_GovParams_1430 -> AgdaAny -> ()
d_ppdWellFormed_1458 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_1460 ::
  T_GovParams_1430 -> AgdaAny -> [T_PParamGroup_168]
d_updateGroups_1460 v0
  = coe d_updateGroups_1416 (coe d_ppUpd_1448 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1462 ::
  T_GovParams_1430 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1462 v0
  = case coe v0 of
      C_GovParams'46'constructor_963655 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
