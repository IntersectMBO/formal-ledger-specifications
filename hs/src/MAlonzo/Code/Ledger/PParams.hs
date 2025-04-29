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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
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
-- Ledger.PParams.Hastreasury
d_Hastreasury_160 a0 a1 a2 a3 a4 = ()
newtype T_Hastreasury_160
  = C_Hastreasury'46'constructor_529 (AgdaAny -> Integer)
-- Ledger.PParams.Hastreasury.treasuryOf
d_treasuryOf_168 :: T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_168 v0
  = case coe v0 of
      C_Hastreasury'46'constructor_529 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams._.treasuryOf
d_treasuryOf_172 :: T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_172 v0 = coe d_treasuryOf_168 (coe v0)
-- Ledger.PParams.ProtVer
d_ProtVer_174 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ProtVer_174 = erased
-- Ledger.PParams.Show-ProtVer
d_Show'45'ProtVer_176 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_176 ~v0 = du_Show'45'ProtVer_176
du_Show'45'ProtVer_176 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_176
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.PParams.pvCanFollow
d_pvCanFollow_178 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_178
  = C_canFollowMajor_180 | C_canFollowMinor_182
-- Ledger.PParams.HasCast-Acnt
d_HasCast'45'Acnt_184 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'Acnt_184 ~v0 ~v1 ~v2 = du_HasCast'45'Acnt_184
du_HasCast'45'Acnt_184 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'Acnt_184
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
d_PParamGroup_186 a0 a1 a2 = ()
data T_PParamGroup_186
  = C_NetworkGroup_188 | C_EconomicGroup_190 | C_TechnicalGroup_192 |
    C_GovernanceGroup_194 | C_SecurityGroup_196
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_198 a0 a1 a2 = ()
data T_DrepThresholds_198
  = C_DrepThresholds'46'constructor_2633 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
d_P1_220 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_220 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_222 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_222 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_224 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_224 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_226 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_226 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_228 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_228 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_230 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_230 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_232 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_232 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_234 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_234 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_236 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_236 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_238 ::
  T_DrepThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_238 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_240 a0 a1 a2 = ()
data T_PoolThresholds_240
  = C_PoolThresholds'46'constructor_3197 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_252 ::
  T_PoolThresholds_240 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_252 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3197 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_254 ::
  T_PoolThresholds_240 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_254 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3197 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_256 ::
  T_PoolThresholds_240 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_256 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3197 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_258 ::
  T_PoolThresholds_240 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_258 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3197 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5
d_Q5_260 ::
  T_PoolThresholds_240 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_260 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3197 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_262 a0 a1 a2 = ()
data T_PParams_262
  = C_PParams'46'constructor_4791 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_240 T_DrepThresholds_198 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_334 :: T_PParams_262 -> Integer
d_maxBlockSize_334 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_336 :: T_PParams_262 -> Integer
d_maxTxSize_336 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_338 :: T_PParams_262 -> Integer
d_maxHeaderSize_338 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_340 :: T_PParams_262 -> AgdaAny
d_maxTxExUnits_340 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_342 :: T_PParams_262 -> AgdaAny
d_maxBlockExUnits_342 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_344 :: T_PParams_262 -> Integer
d_maxValSize_344 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_346 :: T_PParams_262 -> Integer
d_maxCollateralInputs_346 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_348 :: T_PParams_262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_348 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_350 :: T_PParams_262 -> Integer
d_a_350 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_352 :: T_PParams_262 -> Integer
d_b_352 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.keyDeposit
d_keyDeposit_354 :: T_PParams_262 -> Integer
d_keyDeposit_354 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_356 :: T_PParams_262 -> Integer
d_poolDeposit_356 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.monetaryExpansion
d_monetaryExpansion_358 ::
  T_PParams_262 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_358 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.treasuryCut
d_treasuryCut_360 ::
  T_PParams_262 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_360 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_362 :: T_PParams_262 -> Integer
d_coinsPerUTxOByte_362 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_364 :: T_PParams_262 -> AgdaAny
d_prices_364 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_366 ::
  T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_366 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_368 :: T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_368 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_370 :: T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_370 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.refScriptCostStride
d_refScriptCostStride_372 :: T_PParams_262 -> Integer
d_refScriptCostStride_372 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_374 ::
  T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_374 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_376 :: T_PParams_262 -> Integer
d_minUTxOValue_376 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_378 :: T_PParams_262 -> AgdaAny
d_Emax_378 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_380 :: T_PParams_262 -> Integer
d_nopt_380 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_382 :: T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_382 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_384 :: T_PParams_262 -> Integer
d_collateralPercentage_384 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_386 :: T_PParams_262 -> AgdaAny
d_costmdls_386 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_388 :: T_PParams_262 -> T_PoolThresholds_240
d_poolThresholds_388 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_390 :: T_PParams_262 -> T_DrepThresholds_198
d_drepThresholds_390 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_392 :: T_PParams_262 -> Integer
d_ccMinSize_392 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_394 :: T_PParams_262 -> Integer
d_ccMaxTermLength_394 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_396 :: T_PParams_262 -> Integer
d_govActionLifetime_396 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_398 :: T_PParams_262 -> Integer
d_govActionDeposit_398 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_400 :: T_PParams_262 -> Integer
d_drepDeposit_400 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_402 :: T_PParams_262 -> AgdaAny
d_drepActivity_402 v0
  = case coe v0 of
      C_PParams'46'constructor_4791 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.HasPParams
d_HasPParams_408 a0 a1 a2 a3 a4 = ()
newtype T_HasPParams_408
  = C_HasPParams'46'constructor_9199 (AgdaAny -> T_PParams_262)
-- Ledger.PParams.HasPParams.PParamsOf
d_PParamsOf_416 :: T_HasPParams_408 -> AgdaAny -> T_PParams_262
d_PParamsOf_416 v0
  = case coe v0 of
      C_HasPParams'46'constructor_9199 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams._.PParamsOf
d_PParamsOf_420 :: T_HasPParams_408 -> AgdaAny -> T_PParams_262
d_PParamsOf_420 v0 = coe d_PParamsOf_416 (coe v0)
-- Ledger.PParams.HasgovActionDeposit
d_HasgovActionDeposit_426 a0 a1 a2 a3 a4 = ()
newtype T_HasgovActionDeposit_426
  = C_HasgovActionDeposit'46'constructor_9331 (AgdaAny -> Integer)
-- Ledger.PParams.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_434 ::
  T_HasgovActionDeposit_426 -> AgdaAny -> Integer
d_govActionDepositOf_434 v0
  = case coe v0 of
      C_HasgovActionDeposit'46'constructor_9331 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams._.govActionDepositOf
d_govActionDepositOf_438 ::
  T_HasgovActionDeposit_426 -> AgdaAny -> Integer
d_govActionDepositOf_438 v0 = coe d_govActionDepositOf_434 (coe v0)
-- Ledger.PParams.HasccMaxTermLength
d_HasccMaxTermLength_444 a0 a1 a2 a3 a4 = ()
newtype T_HasccMaxTermLength_444
  = C_HasccMaxTermLength'46'constructor_9463 (AgdaAny -> Integer)
-- Ledger.PParams.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_452 ::
  T_HasccMaxTermLength_444 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_452 v0
  = case coe v0 of
      C_HasccMaxTermLength'46'constructor_9463 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_456 ::
  T_HasccMaxTermLength_444 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_456 v0 = coe d_ccMaxTermLengthOf_452 (coe v0)
-- Ledger.PParams.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_458 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_HasgovActionDeposit_426
d_HasgovActionDeposit'45'PParams_458 ~v0 ~v1 ~v2
  = du_HasgovActionDeposit'45'PParams_458
du_HasgovActionDeposit'45'PParams_458 :: T_HasgovActionDeposit_426
du_HasgovActionDeposit'45'PParams_458
  = coe
      C_HasgovActionDeposit'46'constructor_9331
      (coe (\ v0 -> d_govActionDeposit_398 (coe v0)))
-- Ledger.PParams.positivePParams
d_positivePParams_460 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_262 -> [Integer]
d_positivePParams_460 ~v0 ~v1 ~v2 v3 = du_positivePParams_460 v3
du_positivePParams_460 :: T_PParams_262 -> [Integer]
du_positivePParams_460 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_334 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_336 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_338 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_344 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_refScriptCostStride_372 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_coinsPerUTxOByte_362 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_poolDeposit_356 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_collateralPercentage_384 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_ccMaxTermLength_394 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionLifetime_396 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_govActionDeposit_398 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_drepDeposit_400 (coe v0))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))
-- Ledger.PParams._._.Emax
d_Emax_470 :: T_PParams_262 -> AgdaAny
d_Emax_470 v0 = coe d_Emax_378 (coe v0)
-- Ledger.PParams._._.a
d_a_472 :: T_PParams_262 -> Integer
d_a_472 v0 = coe d_a_350 (coe v0)
-- Ledger.PParams._._.a0
d_a0_474 :: T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_474 v0 = coe d_a0_382 (coe v0)
-- Ledger.PParams._._.b
d_b_476 :: T_PParams_262 -> Integer
d_b_476 v0 = coe d_b_352 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_478 :: T_PParams_262 -> Integer
d_ccMaxTermLength_478 v0 = coe d_ccMaxTermLength_394 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_480 :: T_PParams_262 -> Integer
d_ccMinSize_480 v0 = coe d_ccMinSize_392 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_482 :: T_PParams_262 -> Integer
d_coinsPerUTxOByte_482 v0 = coe d_coinsPerUTxOByte_362 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_484 :: T_PParams_262 -> Integer
d_collateralPercentage_484 v0
  = coe d_collateralPercentage_384 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_486 :: T_PParams_262 -> AgdaAny
d_costmdls_486 v0 = coe d_costmdls_386 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_488 :: T_PParams_262 -> AgdaAny
d_drepActivity_488 v0 = coe d_drepActivity_402 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_490 :: T_PParams_262 -> Integer
d_drepDeposit_490 v0 = coe d_drepDeposit_400 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_492 :: T_PParams_262 -> T_DrepThresholds_198
d_drepThresholds_492 v0 = coe d_drepThresholds_390 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_494 :: T_PParams_262 -> Integer
d_govActionDeposit_494 v0 = coe d_govActionDeposit_398 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_496 :: T_PParams_262 -> Integer
d_govActionLifetime_496 v0 = coe d_govActionLifetime_396 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_498 :: T_PParams_262 -> Integer
d_keyDeposit_498 v0 = coe d_keyDeposit_354 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_500 :: T_PParams_262 -> AgdaAny
d_maxBlockExUnits_500 v0 = coe d_maxBlockExUnits_342 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_502 :: T_PParams_262 -> Integer
d_maxBlockSize_502 v0 = coe d_maxBlockSize_334 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_504 :: T_PParams_262 -> Integer
d_maxCollateralInputs_504 v0
  = coe d_maxCollateralInputs_346 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_506 :: T_PParams_262 -> Integer
d_maxHeaderSize_506 v0 = coe d_maxHeaderSize_338 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_508 :: T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_508 v0
  = coe d_maxRefScriptSizePerBlock_370 (coe v0)
-- Ledger.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_510 :: T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_510 v0
  = coe d_maxRefScriptSizePerTx_368 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_512 :: T_PParams_262 -> AgdaAny
d_maxTxExUnits_512 v0 = coe d_maxTxExUnits_340 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_514 :: T_PParams_262 -> Integer
d_maxTxSize_514 v0 = coe d_maxTxSize_336 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_516 :: T_PParams_262 -> Integer
d_maxValSize_516 v0 = coe d_maxValSize_344 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_518 ::
  T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_518 v0
  = coe d_minFeeRefScriptCoinsPerByte_366 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_520 :: T_PParams_262 -> Integer
d_minUTxOValue_520 v0 = coe d_minUTxOValue_376 (coe v0)
-- Ledger.PParams._._.monetaryExpansion
d_monetaryExpansion_522 ::
  T_PParams_262 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_522 v0 = coe d_monetaryExpansion_358 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_524 :: T_PParams_262 -> Integer
d_nopt_524 v0 = coe d_nopt_380 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_526 :: T_PParams_262 -> Integer
d_poolDeposit_526 v0 = coe d_poolDeposit_356 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_528 :: T_PParams_262 -> T_PoolThresholds_240
d_poolThresholds_528 v0 = coe d_poolThresholds_388 (coe v0)
-- Ledger.PParams._._.prices
d_prices_530 :: T_PParams_262 -> AgdaAny
d_prices_530 v0 = coe d_prices_364 (coe v0)
-- Ledger.PParams._._.pv
d_pv_532 :: T_PParams_262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_532 v0 = coe d_pv_348 (coe v0)
-- Ledger.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_534 ::
  T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_534 v0
  = coe d_refScriptCostMultiplier_374 (coe v0)
-- Ledger.PParams._._.refScriptCostStride
d_refScriptCostStride_536 :: T_PParams_262 -> Integer
d_refScriptCostStride_536 v0
  = coe d_refScriptCostStride_372 (coe v0)
-- Ledger.PParams._._.treasuryCut
d_treasuryCut_538 ::
  T_PParams_262 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_538 v0 = coe d_treasuryCut_360 (coe v0)
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_540 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_262 -> ()
d_paramsWellFormed_540 = erased
-- Ledger.PParams.paramsWF-elim
d_paramsWF'45'elim_548 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_548 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_548 v5
du_paramsWF'45'elim_548 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_548 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.PParams.refScriptCostStride>0
d_refScriptCostStride'62'0_570 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_570 ~v0 ~v1 ~v2 v3 ~v4
  = du_refScriptCostStride'62'0_570 v3
du_refScriptCostStride'62'0_570 ::
  T_PParams_262 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_570 v0
  = coe
      du_paramsWF'45'elim_548 (coe d_refScriptCostStride_372 (coe v0))
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_576 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_576 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_576
du_DecEq'45'DrepThresholds_576 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_576
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_2633 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
d_DecEq'45'PoolThresholds_578 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_578 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_578
du_DecEq'45'PoolThresholds_578 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_578
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3197 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_3197 v7 v8 v9 v10 v11
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
d_DecEq'45'PParams_580 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_580 ~v0 v1 v2 = du_DecEq'45'PParams_580 v1 v2
du_DecEq'45'PParams_580 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_580 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_4791 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParams'46'constructor_4791 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                                               d_P6_238
                                                                                                                                                               (coe
                                                                                                                                                                  v31))
                                                                                                                                                            (coe
                                                                                                                                                               d_P6_238
                                                                                                                                                               (coe
                                                                                                                                                                  v67))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_236
                                                                                                                                                            (coe
                                                                                                                                                               v31))
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_236
                                                                                                                                                            (coe
                                                                                                                                                               v67))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_234
                                                                                                                                                         (coe
                                                                                                                                                            v31))
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_234
                                                                                                                                                         (coe
                                                                                                                                                            v67))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_232
                                                                                                                                                      (coe
                                                                                                                                                         v31))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_232
                                                                                                                                                      (coe
                                                                                                                                                         v67))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_230
                                                                                                                                                   (coe
                                                                                                                                                      v31))
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_230
                                                                                                                                                   (coe
                                                                                                                                                      v67))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                             (coe
                                                                                                                                                d_P4_228
                                                                                                                                                (coe
                                                                                                                                                   v31))
                                                                                                                                             (coe
                                                                                                                                                d_P4_228
                                                                                                                                                (coe
                                                                                                                                                   v67))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                          (coe
                                                                                                                                             d_P3_226
                                                                                                                                             (coe
                                                                                                                                                v31))
                                                                                                                                          (coe
                                                                                                                                             d_P3_226
                                                                                                                                             (coe
                                                                                                                                                v67))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_P2b_224
                                                                                                                                          (coe
                                                                                                                                             v31))
                                                                                                                                       (coe
                                                                                                                                          d_P2b_224
                                                                                                                                          (coe
                                                                                                                                             v67))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_P2a_222
                                                                                                                                       (coe
                                                                                                                                          v31))
                                                                                                                                    (coe
                                                                                                                                       d_P2a_222
                                                                                                                                       (coe
                                                                                                                                          v67))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_P1_220
                                                                                                                                    (coe
                                                                                                                                       v31))
                                                                                                                                 (coe
                                                                                                                                    d_P1_220
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
                                                                                                                                             d_Q5_260
                                                                                                                                             (coe
                                                                                                                                                v30))
                                                                                                                                          (coe
                                                                                                                                             d_Q5_260
                                                                                                                                             (coe
                                                                                                                                                v66))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_Q4_258
                                                                                                                                          (coe
                                                                                                                                             v30))
                                                                                                                                       (coe
                                                                                                                                          d_Q4_258
                                                                                                                                          (coe
                                                                                                                                             v66))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_256
                                                                                                                                       (coe
                                                                                                                                          v30))
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_256
                                                                                                                                       (coe
                                                                                                                                          v66))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_254
                                                                                                                                    (coe
                                                                                                                                       v30))
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_254
                                                                                                                                    (coe
                                                                                                                                       v66))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                              (coe
                                                                                                                                 d_Q1_252
                                                                                                                                 (coe
                                                                                                                                    v30))
                                                                                                                              (coe
                                                                                                                                 d_Q1_252
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
d_DecEq'45'PParamGroup_582 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_582 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_582
du_DecEq'45'PParamGroup_582 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_582
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_188
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_188
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
                          C_EconomicGroup_190
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_192
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_194
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_196
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_190
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_188
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_190
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
                          C_TechnicalGroup_192
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_194
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_196
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_192
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_188
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_190
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_192
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
                          C_GovernanceGroup_194
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_196
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_194
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_188
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_190
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_192
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_194
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
                          C_SecurityGroup_196
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_196
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_188
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_190
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_192
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_194
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_196
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
d_Show'45'DrepThresholds_584 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_584 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_584
du_Show'45'DrepThresholds_584 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_584
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
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
d_Show'45'PoolThresholds_586 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_586 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_586
du_Show'45'PoolThresholds_586 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_586
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3197 v1 v2 v3 v4 v5
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
d_Show'45'PParams_588 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_588 ~v0 v1 v2 = du_Show'45'PParams_588 v1 v2
du_Show'45'PParams_588 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_588 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_4791 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
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
                                                                  (coe d_Q1_252 (coe v30)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_254 (coe v30)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_256 (coe v30)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_258 (coe v30)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_260 (coe v30)))))))
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
                                                                                 d_P1_220
                                                                                 (coe v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_222
                                                                              (coe v31)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_224 (coe v31)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_226 (coe v31)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_228 (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_230 (coe v31)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_232 (coe v31)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_234 (coe v31)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_236 (coe v31)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_238 (coe v31)))))))
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
d_PParamsUpdate_592 a0 a1 a2 = ()
data T_PParamsUpdate_592
  = C_PParamsUpdate'46'constructor_494323 (Maybe Integer)
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
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_198)
                                          (Maybe T_PoolThresholds_240) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_664 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_664 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_666 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_666 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_668 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_668 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_670 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_670 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_672 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_672 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_674 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_674 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_676 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_676 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_678 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_678 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a
d_a_680 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_680 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.b
d_b_682 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_682 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_684 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_684 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_686 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_686 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_688 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_688 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_690 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_690 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_692 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_692 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_694 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_694 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_696 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_696 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_698 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_698 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_700 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_700 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_702 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_702 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_704 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_704 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_706 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_706 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_708 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_708 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_710 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_710 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_712 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_712 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_714 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_714 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_716 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_716 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_718 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_718 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_720 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_720 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_722 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_722 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_724 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_724 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_726 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_726 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_728 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_728 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_730 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_730 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_732 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_732 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_494323 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_734 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 -> ()
d_paramsUpdateWellFormed_734 = erased
-- Ledger.PParams.PParamsUpdate._._.Emax
d_Emax_744 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_744 v0 = coe d_Emax_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a
d_a_746 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_746 v0 = coe d_a_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.a0
d_a0_748 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_748 v0 = coe d_a0_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.b
d_b_750 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_750 v0 = coe d_b_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_752 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_752 v0 = coe d_ccMaxTermLength_732 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_754 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_754 v0 = coe d_ccMinSize_730 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_756 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_756 v0 = coe d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_758 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_758 v0
  = coe d_collateralPercentage_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.costmdls
d_costmdls_760 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_760 v0 = coe d_costmdls_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_762 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_762 v0 = coe d_drepActivity_728 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_764 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_764 v0 = coe d_drepDeposit_726 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_766 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_766 v0 = coe d_drepThresholds_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_768 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_768 v0 = coe d_govActionDeposit_724 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_770 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_770 v0 = coe d_govActionLifetime_722 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_772 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_772 v0 = coe d_keyDeposit_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_774 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_774 v0 = coe d_maxBlockExUnits_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_776 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_776 v0 = coe d_maxBlockSize_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_778 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_778 v0
  = coe d_maxCollateralInputs_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_780 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_780 v0 = coe d_maxHeaderSize_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_782 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_782 v0
  = coe d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_784 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_784 v0
  = coe d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_786 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_786 v0 = coe d_maxTxExUnits_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_788 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_788 v0 = coe d_maxTxSize_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_790 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_790 v0 = coe d_maxValSize_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_792 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_792 v0
  = coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_794 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_794 v0 = coe d_minUTxOValue_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.monetaryExpansion
d_monetaryExpansion_796 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_796 v0 = coe d_monetaryExpansion_688 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.nopt
d_nopt_798 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_798 v0 = coe d_nopt_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_800 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_800 v0 = coe d_poolDeposit_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_802 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_802 v0 = coe d_poolThresholds_720 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.prices
d_prices_804 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_804 v0 = coe d_prices_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.pv
d_pv_806 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_806 v0 = coe d_pv_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_808 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_808 v0
  = coe d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_810 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_810 v0
  = coe d_refScriptCostStride_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._._.treasuryCut
d_treasuryCut_812 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_812 v0 = coe d_treasuryCut_690 (coe v0)
-- Ledger.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_816 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_816 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_816 v3
du_paramsUpdateWellFormed'63'_816 ::
  T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_816 v0
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
                  (coe d_maxBlockSize_664 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_666 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_668 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_670 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_coinsPerUTxOByte_692 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_686 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_714 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_732 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_722 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_724 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_726 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_820 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 -> Bool
d_modifiesNetworkGroup_820 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_820 v3
du_modifiesNetworkGroup_820 :: T_PParamsUpdate_592 -> Bool
du_modifiesNetworkGroup_820 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_664 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_666 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_668 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_670 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_672 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_674 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_676 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_678 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_826 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_826 v0 = coe d_Emax_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_828 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_828 v0 = coe d_a_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_830 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_830 v0 = coe d_a0_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_832 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_832 v0 = coe d_b_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_834 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_834 v0 = coe d_ccMaxTermLength_732 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_836 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_836 v0 = coe d_ccMinSize_730 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_838 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_838 v0 = coe d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_840 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_840 v0
  = coe d_collateralPercentage_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_842 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_842 v0 = coe d_costmdls_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_844 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_844 v0 = coe d_drepActivity_728 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_846 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_846 v0 = coe d_drepDeposit_726 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_848 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_848 v0 = coe d_drepThresholds_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_850 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_850 v0 = coe d_govActionDeposit_724 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_852 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_852 v0 = coe d_govActionLifetime_722 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_854 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_854 v0 = coe d_keyDeposit_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_856 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_856 v0 = coe d_maxBlockExUnits_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_858 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_858 v0 = coe d_maxBlockSize_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_860 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_860 v0
  = coe d_maxCollateralInputs_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_862 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_862 v0 = coe d_maxHeaderSize_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_864 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_864 v0
  = coe d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_866 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_866 v0
  = coe d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_868 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_868 v0 = coe d_maxTxExUnits_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_870 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_870 v0 = coe d_maxTxSize_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_872 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_872 v0 = coe d_maxValSize_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_874 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_874 v0
  = coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_876 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_876 v0 = coe d_minUTxOValue_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_878 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_878 v0 = coe d_monetaryExpansion_688 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_880 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_880 v0 = coe d_nopt_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_882 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_882 v0 = coe d_poolDeposit_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_884 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_884 v0 = coe d_poolThresholds_720 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_886 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_886 v0 = coe d_prices_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_888 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_888 v0 = coe d_pv_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_890 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_890 v0
  = coe d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_892 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_892 v0
  = coe d_refScriptCostStride_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_894 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_894 v0 = coe d_treasuryCut_690 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_896 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 -> Bool
d_modifiesEconomicGroup_896 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_896 v3
du_modifiesEconomicGroup_896 :: T_PParamsUpdate_592 -> Bool
du_modifiesEconomicGroup_896 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_680 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_682 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_684 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_686 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_monetaryExpansion_688 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_treasuryCut_690 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_coinsPerUTxOByte_692 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_maxRefScriptSizePerTx_698 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_maxRefScriptSizePerBlock_700 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_refScriptCostStride_702 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_refScriptCostMultiplier_704 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_prices_694 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_minUTxOValue_706 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_902 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_902 v0 = coe d_Emax_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_904 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_904 v0 = coe d_a_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_906 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_906 v0 = coe d_a0_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_908 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_908 v0 = coe d_b_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_910 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_910 v0 = coe d_ccMaxTermLength_732 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_912 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_912 v0 = coe d_ccMinSize_730 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_914 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_914 v0 = coe d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_916 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_916 v0
  = coe d_collateralPercentage_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_918 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_918 v0 = coe d_costmdls_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_920 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_920 v0 = coe d_drepActivity_728 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_922 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_922 v0 = coe d_drepDeposit_726 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_924 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_924 v0 = coe d_drepThresholds_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_926 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_926 v0 = coe d_govActionDeposit_724 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_928 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_928 v0 = coe d_govActionLifetime_722 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_930 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_930 v0 = coe d_keyDeposit_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_932 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_932 v0 = coe d_maxBlockExUnits_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_934 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_934 v0 = coe d_maxBlockSize_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_936 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_936 v0
  = coe d_maxCollateralInputs_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_938 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_938 v0 = coe d_maxHeaderSize_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_940 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_940 v0
  = coe d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_942 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_942 v0
  = coe d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_944 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_944 v0 = coe d_maxTxExUnits_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_946 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_946 v0 = coe d_maxTxSize_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_948 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_948 v0 = coe d_maxValSize_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_950 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_950 v0
  = coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_952 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_952 v0 = coe d_minUTxOValue_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_954 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_954 v0 = coe d_monetaryExpansion_688 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_956 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_956 v0 = coe d_nopt_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_958 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_958 v0 = coe d_poolDeposit_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_960 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_960 v0 = coe d_poolThresholds_720 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_962 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_962 v0 = coe d_prices_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_964 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_964 v0 = coe d_pv_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_966 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_966 v0
  = coe d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_968 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_968 v0
  = coe d_refScriptCostStride_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_970 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_970 v0 = coe d_treasuryCut_690 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_972 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 -> Bool
d_modifiesTechnicalGroup_972 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_972 v3
du_modifiesTechnicalGroup_972 :: T_PParamsUpdate_592 -> Bool
du_modifiesTechnicalGroup_972 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_708 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_710 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_712 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_714 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_716 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_978 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_978 v0 = coe d_Emax_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_980 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_980 v0 = coe d_a_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_982 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_982 v0 = coe d_a0_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_984 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_984 v0 = coe d_b_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_986 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_986 v0 = coe d_ccMaxTermLength_732 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_988 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_988 v0 = coe d_ccMinSize_730 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_990 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_990 v0 = coe d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_992 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_992 v0
  = coe d_collateralPercentage_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_994 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_994 v0 = coe d_costmdls_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_996 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_996 v0 = coe d_drepActivity_728 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_998 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_998 v0 = coe d_drepDeposit_726 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1000 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_1000 v0 = coe d_drepThresholds_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1002 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_1002 v0 = coe d_govActionDeposit_724 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1004 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_1004 v0 = coe d_govActionLifetime_722 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1006 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_1006 v0 = coe d_keyDeposit_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1008 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_1008 v0 = coe d_maxBlockExUnits_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1010 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_1010 v0 = coe d_maxBlockSize_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1012 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_1012 v0
  = coe d_maxCollateralInputs_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1014 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_1014 v0 = coe d_maxHeaderSize_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1016 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_1016 v0
  = coe d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1018 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_1018 v0
  = coe d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1020 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_1020 v0 = coe d_maxTxExUnits_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1022 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_1022 v0 = coe d_maxTxSize_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1024 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_1024 v0 = coe d_maxValSize_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1026 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1026 v0
  = coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1028 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_1028 v0 = coe d_minUTxOValue_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1030 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1030 v0 = coe d_monetaryExpansion_688 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_1032 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_1032 v0 = coe d_nopt_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1034 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_1034 v0 = coe d_poolDeposit_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1036 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_1036 v0 = coe d_poolThresholds_720 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_1038 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_1038 v0 = coe d_prices_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_1040 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1040 v0 = coe d_pv_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1042 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1042 v0
  = coe d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1044 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_1044 v0
  = coe d_refScriptCostStride_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1046 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1046 v0 = coe d_treasuryCut_690 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1048 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 -> Bool
d_modifiesGovernanceGroup_1048 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_1048 v3
du_modifiesGovernanceGroup_1048 :: T_PParamsUpdate_592 -> Bool
du_modifiesGovernanceGroup_1048 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_718 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_720 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_722 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_724 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_726 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_728 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_730 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_732 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_1054 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_1054 v0 = coe d_Emax_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_1056 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_1056 v0 = coe d_a_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_1058 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1058 v0 = coe d_a0_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_1060 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_1060 v0 = coe d_b_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1062 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_1062 v0 = coe d_ccMaxTermLength_732 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1064 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_1064 v0 = coe d_ccMinSize_730 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1066 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_1066 v0 = coe d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1068 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_1068 v0
  = coe d_collateralPercentage_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_1070 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_1070 v0 = coe d_costmdls_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1072 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_1072 v0 = coe d_drepActivity_728 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1074 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_1074 v0 = coe d_drepDeposit_726 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1076 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_1076 v0 = coe d_drepThresholds_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1078 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_1078 v0 = coe d_govActionDeposit_724 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1080 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_1080 v0 = coe d_govActionLifetime_722 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1082 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_1082 v0 = coe d_keyDeposit_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1084 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_1084 v0 = coe d_maxBlockExUnits_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1086 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_1086 v0 = coe d_maxBlockSize_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1088 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_1088 v0
  = coe d_maxCollateralInputs_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1090 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_1090 v0 = coe d_maxHeaderSize_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1092 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_1092 v0
  = coe d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1094 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_1094 v0
  = coe d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1096 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_1096 v0 = coe d_maxTxExUnits_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1098 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_1098 v0 = coe d_maxTxSize_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1100 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_1100 v0 = coe d_maxValSize_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1102 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1102 v0
  = coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1104 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_1104 v0 = coe d_minUTxOValue_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1106 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1106 v0 = coe d_monetaryExpansion_688 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_1108 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_1108 v0 = coe d_nopt_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1110 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_1110 v0 = coe d_poolDeposit_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1112 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_1112 v0 = coe d_poolThresholds_720 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_1114 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_1114 v0 = coe d_prices_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_1116 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1116 v0 = coe d_pv_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1118 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1118 v0
  = coe d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1120 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_1120 v0
  = coe d_refScriptCostStride_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1122 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1122 v0 = coe d_treasuryCut_690 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1124 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 -> Bool
d_modifiesSecurityGroup_1124 ~v0 ~v1 ~v2 v3
  = du_modifiesSecurityGroup_1124 v3
du_modifiesSecurityGroup_1124 :: T_PParamsUpdate_592 -> Bool
du_modifiesSecurityGroup_1124 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_664 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_666 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_668 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_670 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxBlockExUnits_676 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_b_682 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_a_680 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_692 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_govActionDeposit_724 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.PParams.PParamsUpdate._.Emax
d_Emax_1130 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_1130 v0 = coe d_Emax_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a
d_a_1132 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_1132 v0 = coe d_a_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.a0
d_a0_1134 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1134 v0 = coe d_a0_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.b
d_b_1136 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_1136 v0 = coe d_b_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1138 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_1138 v0 = coe d_ccMaxTermLength_732 (coe v0)
-- Ledger.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1140 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_1140 v0 = coe d_ccMinSize_730 (coe v0)
-- Ledger.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1142 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_1142 v0 = coe d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1144 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_1144 v0
  = coe d_collateralPercentage_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.costmdls
d_costmdls_1146 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_1146 v0 = coe d_costmdls_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1148 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_1148 v0 = coe d_drepActivity_728 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1150 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_1150 v0 = coe d_drepDeposit_726 (coe v0)
-- Ledger.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1152 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_1152 v0 = coe d_drepThresholds_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1154 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_1154 v0 = coe d_govActionDeposit_724 (coe v0)
-- Ledger.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1156 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_1156 v0 = coe d_govActionLifetime_722 (coe v0)
-- Ledger.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1158 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_1158 v0 = coe d_keyDeposit_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1160 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_1160 v0 = coe d_maxBlockExUnits_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1162 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_1162 v0 = coe d_maxBlockSize_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1164 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_1164 v0
  = coe d_maxCollateralInputs_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1166 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_1166 v0 = coe d_maxHeaderSize_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1168 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_1168 v0
  = coe d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1170 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_1170 v0
  = coe d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1172 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_1172 v0 = coe d_maxTxExUnits_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1174 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_1174 v0 = coe d_maxTxSize_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1176 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_1176 v0 = coe d_maxValSize_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1178 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1178 v0
  = coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1180 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_1180 v0 = coe d_minUTxOValue_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1182 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1182 v0 = coe d_monetaryExpansion_688 (coe v0)
-- Ledger.PParams.PParamsUpdate._.nopt
d_nopt_1184 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_1184 v0 = coe d_nopt_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1186 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_1186 v0 = coe d_poolDeposit_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1188 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_1188 v0 = coe d_poolThresholds_720 (coe v0)
-- Ledger.PParams.PParamsUpdate._.prices
d_prices_1190 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_1190 v0 = coe d_prices_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.pv
d_pv_1192 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1192 v0 = coe d_pv_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1194 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1194 v0
  = coe d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1196 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_1196 v0
  = coe d_refScriptCostStride_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1198 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1198 v0 = coe d_treasuryCut_690 (coe v0)
-- Ledger.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1200 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 -> [T_PParamGroup_186]
d_modifiedUpdateGroups_1200 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1200 v3
du_modifiedUpdateGroups_1200 ::
  T_PParamsUpdate_592 -> [T_PParamGroup_186]
du_modifiedUpdateGroups_1200 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1208 (coe v0)
         (coe du_modifiesNetworkGroup_820) (coe C_NetworkGroup_188))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1208 (coe v0)
            (coe du_modifiesEconomicGroup_896) (coe C_EconomicGroup_190))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1208 (coe v0)
               (coe du_modifiesTechnicalGroup_972) (coe C_TechnicalGroup_192))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  du__'63''9552''8658'__1208 (coe v0)
                  (coe du_modifiesGovernanceGroup_1048) (coe C_GovernanceGroup_194))
               (coe
                  du__'63''9552''8658'__1208 (coe v0)
                  (coe du_modifiesSecurityGroup_1124) (coe C_SecurityGroup_196)))))
-- Ledger.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1208 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsUpdate_592 ->
  (T_PParamsUpdate_592 -> Bool) ->
  T_PParamGroup_186 -> [T_PParamGroup_186]
d__'63''9552''8658'__1208 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1208 v3 v4 v5
du__'63''9552''8658'__1208 ::
  T_PParamsUpdate_592 ->
  (T_PParamsUpdate_592 -> Bool) ->
  T_PParamGroup_186 -> [T_PParamGroup_186]
du__'63''9552''8658'__1208 v0 v1 v2
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
d__'63''8599'__1216 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1216 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1216 v4 v5
du__'63''8599'__1216 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1216 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1230 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1230 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1230 v4
du_'8801''45'update_1230 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1230 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (\ v1 -> coe du_to_1250 (coe v0)) erased
-- Ledger.PParams.PParamsUpdate._.to
d_to_1250 ::
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
d_to_1250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1250 v8
du_to_1250 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1250 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate._.from
d_from_1262 ::
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
d_from_1262 = erased
-- Ledger.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1264 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParams_262 -> T_PParamsUpdate_592 -> T_PParams_262
d_applyPParamsUpdate_1264 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1264 v3 v4
du_applyPParamsUpdate_1264 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> T_PParams_262
du_applyPParamsUpdate_1264 v0 v1
  = coe
      C_PParams'46'constructor_4791
      (coe
         du__'63''8599'__1216 (coe d_maxBlockSize_664 (coe v1))
         (coe d_maxBlockSize_334 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxTxSize_666 (coe v1))
         (coe d_maxTxSize_336 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxHeaderSize_668 (coe v1))
         (coe d_maxHeaderSize_338 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxTxExUnits_674 (coe v1))
         (coe d_maxTxExUnits_340 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxBlockExUnits_676 (coe v1))
         (coe d_maxBlockExUnits_342 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxValSize_670 (coe v1))
         (coe d_maxValSize_344 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxCollateralInputs_672 (coe v1))
         (coe d_maxCollateralInputs_346 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_pv_678 (coe v1))
         (coe d_pv_348 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_a_680 (coe v1)) (coe d_a_350 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_b_682 (coe v1)) (coe d_b_352 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_keyDeposit_684 (coe v1))
         (coe d_keyDeposit_354 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_poolDeposit_686 (coe v1))
         (coe d_poolDeposit_356 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_monetaryExpansion_688 (coe v1))
         (coe d_monetaryExpansion_358 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_treasuryCut_690 (coe v1))
         (coe d_treasuryCut_360 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_coinsPerUTxOByte_692 (coe v1))
         (coe d_coinsPerUTxOByte_362 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_prices_694 (coe v1))
         (coe d_prices_364 (coe v0)))
      (coe
         du__'63''8599'__1216
         (coe d_minFeeRefScriptCoinsPerByte_696 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_366 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxRefScriptSizePerTx_698 (coe v1))
         (coe d_maxRefScriptSizePerTx_368 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_maxRefScriptSizePerBlock_700 (coe v1))
         (coe d_maxRefScriptSizePerBlock_370 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_refScriptCostStride_702 (coe v1))
         (coe d_refScriptCostStride_372 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_refScriptCostMultiplier_704 (coe v1))
         (coe d_refScriptCostMultiplier_374 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_minUTxOValue_706 (coe v1))
         (coe d_minUTxOValue_376 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_Emax_710 (coe v1))
         (coe d_Emax_378 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_nopt_712 (coe v1))
         (coe d_nopt_380 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_a0_708 (coe v1))
         (coe d_a0_382 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_collateralPercentage_714 (coe v1))
         (coe d_collateralPercentage_384 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_costmdls_716 (coe v1))
         (coe d_costmdls_386 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_poolThresholds_720 (coe v1))
         (coe d_poolThresholds_388 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_drepThresholds_718 (coe v1))
         (coe d_drepThresholds_390 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_ccMinSize_730 (coe v1))
         (coe d_ccMinSize_392 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_ccMaxTermLength_732 (coe v1))
         (coe d_ccMaxTermLength_394 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_govActionLifetime_722 (coe v1))
         (coe d_govActionLifetime_396 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_govActionDeposit_724 (coe v1))
         (coe d_govActionDeposit_398 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_drepDeposit_726 (coe v1))
         (coe d_drepDeposit_400 (coe v0)))
      (coe
         du__'63''8599'__1216 (coe d_drepActivity_728 (coe v1))
         (coe d_drepActivity_402 (coe v0)))
-- Ledger.PParams.PParamsUpdate._.P.Emax
d_Emax_1276 :: T_PParams_262 -> T_PParamsUpdate_592 -> AgdaAny
d_Emax_1276 v0 ~v1 = du_Emax_1276 v0
du_Emax_1276 :: T_PParams_262 -> AgdaAny
du_Emax_1276 v0 = coe d_Emax_378 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a
d_a_1278 :: T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_a_1278 v0 ~v1 = du_a_1278 v0
du_a_1278 :: T_PParams_262 -> Integer
du_a_1278 v0 = coe d_a_350 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.a0
d_a0_1280 ::
  T_PParams_262 ->
  T_PParamsUpdate_592 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1280 v0 ~v1 = du_a0_1280 v0
du_a0_1280 ::
  T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1280 v0 = coe d_a0_382 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.b
d_b_1282 :: T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_b_1282 v0 ~v1 = du_b_1282 v0
du_b_1282 :: T_PParams_262 -> Integer
du_b_1282 v0 = coe d_b_352 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1284 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_ccMaxTermLength_1284 v0 ~v1 = du_ccMaxTermLength_1284 v0
du_ccMaxTermLength_1284 :: T_PParams_262 -> Integer
du_ccMaxTermLength_1284 v0 = coe d_ccMaxTermLength_394 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1286 :: T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_ccMinSize_1286 v0 ~v1 = du_ccMinSize_1286 v0
du_ccMinSize_1286 :: T_PParams_262 -> Integer
du_ccMinSize_1286 v0 = coe d_ccMinSize_392 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1288 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_coinsPerUTxOByte_1288 v0 ~v1 = du_coinsPerUTxOByte_1288 v0
du_coinsPerUTxOByte_1288 :: T_PParams_262 -> Integer
du_coinsPerUTxOByte_1288 v0 = coe d_coinsPerUTxOByte_362 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1290 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_collateralPercentage_1290 v0 ~v1
  = du_collateralPercentage_1290 v0
du_collateralPercentage_1290 :: T_PParams_262 -> Integer
du_collateralPercentage_1290 v0
  = coe d_collateralPercentage_384 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1292 :: T_PParams_262 -> T_PParamsUpdate_592 -> AgdaAny
d_costmdls_1292 v0 ~v1 = du_costmdls_1292 v0
du_costmdls_1292 :: T_PParams_262 -> AgdaAny
du_costmdls_1292 v0 = coe d_costmdls_386 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1294 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> AgdaAny
d_drepActivity_1294 v0 ~v1 = du_drepActivity_1294 v0
du_drepActivity_1294 :: T_PParams_262 -> AgdaAny
du_drepActivity_1294 v0 = coe d_drepActivity_402 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1296 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_drepDeposit_1296 v0 ~v1 = du_drepDeposit_1296 v0
du_drepDeposit_1296 :: T_PParams_262 -> Integer
du_drepDeposit_1296 v0 = coe d_drepDeposit_400 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1298 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> T_DrepThresholds_198
d_drepThresholds_1298 v0 ~v1 = du_drepThresholds_1298 v0
du_drepThresholds_1298 :: T_PParams_262 -> T_DrepThresholds_198
du_drepThresholds_1298 v0 = coe d_drepThresholds_390 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1300 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_govActionDeposit_1300 v0 ~v1 = du_govActionDeposit_1300 v0
du_govActionDeposit_1300 :: T_PParams_262 -> Integer
du_govActionDeposit_1300 v0 = coe d_govActionDeposit_398 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1302 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_govActionLifetime_1302 v0 ~v1 = du_govActionLifetime_1302 v0
du_govActionLifetime_1302 :: T_PParams_262 -> Integer
du_govActionLifetime_1302 v0 = coe d_govActionLifetime_396 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1304 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_keyDeposit_1304 v0 ~v1 = du_keyDeposit_1304 v0
du_keyDeposit_1304 :: T_PParams_262 -> Integer
du_keyDeposit_1304 v0 = coe d_keyDeposit_354 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1306 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> AgdaAny
d_maxBlockExUnits_1306 v0 ~v1 = du_maxBlockExUnits_1306 v0
du_maxBlockExUnits_1306 :: T_PParams_262 -> AgdaAny
du_maxBlockExUnits_1306 v0 = coe d_maxBlockExUnits_342 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1308 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_maxBlockSize_1308 v0 ~v1 = du_maxBlockSize_1308 v0
du_maxBlockSize_1308 :: T_PParams_262 -> Integer
du_maxBlockSize_1308 v0 = coe d_maxBlockSize_334 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1310 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_maxCollateralInputs_1310 v0 ~v1 = du_maxCollateralInputs_1310 v0
du_maxCollateralInputs_1310 :: T_PParams_262 -> Integer
du_maxCollateralInputs_1310 v0
  = coe d_maxCollateralInputs_346 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1312 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_maxHeaderSize_1312 v0 ~v1 = du_maxHeaderSize_1312 v0
du_maxHeaderSize_1312 :: T_PParams_262 -> Integer
du_maxHeaderSize_1312 v0 = coe d_maxHeaderSize_338 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1314 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_maxRefScriptSizePerBlock_1314 v0 ~v1
  = du_maxRefScriptSizePerBlock_1314 v0
du_maxRefScriptSizePerBlock_1314 :: T_PParams_262 -> Integer
du_maxRefScriptSizePerBlock_1314 v0
  = coe d_maxRefScriptSizePerBlock_370 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1316 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_maxRefScriptSizePerTx_1316 v0 ~v1
  = du_maxRefScriptSizePerTx_1316 v0
du_maxRefScriptSizePerTx_1316 :: T_PParams_262 -> Integer
du_maxRefScriptSizePerTx_1316 v0
  = coe d_maxRefScriptSizePerTx_368 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1318 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> AgdaAny
d_maxTxExUnits_1318 v0 ~v1 = du_maxTxExUnits_1318 v0
du_maxTxExUnits_1318 :: T_PParams_262 -> AgdaAny
du_maxTxExUnits_1318 v0 = coe d_maxTxExUnits_340 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1320 :: T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_maxTxSize_1320 v0 ~v1 = du_maxTxSize_1320 v0
du_maxTxSize_1320 :: T_PParams_262 -> Integer
du_maxTxSize_1320 v0 = coe d_maxTxSize_336 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1322 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_maxValSize_1322 v0 ~v1 = du_maxValSize_1322 v0
du_maxValSize_1322 :: T_PParams_262 -> Integer
du_maxValSize_1322 v0 = coe d_maxValSize_344 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1324 ::
  T_PParams_262 ->
  T_PParamsUpdate_592 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1324 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1324 v0
du_minFeeRefScriptCoinsPerByte_1324 ::
  T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1324 v0
  = coe d_minFeeRefScriptCoinsPerByte_366 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1326 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_minUTxOValue_1326 v0 ~v1 = du_minUTxOValue_1326 v0
du_minUTxOValue_1326 :: T_PParams_262 -> Integer
du_minUTxOValue_1326 v0 = coe d_minUTxOValue_376 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.monetaryExpansion
d_monetaryExpansion_1328 ::
  T_PParams_262 ->
  T_PParamsUpdate_592 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1328 v0 ~v1 = du_monetaryExpansion_1328 v0
du_monetaryExpansion_1328 ::
  T_PParams_262 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_monetaryExpansion_1328 v0 = coe d_monetaryExpansion_358 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.nopt
d_nopt_1330 :: T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_nopt_1330 v0 ~v1 = du_nopt_1330 v0
du_nopt_1330 :: T_PParams_262 -> Integer
du_nopt_1330 v0 = coe d_nopt_380 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1332 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_poolDeposit_1332 v0 ~v1 = du_poolDeposit_1332 v0
du_poolDeposit_1332 :: T_PParams_262 -> Integer
du_poolDeposit_1332 v0 = coe d_poolDeposit_356 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1334 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> T_PoolThresholds_240
d_poolThresholds_1334 v0 ~v1 = du_poolThresholds_1334 v0
du_poolThresholds_1334 :: T_PParams_262 -> T_PoolThresholds_240
du_poolThresholds_1334 v0 = coe d_poolThresholds_388 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.prices
d_prices_1336 :: T_PParams_262 -> T_PParamsUpdate_592 -> AgdaAny
d_prices_1336 v0 ~v1 = du_prices_1336 v0
du_prices_1336 :: T_PParams_262 -> AgdaAny
du_prices_1336 v0 = coe d_prices_364 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.pv
d_pv_1338 ::
  T_PParams_262 ->
  T_PParamsUpdate_592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1338 v0 ~v1 = du_pv_1338 v0
du_pv_1338 ::
  T_PParams_262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1338 v0 = coe d_pv_348 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1340 ::
  T_PParams_262 ->
  T_PParamsUpdate_592 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1340 v0 ~v1
  = du_refScriptCostMultiplier_1340 v0
du_refScriptCostMultiplier_1340 ::
  T_PParams_262 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1340 v0
  = coe d_refScriptCostMultiplier_374 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1342 ::
  T_PParams_262 -> T_PParamsUpdate_592 -> Integer
d_refScriptCostStride_1342 v0 ~v1 = du_refScriptCostStride_1342 v0
du_refScriptCostStride_1342 :: T_PParams_262 -> Integer
du_refScriptCostStride_1342 v0
  = coe d_refScriptCostStride_372 (coe v0)
-- Ledger.PParams.PParamsUpdate._.P.treasuryCut
d_treasuryCut_1344 ::
  T_PParams_262 ->
  T_PParamsUpdate_592 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1344 v0 ~v1 = du_treasuryCut_1344 v0
du_treasuryCut_1344 ::
  T_PParams_262 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_treasuryCut_1344 v0 = coe d_treasuryCut_360 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.Emax
d_Emax_1348 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_1348 v0 = coe d_Emax_710 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a
d_a_1350 :: T_PParamsUpdate_592 -> Maybe Integer
d_a_1350 v0 = coe d_a_680 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.a0
d_a0_1352 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1352 v0 = coe d_a0_708 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.b
d_b_1354 :: T_PParamsUpdate_592 -> Maybe Integer
d_b_1354 v0 = coe d_b_682 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1356 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_1356 v0 = coe d_ccMaxTermLength_732 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1358 :: T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_1358 v0 = coe d_ccMinSize_730 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1360 :: T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_1360 v0 = coe d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1362 :: T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_1362 v0
  = coe d_collateralPercentage_714 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1364 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_1364 v0 = coe d_costmdls_716 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1366 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_1366 v0 = coe d_drepActivity_728 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1368 :: T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_1368 v0 = coe d_drepDeposit_726 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1370 ::
  T_PParamsUpdate_592 -> Maybe T_DrepThresholds_198
d_drepThresholds_1370 v0 = coe d_drepThresholds_718 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1372 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_1372 v0 = coe d_govActionDeposit_724 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1374 :: T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_1374 v0 = coe d_govActionLifetime_722 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1376 :: T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_1376 v0 = coe d_keyDeposit_684 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1378 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_1378 v0 = coe d_maxBlockExUnits_676 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1380 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_1380 v0 = coe d_maxBlockSize_664 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1382 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_1382 v0
  = coe d_maxCollateralInputs_672 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1384 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_1384 v0 = coe d_maxHeaderSize_668 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1386 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_1386 v0
  = coe d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1388 ::
  T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_1388 v0
  = coe d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1390 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_1390 v0 = coe d_maxTxExUnits_674 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1392 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_1392 v0 = coe d_maxTxSize_666 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1394 :: T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_1394 v0 = coe d_maxValSize_670 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1396 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1396 v0
  = coe d_minFeeRefScriptCoinsPerByte_696 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1398 :: T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_1398 v0 = coe d_minUTxOValue_706 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.monetaryExpansion
d_monetaryExpansion_1400 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1400 v0 = coe d_monetaryExpansion_688 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.nopt
d_nopt_1402 :: T_PParamsUpdate_592 -> Maybe Integer
d_nopt_1402 v0 = coe d_nopt_712 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1404 :: T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_1404 v0 = coe d_poolDeposit_686 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1406 ::
  T_PParamsUpdate_592 -> Maybe T_PoolThresholds_240
d_poolThresholds_1406 v0 = coe d_poolThresholds_720 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.prices
d_prices_1408 :: T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_1408 v0 = coe d_prices_694 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.pv
d_pv_1410 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1410 v0 = coe d_pv_678 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1412 ::
  T_PParamsUpdate_592 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1412 v0
  = coe d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1414 :: T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_1414 v0
  = coe d_refScriptCostStride_702 (coe v0)
-- Ledger.PParams.PParamsUpdate._.U.treasuryCut
d_treasuryCut_1416 ::
  T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1416 v0 = coe d_treasuryCut_690 (coe v0)
-- Ledger.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1418 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1418 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1418 v1 v2
du_DecEq'45'PParamsUpdate_1418 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1418 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_494323 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParamsUpdate'46'constructor_494323 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                 du_DecEq'45'PoolThresholds_578))
                                                                                                                           (coe
                                                                                                                              v67)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (coe
                                                                                                                              du_DecEq'45'DrepThresholds_576))
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
d_pvCanFollow'63'_1424 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1424 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1424 v3 v4
du_pvCanFollow'63'_1424 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1424 v0 v1
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
                                                                                                   C_canFollowMajor_180)))
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
                                                                                                    C_canFollowMajor_180)))
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
                                                                                                   C_canFollowMinor_182)))
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
                                                                                                    C_canFollowMinor_182)))
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
                                                                                                    C_canFollowMajor_180)))
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
                                                                                                     C_canFollowMajor_180)))
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
                                                                                                    C_canFollowMinor_182)))
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
                                                                                                     C_canFollowMinor_182)))
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
d_PParamsDiff_1472 a0 a1 a2 = ()
data T_PParamsDiff_1472
  = C_PParamsDiff'46'constructor_963665 (T_PParams_262 ->
                                         AgdaAny -> T_PParams_262)
                                        (AgdaAny -> [T_PParamGroup_186])
                                        (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_1486 :: T_PParamsDiff_1472 -> ()
d_UpdateT_1486 = erased
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1488 ::
  T_PParamsDiff_1472 -> T_PParams_262 -> AgdaAny -> T_PParams_262
d_applyUpdate_1488 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_963665 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_1490 ::
  T_PParamsDiff_1472 -> AgdaAny -> [T_PParamGroup_186]
d_updateGroups_1490 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_963665 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1496 ::
  T_PParamsDiff_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1496 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_963665 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1498 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsDiff_1472 -> AgdaAny -> ()
d_ppdWellFormed_1498 = erased
-- Ledger.PParams.GovParams
d_GovParams_1504 a0 a1 a2 = ()
data T_GovParams_1504
  = C_GovParams'46'constructor_964369 T_PParamsDiff_1472
                                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_1510 :: T_PParamsDiff_1472 -> ()
d_UpdateT_1510 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_1512 ::
  T_PParamsDiff_1472 -> T_PParams_262 -> AgdaAny -> T_PParams_262
d_applyUpdate_1512 v0 = coe d_applyUpdate_1488 (coe v0)
-- Ledger.PParams._.ppWF?
d_ppWF'63'_1514 ::
  T_PParamsDiff_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1514 v0 = coe d_ppWF'63'_1496 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_1516 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_PParamsDiff_1472 -> AgdaAny -> ()
d_ppdWellFormed_1516 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_1518 ::
  T_PParamsDiff_1472 -> AgdaAny -> [T_PParamGroup_186]
d_updateGroups_1518 v0 = coe d_updateGroups_1490 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_1522 :: T_GovParams_1504 -> T_PParamsDiff_1472
d_ppUpd_1522 v0
  = case coe v0 of
      C_GovParams'46'constructor_964369 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_1526 :: T_GovParams_1504 -> ()
d_UpdateT_1526 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_1528 ::
  T_GovParams_1504 -> T_PParams_262 -> AgdaAny -> T_PParams_262
d_applyUpdate_1528 v0
  = coe d_applyUpdate_1488 (coe d_ppUpd_1522 (coe v0))
-- Ledger.PParams.GovParams._.ppWF?
d_ppWF'63'_1530 ::
  T_GovParams_1504 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1530 v0
  = coe d_ppWF'63'_1496 (coe d_ppUpd_1522 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1532 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  T_GovParams_1504 -> AgdaAny -> ()
d_ppdWellFormed_1532 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_1534 ::
  T_GovParams_1504 -> AgdaAny -> [T_PParamGroup_186]
d_updateGroups_1534 v0
  = coe d_updateGroups_1490 (coe d_ppUpd_1522 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1536 ::
  T_GovParams_1504 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1536 v0
  = case coe v0 of
      C_GovParams'46'constructor_964369 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
