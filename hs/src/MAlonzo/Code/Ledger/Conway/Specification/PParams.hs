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

module MAlonzo.Code.Ledger.Conway.Specification.PParams where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- Ledger.Conway.Specification.PParams.Acnt
d_Acnt_162 a0 a1 a2 = ()
data T_Acnt_162 = C_'10214'_'44'_'10215''7491'_172 Integer Integer
-- Ledger.Conway.Specification.PParams.Acnt.treasury
d_treasury_168 :: T_Acnt_162 -> Integer
d_treasury_168 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_172 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.Acnt.reserves
d_reserves_170 :: T_Acnt_162 -> Integer
d_reserves_170 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_172 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.Hastreasury
d_Hastreasury_178 a0 a1 a2 a3 a4 = ()
newtype T_Hastreasury_178
  = C_Hastreasury'46'constructor_631 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.PParams.Hastreasury.treasuryOf
d_treasuryOf_186 :: T_Hastreasury_178 -> AgdaAny -> Integer
d_treasuryOf_186 v0
  = case coe v0 of
      C_Hastreasury'46'constructor_631 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.treasuryOf
d_treasuryOf_190 :: T_Hastreasury_178 -> AgdaAny -> Integer
d_treasuryOf_190 v0 = coe d_treasuryOf_186 (coe v0)
-- Ledger.Conway.Specification.PParams.Hasreserves
d_Hasreserves_196 a0 a1 a2 a3 a4 = ()
newtype T_Hasreserves_196
  = C_Hasreserves'46'constructor_763 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.PParams.Hasreserves.reservesOf
d_reservesOf_204 :: T_Hasreserves_196 -> AgdaAny -> Integer
d_reservesOf_204 v0
  = case coe v0 of
      C_Hasreserves'46'constructor_763 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.reservesOf
d_reservesOf_208 :: T_Hasreserves_196 -> AgdaAny -> Integer
d_reservesOf_208 v0 = coe d_reservesOf_204 (coe v0)
-- Ledger.Conway.Specification.PParams.ProtVer
d_ProtVer_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_ProtVer_210 = erased
-- Ledger.Conway.Specification.PParams.Show-ProtVer
d_Show'45'ProtVer_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_212 ~v0 = du_Show'45'ProtVer_212
du_Show'45'ProtVer_212 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_212
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.PParams.pvCanFollow
d_pvCanFollow_214 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_214
  = C_canFollowMajor_216 | C_canFollowMinor_218
-- Ledger.Conway.Specification.PParams.HasCast-Acnt
d_HasCast'45'Acnt_220 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_220 ~v0 ~v1 ~v2 = du_HasCast'45'Acnt_220
du_HasCast'45'Acnt_220 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_220
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
                                 (162 :: Integer) (1789989497608360366 :: Integer)
                                 "Ledger.Conway.Specification.PParams.Acnt"
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
                                    (162 :: Integer) (1789989497608360366 :: Integer)
                                    "Ledger.Conway.Specification.PParams.Acnt"
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
         (coe C_'10214'_'44'_'10215''7491'_172))
-- Ledger.Conway.Specification.PParams.PParamGroup
d_PParamGroup_222 a0 a1 a2 = ()
data T_PParamGroup_222
  = C_NetworkGroup_224 | C_EconomicGroup_226 | C_TechnicalGroup_228 |
    C_GovernanceGroup_230 | C_SecurityGroup_232
-- Ledger.Conway.Specification.PParams.DrepThresholds
d_DrepThresholds_234 a0 a1 a2 = ()
data T_DrepThresholds_234
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
-- Ledger.Conway.Specification.PParams.DrepThresholds.P1
d_P1_256 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_256 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P2a
d_P2a_258 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_258 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P2b
d_P2b_260 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_260 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P3
d_P3_262 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_262 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P4
d_P4_264 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_264 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5a
d_P5a_266 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5b
d_P5b_268 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5c
d_P5c_270 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5d
d_P5d_272 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P6
d_P6_274 ::
  T_DrepThresholds_234 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_274 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds
d_PoolThresholds_276 a0 a1 a2 = ()
data T_PoolThresholds_276
  = C_PoolThresholds'46'constructor_3431 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q1
d_Q1_288 ::
  T_PoolThresholds_276 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_288 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q2a
d_Q2a_290 ::
  T_PoolThresholds_276 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_290 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q2b
d_Q2b_292 ::
  T_PoolThresholds_276 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_292 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q4
d_Q4_294 ::
  T_PoolThresholds_276 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_294 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q5
d_Q5_296 ::
  T_PoolThresholds_276 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_296 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams
d_PParams_298 a0 a1 a2 = ()
data T_PParams_298
  = C_PParams'46'constructor_5025 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_276 T_DrepThresholds_234 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.Conway.Specification.PParams.PParams.maxBlockSize
d_maxBlockSize_370 :: T_PParams_298 -> Integer
d_maxBlockSize_370 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxTxSize
d_maxTxSize_372 :: T_PParams_298 -> Integer
d_maxTxSize_372 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxHeaderSize
d_maxHeaderSize_374 :: T_PParams_298 -> Integer
d_maxHeaderSize_374 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxTxExUnits
d_maxTxExUnits_376 :: T_PParams_298 -> AgdaAny
d_maxTxExUnits_376 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_378 :: T_PParams_298 -> AgdaAny
d_maxBlockExUnits_378 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxValSize
d_maxValSize_380 :: T_PParams_298 -> Integer
d_maxValSize_380 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_382 :: T_PParams_298 -> Integer
d_maxCollateralInputs_382 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.pv
d_pv_384 :: T_PParams_298 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_384 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.a
d_a_386 :: T_PParams_298 -> Integer
d_a_386 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.b
d_b_388 :: T_PParams_298 -> Integer
d_b_388 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.keyDeposit
d_keyDeposit_390 :: T_PParams_298 -> Integer
d_keyDeposit_390 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.poolDeposit
d_poolDeposit_392 :: T_PParams_298 -> Integer
d_poolDeposit_392 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.monetaryExpansion
d_monetaryExpansion_394 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_394 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.treasuryCut
d_treasuryCut_396 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_396 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_398 :: T_PParams_298 -> Integer
d_coinsPerUTxOByte_398 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.prices
d_prices_400 :: T_PParams_298 -> AgdaAny
d_prices_400 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_402 ::
  T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_402 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_404 :: T_PParams_298 -> Integer
d_maxRefScriptSizePerTx_404 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_406 :: T_PParams_298 -> Integer
d_maxRefScriptSizePerBlock_406 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.refScriptCostStride
d_refScriptCostStride_408 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_408 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_410 ::
  T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_410 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.minUTxOValue
d_minUTxOValue_412 :: T_PParams_298 -> Integer
d_minUTxOValue_412 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.Emax
d_Emax_414 :: T_PParams_298 -> AgdaAny
d_Emax_414 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.nopt
d_nopt_416 :: T_PParams_298 -> Integer
d_nopt_416 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.a0
d_a0_418 :: T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_418 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.collateralPercentage
d_collateralPercentage_420 :: T_PParams_298 -> Integer
d_collateralPercentage_420 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.costmdls
d_costmdls_422 :: T_PParams_298 -> AgdaAny
d_costmdls_422 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.poolThresholds
d_poolThresholds_424 :: T_PParams_298 -> T_PoolThresholds_276
d_poolThresholds_424 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.drepThresholds
d_drepThresholds_426 :: T_PParams_298 -> T_DrepThresholds_234
d_drepThresholds_426 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.ccMinSize
d_ccMinSize_428 :: T_PParams_298 -> Integer
d_ccMinSize_428 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_430 :: T_PParams_298 -> Integer
d_ccMaxTermLength_430 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.govActionLifetime
d_govActionLifetime_432 :: T_PParams_298 -> Integer
d_govActionLifetime_432 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.govActionDeposit
d_govActionDeposit_434 :: T_PParams_298 -> Integer
d_govActionDeposit_434 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.drepDeposit
d_drepDeposit_436 :: T_PParams_298 -> Integer
d_drepDeposit_436 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.drepActivity
d_drepActivity_438 :: T_PParams_298 -> AgdaAny
d_drepActivity_438 v0
  = case coe v0 of
      C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.HasPParams
d_HasPParams_444 a0 a1 a2 a3 a4 = ()
newtype T_HasPParams_444
  = C_HasPParams'46'constructor_9433 (AgdaAny -> T_PParams_298)
-- Ledger.Conway.Specification.PParams.HasPParams.PParamsOf
d_PParamsOf_452 :: T_HasPParams_444 -> AgdaAny -> T_PParams_298
d_PParamsOf_452 v0
  = case coe v0 of
      C_HasPParams'46'constructor_9433 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.PParamsOf
d_PParamsOf_456 :: T_HasPParams_444 -> AgdaAny -> T_PParams_298
d_PParamsOf_456 v0 = coe d_PParamsOf_452 (coe v0)
-- Ledger.Conway.Specification.PParams.HasgovActionDeposit
d_HasgovActionDeposit_462 a0 a1 a2 a3 a4 = ()
newtype T_HasgovActionDeposit_462
  = C_HasgovActionDeposit'46'constructor_9565 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.PParams.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_470 ::
  T_HasgovActionDeposit_462 -> AgdaAny -> Integer
d_govActionDepositOf_470 v0
  = case coe v0 of
      C_HasgovActionDeposit'46'constructor_9565 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.govActionDepositOf
d_govActionDepositOf_474 ::
  T_HasgovActionDeposit_462 -> AgdaAny -> Integer
d_govActionDepositOf_474 v0 = coe d_govActionDepositOf_470 (coe v0)
-- Ledger.Conway.Specification.PParams.HasccMaxTermLength
d_HasccMaxTermLength_480 a0 a1 a2 a3 a4 = ()
newtype T_HasccMaxTermLength_480
  = C_HasccMaxTermLength'46'constructor_9697 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.PParams.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_488 ::
  T_HasccMaxTermLength_480 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_488 v0
  = case coe v0 of
      C_HasccMaxTermLength'46'constructor_9697 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_492 ::
  T_HasccMaxTermLength_480 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_492 v0 = coe d_ccMaxTermLengthOf_488 (coe v0)
-- Ledger.Conway.Specification.PParams.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_494 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_HasgovActionDeposit_462
d_HasgovActionDeposit'45'PParams_494 ~v0 ~v1 ~v2
  = du_HasgovActionDeposit'45'PParams_494
du_HasgovActionDeposit'45'PParams_494 :: T_HasgovActionDeposit_462
du_HasgovActionDeposit'45'PParams_494
  = coe
      C_HasgovActionDeposit'46'constructor_9565
      (coe (\ v0 -> d_govActionDeposit_434 (coe v0)))
-- Ledger.Conway.Specification.PParams.positivePParams
d_positivePParams_496 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_298 -> [Integer]
d_positivePParams_496 ~v0 ~v1 ~v2 v3 = du_positivePParams_496 v3
du_positivePParams_496 :: T_PParams_298 -> [Integer]
du_positivePParams_496 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_370 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_372 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_374 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_380 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_coinsPerUTxOByte_398 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_poolDeposit_392 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_collateralPercentage_420 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_ccMaxTermLength_430 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_govActionLifetime_432 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionDeposit_434 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_drepDeposit_436 (coe v0))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.Specification.PParams._._.Emax
d_Emax_506 :: T_PParams_298 -> AgdaAny
d_Emax_506 v0 = coe d_Emax_414 (coe v0)
-- Ledger.Conway.Specification.PParams._._.a
d_a_508 :: T_PParams_298 -> Integer
d_a_508 v0 = coe d_a_386 (coe v0)
-- Ledger.Conway.Specification.PParams._._.a0
d_a0_510 :: T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_510 v0 = coe d_a0_418 (coe v0)
-- Ledger.Conway.Specification.PParams._._.b
d_b_512 :: T_PParams_298 -> Integer
d_b_512 v0 = coe d_b_388 (coe v0)
-- Ledger.Conway.Specification.PParams._._.ccMaxTermLength
d_ccMaxTermLength_514 :: T_PParams_298 -> Integer
d_ccMaxTermLength_514 v0 = coe d_ccMaxTermLength_430 (coe v0)
-- Ledger.Conway.Specification.PParams._._.ccMinSize
d_ccMinSize_516 :: T_PParams_298 -> Integer
d_ccMinSize_516 v0 = coe d_ccMinSize_428 (coe v0)
-- Ledger.Conway.Specification.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_518 :: T_PParams_298 -> Integer
d_coinsPerUTxOByte_518 v0 = coe d_coinsPerUTxOByte_398 (coe v0)
-- Ledger.Conway.Specification.PParams._._.collateralPercentage
d_collateralPercentage_520 :: T_PParams_298 -> Integer
d_collateralPercentage_520 v0
  = coe d_collateralPercentage_420 (coe v0)
-- Ledger.Conway.Specification.PParams._._.costmdls
d_costmdls_522 :: T_PParams_298 -> AgdaAny
d_costmdls_522 v0 = coe d_costmdls_422 (coe v0)
-- Ledger.Conway.Specification.PParams._._.drepActivity
d_drepActivity_524 :: T_PParams_298 -> AgdaAny
d_drepActivity_524 v0 = coe d_drepActivity_438 (coe v0)
-- Ledger.Conway.Specification.PParams._._.drepDeposit
d_drepDeposit_526 :: T_PParams_298 -> Integer
d_drepDeposit_526 v0 = coe d_drepDeposit_436 (coe v0)
-- Ledger.Conway.Specification.PParams._._.drepThresholds
d_drepThresholds_528 :: T_PParams_298 -> T_DrepThresholds_234
d_drepThresholds_528 v0 = coe d_drepThresholds_426 (coe v0)
-- Ledger.Conway.Specification.PParams._._.govActionDeposit
d_govActionDeposit_530 :: T_PParams_298 -> Integer
d_govActionDeposit_530 v0 = coe d_govActionDeposit_434 (coe v0)
-- Ledger.Conway.Specification.PParams._._.govActionLifetime
d_govActionLifetime_532 :: T_PParams_298 -> Integer
d_govActionLifetime_532 v0 = coe d_govActionLifetime_432 (coe v0)
-- Ledger.Conway.Specification.PParams._._.keyDeposit
d_keyDeposit_534 :: T_PParams_298 -> Integer
d_keyDeposit_534 v0 = coe d_keyDeposit_390 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxBlockExUnits
d_maxBlockExUnits_536 :: T_PParams_298 -> AgdaAny
d_maxBlockExUnits_536 v0 = coe d_maxBlockExUnits_378 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxBlockSize
d_maxBlockSize_538 :: T_PParams_298 -> Integer
d_maxBlockSize_538 v0 = coe d_maxBlockSize_370 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxCollateralInputs
d_maxCollateralInputs_540 :: T_PParams_298 -> Integer
d_maxCollateralInputs_540 v0
  = coe d_maxCollateralInputs_382 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxHeaderSize
d_maxHeaderSize_542 :: T_PParams_298 -> Integer
d_maxHeaderSize_542 v0 = coe d_maxHeaderSize_374 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_544 :: T_PParams_298 -> Integer
d_maxRefScriptSizePerBlock_544 v0
  = coe d_maxRefScriptSizePerBlock_406 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_546 :: T_PParams_298 -> Integer
d_maxRefScriptSizePerTx_546 v0
  = coe d_maxRefScriptSizePerTx_404 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxTxExUnits
d_maxTxExUnits_548 :: T_PParams_298 -> AgdaAny
d_maxTxExUnits_548 v0 = coe d_maxTxExUnits_376 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxTxSize
d_maxTxSize_550 :: T_PParams_298 -> Integer
d_maxTxSize_550 v0 = coe d_maxTxSize_372 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxValSize
d_maxValSize_552 :: T_PParams_298 -> Integer
d_maxValSize_552 v0 = coe d_maxValSize_380 (coe v0)
-- Ledger.Conway.Specification.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_554 ::
  T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_554 v0
  = coe d_minFeeRefScriptCoinsPerByte_402 (coe v0)
-- Ledger.Conway.Specification.PParams._._.minUTxOValue
d_minUTxOValue_556 :: T_PParams_298 -> Integer
d_minUTxOValue_556 v0 = coe d_minUTxOValue_412 (coe v0)
-- Ledger.Conway.Specification.PParams._._.monetaryExpansion
d_monetaryExpansion_558 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_558 v0 = coe d_monetaryExpansion_394 (coe v0)
-- Ledger.Conway.Specification.PParams._._.nopt
d_nopt_560 :: T_PParams_298 -> Integer
d_nopt_560 v0 = coe d_nopt_416 (coe v0)
-- Ledger.Conway.Specification.PParams._._.poolDeposit
d_poolDeposit_562 :: T_PParams_298 -> Integer
d_poolDeposit_562 v0 = coe d_poolDeposit_392 (coe v0)
-- Ledger.Conway.Specification.PParams._._.poolThresholds
d_poolThresholds_564 :: T_PParams_298 -> T_PoolThresholds_276
d_poolThresholds_564 v0 = coe d_poolThresholds_424 (coe v0)
-- Ledger.Conway.Specification.PParams._._.prices
d_prices_566 :: T_PParams_298 -> AgdaAny
d_prices_566 v0 = coe d_prices_400 (coe v0)
-- Ledger.Conway.Specification.PParams._._.pv
d_pv_568 :: T_PParams_298 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_568 v0 = coe d_pv_384 (coe v0)
-- Ledger.Conway.Specification.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_570 ::
  T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_570 v0
  = coe d_refScriptCostMultiplier_410 (coe v0)
-- Ledger.Conway.Specification.PParams._._.refScriptCostStride
d_refScriptCostStride_572 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_572 v0
  = coe d_refScriptCostStride_408 (coe v0)
-- Ledger.Conway.Specification.PParams._._.treasuryCut
d_treasuryCut_574 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_574 v0 = coe d_treasuryCut_396 (coe v0)
-- Ledger.Conway.Specification.PParams.paramsWellFormed
d_paramsWellFormed_576 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_298 -> ()
d_paramsWellFormed_576 = erased
-- Ledger.Conway.Specification.PParams.paramsWF-elim
d_paramsWF'45'elim_584 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_298 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_584 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_584 v5
du_paramsWF'45'elim_584 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_584 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.Conway.Specification.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_604 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_604 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_604
du_DecEq'45'DrepThresholds_604 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_604
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
-- Ledger.Conway.Specification.PParams.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_606 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_606 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_606
du_DecEq'45'PoolThresholds_606 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_606
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
-- Ledger.Conway.Specification.PParams.DecEq-PParams
d_DecEq'45'PParams_608 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_608 ~v0 v1 v2 = du_DecEq'45'PParams_608 v1 v2
du_DecEq'45'PParams_608 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_608 v0 v1
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
                                                                                                                                             (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
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
                                                                                                                                                               d_P6_274
                                                                                                                                                               (coe
                                                                                                                                                                  v31))
                                                                                                                                                            (coe
                                                                                                                                                               d_P6_274
                                                                                                                                                               (coe
                                                                                                                                                                  v67))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_272
                                                                                                                                                            (coe
                                                                                                                                                               v31))
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_272
                                                                                                                                                            (coe
                                                                                                                                                               v67))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_270
                                                                                                                                                         (coe
                                                                                                                                                            v31))
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_270
                                                                                                                                                         (coe
                                                                                                                                                            v67))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_268
                                                                                                                                                      (coe
                                                                                                                                                         v31))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_268
                                                                                                                                                      (coe
                                                                                                                                                         v67))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_266
                                                                                                                                                   (coe
                                                                                                                                                      v31))
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_266
                                                                                                                                                   (coe
                                                                                                                                                      v67))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                             (coe
                                                                                                                                                d_P4_264
                                                                                                                                                (coe
                                                                                                                                                   v31))
                                                                                                                                             (coe
                                                                                                                                                d_P4_264
                                                                                                                                                (coe
                                                                                                                                                   v67))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                          (coe
                                                                                                                                             d_P3_262
                                                                                                                                             (coe
                                                                                                                                                v31))
                                                                                                                                          (coe
                                                                                                                                             d_P3_262
                                                                                                                                             (coe
                                                                                                                                                v67))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_P2b_260
                                                                                                                                          (coe
                                                                                                                                             v31))
                                                                                                                                       (coe
                                                                                                                                          d_P2b_260
                                                                                                                                          (coe
                                                                                                                                             v67))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_P2a_258
                                                                                                                                       (coe
                                                                                                                                          v31))
                                                                                                                                    (coe
                                                                                                                                       d_P2a_258
                                                                                                                                       (coe
                                                                                                                                          v67))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_P1_256
                                                                                                                                    (coe
                                                                                                                                       v31))
                                                                                                                                 (coe
                                                                                                                                    d_P1_256
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
                                                                                                                                             d_Q5_296
                                                                                                                                             (coe
                                                                                                                                                v30))
                                                                                                                                          (coe
                                                                                                                                             d_Q5_296
                                                                                                                                             (coe
                                                                                                                                                v66))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_Q4_294
                                                                                                                                          (coe
                                                                                                                                             v30))
                                                                                                                                       (coe
                                                                                                                                          d_Q4_294
                                                                                                                                          (coe
                                                                                                                                             v66))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_292
                                                                                                                                       (coe
                                                                                                                                          v30))
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_292
                                                                                                                                       (coe
                                                                                                                                          v66))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_290
                                                                                                                                    (coe
                                                                                                                                       v30))
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_290
                                                                                                                                    (coe
                                                                                                                                       v66))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                              (coe
                                                                                                                                 d_Q1_288
                                                                                                                                 (coe
                                                                                                                                    v30))
                                                                                                                              (coe
                                                                                                                                 d_Q1_288
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
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_222
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
                                                                                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_232
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                         (coe v1)))
                                                   v43 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
-- Ledger.Conway.Specification.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_610 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_610 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_610
du_DecEq'45'PParamGroup_610 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_610
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_224
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_224
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
                          C_EconomicGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_226
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_226
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
                          C_TechnicalGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_228
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_228
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
                          C_GovernanceGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_230
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_230
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
                          C_SecurityGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_232
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_224
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_226
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_232
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
-- Ledger.Conway.Specification.PParams.Show-DrepThresholds
d_Show'45'DrepThresholds_612 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_612 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_612
du_Show'45'DrepThresholds_612 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_612
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
-- Ledger.Conway.Specification.PParams.Show-PoolThresholds
d_Show'45'PoolThresholds_614 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_614 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_614
du_Show'45'PoolThresholds_614 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_614
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
-- Ledger.Conway.Specification.PParams.Show-PParams
d_Show'45'PParams_616 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_616 ~v0 v1 v2 = du_Show'45'PParams_616 v1 v2
du_Show'45'PParams_616 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_616 v0 v1
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
                                                                                                                        (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_234
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                                                                                              (coe
                                                                                                                                 v1)))
                                                                                                                        v6)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_234
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_236
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
                                                               (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_62
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
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_226
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
                                                                  (coe d_Q1_288 (coe v30)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_290 (coe v30)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_292 (coe v30)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_294 (coe v30)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_296 (coe v30)))))))
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
                                                                                 d_P1_256
                                                                                 (coe v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_258
                                                                              (coe v31)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_260 (coe v31)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_262 (coe v31)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_264 (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_266 (coe v31)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_268 (coe v31)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_270 (coe v31)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_272 (coe v31)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_274 (coe v31)))))))
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
                           (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_62
                              (coe v0))
                           v37))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_620 a0 a1 a2 = ()
data T_PParamsUpdate_620
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
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_234)
                                          (Maybe T_PoolThresholds_276) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_692 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_692 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_694 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_694 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_696 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_696 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_698 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_698 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_700 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_700 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_702 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_702 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_704 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_704 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_706 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_706 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.a
d_a_708 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_708 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.b
d_b_710 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_710 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_712 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_712 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_714 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_714 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_716 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_716 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_718 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_718 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_720 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_720 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_722 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_722 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_724 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_724 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_726 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_726 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_728 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_728 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_730 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_730 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_732 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_732 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_734 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_734 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_736 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_736 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_738 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_738 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_740 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_740 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_742 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_742 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_744 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_744 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_746 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_746 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_748 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_748 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_750 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_750 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_752 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_752 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_754 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_754 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_756 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_756 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_758 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_758 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_760 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_760 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_762 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 -> ()
d_paramsUpdateWellFormed_762 = erased
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.Emax
d_Emax_772 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_772 v0 = coe d_Emax_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.a
d_a_774 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_774 v0 = coe d_a_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.a0
d_a0_776 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_776 v0 = coe d_a0_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.b
d_b_778 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_778 v0 = coe d_b_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_780 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_780 v0 = coe d_ccMaxTermLength_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_782 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_782 v0 = coe d_ccMinSize_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_784 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_784 v0 = coe d_coinsPerUTxOByte_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_786 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_786 v0
  = coe d_collateralPercentage_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.costmdls
d_costmdls_788 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_788 v0 = coe d_costmdls_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_790 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_790 v0 = coe d_drepActivity_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_792 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_792 v0 = coe d_drepDeposit_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_794 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_794 v0 = coe d_drepThresholds_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_796 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_796 v0 = coe d_govActionDeposit_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_798 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_798 v0 = coe d_govActionLifetime_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_800 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_800 v0 = coe d_keyDeposit_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_802 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_802 v0 = coe d_maxBlockExUnits_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_804 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_804 v0 = coe d_maxBlockSize_692 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_806 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_806 v0
  = coe d_maxCollateralInputs_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_808 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_808 v0 = coe d_maxHeaderSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_810 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_810 v0
  = coe d_maxRefScriptSizePerBlock_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_812 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_812 v0
  = coe d_maxRefScriptSizePerTx_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_814 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_814 v0 = coe d_maxTxExUnits_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_816 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_816 v0 = coe d_maxTxSize_694 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_818 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_818 v0 = coe d_maxValSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_820 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_820 v0
  = coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_822 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_822 v0 = coe d_minUTxOValue_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.monetaryExpansion
d_monetaryExpansion_824 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_824 v0 = coe d_monetaryExpansion_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.nopt
d_nopt_826 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_826 v0 = coe d_nopt_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_828 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_828 v0 = coe d_poolDeposit_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_830 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_830 v0 = coe d_poolThresholds_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.prices
d_prices_832 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_832 v0 = coe d_prices_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.pv
d_pv_834 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_834 v0 = coe d_pv_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_836 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_836 v0
  = coe d_refScriptCostMultiplier_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_838 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_838 v0
  = coe d_refScriptCostStride_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.treasuryCut
d_treasuryCut_840 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_840 v0 = coe d_treasuryCut_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_844 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_844 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_844 v3
du_paramsUpdateWellFormed'63'_844 ::
  T_PParamsUpdate_620 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_844 v0
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
                  (coe d_maxBlockSize_692 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_694 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_696 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_698 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_coinsPerUTxOByte_720 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_714 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_742 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_760 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_750 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_752 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_754 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_848 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 -> Bool
d_modifiesNetworkGroup_848 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_848 v3
du_modifiesNetworkGroup_848 :: T_PParamsUpdate_620 -> Bool
du_modifiesNetworkGroup_848 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_692 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_694 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_696 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_698 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_700 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_702 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_704 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_706 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_854 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_854 v0 = coe d_Emax_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_856 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_856 v0 = coe d_a_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_858 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_858 v0 = coe d_a0_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_860 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_860 v0 = coe d_b_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_862 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_862 v0 = coe d_ccMaxTermLength_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_864 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_864 v0 = coe d_ccMinSize_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_866 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_866 v0 = coe d_coinsPerUTxOByte_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_868 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_868 v0
  = coe d_collateralPercentage_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_870 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_870 v0 = coe d_costmdls_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_872 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_872 v0 = coe d_drepActivity_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_874 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_874 v0 = coe d_drepDeposit_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_876 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_876 v0 = coe d_drepThresholds_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_878 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_878 v0 = coe d_govActionDeposit_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_880 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_880 v0 = coe d_govActionLifetime_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_882 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_882 v0 = coe d_keyDeposit_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_884 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_884 v0 = coe d_maxBlockExUnits_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_886 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_886 v0 = coe d_maxBlockSize_692 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_888 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_888 v0
  = coe d_maxCollateralInputs_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_890 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_890 v0 = coe d_maxHeaderSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_892 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_892 v0
  = coe d_maxRefScriptSizePerBlock_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_894 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_894 v0
  = coe d_maxRefScriptSizePerTx_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_896 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_896 v0 = coe d_maxTxExUnits_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_898 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_898 v0 = coe d_maxTxSize_694 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_900 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_900 v0 = coe d_maxValSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_902 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_902 v0
  = coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_904 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_904 v0 = coe d_minUTxOValue_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_906 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_906 v0 = coe d_monetaryExpansion_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_908 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_908 v0 = coe d_nopt_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_910 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_910 v0 = coe d_poolDeposit_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_912 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_912 v0 = coe d_poolThresholds_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_914 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_914 v0 = coe d_prices_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_916 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_916 v0 = coe d_pv_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_918 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_918 v0
  = coe d_refScriptCostMultiplier_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_920 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_920 v0
  = coe d_refScriptCostStride_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_922 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_922 v0 = coe d_treasuryCut_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_924 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 -> Bool
d_modifiesEconomicGroup_924 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_924 v3
du_modifiesEconomicGroup_924 :: T_PParamsUpdate_620 -> Bool
du_modifiesEconomicGroup_924 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_708 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_710 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_712 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_714 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_monetaryExpansion_716 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_treasuryCut_718 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_coinsPerUTxOByte_720 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_maxRefScriptSizePerTx_726 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_maxRefScriptSizePerBlock_728 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_refScriptCostStride_730 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_refScriptCostMultiplier_732 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_prices_722 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_minUTxOValue_734 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_930 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_930 v0 = coe d_Emax_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_932 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_932 v0 = coe d_a_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_934 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_934 v0 = coe d_a0_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_936 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_936 v0 = coe d_b_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_938 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_938 v0 = coe d_ccMaxTermLength_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_940 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_940 v0 = coe d_ccMinSize_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_942 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_942 v0 = coe d_coinsPerUTxOByte_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_944 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_944 v0
  = coe d_collateralPercentage_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_946 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_946 v0 = coe d_costmdls_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_948 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_948 v0 = coe d_drepActivity_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_950 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_950 v0 = coe d_drepDeposit_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_952 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_952 v0 = coe d_drepThresholds_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_954 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_954 v0 = coe d_govActionDeposit_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_956 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_956 v0 = coe d_govActionLifetime_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_958 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_958 v0 = coe d_keyDeposit_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_960 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_960 v0 = coe d_maxBlockExUnits_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_962 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_962 v0 = coe d_maxBlockSize_692 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_964 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_964 v0
  = coe d_maxCollateralInputs_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_966 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_966 v0 = coe d_maxHeaderSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_968 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_968 v0
  = coe d_maxRefScriptSizePerBlock_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_970 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_970 v0
  = coe d_maxRefScriptSizePerTx_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_972 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_972 v0 = coe d_maxTxExUnits_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_974 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_974 v0 = coe d_maxTxSize_694 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_976 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_976 v0 = coe d_maxValSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_978 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_978 v0
  = coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_980 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_980 v0 = coe d_minUTxOValue_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_982 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_982 v0 = coe d_monetaryExpansion_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_984 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_984 v0 = coe d_nopt_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_986 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_986 v0 = coe d_poolDeposit_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_988 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_988 v0 = coe d_poolThresholds_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_990 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_990 v0 = coe d_prices_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_992 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_992 v0 = coe d_pv_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_994 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_994 v0
  = coe d_refScriptCostMultiplier_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_996 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_996 v0
  = coe d_refScriptCostStride_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_998 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_998 v0 = coe d_treasuryCut_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1000 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 -> Bool
d_modifiesTechnicalGroup_1000 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_1000 v3
du_modifiesTechnicalGroup_1000 :: T_PParamsUpdate_620 -> Bool
du_modifiesTechnicalGroup_1000 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_736 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_738 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_740 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_742 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_744 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1006 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_1006 v0 = coe d_Emax_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_1008 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_1008 v0 = coe d_a_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_1010 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1010 v0 = coe d_a0_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_1012 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_1012 v0 = coe d_b_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1014 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_1014 v0 = coe d_ccMaxTermLength_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1016 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_1016 v0 = coe d_ccMinSize_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1018 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_1018 v0 = coe d_coinsPerUTxOByte_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1020 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_1020 v0
  = coe d_collateralPercentage_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1022 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_1022 v0 = coe d_costmdls_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1024 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_1024 v0 = coe d_drepActivity_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1026 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_1026 v0 = coe d_drepDeposit_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1028 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_1028 v0 = coe d_drepThresholds_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1030 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_1030 v0 = coe d_govActionDeposit_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1032 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_1032 v0 = coe d_govActionLifetime_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1034 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_1034 v0 = coe d_keyDeposit_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1036 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_1036 v0 = coe d_maxBlockExUnits_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1038 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_1038 v0 = coe d_maxBlockSize_692 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1040 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_1040 v0
  = coe d_maxCollateralInputs_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1042 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_1042 v0 = coe d_maxHeaderSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1044 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_1044 v0
  = coe d_maxRefScriptSizePerBlock_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1046 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_1046 v0
  = coe d_maxRefScriptSizePerTx_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1048 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_1048 v0 = coe d_maxTxExUnits_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1050 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_1050 v0 = coe d_maxTxSize_694 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1052 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_1052 v0 = coe d_maxValSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1054 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1054 v0
  = coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1056 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_1056 v0 = coe d_minUTxOValue_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1058 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1058 v0 = coe d_monetaryExpansion_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1060 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_1060 v0 = coe d_nopt_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1062 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_1062 v0 = coe d_poolDeposit_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1064 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_1064 v0 = coe d_poolThresholds_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_1066 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_1066 v0 = coe d_prices_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_1068 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1068 v0 = coe d_pv_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1070 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1070 v0
  = coe d_refScriptCostMultiplier_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1072 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1072 v0
  = coe d_refScriptCostStride_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1074 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1074 v0 = coe d_treasuryCut_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1076 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 -> Bool
d_modifiesGovernanceGroup_1076 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_1076 v3
du_modifiesGovernanceGroup_1076 :: T_PParamsUpdate_620 -> Bool
du_modifiesGovernanceGroup_1076 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_746 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_748 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_750 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_752 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_754 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_756 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_758 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_760 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1082 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_1082 v0 = coe d_Emax_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_1084 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_1084 v0 = coe d_a_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_1086 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1086 v0 = coe d_a0_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_1088 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_1088 v0 = coe d_b_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1090 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_1090 v0 = coe d_ccMaxTermLength_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1092 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_1092 v0 = coe d_ccMinSize_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1094 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_1094 v0 = coe d_coinsPerUTxOByte_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1096 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_1096 v0
  = coe d_collateralPercentage_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1098 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_1098 v0 = coe d_costmdls_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1100 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_1100 v0 = coe d_drepActivity_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1102 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_1102 v0 = coe d_drepDeposit_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1104 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_1104 v0 = coe d_drepThresholds_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1106 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_1106 v0 = coe d_govActionDeposit_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1108 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_1108 v0 = coe d_govActionLifetime_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1110 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_1110 v0 = coe d_keyDeposit_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1112 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_1112 v0 = coe d_maxBlockExUnits_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1114 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_1114 v0 = coe d_maxBlockSize_692 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1116 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_1116 v0
  = coe d_maxCollateralInputs_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1118 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_1118 v0 = coe d_maxHeaderSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1120 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_1120 v0
  = coe d_maxRefScriptSizePerBlock_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1122 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_1122 v0
  = coe d_maxRefScriptSizePerTx_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1124 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_1124 v0 = coe d_maxTxExUnits_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1126 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_1126 v0 = coe d_maxTxSize_694 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1128 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_1128 v0 = coe d_maxValSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1130 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1130 v0
  = coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1132 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_1132 v0 = coe d_minUTxOValue_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1134 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1134 v0 = coe d_monetaryExpansion_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1136 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_1136 v0 = coe d_nopt_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1138 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_1138 v0 = coe d_poolDeposit_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1140 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_1140 v0 = coe d_poolThresholds_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_1142 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_1142 v0 = coe d_prices_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_1144 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1144 v0 = coe d_pv_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1146 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1146 v0
  = coe d_refScriptCostMultiplier_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1148 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1148 v0
  = coe d_refScriptCostStride_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1150 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1150 v0 = coe d_treasuryCut_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1152 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 -> Bool
d_modifiesSecurityGroup_1152 ~v0 ~v1 ~v2 v3
  = du_modifiesSecurityGroup_1152 v3
du_modifiesSecurityGroup_1152 :: T_PParamsUpdate_620 -> Bool
du_modifiesSecurityGroup_1152 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_692 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_694 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_696 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_698 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxBlockExUnits_704 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_b_710 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_a_708 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_720 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_govActionDeposit_752 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1158 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_1158 v0 = coe d_Emax_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_1160 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_1160 v0 = coe d_a_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_1162 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1162 v0 = coe d_a0_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_1164 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_1164 v0 = coe d_b_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1166 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_1166 v0 = coe d_ccMaxTermLength_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1168 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_1168 v0 = coe d_ccMinSize_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1170 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_1170 v0 = coe d_coinsPerUTxOByte_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1172 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_1172 v0
  = coe d_collateralPercentage_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1174 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_1174 v0 = coe d_costmdls_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1176 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_1176 v0 = coe d_drepActivity_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1178 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_1178 v0 = coe d_drepDeposit_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1180 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_1180 v0 = coe d_drepThresholds_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1182 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_1182 v0 = coe d_govActionDeposit_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1184 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_1184 v0 = coe d_govActionLifetime_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1186 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_1186 v0 = coe d_keyDeposit_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1188 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_1188 v0 = coe d_maxBlockExUnits_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1190 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_1190 v0 = coe d_maxBlockSize_692 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1192 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_1192 v0
  = coe d_maxCollateralInputs_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1194 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_1194 v0 = coe d_maxHeaderSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1196 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_1196 v0
  = coe d_maxRefScriptSizePerBlock_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1198 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_1198 v0
  = coe d_maxRefScriptSizePerTx_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1200 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_1200 v0 = coe d_maxTxExUnits_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1202 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_1202 v0 = coe d_maxTxSize_694 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1204 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_1204 v0 = coe d_maxValSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1206 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1206 v0
  = coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1208 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_1208 v0 = coe d_minUTxOValue_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1210 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1210 v0 = coe d_monetaryExpansion_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1212 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_1212 v0 = coe d_nopt_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1214 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_1214 v0 = coe d_poolDeposit_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1216 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_1216 v0 = coe d_poolThresholds_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_1218 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_1218 v0 = coe d_prices_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_1220 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1220 v0 = coe d_pv_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1222 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1222 v0
  = coe d_refScriptCostMultiplier_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1224 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1224 v0
  = coe d_refScriptCostStride_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1226 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1226 v0 = coe d_treasuryCut_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1228 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 -> [T_PParamGroup_222]
d_modifiedUpdateGroups_1228 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1228 v3
du_modifiedUpdateGroups_1228 ::
  T_PParamsUpdate_620 -> [T_PParamGroup_222]
du_modifiedUpdateGroups_1228 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1236 (coe v0)
         (coe du_modifiesNetworkGroup_848) (coe C_NetworkGroup_224))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1236 (coe v0)
            (coe du_modifiesEconomicGroup_924) (coe C_EconomicGroup_226))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1236 (coe v0)
               (coe du_modifiesTechnicalGroup_1000) (coe C_TechnicalGroup_228))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  du__'63''9552''8658'__1236 (coe v0)
                  (coe du_modifiesGovernanceGroup_1076) (coe C_GovernanceGroup_230))
               (coe
                  du__'63''9552''8658'__1236 (coe v0)
                  (coe du_modifiesSecurityGroup_1152) (coe C_SecurityGroup_232)))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_620 ->
  (T_PParamsUpdate_620 -> Bool) ->
  T_PParamGroup_222 -> [T_PParamGroup_222]
d__'63''9552''8658'__1236 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1236 v3 v4 v5
du__'63''9552''8658'__1236 ::
  T_PParamsUpdate_620 ->
  (T_PParamsUpdate_620 -> Bool) ->
  T_PParamGroup_222 -> [T_PParamGroup_222]
du__'63''9552''8658'__1236 v0 v1 v2
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
-- Ledger.Conway.Specification.PParams.PParamsUpdate._?↗_
d__'63''8599'__1244 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1244 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1244 v4 v5
du__'63''8599'__1244 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1244 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1258 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1258 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1258 v4
du_'8801''45'update_1258 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1258 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (\ v1 -> coe du_to_1278 (coe v0)) erased
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.to
d_to_1278 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
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
d_to_1278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1278 v8
du_to_1278 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1278 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.from
d_from_1290 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
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
d_from_1290 = erased
-- Ledger.Conway.Specification.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_298 -> T_PParamsUpdate_620 -> T_PParams_298
d_applyPParamsUpdate_1292 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1292 v3 v4
du_applyPParamsUpdate_1292 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> T_PParams_298
du_applyPParamsUpdate_1292 v0 v1
  = coe
      C_PParams'46'constructor_5025
      (coe
         du__'63''8599'__1244 (coe d_maxBlockSize_692 (coe v1))
         (coe d_maxBlockSize_370 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxTxSize_694 (coe v1))
         (coe d_maxTxSize_372 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxHeaderSize_696 (coe v1))
         (coe d_maxHeaderSize_374 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxTxExUnits_702 (coe v1))
         (coe d_maxTxExUnits_376 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxBlockExUnits_704 (coe v1))
         (coe d_maxBlockExUnits_378 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxValSize_698 (coe v1))
         (coe d_maxValSize_380 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxCollateralInputs_700 (coe v1))
         (coe d_maxCollateralInputs_382 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_pv_706 (coe v1))
         (coe d_pv_384 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_a_708 (coe v1)) (coe d_a_386 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_b_710 (coe v1)) (coe d_b_388 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_keyDeposit_712 (coe v1))
         (coe d_keyDeposit_390 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_poolDeposit_714 (coe v1))
         (coe d_poolDeposit_392 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_monetaryExpansion_716 (coe v1))
         (coe d_monetaryExpansion_394 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_treasuryCut_718 (coe v1))
         (coe d_treasuryCut_396 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_coinsPerUTxOByte_720 (coe v1))
         (coe d_coinsPerUTxOByte_398 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_prices_722 (coe v1))
         (coe d_prices_400 (coe v0)))
      (coe
         du__'63''8599'__1244
         (coe d_minFeeRefScriptCoinsPerByte_724 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_402 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxRefScriptSizePerTx_726 (coe v1))
         (coe d_maxRefScriptSizePerTx_404 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_maxRefScriptSizePerBlock_728 (coe v1))
         (coe d_maxRefScriptSizePerBlock_406 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_refScriptCostStride_730 (coe v1))
         (coe d_refScriptCostStride_408 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_refScriptCostMultiplier_732 (coe v1))
         (coe d_refScriptCostMultiplier_410 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_minUTxOValue_734 (coe v1))
         (coe d_minUTxOValue_412 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_Emax_738 (coe v1))
         (coe d_Emax_414 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_nopt_740 (coe v1))
         (coe d_nopt_416 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_a0_736 (coe v1))
         (coe d_a0_418 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_collateralPercentage_742 (coe v1))
         (coe d_collateralPercentage_420 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_costmdls_744 (coe v1))
         (coe d_costmdls_422 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_poolThresholds_748 (coe v1))
         (coe d_poolThresholds_424 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_drepThresholds_746 (coe v1))
         (coe d_drepThresholds_426 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_ccMinSize_758 (coe v1))
         (coe d_ccMinSize_428 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_ccMaxTermLength_760 (coe v1))
         (coe d_ccMaxTermLength_430 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_govActionLifetime_750 (coe v1))
         (coe d_govActionLifetime_432 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_govActionDeposit_752 (coe v1))
         (coe d_govActionDeposit_434 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_drepDeposit_754 (coe v1))
         (coe d_drepDeposit_436 (coe v0)))
      (coe
         du__'63''8599'__1244 (coe d_drepActivity_756 (coe v1))
         (coe d_drepActivity_438 (coe v0)))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.Emax
d_Emax_1304 :: T_PParams_298 -> T_PParamsUpdate_620 -> AgdaAny
d_Emax_1304 v0 ~v1 = du_Emax_1304 v0
du_Emax_1304 :: T_PParams_298 -> AgdaAny
du_Emax_1304 v0 = coe d_Emax_414 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.a
d_a_1306 :: T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_a_1306 v0 ~v1 = du_a_1306 v0
du_a_1306 :: T_PParams_298 -> Integer
du_a_1306 v0 = coe d_a_386 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.a0
d_a0_1308 ::
  T_PParams_298 ->
  T_PParamsUpdate_620 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1308 v0 ~v1 = du_a0_1308 v0
du_a0_1308 ::
  T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1308 v0 = coe d_a0_418 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.b
d_b_1310 :: T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_b_1310 v0 ~v1 = du_b_1310 v0
du_b_1310 :: T_PParams_298 -> Integer
du_b_1310 v0 = coe d_b_388 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1312 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_ccMaxTermLength_1312 v0 ~v1 = du_ccMaxTermLength_1312 v0
du_ccMaxTermLength_1312 :: T_PParams_298 -> Integer
du_ccMaxTermLength_1312 v0 = coe d_ccMaxTermLength_430 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1314 :: T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_ccMinSize_1314 v0 ~v1 = du_ccMinSize_1314 v0
du_ccMinSize_1314 :: T_PParams_298 -> Integer
du_ccMinSize_1314 v0 = coe d_ccMinSize_428 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1316 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_coinsPerUTxOByte_1316 v0 ~v1 = du_coinsPerUTxOByte_1316 v0
du_coinsPerUTxOByte_1316 :: T_PParams_298 -> Integer
du_coinsPerUTxOByte_1316 v0 = coe d_coinsPerUTxOByte_398 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1318 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_collateralPercentage_1318 v0 ~v1
  = du_collateralPercentage_1318 v0
du_collateralPercentage_1318 :: T_PParams_298 -> Integer
du_collateralPercentage_1318 v0
  = coe d_collateralPercentage_420 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1320 :: T_PParams_298 -> T_PParamsUpdate_620 -> AgdaAny
d_costmdls_1320 v0 ~v1 = du_costmdls_1320 v0
du_costmdls_1320 :: T_PParams_298 -> AgdaAny
du_costmdls_1320 v0 = coe d_costmdls_422 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1322 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> AgdaAny
d_drepActivity_1322 v0 ~v1 = du_drepActivity_1322 v0
du_drepActivity_1322 :: T_PParams_298 -> AgdaAny
du_drepActivity_1322 v0 = coe d_drepActivity_438 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1324 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_drepDeposit_1324 v0 ~v1 = du_drepDeposit_1324 v0
du_drepDeposit_1324 :: T_PParams_298 -> Integer
du_drepDeposit_1324 v0 = coe d_drepDeposit_436 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1326 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> T_DrepThresholds_234
d_drepThresholds_1326 v0 ~v1 = du_drepThresholds_1326 v0
du_drepThresholds_1326 :: T_PParams_298 -> T_DrepThresholds_234
du_drepThresholds_1326 v0 = coe d_drepThresholds_426 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1328 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_govActionDeposit_1328 v0 ~v1 = du_govActionDeposit_1328 v0
du_govActionDeposit_1328 :: T_PParams_298 -> Integer
du_govActionDeposit_1328 v0 = coe d_govActionDeposit_434 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1330 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_govActionLifetime_1330 v0 ~v1 = du_govActionLifetime_1330 v0
du_govActionLifetime_1330 :: T_PParams_298 -> Integer
du_govActionLifetime_1330 v0 = coe d_govActionLifetime_432 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1332 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_keyDeposit_1332 v0 ~v1 = du_keyDeposit_1332 v0
du_keyDeposit_1332 :: T_PParams_298 -> Integer
du_keyDeposit_1332 v0 = coe d_keyDeposit_390 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1334 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> AgdaAny
d_maxBlockExUnits_1334 v0 ~v1 = du_maxBlockExUnits_1334 v0
du_maxBlockExUnits_1334 :: T_PParams_298 -> AgdaAny
du_maxBlockExUnits_1334 v0 = coe d_maxBlockExUnits_378 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1336 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_maxBlockSize_1336 v0 ~v1 = du_maxBlockSize_1336 v0
du_maxBlockSize_1336 :: T_PParams_298 -> Integer
du_maxBlockSize_1336 v0 = coe d_maxBlockSize_370 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1338 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_maxCollateralInputs_1338 v0 ~v1 = du_maxCollateralInputs_1338 v0
du_maxCollateralInputs_1338 :: T_PParams_298 -> Integer
du_maxCollateralInputs_1338 v0
  = coe d_maxCollateralInputs_382 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1340 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_maxHeaderSize_1340 v0 ~v1 = du_maxHeaderSize_1340 v0
du_maxHeaderSize_1340 :: T_PParams_298 -> Integer
du_maxHeaderSize_1340 v0 = coe d_maxHeaderSize_374 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1342 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_maxRefScriptSizePerBlock_1342 v0 ~v1
  = du_maxRefScriptSizePerBlock_1342 v0
du_maxRefScriptSizePerBlock_1342 :: T_PParams_298 -> Integer
du_maxRefScriptSizePerBlock_1342 v0
  = coe d_maxRefScriptSizePerBlock_406 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1344 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_maxRefScriptSizePerTx_1344 v0 ~v1
  = du_maxRefScriptSizePerTx_1344 v0
du_maxRefScriptSizePerTx_1344 :: T_PParams_298 -> Integer
du_maxRefScriptSizePerTx_1344 v0
  = coe d_maxRefScriptSizePerTx_404 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1346 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> AgdaAny
d_maxTxExUnits_1346 v0 ~v1 = du_maxTxExUnits_1346 v0
du_maxTxExUnits_1346 :: T_PParams_298 -> AgdaAny
du_maxTxExUnits_1346 v0 = coe d_maxTxExUnits_376 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1348 :: T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_maxTxSize_1348 v0 ~v1 = du_maxTxSize_1348 v0
du_maxTxSize_1348 :: T_PParams_298 -> Integer
du_maxTxSize_1348 v0 = coe d_maxTxSize_372 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1350 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_maxValSize_1350 v0 ~v1 = du_maxValSize_1350 v0
du_maxValSize_1350 :: T_PParams_298 -> Integer
du_maxValSize_1350 v0 = coe d_maxValSize_380 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1352 ::
  T_PParams_298 ->
  T_PParamsUpdate_620 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1352 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1352 v0
du_minFeeRefScriptCoinsPerByte_1352 ::
  T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1352 v0
  = coe d_minFeeRefScriptCoinsPerByte_402 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1354 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_minUTxOValue_1354 v0 ~v1 = du_minUTxOValue_1354 v0
du_minUTxOValue_1354 :: T_PParams_298 -> Integer
du_minUTxOValue_1354 v0 = coe d_minUTxOValue_412 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.monetaryExpansion
d_monetaryExpansion_1356 ::
  T_PParams_298 ->
  T_PParamsUpdate_620 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1356 v0 ~v1 = du_monetaryExpansion_1356 v0
du_monetaryExpansion_1356 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_monetaryExpansion_1356 v0 = coe d_monetaryExpansion_394 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.nopt
d_nopt_1358 :: T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_nopt_1358 v0 ~v1 = du_nopt_1358 v0
du_nopt_1358 :: T_PParams_298 -> Integer
du_nopt_1358 v0 = coe d_nopt_416 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1360 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> Integer
d_poolDeposit_1360 v0 ~v1 = du_poolDeposit_1360 v0
du_poolDeposit_1360 :: T_PParams_298 -> Integer
du_poolDeposit_1360 v0 = coe d_poolDeposit_392 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1362 ::
  T_PParams_298 -> T_PParamsUpdate_620 -> T_PoolThresholds_276
d_poolThresholds_1362 v0 ~v1 = du_poolThresholds_1362 v0
du_poolThresholds_1362 :: T_PParams_298 -> T_PoolThresholds_276
du_poolThresholds_1362 v0 = coe d_poolThresholds_424 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.prices
d_prices_1364 :: T_PParams_298 -> T_PParamsUpdate_620 -> AgdaAny
d_prices_1364 v0 ~v1 = du_prices_1364 v0
du_prices_1364 :: T_PParams_298 -> AgdaAny
du_prices_1364 v0 = coe d_prices_400 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.pv
d_pv_1366 ::
  T_PParams_298 ->
  T_PParamsUpdate_620 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1366 v0 ~v1 = du_pv_1366 v0
du_pv_1366 ::
  T_PParams_298 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1366 v0 = coe d_pv_384 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1368 ::
  T_PParams_298 ->
  T_PParamsUpdate_620 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1368 v0 ~v1
  = du_refScriptCostMultiplier_1368 v0
du_refScriptCostMultiplier_1368 ::
  T_PParams_298 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1368 v0
  = coe d_refScriptCostMultiplier_410 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1370 ::
  T_PParams_298 ->
  T_PParamsUpdate_620 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1370 v0 ~v1 = du_refScriptCostStride_1370 v0
du_refScriptCostStride_1370 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_refScriptCostStride_1370 v0
  = coe d_refScriptCostStride_408 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.treasuryCut
d_treasuryCut_1372 ::
  T_PParams_298 ->
  T_PParamsUpdate_620 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1372 v0 ~v1 = du_treasuryCut_1372 v0
du_treasuryCut_1372 ::
  T_PParams_298 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_treasuryCut_1372 v0 = coe d_treasuryCut_396 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.Emax
d_Emax_1376 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_Emax_1376 v0 = coe d_Emax_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.a
d_a_1378 :: T_PParamsUpdate_620 -> Maybe Integer
d_a_1378 v0 = coe d_a_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.a0
d_a0_1380 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1380 v0 = coe d_a0_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.b
d_b_1382 :: T_PParamsUpdate_620 -> Maybe Integer
d_b_1382 v0 = coe d_b_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1384 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMaxTermLength_1384 v0 = coe d_ccMaxTermLength_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1386 :: T_PParamsUpdate_620 -> Maybe Integer
d_ccMinSize_1386 v0 = coe d_ccMinSize_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1388 :: T_PParamsUpdate_620 -> Maybe Integer
d_coinsPerUTxOByte_1388 v0 = coe d_coinsPerUTxOByte_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1390 :: T_PParamsUpdate_620 -> Maybe Integer
d_collateralPercentage_1390 v0
  = coe d_collateralPercentage_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1392 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_costmdls_1392 v0 = coe d_costmdls_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1394 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_drepActivity_1394 v0 = coe d_drepActivity_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1396 :: T_PParamsUpdate_620 -> Maybe Integer
d_drepDeposit_1396 v0 = coe d_drepDeposit_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1398 ::
  T_PParamsUpdate_620 -> Maybe T_DrepThresholds_234
d_drepThresholds_1398 v0 = coe d_drepThresholds_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1400 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionDeposit_1400 v0 = coe d_govActionDeposit_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1402 :: T_PParamsUpdate_620 -> Maybe Integer
d_govActionLifetime_1402 v0 = coe d_govActionLifetime_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1404 :: T_PParamsUpdate_620 -> Maybe Integer
d_keyDeposit_1404 v0 = coe d_keyDeposit_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1406 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxBlockExUnits_1406 v0 = coe d_maxBlockExUnits_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1408 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxBlockSize_1408 v0 = coe d_maxBlockSize_692 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1410 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxCollateralInputs_1410 v0
  = coe d_maxCollateralInputs_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1412 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxHeaderSize_1412 v0 = coe d_maxHeaderSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1414 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerBlock_1414 v0
  = coe d_maxRefScriptSizePerBlock_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1416 ::
  T_PParamsUpdate_620 -> Maybe Integer
d_maxRefScriptSizePerTx_1416 v0
  = coe d_maxRefScriptSizePerTx_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1418 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_maxTxExUnits_1418 v0 = coe d_maxTxExUnits_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1420 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxTxSize_1420 v0 = coe d_maxTxSize_694 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1422 :: T_PParamsUpdate_620 -> Maybe Integer
d_maxValSize_1422 v0 = coe d_maxValSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1424 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1424 v0
  = coe d_minFeeRefScriptCoinsPerByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1426 :: T_PParamsUpdate_620 -> Maybe Integer
d_minUTxOValue_1426 v0 = coe d_minUTxOValue_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.monetaryExpansion
d_monetaryExpansion_1428 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1428 v0 = coe d_monetaryExpansion_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.nopt
d_nopt_1430 :: T_PParamsUpdate_620 -> Maybe Integer
d_nopt_1430 v0 = coe d_nopt_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1432 :: T_PParamsUpdate_620 -> Maybe Integer
d_poolDeposit_1432 v0 = coe d_poolDeposit_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1434 ::
  T_PParamsUpdate_620 -> Maybe T_PoolThresholds_276
d_poolThresholds_1434 v0 = coe d_poolThresholds_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.prices
d_prices_1436 :: T_PParamsUpdate_620 -> Maybe AgdaAny
d_prices_1436 v0 = coe d_prices_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.pv
d_pv_1438 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1438 v0 = coe d_pv_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1440 ::
  T_PParamsUpdate_620 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1440 v0
  = coe d_refScriptCostMultiplier_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1442 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1442 v0
  = coe d_refScriptCostStride_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.treasuryCut
d_treasuryCut_1444 ::
  T_PParamsUpdate_620 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1444 v0 = coe d_treasuryCut_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1446 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1446 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1446 v1 v2
du_DecEq'45'PParamsUpdate_1446 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1446 v0 v1
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
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
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
                                                                                                                                 du_DecEq'45'PoolThresholds_606))
                                                                                                                           (coe
                                                                                                                              v67)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (coe
                                                                                                                              du_DecEq'45'DrepThresholds_604))
                                                                                                                        (coe
                                                                                                                           v66)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_222
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
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
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_232
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                                  (coe v1))))
                                                         (coe v45) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
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
-- Ledger.Conway.Specification.PParams.pvCanFollow?
d_pvCanFollow'63'_1452 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1452 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1452 v3 v4
du_pvCanFollow'63'_1452 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1452 v0 v1
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
                                                                                                   C_canFollowMajor_216)))
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
                                                                                                    C_canFollowMajor_216)))
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
                                                                                                   C_canFollowMinor_218)))
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
                                                                                                    C_canFollowMinor_218)))
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
                                                                                                    C_canFollowMajor_216)))
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
                                                                                                     C_canFollowMajor_216)))
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
                                                                                                    C_canFollowMinor_218)))
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
                                                                                                     C_canFollowMinor_218)))
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
-- Ledger.Conway.Specification.PParams.PParamsDiff
d_PParamsDiff_1500 a0 a1 a2 = ()
data T_PParamsDiff_1500
  = C_PParamsDiff'46'constructor_967953 (T_PParams_298 ->
                                         AgdaAny -> T_PParams_298)
                                        (AgdaAny -> [T_PParamGroup_222])
                                        (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.Specification.PParams.PParamsDiff.UpdateT
d_UpdateT_1514 :: T_PParamsDiff_1500 -> ()
d_UpdateT_1514 = erased
-- Ledger.Conway.Specification.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1516 ::
  T_PParamsDiff_1500 -> T_PParams_298 -> AgdaAny -> T_PParams_298
d_applyUpdate_1516 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967953 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsDiff.updateGroups
d_updateGroups_1518 ::
  T_PParamsDiff_1500 -> AgdaAny -> [T_PParamGroup_222]
d_updateGroups_1518 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967953 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1524 ::
  T_PParamsDiff_1500 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1524 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967953 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1526 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsDiff_1500 -> AgdaAny -> ()
d_ppdWellFormed_1526 = erased
-- Ledger.Conway.Specification.PParams.GovParams
d_GovParams_1532 a0 a1 a2 = ()
data T_GovParams_1532
  = C_GovParams'46'constructor_968657 T_PParamsDiff_1500
                                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.Specification.PParams._.UpdateT
d_UpdateT_1538 :: T_PParamsDiff_1500 -> ()
d_UpdateT_1538 = erased
-- Ledger.Conway.Specification.PParams._.applyUpdate
d_applyUpdate_1540 ::
  T_PParamsDiff_1500 -> T_PParams_298 -> AgdaAny -> T_PParams_298
d_applyUpdate_1540 v0 = coe d_applyUpdate_1516 (coe v0)
-- Ledger.Conway.Specification.PParams._.ppWF?
d_ppWF'63'_1542 ::
  T_PParamsDiff_1500 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1542 v0 = coe d_ppWF'63'_1524 (coe v0)
-- Ledger.Conway.Specification.PParams._.ppdWellFormed
d_ppdWellFormed_1544 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsDiff_1500 -> AgdaAny -> ()
d_ppdWellFormed_1544 = erased
-- Ledger.Conway.Specification.PParams._.updateGroups
d_updateGroups_1546 ::
  T_PParamsDiff_1500 -> AgdaAny -> [T_PParamGroup_222]
d_updateGroups_1546 v0 = coe d_updateGroups_1518 (coe v0)
-- Ledger.Conway.Specification.PParams.GovParams.ppUpd
d_ppUpd_1550 :: T_GovParams_1532 -> T_PParamsDiff_1500
d_ppUpd_1550 v0
  = case coe v0 of
      C_GovParams'46'constructor_968657 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.GovParams._.UpdateT
d_UpdateT_1554 :: T_GovParams_1532 -> ()
d_UpdateT_1554 = erased
-- Ledger.Conway.Specification.PParams.GovParams._.applyUpdate
d_applyUpdate_1556 ::
  T_GovParams_1532 -> T_PParams_298 -> AgdaAny -> T_PParams_298
d_applyUpdate_1556 v0
  = coe d_applyUpdate_1516 (coe d_ppUpd_1550 (coe v0))
-- Ledger.Conway.Specification.PParams.GovParams._.ppWF?
d_ppWF'63'_1558 ::
  T_GovParams_1532 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1558 v0
  = coe d_ppWF'63'_1524 (coe d_ppUpd_1550 (coe v0))
-- Ledger.Conway.Specification.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1560 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_GovParams_1532 -> AgdaAny -> ()
d_ppdWellFormed_1560 = erased
-- Ledger.Conway.Specification.PParams.GovParams._.updateGroups
d_updateGroups_1562 ::
  T_GovParams_1532 -> AgdaAny -> [T_PParamGroup_222]
d_updateGroups_1562 v0
  = coe d_updateGroups_1518 (coe d_ppUpd_1550 (coe v0))
-- Ledger.Conway.Specification.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1564 ::
  T_GovParams_1532 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1564 v0
  = case coe v0 of
      C_GovParams'46'constructor_968657 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
