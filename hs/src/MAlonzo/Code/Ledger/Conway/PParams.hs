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

module MAlonzo.Code.Ledger.Conway.PParams where

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
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- Ledger.Conway.PParams.Acnt
d_Acnt_160 a0 a1 a2 = ()
data T_Acnt_160 = C_'10214'_'44'_'10215''7491'_170 Integer Integer
-- Ledger.Conway.PParams.Acnt.treasury
d_treasury_166 :: T_Acnt_160 -> Integer
d_treasury_166 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_170 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.Acnt.reserves
d_reserves_168 :: T_Acnt_160 -> Integer
d_reserves_168 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_170 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.Hastreasury
d_Hastreasury_176 a0 a1 a2 a3 a4 = ()
newtype T_Hastreasury_176
  = C_Hastreasury'46'constructor_631 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.Hastreasury.treasuryOf
d_treasuryOf_184 :: T_Hastreasury_176 -> AgdaAny -> Integer
d_treasuryOf_184 v0
  = case coe v0 of
      C_Hastreasury'46'constructor_631 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.treasuryOf
d_treasuryOf_188 :: T_Hastreasury_176 -> AgdaAny -> Integer
d_treasuryOf_188 v0 = coe d_treasuryOf_184 (coe v0)
-- Ledger.Conway.PParams.Hasreserves
d_Hasreserves_194 a0 a1 a2 a3 a4 = ()
newtype T_Hasreserves_194
  = C_Hasreserves'46'constructor_763 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.Hasreserves.reservesOf
d_reservesOf_202 :: T_Hasreserves_194 -> AgdaAny -> Integer
d_reservesOf_202 v0
  = case coe v0 of
      C_Hasreserves'46'constructor_763 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.reservesOf
d_reservesOf_206 :: T_Hasreserves_194 -> AgdaAny -> Integer
d_reservesOf_206 v0 = coe d_reservesOf_202 (coe v0)
-- Ledger.Conway.PParams.ProtVer
d_ProtVer_208 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_ProtVer_208 = erased
-- Ledger.Conway.PParams.Show-ProtVer
d_Show'45'ProtVer_210 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_210 ~v0 = du_Show'45'ProtVer_210
du_Show'45'ProtVer_210 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_210
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.PParams.pvCanFollow
d_pvCanFollow_212 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_212
  = C_canFollowMajor_214 | C_canFollowMinor_216
-- Ledger.Conway.PParams.HasCast-Acnt
d_HasCast'45'Acnt_218 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_218 ~v0 ~v1 ~v2 = du_HasCast'45'Acnt_218
du_HasCast'45'Acnt_218 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_218
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (160 :: Integer) (15687114209670515289 :: Integer)
                                 "Ledger.Conway.PParams.Acnt"
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
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (160 :: Integer) (15687114209670515289 :: Integer)
                                    "Ledger.Conway.PParams.Acnt"
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
         (coe C_'10214'_'44'_'10215''7491'_170))
-- Ledger.Conway.PParams.PParamGroup
d_PParamGroup_220 a0 a1 a2 = ()
data T_PParamGroup_220
  = C_NetworkGroup_222 | C_EconomicGroup_224 | C_TechnicalGroup_226 |
    C_GovernanceGroup_228 | C_SecurityGroup_230
-- Ledger.Conway.PParams.DrepThresholds
d_DrepThresholds_232 a0 a1 a2 = ()
data T_DrepThresholds_232
  = C_DrepThresholds'46'constructor_2867 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Conway.PParams.DrepThresholds.P1
d_P1_254 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_254 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P2a
d_P2a_256 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_256 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P2b
d_P2b_258 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_258 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P3
d_P3_260 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_260 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P4
d_P4_262 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_262 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5a
d_P5a_264 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_264 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5b
d_P5b_266 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5c
d_P5c_268 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5d
d_P5d_270 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P6
d_P6_272 ::
  T_DrepThresholds_232 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds
d_PoolThresholds_274 a0 a1 a2 = ()
data T_PoolThresholds_274
  = C_PoolThresholds'46'constructor_3431 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Conway.PParams.PoolThresholds.Q1
d_Q1_286 ::
  T_PoolThresholds_274 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_286 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q2a
d_Q2a_288 ::
  T_PoolThresholds_274 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_288 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q2b
d_Q2b_290 ::
  T_PoolThresholds_274 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_290 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q4
d_Q4_292 ::
  T_PoolThresholds_274 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_292 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q5
d_Q5_294 ::
  T_PoolThresholds_274 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_294 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams
d_PParams_296 a0 a1 a2 = ()
data T_PParams_296
  = C_PParams'46'constructor_5025 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_274 T_DrepThresholds_232 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.Conway.PParams.PParams.maxBlockSize
d_maxBlockSize_368 :: T_PParams_296 -> Integer
d_maxBlockSize_368 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxTxSize
d_maxTxSize_370 :: T_PParams_296 -> Integer
d_maxTxSize_370 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxHeaderSize
d_maxHeaderSize_372 :: T_PParams_296 -> Integer
d_maxHeaderSize_372 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxTxExUnits
d_maxTxExUnits_374 :: T_PParams_296 -> AgdaAny
d_maxTxExUnits_374 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_376 :: T_PParams_296 -> AgdaAny
d_maxBlockExUnits_376 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxValSize
d_maxValSize_378 :: T_PParams_296 -> Integer
d_maxValSize_378 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_380 :: T_PParams_296 -> Integer
d_maxCollateralInputs_380 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.pv
d_pv_382 :: T_PParams_296 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_382 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.a
d_a_384 :: T_PParams_296 -> Integer
d_a_384 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.b
d_b_386 :: T_PParams_296 -> Integer
d_b_386 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.keyDeposit
d_keyDeposit_388 :: T_PParams_296 -> Integer
d_keyDeposit_388 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.poolDeposit
d_poolDeposit_390 :: T_PParams_296 -> Integer
d_poolDeposit_390 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.monetaryExpansion
d_monetaryExpansion_392 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_392 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.treasuryCut
d_treasuryCut_394 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_394 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_396 :: T_PParams_296 -> Integer
d_coinsPerUTxOByte_396 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.prices
d_prices_398 :: T_PParams_296 -> AgdaAny
d_prices_398 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_400 ::
  T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_400 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_402 :: T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_402 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_404 :: T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_404 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.refScriptCostStride
d_refScriptCostStride_406 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_406 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_408 ::
  T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_408 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.minUTxOValue
d_minUTxOValue_410 :: T_PParams_296 -> Integer
d_minUTxOValue_410 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.Emax
d_Emax_412 :: T_PParams_296 -> AgdaAny
d_Emax_412 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.nopt
d_nopt_414 :: T_PParams_296 -> Integer
d_nopt_414 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.a0
d_a0_416 :: T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_416 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.collateralPercentage
d_collateralPercentage_418 :: T_PParams_296 -> Integer
d_collateralPercentage_418 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.costmdls
d_costmdls_420 :: T_PParams_296 -> AgdaAny
d_costmdls_420 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.poolThresholds
d_poolThresholds_422 :: T_PParams_296 -> T_PoolThresholds_274
d_poolThresholds_422 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.drepThresholds
d_drepThresholds_424 :: T_PParams_296 -> T_DrepThresholds_232
d_drepThresholds_424 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.ccMinSize
d_ccMinSize_426 :: T_PParams_296 -> Integer
d_ccMinSize_426 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_428 :: T_PParams_296 -> Integer
d_ccMaxTermLength_428 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.govActionLifetime
d_govActionLifetime_430 :: T_PParams_296 -> Integer
d_govActionLifetime_430 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.govActionDeposit
d_govActionDeposit_432 :: T_PParams_296 -> Integer
d_govActionDeposit_432 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.drepDeposit
d_drepDeposit_434 :: T_PParams_296 -> Integer
d_drepDeposit_434 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.drepActivity
d_drepActivity_436 :: T_PParams_296 -> AgdaAny
d_drepActivity_436 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.HasPParams
d_HasPParams_442 a0 a1 a2 a3 a4 = ()
newtype T_HasPParams_442
  = C_HasPParams'46'constructor_9433 (AgdaAny -> T_PParams_296)
-- Ledger.Conway.PParams.HasPParams.PParamsOf
d_PParamsOf_450 :: T_HasPParams_442 -> AgdaAny -> T_PParams_296
d_PParamsOf_450 v0
  = case coe v0 of
      C_HasPParams'46'constructor_9433 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.PParamsOf
d_PParamsOf_454 :: T_HasPParams_442 -> AgdaAny -> T_PParams_296
d_PParamsOf_454 v0 = coe d_PParamsOf_450 (coe v0)
-- Ledger.Conway.PParams.HasgovActionDeposit
d_HasgovActionDeposit_460 a0 a1 a2 a3 a4 = ()
newtype T_HasgovActionDeposit_460
  = C_HasgovActionDeposit'46'constructor_9565 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_468 ::
  T_HasgovActionDeposit_460 -> AgdaAny -> Integer
d_govActionDepositOf_468 v0
  = case coe v0 of
      C_HasgovActionDeposit'46'constructor_9565 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.govActionDepositOf
d_govActionDepositOf_472 ::
  T_HasgovActionDeposit_460 -> AgdaAny -> Integer
d_govActionDepositOf_472 v0 = coe d_govActionDepositOf_468 (coe v0)
-- Ledger.Conway.PParams.HasccMaxTermLength
d_HasccMaxTermLength_478 a0 a1 a2 a3 a4 = ()
newtype T_HasccMaxTermLength_478
  = C_HasccMaxTermLength'46'constructor_9697 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_486 ::
  T_HasccMaxTermLength_478 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_486 v0
  = case coe v0 of
      C_HasccMaxTermLength'46'constructor_9697 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_490 ::
  T_HasccMaxTermLength_478 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_490 v0 = coe d_ccMaxTermLengthOf_486 (coe v0)
-- Ledger.Conway.PParams.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_492 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_HasgovActionDeposit_460
d_HasgovActionDeposit'45'PParams_492 ~v0 ~v1 ~v2
  = du_HasgovActionDeposit'45'PParams_492
du_HasgovActionDeposit'45'PParams_492 :: T_HasgovActionDeposit_460
du_HasgovActionDeposit'45'PParams_492
  = coe
      C_HasgovActionDeposit'46'constructor_9565
      (coe (\ v0 -> d_govActionDeposit_432 (coe v0)))
-- Ledger.Conway.PParams.positivePParams
d_positivePParams_494 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParams_296 -> [Integer]
d_positivePParams_494 ~v0 ~v1 ~v2 v3 = du_positivePParams_494 v3
du_positivePParams_494 :: T_PParams_296 -> [Integer]
du_positivePParams_494 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_368 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_370 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_372 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_378 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_coinsPerUTxOByte_396 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_poolDeposit_390 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_collateralPercentage_418 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_ccMaxTermLength_428 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_govActionLifetime_430 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionDeposit_432 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_drepDeposit_434 (coe v0))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.PParams._._.Emax
d_Emax_504 :: T_PParams_296 -> AgdaAny
d_Emax_504 v0 = coe d_Emax_412 (coe v0)
-- Ledger.Conway.PParams._._.a
d_a_506 :: T_PParams_296 -> Integer
d_a_506 v0 = coe d_a_384 (coe v0)
-- Ledger.Conway.PParams._._.a0
d_a0_508 :: T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_508 v0 = coe d_a0_416 (coe v0)
-- Ledger.Conway.PParams._._.b
d_b_510 :: T_PParams_296 -> Integer
d_b_510 v0 = coe d_b_386 (coe v0)
-- Ledger.Conway.PParams._._.ccMaxTermLength
d_ccMaxTermLength_512 :: T_PParams_296 -> Integer
d_ccMaxTermLength_512 v0 = coe d_ccMaxTermLength_428 (coe v0)
-- Ledger.Conway.PParams._._.ccMinSize
d_ccMinSize_514 :: T_PParams_296 -> Integer
d_ccMinSize_514 v0 = coe d_ccMinSize_426 (coe v0)
-- Ledger.Conway.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_516 :: T_PParams_296 -> Integer
d_coinsPerUTxOByte_516 v0 = coe d_coinsPerUTxOByte_396 (coe v0)
-- Ledger.Conway.PParams._._.collateralPercentage
d_collateralPercentage_518 :: T_PParams_296 -> Integer
d_collateralPercentage_518 v0
  = coe d_collateralPercentage_418 (coe v0)
-- Ledger.Conway.PParams._._.costmdls
d_costmdls_520 :: T_PParams_296 -> AgdaAny
d_costmdls_520 v0 = coe d_costmdls_420 (coe v0)
-- Ledger.Conway.PParams._._.drepActivity
d_drepActivity_522 :: T_PParams_296 -> AgdaAny
d_drepActivity_522 v0 = coe d_drepActivity_436 (coe v0)
-- Ledger.Conway.PParams._._.drepDeposit
d_drepDeposit_524 :: T_PParams_296 -> Integer
d_drepDeposit_524 v0 = coe d_drepDeposit_434 (coe v0)
-- Ledger.Conway.PParams._._.drepThresholds
d_drepThresholds_526 :: T_PParams_296 -> T_DrepThresholds_232
d_drepThresholds_526 v0 = coe d_drepThresholds_424 (coe v0)
-- Ledger.Conway.PParams._._.govActionDeposit
d_govActionDeposit_528 :: T_PParams_296 -> Integer
d_govActionDeposit_528 v0 = coe d_govActionDeposit_432 (coe v0)
-- Ledger.Conway.PParams._._.govActionLifetime
d_govActionLifetime_530 :: T_PParams_296 -> Integer
d_govActionLifetime_530 v0 = coe d_govActionLifetime_430 (coe v0)
-- Ledger.Conway.PParams._._.keyDeposit
d_keyDeposit_532 :: T_PParams_296 -> Integer
d_keyDeposit_532 v0 = coe d_keyDeposit_388 (coe v0)
-- Ledger.Conway.PParams._._.maxBlockExUnits
d_maxBlockExUnits_534 :: T_PParams_296 -> AgdaAny
d_maxBlockExUnits_534 v0 = coe d_maxBlockExUnits_376 (coe v0)
-- Ledger.Conway.PParams._._.maxBlockSize
d_maxBlockSize_536 :: T_PParams_296 -> Integer
d_maxBlockSize_536 v0 = coe d_maxBlockSize_368 (coe v0)
-- Ledger.Conway.PParams._._.maxCollateralInputs
d_maxCollateralInputs_538 :: T_PParams_296 -> Integer
d_maxCollateralInputs_538 v0
  = coe d_maxCollateralInputs_380 (coe v0)
-- Ledger.Conway.PParams._._.maxHeaderSize
d_maxHeaderSize_540 :: T_PParams_296 -> Integer
d_maxHeaderSize_540 v0 = coe d_maxHeaderSize_372 (coe v0)
-- Ledger.Conway.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_542 :: T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_542 v0
  = coe d_maxRefScriptSizePerBlock_404 (coe v0)
-- Ledger.Conway.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_544 :: T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_544 v0
  = coe d_maxRefScriptSizePerTx_402 (coe v0)
-- Ledger.Conway.PParams._._.maxTxExUnits
d_maxTxExUnits_546 :: T_PParams_296 -> AgdaAny
d_maxTxExUnits_546 v0 = coe d_maxTxExUnits_374 (coe v0)
-- Ledger.Conway.PParams._._.maxTxSize
d_maxTxSize_548 :: T_PParams_296 -> Integer
d_maxTxSize_548 v0 = coe d_maxTxSize_370 (coe v0)
-- Ledger.Conway.PParams._._.maxValSize
d_maxValSize_550 :: T_PParams_296 -> Integer
d_maxValSize_550 v0 = coe d_maxValSize_378 (coe v0)
-- Ledger.Conway.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_552 ::
  T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_552 v0
  = coe d_minFeeRefScriptCoinsPerByte_400 (coe v0)
-- Ledger.Conway.PParams._._.minUTxOValue
d_minUTxOValue_554 :: T_PParams_296 -> Integer
d_minUTxOValue_554 v0 = coe d_minUTxOValue_410 (coe v0)
-- Ledger.Conway.PParams._._.monetaryExpansion
d_monetaryExpansion_556 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_556 v0 = coe d_monetaryExpansion_392 (coe v0)
-- Ledger.Conway.PParams._._.nopt
d_nopt_558 :: T_PParams_296 -> Integer
d_nopt_558 v0 = coe d_nopt_414 (coe v0)
-- Ledger.Conway.PParams._._.poolDeposit
d_poolDeposit_560 :: T_PParams_296 -> Integer
d_poolDeposit_560 v0 = coe d_poolDeposit_390 (coe v0)
-- Ledger.Conway.PParams._._.poolThresholds
d_poolThresholds_562 :: T_PParams_296 -> T_PoolThresholds_274
d_poolThresholds_562 v0 = coe d_poolThresholds_422 (coe v0)
-- Ledger.Conway.PParams._._.prices
d_prices_564 :: T_PParams_296 -> AgdaAny
d_prices_564 v0 = coe d_prices_398 (coe v0)
-- Ledger.Conway.PParams._._.pv
d_pv_566 :: T_PParams_296 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_566 v0 = coe d_pv_382 (coe v0)
-- Ledger.Conway.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_568 ::
  T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_568 v0
  = coe d_refScriptCostMultiplier_408 (coe v0)
-- Ledger.Conway.PParams._._.refScriptCostStride
d_refScriptCostStride_570 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_570 v0
  = coe d_refScriptCostStride_406 (coe v0)
-- Ledger.Conway.PParams._._.treasuryCut
d_treasuryCut_572 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_572 v0 = coe d_treasuryCut_394 (coe v0)
-- Ledger.Conway.PParams.paramsWellFormed
d_paramsWellFormed_574 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParams_296 -> ()
d_paramsWellFormed_574 = erased
-- Ledger.Conway.PParams.paramsWF-elim
d_paramsWF'45'elim_582 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParams_296 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_582 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_582 v5
du_paramsWF'45'elim_582 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_582 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.Conway.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_602 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_602 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_602
du_DecEq'45'DrepThresholds_602 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_602
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_2867 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
-- Ledger.Conway.PParams.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_604 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_604 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_604
du_DecEq'45'PoolThresholds_604 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_604
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_3431 v7 v8 v9 v10 v11
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
-- Ledger.Conway.PParams.DecEq-PParams
d_DecEq'45'PParams_606 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_606 ~v0 v1 v2 = du_DecEq'45'PParams_606 v1 v2
du_DecEq'45'PParams_606 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_606 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_5025 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParams'46'constructor_5025 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                             (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
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
                                                                                                                                                               d_P6_272
                                                                                                                                                               (coe
                                                                                                                                                                  v31))
                                                                                                                                                            (coe
                                                                                                                                                               d_P6_272
                                                                                                                                                               (coe
                                                                                                                                                                  v67))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_270
                                                                                                                                                            (coe
                                                                                                                                                               v31))
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_270
                                                                                                                                                            (coe
                                                                                                                                                               v67))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_268
                                                                                                                                                         (coe
                                                                                                                                                            v31))
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_268
                                                                                                                                                         (coe
                                                                                                                                                            v67))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_266
                                                                                                                                                      (coe
                                                                                                                                                         v31))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_266
                                                                                                                                                      (coe
                                                                                                                                                         v67))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_264
                                                                                                                                                   (coe
                                                                                                                                                      v31))
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_264
                                                                                                                                                   (coe
                                                                                                                                                      v67))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                             (coe
                                                                                                                                                d_P4_262
                                                                                                                                                (coe
                                                                                                                                                   v31))
                                                                                                                                             (coe
                                                                                                                                                d_P4_262
                                                                                                                                                (coe
                                                                                                                                                   v67))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                          (coe
                                                                                                                                             d_P3_260
                                                                                                                                             (coe
                                                                                                                                                v31))
                                                                                                                                          (coe
                                                                                                                                             d_P3_260
                                                                                                                                             (coe
                                                                                                                                                v67))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_P2b_258
                                                                                                                                          (coe
                                                                                                                                             v31))
                                                                                                                                       (coe
                                                                                                                                          d_P2b_258
                                                                                                                                          (coe
                                                                                                                                             v67))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_P2a_256
                                                                                                                                       (coe
                                                                                                                                          v31))
                                                                                                                                    (coe
                                                                                                                                       d_P2a_256
                                                                                                                                       (coe
                                                                                                                                          v67))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_P1_254
                                                                                                                                    (coe
                                                                                                                                       v31))
                                                                                                                                 (coe
                                                                                                                                    d_P1_254
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
                                                                                                                                             d_Q5_294
                                                                                                                                             (coe
                                                                                                                                                v30))
                                                                                                                                          (coe
                                                                                                                                             d_Q5_294
                                                                                                                                             (coe
                                                                                                                                                v66))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_Q4_292
                                                                                                                                          (coe
                                                                                                                                             v30))
                                                                                                                                       (coe
                                                                                                                                          d_Q4_292
                                                                                                                                          (coe
                                                                                                                                             v66))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_290
                                                                                                                                       (coe
                                                                                                                                          v30))
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_290
                                                                                                                                       (coe
                                                                                                                                          v66))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_288
                                                                                                                                    (coe
                                                                                                                                       v30))
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_288
                                                                                                                                    (coe
                                                                                                                                       v66))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                              (coe
                                                                                                                                 d_Q1_286
                                                                                                                                 (coe
                                                                                                                                    v30))
                                                                                                                              (coe
                                                                                                                                 d_Q1_286
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
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
                                                                                                         (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
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
                                                                                             (let v74
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                        (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                           (coe
                                                                                                              v58))
                                                                                                        (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                           (coe
                                                                                                              v22)) in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v74 of
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v75 v76
                                                                                                     -> if coe
                                                                                                             v75
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
                                                   (MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                         (coe v1)))
                                                   v43 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                      (coe v1)))
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
-- Ledger.Conway.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_608 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_608 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_608
du_DecEq'45'PParamGroup_608 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_608
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_222
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_222
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
                          C_EconomicGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_224
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_222
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_224
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
                          C_TechnicalGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_226
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_222
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_226
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
                          C_GovernanceGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_228
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_222
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_228
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
                          C_SecurityGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_230
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_222
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_230
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
-- Ledger.Conway.PParams.Show-DrepThresholds
d_Show'45'DrepThresholds_610 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_610 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_610
du_Show'45'DrepThresholds_610 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_610
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
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
-- Ledger.Conway.PParams.Show-PoolThresholds
d_Show'45'PoolThresholds_612 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_612 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_612
du_Show'45'PoolThresholds_612 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_612
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5
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
-- Ledger.Conway.PParams.Show-PParams
d_Show'45'PParams_614 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_614 ~v0 v1 v2 = du_Show'45'PParams_614 v1 v2
du_Show'45'PParams_614 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_614 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_5025 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
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
                                                                                                                        (MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                                                                                              (coe
                                                                                                                                 v1)))
                                                                                                                        v6)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
                                                                        (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                           (coe v22)))))
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
                                                               (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
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
                                                   (MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
                                                                  (coe d_Q1_286 (coe v30)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_288 (coe v30)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_290 (coe v30)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_292 (coe v30)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_294 (coe v30)))))))
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
                                                                                 d_P1_254
                                                                                 (coe v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_256
                                                                              (coe v31)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_258 (coe v31)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_260 (coe v31)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_262 (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_264 (coe v31)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_266 (coe v31)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_268 (coe v31)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_270 (coe v31)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_272 (coe v31)))))))
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
                           (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
                              (coe v0))
                           v37))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_618 a0 a1 a2 = ()
data T_PParamsUpdate_618
  = C_PParamsUpdate'46'constructor_496235 (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer) (Maybe AgdaAny) (Maybe AgdaAny)
                                          (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                          (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                          (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                                          (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                                          (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe Integer) (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe Integer)
                                          (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                          (Maybe AgdaAny) (Maybe Integer) (Maybe Integer)
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_232)
                                          (Maybe T_PoolThresholds_274) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_690 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_690 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_692 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_692 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_694 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_694 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_696 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_696 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_698 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_698 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_700 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_700 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_702 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_702 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_704 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_704 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.a
d_a_706 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_706 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.b
d_b_708 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_708 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_710 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_710 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_712 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_712 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_714 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_714 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_716 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_716 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_718 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_718 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_720 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_720 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_722 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_722 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_724 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_724 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_726 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_726 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_728 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_728 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_730 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_730 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_732 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_732 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_734 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_734 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_736 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_736 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_738 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_738 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_740 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_740 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_742 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_742 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_744 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_744 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_746 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_746 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_748 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_748 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_750 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_750 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_752 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_752 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_754 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_754 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_756 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_756 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_758 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_758 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_760 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 -> ()
d_paramsUpdateWellFormed_760 = erased
-- Ledger.Conway.PParams.PParamsUpdate._._.Emax
d_Emax_770 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_770 v0 = coe d_Emax_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.a
d_a_772 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_772 v0 = coe d_a_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.a0
d_a0_774 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_774 v0 = coe d_a0_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.b
d_b_776 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_776 v0 = coe d_b_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_778 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_778 v0 = coe d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_780 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_780 v0 = coe d_ccMinSize_756 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_782 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_782 v0 = coe d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_784 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_784 v0
  = coe d_collateralPercentage_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.costmdls
d_costmdls_786 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_786 v0 = coe d_costmdls_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_788 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_788 v0 = coe d_drepActivity_754 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_790 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_790 v0 = coe d_drepDeposit_752 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_792 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_792 v0 = coe d_drepThresholds_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_794 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_794 v0 = coe d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_796 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_796 v0 = coe d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_798 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_798 v0 = coe d_keyDeposit_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_800 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_800 v0 = coe d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_802 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_802 v0 = coe d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_804 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_804 v0
  = coe d_maxCollateralInputs_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_806 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_806 v0 = coe d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_808 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_808 v0
  = coe d_maxRefScriptSizePerBlock_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_810 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_810 v0
  = coe d_maxRefScriptSizePerTx_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_812 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_812 v0 = coe d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_814 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_814 v0 = coe d_maxTxSize_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_816 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_816 v0 = coe d_maxValSize_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_818 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_818 v0
  = coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_820 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_820 v0 = coe d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.monetaryExpansion
d_monetaryExpansion_822 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_822 v0 = coe d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.nopt
d_nopt_824 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_824 v0 = coe d_nopt_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_826 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_826 v0 = coe d_poolDeposit_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_828 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_828 v0 = coe d_poolThresholds_746 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.prices
d_prices_830 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_830 v0 = coe d_prices_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.pv
d_pv_832 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_832 v0 = coe d_pv_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_834 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_834 v0
  = coe d_refScriptCostMultiplier_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_836 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_836 v0
  = coe d_refScriptCostStride_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.treasuryCut
d_treasuryCut_838 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_838 v0 = coe d_treasuryCut_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_842 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_842 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_842 v3
du_paramsUpdateWellFormed'63'_842 ::
  T_PParamsUpdate_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_842 v0
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
                  (coe d_maxBlockSize_690 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_692 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_694 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_696 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_coinsPerUTxOByte_718 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_712 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_740 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_758 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_748 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_750 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_752 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.Conway.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_846 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 -> Bool
d_modifiesNetworkGroup_846 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_846 v3
du_modifiesNetworkGroup_846 :: T_PParamsUpdate_618 -> Bool
du_modifiesNetworkGroup_846 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_690 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_692 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_694 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_696 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_698 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_700 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_702 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_704 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_852 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_852 v0 = coe d_Emax_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_854 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_854 v0 = coe d_a_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_856 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_856 v0 = coe d_a0_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_858 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_858 v0 = coe d_b_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_860 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_860 v0 = coe d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_862 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_862 v0 = coe d_ccMinSize_756 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_864 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_864 v0 = coe d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_866 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_866 v0
  = coe d_collateralPercentage_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_868 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_868 v0 = coe d_costmdls_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_870 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_870 v0 = coe d_drepActivity_754 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_872 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_872 v0 = coe d_drepDeposit_752 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_874 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_874 v0 = coe d_drepThresholds_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_876 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_876 v0 = coe d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_878 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_878 v0 = coe d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_880 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_880 v0 = coe d_keyDeposit_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_882 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_882 v0 = coe d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_884 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_884 v0 = coe d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_886 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_886 v0
  = coe d_maxCollateralInputs_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_888 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_888 v0 = coe d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_890 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_890 v0
  = coe d_maxRefScriptSizePerBlock_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_892 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_892 v0
  = coe d_maxRefScriptSizePerTx_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_894 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_894 v0 = coe d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_896 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_896 v0 = coe d_maxTxSize_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_898 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_898 v0 = coe d_maxValSize_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_900 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_900 v0
  = coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_902 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_902 v0 = coe d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_904 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_904 v0 = coe d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_906 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_906 v0 = coe d_nopt_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_908 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_908 v0 = coe d_poolDeposit_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_910 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_910 v0 = coe d_poolThresholds_746 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_912 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_912 v0 = coe d_prices_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_914 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_914 v0 = coe d_pv_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_916 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_916 v0
  = coe d_refScriptCostMultiplier_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_918 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_918 v0
  = coe d_refScriptCostStride_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_920 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_920 v0 = coe d_treasuryCut_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_922 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 -> Bool
d_modifiesEconomicGroup_922 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_922 v3
du_modifiesEconomicGroup_922 :: T_PParamsUpdate_618 -> Bool
du_modifiesEconomicGroup_922 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_706 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_708 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_710 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_712 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_monetaryExpansion_714 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_treasuryCut_716 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_coinsPerUTxOByte_718 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_maxRefScriptSizePerTx_724 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_maxRefScriptSizePerBlock_726 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_refScriptCostStride_728 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_refScriptCostMultiplier_730 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_prices_720 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_minUTxOValue_732 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_928 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_928 v0 = coe d_Emax_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_930 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_930 v0 = coe d_a_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_932 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_932 v0 = coe d_a0_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_934 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_934 v0 = coe d_b_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_936 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_936 v0 = coe d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_938 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_938 v0 = coe d_ccMinSize_756 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_940 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_940 v0 = coe d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_942 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_942 v0
  = coe d_collateralPercentage_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_944 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_944 v0 = coe d_costmdls_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_946 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_946 v0 = coe d_drepActivity_754 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_948 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_948 v0 = coe d_drepDeposit_752 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_950 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_950 v0 = coe d_drepThresholds_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_952 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_952 v0 = coe d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_954 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_954 v0 = coe d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_956 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_956 v0 = coe d_keyDeposit_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_958 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_958 v0 = coe d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_960 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_960 v0 = coe d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_962 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_962 v0
  = coe d_maxCollateralInputs_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_964 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_964 v0 = coe d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_966 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_966 v0
  = coe d_maxRefScriptSizePerBlock_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_968 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_968 v0
  = coe d_maxRefScriptSizePerTx_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_970 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_970 v0 = coe d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_972 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_972 v0 = coe d_maxTxSize_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_974 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_974 v0 = coe d_maxValSize_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_976 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_976 v0
  = coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_978 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_978 v0 = coe d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_980 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_980 v0 = coe d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_982 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_982 v0 = coe d_nopt_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_984 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_984 v0 = coe d_poolDeposit_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_986 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_986 v0 = coe d_poolThresholds_746 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_988 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_988 v0 = coe d_prices_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_990 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_990 v0 = coe d_pv_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_992 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_992 v0
  = coe d_refScriptCostMultiplier_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_994 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_994 v0
  = coe d_refScriptCostStride_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_996 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_996 v0 = coe d_treasuryCut_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_998 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 -> Bool
d_modifiesTechnicalGroup_998 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_998 v3
du_modifiesTechnicalGroup_998 :: T_PParamsUpdate_618 -> Bool
du_modifiesTechnicalGroup_998 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_734 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_736 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_738 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_740 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_742 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_1004 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_1004 v0 = coe d_Emax_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_1006 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_1006 v0 = coe d_a_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_1008 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1008 v0 = coe d_a0_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_1010 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_1010 v0 = coe d_b_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1012 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_1012 v0 = coe d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1014 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_1014 v0 = coe d_ccMinSize_756 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1016 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_1016 v0 = coe d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1018 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_1018 v0
  = coe d_collateralPercentage_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_1020 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_1020 v0 = coe d_costmdls_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1022 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_1022 v0 = coe d_drepActivity_754 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1024 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_1024 v0 = coe d_drepDeposit_752 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1026 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_1026 v0 = coe d_drepThresholds_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1028 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_1028 v0 = coe d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1030 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_1030 v0 = coe d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1032 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_1032 v0 = coe d_keyDeposit_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1034 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_1034 v0 = coe d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1036 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_1036 v0 = coe d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1038 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_1038 v0
  = coe d_maxCollateralInputs_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1040 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_1040 v0 = coe d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1042 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_1042 v0
  = coe d_maxRefScriptSizePerBlock_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1044 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_1044 v0
  = coe d_maxRefScriptSizePerTx_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1046 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_1046 v0 = coe d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1048 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_1048 v0 = coe d_maxTxSize_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1050 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_1050 v0 = coe d_maxValSize_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1052 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1052 v0
  = coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1054 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_1054 v0 = coe d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1056 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1056 v0 = coe d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_1058 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_1058 v0 = coe d_nopt_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1060 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_1060 v0 = coe d_poolDeposit_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1062 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_1062 v0 = coe d_poolThresholds_746 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_1064 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_1064 v0 = coe d_prices_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_1066 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1066 v0 = coe d_pv_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1068 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1068 v0
  = coe d_refScriptCostMultiplier_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1070 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1070 v0
  = coe d_refScriptCostStride_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1072 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1072 v0 = coe d_treasuryCut_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1074 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 -> Bool
d_modifiesGovernanceGroup_1074 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_1074 v3
du_modifiesGovernanceGroup_1074 :: T_PParamsUpdate_618 -> Bool
du_modifiesGovernanceGroup_1074 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_744 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_746 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_748 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_750 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_752 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_754 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_756 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_758 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_1080 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_1080 v0 = coe d_Emax_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_1082 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_1082 v0 = coe d_a_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_1084 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1084 v0 = coe d_a0_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_1086 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_1086 v0 = coe d_b_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1088 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_1088 v0 = coe d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1090 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_1090 v0 = coe d_ccMinSize_756 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1092 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_1092 v0 = coe d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1094 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_1094 v0
  = coe d_collateralPercentage_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_1096 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_1096 v0 = coe d_costmdls_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1098 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_1098 v0 = coe d_drepActivity_754 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1100 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_1100 v0 = coe d_drepDeposit_752 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1102 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_1102 v0 = coe d_drepThresholds_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1104 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_1104 v0 = coe d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1106 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_1106 v0 = coe d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1108 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_1108 v0 = coe d_keyDeposit_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1110 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_1110 v0 = coe d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1112 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_1112 v0 = coe d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1114 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_1114 v0
  = coe d_maxCollateralInputs_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1116 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_1116 v0 = coe d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1118 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_1118 v0
  = coe d_maxRefScriptSizePerBlock_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1120 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_1120 v0
  = coe d_maxRefScriptSizePerTx_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1122 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_1122 v0 = coe d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1124 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_1124 v0 = coe d_maxTxSize_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1126 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_1126 v0 = coe d_maxValSize_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1128 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1128 v0
  = coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1130 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_1130 v0 = coe d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1132 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1132 v0 = coe d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_1134 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_1134 v0 = coe d_nopt_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1136 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_1136 v0 = coe d_poolDeposit_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1138 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_1138 v0 = coe d_poolThresholds_746 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_1140 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_1140 v0 = coe d_prices_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_1142 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1142 v0 = coe d_pv_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1144 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1144 v0
  = coe d_refScriptCostMultiplier_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1146 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1146 v0
  = coe d_refScriptCostStride_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1148 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1148 v0 = coe d_treasuryCut_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1150 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 -> Bool
d_modifiesSecurityGroup_1150 ~v0 ~v1 ~v2 v3
  = du_modifiesSecurityGroup_1150 v3
du_modifiesSecurityGroup_1150 :: T_PParamsUpdate_618 -> Bool
du_modifiesSecurityGroup_1150 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_690 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_692 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_694 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_696 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxBlockExUnits_702 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_b_708 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_a_706 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_718 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_govActionDeposit_750 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_1156 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_1156 v0 = coe d_Emax_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_1158 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_1158 v0 = coe d_a_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_1160 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1160 v0 = coe d_a0_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_1162 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_1162 v0 = coe d_b_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1164 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_1164 v0 = coe d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1166 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_1166 v0 = coe d_ccMinSize_756 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1168 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_1168 v0 = coe d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1170 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_1170 v0
  = coe d_collateralPercentage_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_1172 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_1172 v0 = coe d_costmdls_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1174 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_1174 v0 = coe d_drepActivity_754 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1176 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_1176 v0 = coe d_drepDeposit_752 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1178 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_1178 v0 = coe d_drepThresholds_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1180 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_1180 v0 = coe d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1182 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_1182 v0 = coe d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1184 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_1184 v0 = coe d_keyDeposit_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1186 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_1186 v0 = coe d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1188 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_1188 v0 = coe d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1190 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_1190 v0
  = coe d_maxCollateralInputs_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1192 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_1192 v0 = coe d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1194 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_1194 v0
  = coe d_maxRefScriptSizePerBlock_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1196 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_1196 v0
  = coe d_maxRefScriptSizePerTx_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1198 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_1198 v0 = coe d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1200 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_1200 v0 = coe d_maxTxSize_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1202 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_1202 v0 = coe d_maxValSize_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1204 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1204 v0
  = coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1206 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_1206 v0 = coe d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1208 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1208 v0 = coe d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_1210 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_1210 v0 = coe d_nopt_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1212 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_1212 v0 = coe d_poolDeposit_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1214 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_1214 v0 = coe d_poolThresholds_746 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_1216 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_1216 v0 = coe d_prices_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_1218 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1218 v0 = coe d_pv_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1220 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1220 v0
  = coe d_refScriptCostMultiplier_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1222 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1222 v0
  = coe d_refScriptCostStride_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1224 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1224 v0 = coe d_treasuryCut_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1226 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 -> [T_PParamGroup_220]
d_modifiedUpdateGroups_1226 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1226 v3
du_modifiedUpdateGroups_1226 ::
  T_PParamsUpdate_618 -> [T_PParamGroup_220]
du_modifiedUpdateGroups_1226 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1234 (coe v0)
         (coe du_modifiesNetworkGroup_846) (coe C_NetworkGroup_222))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1234 (coe v0)
            (coe du_modifiesEconomicGroup_922) (coe C_EconomicGroup_224))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1234 (coe v0)
               (coe du_modifiesTechnicalGroup_998) (coe C_TechnicalGroup_226))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  du__'63''9552''8658'__1234 (coe v0)
                  (coe du_modifiesGovernanceGroup_1074) (coe C_GovernanceGroup_228))
               (coe
                  du__'63''9552''8658'__1234 (coe v0)
                  (coe du_modifiesSecurityGroup_1150) (coe C_SecurityGroup_230)))))
-- Ledger.Conway.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1234 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsUpdate_618 ->
  (T_PParamsUpdate_618 -> Bool) ->
  T_PParamGroup_220 -> [T_PParamGroup_220]
d__'63''9552''8658'__1234 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1234 v3 v4 v5
du__'63''9552''8658'__1234 ::
  T_PParamsUpdate_618 ->
  (T_PParamsUpdate_618 -> Bool) ->
  T_PParamGroup_220 -> [T_PParamGroup_220]
du__'63''9552''8658'__1234 v0 v1 v2
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
-- Ledger.Conway.PParams.PParamsUpdate._?↗_
d__'63''8599'__1242 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1242 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1242 v4 v5
du__'63''8599'__1242 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1242 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1256 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1256 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1256 v4
du_'8801''45'update_1256 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1256 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (\ v1 -> coe du_to_1276 (coe v0)) erased
-- Ledger.Conway.PParams.PParamsUpdate._.to
d_to_1276 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
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
d_to_1276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1276 v8
du_to_1276 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1276 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate._.from
d_from_1288 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
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
d_from_1288 = erased
-- Ledger.Conway.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1290 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParams_296 -> T_PParamsUpdate_618 -> T_PParams_296
d_applyPParamsUpdate_1290 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1290 v3 v4
du_applyPParamsUpdate_1290 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> T_PParams_296
du_applyPParamsUpdate_1290 v0 v1
  = coe
      C_PParams'46'constructor_5025
      (coe
         du__'63''8599'__1242 (coe d_maxBlockSize_690 (coe v1))
         (coe d_maxBlockSize_368 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxTxSize_692 (coe v1))
         (coe d_maxTxSize_370 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxHeaderSize_694 (coe v1))
         (coe d_maxHeaderSize_372 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxTxExUnits_700 (coe v1))
         (coe d_maxTxExUnits_374 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxBlockExUnits_702 (coe v1))
         (coe d_maxBlockExUnits_376 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxValSize_696 (coe v1))
         (coe d_maxValSize_378 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxCollateralInputs_698 (coe v1))
         (coe d_maxCollateralInputs_380 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_pv_704 (coe v1))
         (coe d_pv_382 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_a_706 (coe v1)) (coe d_a_384 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_b_708 (coe v1)) (coe d_b_386 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_keyDeposit_710 (coe v1))
         (coe d_keyDeposit_388 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_poolDeposit_712 (coe v1))
         (coe d_poolDeposit_390 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_monetaryExpansion_714 (coe v1))
         (coe d_monetaryExpansion_392 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_treasuryCut_716 (coe v1))
         (coe d_treasuryCut_394 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_coinsPerUTxOByte_718 (coe v1))
         (coe d_coinsPerUTxOByte_396 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_prices_720 (coe v1))
         (coe d_prices_398 (coe v0)))
      (coe
         du__'63''8599'__1242
         (coe d_minFeeRefScriptCoinsPerByte_722 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_400 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxRefScriptSizePerTx_724 (coe v1))
         (coe d_maxRefScriptSizePerTx_402 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_maxRefScriptSizePerBlock_726 (coe v1))
         (coe d_maxRefScriptSizePerBlock_404 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_refScriptCostStride_728 (coe v1))
         (coe d_refScriptCostStride_406 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_refScriptCostMultiplier_730 (coe v1))
         (coe d_refScriptCostMultiplier_408 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_minUTxOValue_732 (coe v1))
         (coe d_minUTxOValue_410 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_Emax_736 (coe v1))
         (coe d_Emax_412 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_nopt_738 (coe v1))
         (coe d_nopt_414 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_a0_734 (coe v1))
         (coe d_a0_416 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_collateralPercentage_740 (coe v1))
         (coe d_collateralPercentage_418 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_costmdls_742 (coe v1))
         (coe d_costmdls_420 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_poolThresholds_746 (coe v1))
         (coe d_poolThresholds_422 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_drepThresholds_744 (coe v1))
         (coe d_drepThresholds_424 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_ccMinSize_756 (coe v1))
         (coe d_ccMinSize_426 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_ccMaxTermLength_758 (coe v1))
         (coe d_ccMaxTermLength_428 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_govActionLifetime_748 (coe v1))
         (coe d_govActionLifetime_430 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_govActionDeposit_750 (coe v1))
         (coe d_govActionDeposit_432 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_drepDeposit_752 (coe v1))
         (coe d_drepDeposit_434 (coe v0)))
      (coe
         du__'63''8599'__1242 (coe d_drepActivity_754 (coe v1))
         (coe d_drepActivity_436 (coe v0)))
-- Ledger.Conway.PParams.PParamsUpdate._.P.Emax
d_Emax_1302 :: T_PParams_296 -> T_PParamsUpdate_618 -> AgdaAny
d_Emax_1302 v0 ~v1 = du_Emax_1302 v0
du_Emax_1302 :: T_PParams_296 -> AgdaAny
du_Emax_1302 v0 = coe d_Emax_412 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.a
d_a_1304 :: T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_a_1304 v0 ~v1 = du_a_1304 v0
du_a_1304 :: T_PParams_296 -> Integer
du_a_1304 v0 = coe d_a_384 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.a0
d_a0_1306 ::
  T_PParams_296 ->
  T_PParamsUpdate_618 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1306 v0 ~v1 = du_a0_1306 v0
du_a0_1306 ::
  T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1306 v0 = coe d_a0_416 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.b
d_b_1308 :: T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_b_1308 v0 ~v1 = du_b_1308 v0
du_b_1308 :: T_PParams_296 -> Integer
du_b_1308 v0 = coe d_b_386 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1310 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_ccMaxTermLength_1310 v0 ~v1 = du_ccMaxTermLength_1310 v0
du_ccMaxTermLength_1310 :: T_PParams_296 -> Integer
du_ccMaxTermLength_1310 v0 = coe d_ccMaxTermLength_428 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1312 :: T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_ccMinSize_1312 v0 ~v1 = du_ccMinSize_1312 v0
du_ccMinSize_1312 :: T_PParams_296 -> Integer
du_ccMinSize_1312 v0 = coe d_ccMinSize_426 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1314 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_coinsPerUTxOByte_1314 v0 ~v1 = du_coinsPerUTxOByte_1314 v0
du_coinsPerUTxOByte_1314 :: T_PParams_296 -> Integer
du_coinsPerUTxOByte_1314 v0 = coe d_coinsPerUTxOByte_396 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1316 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_collateralPercentage_1316 v0 ~v1
  = du_collateralPercentage_1316 v0
du_collateralPercentage_1316 :: T_PParams_296 -> Integer
du_collateralPercentage_1316 v0
  = coe d_collateralPercentage_418 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1318 :: T_PParams_296 -> T_PParamsUpdate_618 -> AgdaAny
d_costmdls_1318 v0 ~v1 = du_costmdls_1318 v0
du_costmdls_1318 :: T_PParams_296 -> AgdaAny
du_costmdls_1318 v0 = coe d_costmdls_420 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1320 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> AgdaAny
d_drepActivity_1320 v0 ~v1 = du_drepActivity_1320 v0
du_drepActivity_1320 :: T_PParams_296 -> AgdaAny
du_drepActivity_1320 v0 = coe d_drepActivity_436 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1322 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_drepDeposit_1322 v0 ~v1 = du_drepDeposit_1322 v0
du_drepDeposit_1322 :: T_PParams_296 -> Integer
du_drepDeposit_1322 v0 = coe d_drepDeposit_434 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1324 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> T_DrepThresholds_232
d_drepThresholds_1324 v0 ~v1 = du_drepThresholds_1324 v0
du_drepThresholds_1324 :: T_PParams_296 -> T_DrepThresholds_232
du_drepThresholds_1324 v0 = coe d_drepThresholds_424 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1326 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_govActionDeposit_1326 v0 ~v1 = du_govActionDeposit_1326 v0
du_govActionDeposit_1326 :: T_PParams_296 -> Integer
du_govActionDeposit_1326 v0 = coe d_govActionDeposit_432 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1328 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_govActionLifetime_1328 v0 ~v1 = du_govActionLifetime_1328 v0
du_govActionLifetime_1328 :: T_PParams_296 -> Integer
du_govActionLifetime_1328 v0 = coe d_govActionLifetime_430 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1330 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_keyDeposit_1330 v0 ~v1 = du_keyDeposit_1330 v0
du_keyDeposit_1330 :: T_PParams_296 -> Integer
du_keyDeposit_1330 v0 = coe d_keyDeposit_388 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1332 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> AgdaAny
d_maxBlockExUnits_1332 v0 ~v1 = du_maxBlockExUnits_1332 v0
du_maxBlockExUnits_1332 :: T_PParams_296 -> AgdaAny
du_maxBlockExUnits_1332 v0 = coe d_maxBlockExUnits_376 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1334 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_maxBlockSize_1334 v0 ~v1 = du_maxBlockSize_1334 v0
du_maxBlockSize_1334 :: T_PParams_296 -> Integer
du_maxBlockSize_1334 v0 = coe d_maxBlockSize_368 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1336 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_maxCollateralInputs_1336 v0 ~v1 = du_maxCollateralInputs_1336 v0
du_maxCollateralInputs_1336 :: T_PParams_296 -> Integer
du_maxCollateralInputs_1336 v0
  = coe d_maxCollateralInputs_380 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1338 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_maxHeaderSize_1338 v0 ~v1 = du_maxHeaderSize_1338 v0
du_maxHeaderSize_1338 :: T_PParams_296 -> Integer
du_maxHeaderSize_1338 v0 = coe d_maxHeaderSize_372 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1340 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_maxRefScriptSizePerBlock_1340 v0 ~v1
  = du_maxRefScriptSizePerBlock_1340 v0
du_maxRefScriptSizePerBlock_1340 :: T_PParams_296 -> Integer
du_maxRefScriptSizePerBlock_1340 v0
  = coe d_maxRefScriptSizePerBlock_404 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1342 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_maxRefScriptSizePerTx_1342 v0 ~v1
  = du_maxRefScriptSizePerTx_1342 v0
du_maxRefScriptSizePerTx_1342 :: T_PParams_296 -> Integer
du_maxRefScriptSizePerTx_1342 v0
  = coe d_maxRefScriptSizePerTx_402 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1344 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> AgdaAny
d_maxTxExUnits_1344 v0 ~v1 = du_maxTxExUnits_1344 v0
du_maxTxExUnits_1344 :: T_PParams_296 -> AgdaAny
du_maxTxExUnits_1344 v0 = coe d_maxTxExUnits_374 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1346 :: T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_maxTxSize_1346 v0 ~v1 = du_maxTxSize_1346 v0
du_maxTxSize_1346 :: T_PParams_296 -> Integer
du_maxTxSize_1346 v0 = coe d_maxTxSize_370 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1348 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_maxValSize_1348 v0 ~v1 = du_maxValSize_1348 v0
du_maxValSize_1348 :: T_PParams_296 -> Integer
du_maxValSize_1348 v0 = coe d_maxValSize_378 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1350 ::
  T_PParams_296 ->
  T_PParamsUpdate_618 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1350 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1350 v0
du_minFeeRefScriptCoinsPerByte_1350 ::
  T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1350 v0
  = coe d_minFeeRefScriptCoinsPerByte_400 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1352 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_minUTxOValue_1352 v0 ~v1 = du_minUTxOValue_1352 v0
du_minUTxOValue_1352 :: T_PParams_296 -> Integer
du_minUTxOValue_1352 v0 = coe d_minUTxOValue_410 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.monetaryExpansion
d_monetaryExpansion_1354 ::
  T_PParams_296 ->
  T_PParamsUpdate_618 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1354 v0 ~v1 = du_monetaryExpansion_1354 v0
du_monetaryExpansion_1354 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_monetaryExpansion_1354 v0 = coe d_monetaryExpansion_392 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.nopt
d_nopt_1356 :: T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_nopt_1356 v0 ~v1 = du_nopt_1356 v0
du_nopt_1356 :: T_PParams_296 -> Integer
du_nopt_1356 v0 = coe d_nopt_414 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1358 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> Integer
d_poolDeposit_1358 v0 ~v1 = du_poolDeposit_1358 v0
du_poolDeposit_1358 :: T_PParams_296 -> Integer
du_poolDeposit_1358 v0 = coe d_poolDeposit_390 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1360 ::
  T_PParams_296 -> T_PParamsUpdate_618 -> T_PoolThresholds_274
d_poolThresholds_1360 v0 ~v1 = du_poolThresholds_1360 v0
du_poolThresholds_1360 :: T_PParams_296 -> T_PoolThresholds_274
du_poolThresholds_1360 v0 = coe d_poolThresholds_422 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.prices
d_prices_1362 :: T_PParams_296 -> T_PParamsUpdate_618 -> AgdaAny
d_prices_1362 v0 ~v1 = du_prices_1362 v0
du_prices_1362 :: T_PParams_296 -> AgdaAny
du_prices_1362 v0 = coe d_prices_398 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.pv
d_pv_1364 ::
  T_PParams_296 ->
  T_PParamsUpdate_618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1364 v0 ~v1 = du_pv_1364 v0
du_pv_1364 ::
  T_PParams_296 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1364 v0 = coe d_pv_382 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1366 ::
  T_PParams_296 ->
  T_PParamsUpdate_618 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1366 v0 ~v1
  = du_refScriptCostMultiplier_1366 v0
du_refScriptCostMultiplier_1366 ::
  T_PParams_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1366 v0
  = coe d_refScriptCostMultiplier_408 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1368 ::
  T_PParams_296 ->
  T_PParamsUpdate_618 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1368 v0 ~v1 = du_refScriptCostStride_1368 v0
du_refScriptCostStride_1368 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_refScriptCostStride_1368 v0
  = coe d_refScriptCostStride_406 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.treasuryCut
d_treasuryCut_1370 ::
  T_PParams_296 ->
  T_PParamsUpdate_618 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1370 v0 ~v1 = du_treasuryCut_1370 v0
du_treasuryCut_1370 ::
  T_PParams_296 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_treasuryCut_1370 v0 = coe d_treasuryCut_394 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.Emax
d_Emax_1374 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_Emax_1374 v0 = coe d_Emax_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.a
d_a_1376 :: T_PParamsUpdate_618 -> Maybe Integer
d_a_1376 v0 = coe d_a_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.a0
d_a0_1378 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1378 v0 = coe d_a0_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.b
d_b_1380 :: T_PParamsUpdate_618 -> Maybe Integer
d_b_1380 v0 = coe d_b_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1382 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMaxTermLength_1382 v0 = coe d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1384 :: T_PParamsUpdate_618 -> Maybe Integer
d_ccMinSize_1384 v0 = coe d_ccMinSize_756 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1386 :: T_PParamsUpdate_618 -> Maybe Integer
d_coinsPerUTxOByte_1386 v0 = coe d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1388 :: T_PParamsUpdate_618 -> Maybe Integer
d_collateralPercentage_1388 v0
  = coe d_collateralPercentage_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1390 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_costmdls_1390 v0 = coe d_costmdls_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1392 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_drepActivity_1392 v0 = coe d_drepActivity_754 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1394 :: T_PParamsUpdate_618 -> Maybe Integer
d_drepDeposit_1394 v0 = coe d_drepDeposit_752 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1396 ::
  T_PParamsUpdate_618 -> Maybe T_DrepThresholds_232
d_drepThresholds_1396 v0 = coe d_drepThresholds_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1398 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionDeposit_1398 v0 = coe d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1400 :: T_PParamsUpdate_618 -> Maybe Integer
d_govActionLifetime_1400 v0 = coe d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1402 :: T_PParamsUpdate_618 -> Maybe Integer
d_keyDeposit_1402 v0 = coe d_keyDeposit_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1404 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxBlockExUnits_1404 v0 = coe d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1406 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxBlockSize_1406 v0 = coe d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1408 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxCollateralInputs_1408 v0
  = coe d_maxCollateralInputs_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1410 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxHeaderSize_1410 v0 = coe d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1412 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerBlock_1412 v0
  = coe d_maxRefScriptSizePerBlock_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1414 ::
  T_PParamsUpdate_618 -> Maybe Integer
d_maxRefScriptSizePerTx_1414 v0
  = coe d_maxRefScriptSizePerTx_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1416 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_maxTxExUnits_1416 v0 = coe d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1418 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxTxSize_1418 v0 = coe d_maxTxSize_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1420 :: T_PParamsUpdate_618 -> Maybe Integer
d_maxValSize_1420 v0 = coe d_maxValSize_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1422 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1422 v0
  = coe d_minFeeRefScriptCoinsPerByte_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1424 :: T_PParamsUpdate_618 -> Maybe Integer
d_minUTxOValue_1424 v0 = coe d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.monetaryExpansion
d_monetaryExpansion_1426 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1426 v0 = coe d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.nopt
d_nopt_1428 :: T_PParamsUpdate_618 -> Maybe Integer
d_nopt_1428 v0 = coe d_nopt_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1430 :: T_PParamsUpdate_618 -> Maybe Integer
d_poolDeposit_1430 v0 = coe d_poolDeposit_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1432 ::
  T_PParamsUpdate_618 -> Maybe T_PoolThresholds_274
d_poolThresholds_1432 v0 = coe d_poolThresholds_746 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.prices
d_prices_1434 :: T_PParamsUpdate_618 -> Maybe AgdaAny
d_prices_1434 v0 = coe d_prices_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.pv
d_pv_1436 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1436 v0 = coe d_pv_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1438 ::
  T_PParamsUpdate_618 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1438 v0
  = coe d_refScriptCostMultiplier_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1440 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1440 v0
  = coe d_refScriptCostStride_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.treasuryCut
d_treasuryCut_1442 ::
  T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1442 v0 = coe d_treasuryCut_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1444 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1444 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1444 v1 v2
du_DecEq'45'PParamsUpdate_1444 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1444 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_496235 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParamsUpdate'46'constructor_496235 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
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
                                                                                                                                 du_DecEq'45'PoolThresholds_604))
                                                                                                                           (coe
                                                                                                                              v67)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (coe
                                                                                                                              du_DecEq'45'DrepThresholds_602))
                                                                                                                        (coe
                                                                                                                           v66)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
                                                                                                                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
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
                                                                                                   (\ v74
                                                                                                      v75 ->
                                                                                                      let v76
                                                                                                            = coe
                                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
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
                                                                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
                                                               MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                                  (coe v1))))
                                                         (coe v45) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
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
-- Ledger.Conway.PParams.pvCanFollow?
d_pvCanFollow'63'_1450 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1450 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1450 v3 v4
du_pvCanFollow'63'_1450 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1450 v0 v1
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
                                                                                                   C_canFollowMajor_214)))
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
                                                                                                    C_canFollowMajor_214)))
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
                                                                                                   C_canFollowMinor_216)))
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
                                                                                                    C_canFollowMinor_216)))
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
                                                                                                    C_canFollowMajor_214)))
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
                                                                                                     C_canFollowMajor_214)))
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
                                                                                                    C_canFollowMinor_216)))
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
                                                                                                     C_canFollowMinor_216)))
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
-- Ledger.Conway.PParams.PParamsDiff
d_PParamsDiff_1498 a0 a1 a2 = ()
data T_PParamsDiff_1498
  = C_PParamsDiff'46'constructor_967953 (T_PParams_296 ->
                                         AgdaAny -> T_PParams_296)
                                        (AgdaAny -> [T_PParamGroup_220])
                                        (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.PParams.PParamsDiff.UpdateT
d_UpdateT_1512 :: T_PParamsDiff_1498 -> ()
d_UpdateT_1512 = erased
-- Ledger.Conway.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1514 ::
  T_PParamsDiff_1498 -> T_PParams_296 -> AgdaAny -> T_PParams_296
d_applyUpdate_1514 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967953 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsDiff.updateGroups
d_updateGroups_1516 ::
  T_PParamsDiff_1498 -> AgdaAny -> [T_PParamGroup_220]
d_updateGroups_1516 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967953 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1522 ::
  T_PParamsDiff_1498 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1522 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967953 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1524 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsDiff_1498 -> AgdaAny -> ()
d_ppdWellFormed_1524 = erased
-- Ledger.Conway.PParams.GovParams
d_GovParams_1530 a0 a1 a2 = ()
data T_GovParams_1530
  = C_GovParams'46'constructor_968657 T_PParamsDiff_1498
                                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.PParams._.UpdateT
d_UpdateT_1536 :: T_PParamsDiff_1498 -> ()
d_UpdateT_1536 = erased
-- Ledger.Conway.PParams._.applyUpdate
d_applyUpdate_1538 ::
  T_PParamsDiff_1498 -> T_PParams_296 -> AgdaAny -> T_PParams_296
d_applyUpdate_1538 v0 = coe d_applyUpdate_1514 (coe v0)
-- Ledger.Conway.PParams._.ppWF?
d_ppWF'63'_1540 ::
  T_PParamsDiff_1498 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1540 v0 = coe d_ppWF'63'_1522 (coe v0)
-- Ledger.Conway.PParams._.ppdWellFormed
d_ppdWellFormed_1542 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_PParamsDiff_1498 -> AgdaAny -> ()
d_ppdWellFormed_1542 = erased
-- Ledger.Conway.PParams._.updateGroups
d_updateGroups_1544 ::
  T_PParamsDiff_1498 -> AgdaAny -> [T_PParamGroup_220]
d_updateGroups_1544 v0 = coe d_updateGroups_1516 (coe v0)
-- Ledger.Conway.PParams.GovParams.ppUpd
d_ppUpd_1548 :: T_GovParams_1530 -> T_PParamsDiff_1498
d_ppUpd_1548 v0
  = case coe v0 of
      C_GovParams'46'constructor_968657 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.GovParams._.UpdateT
d_UpdateT_1552 :: T_GovParams_1530 -> ()
d_UpdateT_1552 = erased
-- Ledger.Conway.PParams.GovParams._.applyUpdate
d_applyUpdate_1554 ::
  T_GovParams_1530 -> T_PParams_296 -> AgdaAny -> T_PParams_296
d_applyUpdate_1554 v0
  = coe d_applyUpdate_1514 (coe d_ppUpd_1548 (coe v0))
-- Ledger.Conway.PParams.GovParams._.ppWF?
d_ppWF'63'_1556 ::
  T_GovParams_1530 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1556 v0
  = coe d_ppWF'63'_1522 (coe d_ppUpd_1548 (coe v0))
-- Ledger.Conway.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1558 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  T_GovParams_1530 -> AgdaAny -> ()
d_ppdWellFormed_1558 = erased
-- Ledger.Conway.PParams.GovParams._.updateGroups
d_updateGroups_1560 ::
  T_GovParams_1530 -> AgdaAny -> [T_PParamGroup_220]
d_updateGroups_1560 v0
  = coe d_updateGroups_1516 (coe d_ppUpd_1548 (coe v0))
-- Ledger.Conway.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1562 ::
  T_GovParams_1530 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1562 v0
  = case coe v0 of
      C_GovParams'46'constructor_968657 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
