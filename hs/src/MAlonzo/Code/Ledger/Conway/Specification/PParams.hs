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
-- Ledger.Conway.Specification.PParams.Hastreasury-Acnt
d_Hastreasury'45'Acnt_210 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_Hastreasury_178
d_Hastreasury'45'Acnt_210 ~v0 ~v1 ~v2 = du_Hastreasury'45'Acnt_210
du_Hastreasury'45'Acnt_210 :: T_Hastreasury_178
du_Hastreasury'45'Acnt_210
  = coe
      C_Hastreasury'46'constructor_631
      (coe (\ v0 -> d_treasury_168 (coe v0)))
-- Ledger.Conway.Specification.PParams.Hasreserves-Acnt
d_Hasreserves'45'Acnt_212 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_Hasreserves_196
d_Hasreserves'45'Acnt_212 ~v0 ~v1 ~v2 = du_Hasreserves'45'Acnt_212
du_Hasreserves'45'Acnt_212 :: T_Hasreserves_196
du_Hasreserves'45'Acnt_212
  = coe
      C_Hasreserves'46'constructor_763
      (coe (\ v0 -> d_reserves_170 (coe v0)))
-- Ledger.Conway.Specification.PParams.ProtVer
d_ProtVer_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_ProtVer_214 = erased
-- Ledger.Conway.Specification.PParams.Show-ProtVer
d_Show'45'ProtVer_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_216 ~v0 = du_Show'45'ProtVer_216
du_Show'45'ProtVer_216 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_216
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.PParams.pvCanFollow
d_pvCanFollow_218 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_218
  = C_canFollowMajor_220 | C_canFollowMinor_222
-- Ledger.Conway.Specification.PParams.HasCast-Acnt
d_HasCast'45'Acnt_224 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_224 ~v0 ~v1 ~v2 = du_HasCast'45'Acnt_224
du_HasCast'45'Acnt_224 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_224
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
d_PParamGroup_226 a0 a1 a2 = ()
data T_PParamGroup_226
  = C_NetworkGroup_228 | C_EconomicGroup_230 | C_TechnicalGroup_232 |
    C_GovernanceGroup_234 | C_SecurityGroup_236
-- Ledger.Conway.Specification.PParams.DrepThresholds
d_DrepThresholds_238 a0 a1 a2 = ()
data T_DrepThresholds_238
  = C_DrepThresholds'46'constructor_3159 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
d_P1_260 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_260 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P2a
d_P2a_262 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_262 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P2b
d_P2b_264 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_264 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P3
d_P3_266 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P4
d_P4_268 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5a
d_P5a_270 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5b
d_P5b_272 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5c
d_P5c_274 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_274 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P5d
d_P5d_276 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_276 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.DrepThresholds.P6
d_P6_278 ::
  T_DrepThresholds_238 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_278 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds
d_PoolThresholds_280 a0 a1 a2 = ()
data T_PoolThresholds_280
  = C_PoolThresholds'46'constructor_3723 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q1
d_Q1_292 ::
  T_PoolThresholds_280 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_292 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3723 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q2a
d_Q2a_294 ::
  T_PoolThresholds_280 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_294 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3723 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q2b
d_Q2b_296 ::
  T_PoolThresholds_280 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_296 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3723 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q4
d_Q4_298 ::
  T_PoolThresholds_280 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_298 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3723 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PoolThresholds.Q5
d_Q5_300 ::
  T_PoolThresholds_280 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_300 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3723 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams
d_PParams_302 a0 a1 a2 = ()
data T_PParams_302
  = C_PParams'46'constructor_5317 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_280 T_DrepThresholds_238 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.Conway.Specification.PParams.PParams.maxBlockSize
d_maxBlockSize_374 :: T_PParams_302 -> Integer
d_maxBlockSize_374 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxTxSize
d_maxTxSize_376 :: T_PParams_302 -> Integer
d_maxTxSize_376 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxHeaderSize
d_maxHeaderSize_378 :: T_PParams_302 -> Integer
d_maxHeaderSize_378 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxTxExUnits
d_maxTxExUnits_380 :: T_PParams_302 -> AgdaAny
d_maxTxExUnits_380 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_382 :: T_PParams_302 -> AgdaAny
d_maxBlockExUnits_382 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxValSize
d_maxValSize_384 :: T_PParams_302 -> Integer
d_maxValSize_384 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_386 :: T_PParams_302 -> Integer
d_maxCollateralInputs_386 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.pv
d_pv_388 :: T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_388 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.a
d_a_390 :: T_PParams_302 -> Integer
d_a_390 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.b
d_b_392 :: T_PParams_302 -> Integer
d_b_392 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.keyDeposit
d_keyDeposit_394 :: T_PParams_302 -> Integer
d_keyDeposit_394 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.poolDeposit
d_poolDeposit_396 :: T_PParams_302 -> Integer
d_poolDeposit_396 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.monetaryExpansion
d_monetaryExpansion_398 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_398 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.treasuryCut
d_treasuryCut_400 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_400 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_402 :: T_PParams_302 -> Integer
d_coinsPerUTxOByte_402 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.prices
d_prices_404 :: T_PParams_302 -> AgdaAny
d_prices_404 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_406 ::
  T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_406 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_408 :: T_PParams_302 -> Integer
d_maxRefScriptSizePerTx_408 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_410 :: T_PParams_302 -> Integer
d_maxRefScriptSizePerBlock_410 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.refScriptCostStride
d_refScriptCostStride_412 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_412 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_414 ::
  T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_414 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.minUTxOValue
d_minUTxOValue_416 :: T_PParams_302 -> Integer
d_minUTxOValue_416 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.Emax
d_Emax_418 :: T_PParams_302 -> AgdaAny
d_Emax_418 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.nopt
d_nopt_420 :: T_PParams_302 -> Integer
d_nopt_420 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.a0
d_a0_422 :: T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_422 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.collateralPercentage
d_collateralPercentage_424 :: T_PParams_302 -> Integer
d_collateralPercentage_424 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.costmdls
d_costmdls_426 :: T_PParams_302 -> AgdaAny
d_costmdls_426 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.poolThresholds
d_poolThresholds_428 :: T_PParams_302 -> T_PoolThresholds_280
d_poolThresholds_428 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.drepThresholds
d_drepThresholds_430 :: T_PParams_302 -> T_DrepThresholds_238
d_drepThresholds_430 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.ccMinSize
d_ccMinSize_432 :: T_PParams_302 -> Integer
d_ccMinSize_432 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_434 :: T_PParams_302 -> Integer
d_ccMaxTermLength_434 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.govActionLifetime
d_govActionLifetime_436 :: T_PParams_302 -> Integer
d_govActionLifetime_436 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.govActionDeposit
d_govActionDeposit_438 :: T_PParams_302 -> Integer
d_govActionDeposit_438 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.drepDeposit
d_drepDeposit_440 :: T_PParams_302 -> Integer
d_drepDeposit_440 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParams.drepActivity
d_drepActivity_442 :: T_PParams_302 -> AgdaAny
d_drepActivity_442 v0
  = case coe v0 of
      C_PParams'46'constructor_5317 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.HasPParams
d_HasPParams_448 a0 a1 a2 a3 a4 = ()
newtype T_HasPParams_448
  = C_HasPParams'46'constructor_9725 (AgdaAny -> T_PParams_302)
-- Ledger.Conway.Specification.PParams.HasPParams.PParamsOf
d_PParamsOf_456 :: T_HasPParams_448 -> AgdaAny -> T_PParams_302
d_PParamsOf_456 v0
  = case coe v0 of
      C_HasPParams'46'constructor_9725 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.PParamsOf
d_PParamsOf_460 :: T_HasPParams_448 -> AgdaAny -> T_PParams_302
d_PParamsOf_460 v0 = coe d_PParamsOf_456 (coe v0)
-- Ledger.Conway.Specification.PParams.HasgovActionDeposit
d_HasgovActionDeposit_466 a0 a1 a2 a3 a4 = ()
newtype T_HasgovActionDeposit_466
  = C_HasgovActionDeposit'46'constructor_9857 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.PParams.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_474 ::
  T_HasgovActionDeposit_466 -> AgdaAny -> Integer
d_govActionDepositOf_474 v0
  = case coe v0 of
      C_HasgovActionDeposit'46'constructor_9857 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.govActionDepositOf
d_govActionDepositOf_478 ::
  T_HasgovActionDeposit_466 -> AgdaAny -> Integer
d_govActionDepositOf_478 v0 = coe d_govActionDepositOf_474 (coe v0)
-- Ledger.Conway.Specification.PParams.HasccMaxTermLength
d_HasccMaxTermLength_484 a0 a1 a2 a3 a4 = ()
newtype T_HasccMaxTermLength_484
  = C_HasccMaxTermLength'46'constructor_9989 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.PParams.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_492 ::
  T_HasccMaxTermLength_484 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_492 v0
  = case coe v0 of
      C_HasccMaxTermLength'46'constructor_9989 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_496 ::
  T_HasccMaxTermLength_484 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_496 v0 = coe d_ccMaxTermLengthOf_492 (coe v0)
-- Ledger.Conway.Specification.PParams.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_498 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_HasgovActionDeposit_466
d_HasgovActionDeposit'45'PParams_498 ~v0 ~v1 ~v2
  = du_HasgovActionDeposit'45'PParams_498
du_HasgovActionDeposit'45'PParams_498 :: T_HasgovActionDeposit_466
du_HasgovActionDeposit'45'PParams_498
  = coe
      C_HasgovActionDeposit'46'constructor_9857
      (coe (\ v0 -> d_govActionDeposit_438 (coe v0)))
-- Ledger.Conway.Specification.PParams.positivePParams
d_positivePParams_500 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_302 -> [Integer]
d_positivePParams_500 ~v0 ~v1 ~v2 v3 = du_positivePParams_500 v3
du_positivePParams_500 :: T_PParams_302 -> [Integer]
du_positivePParams_500 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_374 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_376 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_378 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_384 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_coinsPerUTxOByte_402 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_poolDeposit_396 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_collateralPercentage_424 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_ccMaxTermLength_434 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_govActionLifetime_436 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionDeposit_438 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_drepDeposit_440 (coe v0))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.Specification.PParams._._.Emax
d_Emax_510 :: T_PParams_302 -> AgdaAny
d_Emax_510 v0 = coe d_Emax_418 (coe v0)
-- Ledger.Conway.Specification.PParams._._.a
d_a_512 :: T_PParams_302 -> Integer
d_a_512 v0 = coe d_a_390 (coe v0)
-- Ledger.Conway.Specification.PParams._._.a0
d_a0_514 :: T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_514 v0 = coe d_a0_422 (coe v0)
-- Ledger.Conway.Specification.PParams._._.b
d_b_516 :: T_PParams_302 -> Integer
d_b_516 v0 = coe d_b_392 (coe v0)
-- Ledger.Conway.Specification.PParams._._.ccMaxTermLength
d_ccMaxTermLength_518 :: T_PParams_302 -> Integer
d_ccMaxTermLength_518 v0 = coe d_ccMaxTermLength_434 (coe v0)
-- Ledger.Conway.Specification.PParams._._.ccMinSize
d_ccMinSize_520 :: T_PParams_302 -> Integer
d_ccMinSize_520 v0 = coe d_ccMinSize_432 (coe v0)
-- Ledger.Conway.Specification.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_522 :: T_PParams_302 -> Integer
d_coinsPerUTxOByte_522 v0 = coe d_coinsPerUTxOByte_402 (coe v0)
-- Ledger.Conway.Specification.PParams._._.collateralPercentage
d_collateralPercentage_524 :: T_PParams_302 -> Integer
d_collateralPercentage_524 v0
  = coe d_collateralPercentage_424 (coe v0)
-- Ledger.Conway.Specification.PParams._._.costmdls
d_costmdls_526 :: T_PParams_302 -> AgdaAny
d_costmdls_526 v0 = coe d_costmdls_426 (coe v0)
-- Ledger.Conway.Specification.PParams._._.drepActivity
d_drepActivity_528 :: T_PParams_302 -> AgdaAny
d_drepActivity_528 v0 = coe d_drepActivity_442 (coe v0)
-- Ledger.Conway.Specification.PParams._._.drepDeposit
d_drepDeposit_530 :: T_PParams_302 -> Integer
d_drepDeposit_530 v0 = coe d_drepDeposit_440 (coe v0)
-- Ledger.Conway.Specification.PParams._._.drepThresholds
d_drepThresholds_532 :: T_PParams_302 -> T_DrepThresholds_238
d_drepThresholds_532 v0 = coe d_drepThresholds_430 (coe v0)
-- Ledger.Conway.Specification.PParams._._.govActionDeposit
d_govActionDeposit_534 :: T_PParams_302 -> Integer
d_govActionDeposit_534 v0 = coe d_govActionDeposit_438 (coe v0)
-- Ledger.Conway.Specification.PParams._._.govActionLifetime
d_govActionLifetime_536 :: T_PParams_302 -> Integer
d_govActionLifetime_536 v0 = coe d_govActionLifetime_436 (coe v0)
-- Ledger.Conway.Specification.PParams._._.keyDeposit
d_keyDeposit_538 :: T_PParams_302 -> Integer
d_keyDeposit_538 v0 = coe d_keyDeposit_394 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxBlockExUnits
d_maxBlockExUnits_540 :: T_PParams_302 -> AgdaAny
d_maxBlockExUnits_540 v0 = coe d_maxBlockExUnits_382 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxBlockSize
d_maxBlockSize_542 :: T_PParams_302 -> Integer
d_maxBlockSize_542 v0 = coe d_maxBlockSize_374 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxCollateralInputs
d_maxCollateralInputs_544 :: T_PParams_302 -> Integer
d_maxCollateralInputs_544 v0
  = coe d_maxCollateralInputs_386 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxHeaderSize
d_maxHeaderSize_546 :: T_PParams_302 -> Integer
d_maxHeaderSize_546 v0 = coe d_maxHeaderSize_378 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_548 :: T_PParams_302 -> Integer
d_maxRefScriptSizePerBlock_548 v0
  = coe d_maxRefScriptSizePerBlock_410 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_550 :: T_PParams_302 -> Integer
d_maxRefScriptSizePerTx_550 v0
  = coe d_maxRefScriptSizePerTx_408 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxTxExUnits
d_maxTxExUnits_552 :: T_PParams_302 -> AgdaAny
d_maxTxExUnits_552 v0 = coe d_maxTxExUnits_380 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxTxSize
d_maxTxSize_554 :: T_PParams_302 -> Integer
d_maxTxSize_554 v0 = coe d_maxTxSize_376 (coe v0)
-- Ledger.Conway.Specification.PParams._._.maxValSize
d_maxValSize_556 :: T_PParams_302 -> Integer
d_maxValSize_556 v0 = coe d_maxValSize_384 (coe v0)
-- Ledger.Conway.Specification.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_558 ::
  T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_558 v0
  = coe d_minFeeRefScriptCoinsPerByte_406 (coe v0)
-- Ledger.Conway.Specification.PParams._._.minUTxOValue
d_minUTxOValue_560 :: T_PParams_302 -> Integer
d_minUTxOValue_560 v0 = coe d_minUTxOValue_416 (coe v0)
-- Ledger.Conway.Specification.PParams._._.monetaryExpansion
d_monetaryExpansion_562 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_562 v0 = coe d_monetaryExpansion_398 (coe v0)
-- Ledger.Conway.Specification.PParams._._.nopt
d_nopt_564 :: T_PParams_302 -> Integer
d_nopt_564 v0 = coe d_nopt_420 (coe v0)
-- Ledger.Conway.Specification.PParams._._.poolDeposit
d_poolDeposit_566 :: T_PParams_302 -> Integer
d_poolDeposit_566 v0 = coe d_poolDeposit_396 (coe v0)
-- Ledger.Conway.Specification.PParams._._.poolThresholds
d_poolThresholds_568 :: T_PParams_302 -> T_PoolThresholds_280
d_poolThresholds_568 v0 = coe d_poolThresholds_428 (coe v0)
-- Ledger.Conway.Specification.PParams._._.prices
d_prices_570 :: T_PParams_302 -> AgdaAny
d_prices_570 v0 = coe d_prices_404 (coe v0)
-- Ledger.Conway.Specification.PParams._._.pv
d_pv_572 :: T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_572 v0 = coe d_pv_388 (coe v0)
-- Ledger.Conway.Specification.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_574 ::
  T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_574 v0
  = coe d_refScriptCostMultiplier_414 (coe v0)
-- Ledger.Conway.Specification.PParams._._.refScriptCostStride
d_refScriptCostStride_576 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_576 v0
  = coe d_refScriptCostStride_412 (coe v0)
-- Ledger.Conway.Specification.PParams._._.treasuryCut
d_treasuryCut_578 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_578 v0 = coe d_treasuryCut_400 (coe v0)
-- Ledger.Conway.Specification.PParams.paramsWellFormed
d_paramsWellFormed_580 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_302 -> ()
d_paramsWellFormed_580 = erased
-- Ledger.Conway.Specification.PParams.paramsWF-elim
d_paramsWF'45'elim_588 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_302 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_588 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_588 v5
du_paramsWF'45'elim_588 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_588 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.Conway.Specification.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_608 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_608 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_608
du_DecEq'45'DrepThresholds_608 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_608
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_3159 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
d_DecEq'45'PoolThresholds_610 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_610 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_610
du_DecEq'45'PoolThresholds_610 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_610
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3723 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_3723 v7 v8 v9 v10 v11
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
d_DecEq'45'PParams_612 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_612 ~v0 v1 v2 = du_DecEq'45'PParams_612 v1 v2
du_DecEq'45'PParams_612 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_612 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_5317 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParams'46'constructor_5317 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                                               d_P6_278
                                                                                                                                                               (coe
                                                                                                                                                                  v31))
                                                                                                                                                            (coe
                                                                                                                                                               d_P6_278
                                                                                                                                                               (coe
                                                                                                                                                                  v67))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_276
                                                                                                                                                            (coe
                                                                                                                                                               v31))
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_276
                                                                                                                                                            (coe
                                                                                                                                                               v67))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_274
                                                                                                                                                         (coe
                                                                                                                                                            v31))
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_274
                                                                                                                                                         (coe
                                                                                                                                                            v67))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_272
                                                                                                                                                      (coe
                                                                                                                                                         v31))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_272
                                                                                                                                                      (coe
                                                                                                                                                         v67))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_270
                                                                                                                                                   (coe
                                                                                                                                                      v31))
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_270
                                                                                                                                                   (coe
                                                                                                                                                      v67))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                             (coe
                                                                                                                                                d_P4_268
                                                                                                                                                (coe
                                                                                                                                                   v31))
                                                                                                                                             (coe
                                                                                                                                                d_P4_268
                                                                                                                                                (coe
                                                                                                                                                   v67))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                          (coe
                                                                                                                                             d_P3_266
                                                                                                                                             (coe
                                                                                                                                                v31))
                                                                                                                                          (coe
                                                                                                                                             d_P3_266
                                                                                                                                             (coe
                                                                                                                                                v67))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_P2b_264
                                                                                                                                          (coe
                                                                                                                                             v31))
                                                                                                                                       (coe
                                                                                                                                          d_P2b_264
                                                                                                                                          (coe
                                                                                                                                             v67))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_P2a_262
                                                                                                                                       (coe
                                                                                                                                          v31))
                                                                                                                                    (coe
                                                                                                                                       d_P2a_262
                                                                                                                                       (coe
                                                                                                                                          v67))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_P1_260
                                                                                                                                    (coe
                                                                                                                                       v31))
                                                                                                                                 (coe
                                                                                                                                    d_P1_260
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
                                                                                                                                             d_Q5_300
                                                                                                                                             (coe
                                                                                                                                                v30))
                                                                                                                                          (coe
                                                                                                                                             d_Q5_300
                                                                                                                                             (coe
                                                                                                                                                v66))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_Q4_298
                                                                                                                                          (coe
                                                                                                                                             v30))
                                                                                                                                       (coe
                                                                                                                                          d_Q4_298
                                                                                                                                          (coe
                                                                                                                                             v66))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_296
                                                                                                                                       (coe
                                                                                                                                          v30))
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_296
                                                                                                                                       (coe
                                                                                                                                          v66))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_294
                                                                                                                                    (coe
                                                                                                                                       v30))
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_294
                                                                                                                                    (coe
                                                                                                                                       v66))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                              (coe
                                                                                                                                 d_Q1_292
                                                                                                                                 (coe
                                                                                                                                    v30))
                                                                                                                              (coe
                                                                                                                                 d_Q1_292
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
d_DecEq'45'PParamGroup_614 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_614 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_614
du_DecEq'45'PParamGroup_614 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_614
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_228
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_228
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
                          C_EconomicGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_234
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_236
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_230
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_230
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
                          C_TechnicalGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_234
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_236
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_232
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_232
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
                          C_GovernanceGroup_234
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_236
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_234
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_234
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
                          C_SecurityGroup_236
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_236
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_228
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_230
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_232
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_234
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_236
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
d_Show'45'DrepThresholds_616 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_616 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_616
du_Show'45'DrepThresholds_616 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_616
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_3159 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
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
d_Show'45'PoolThresholds_618 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_618 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_618
du_Show'45'PoolThresholds_618 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_618
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3723 v1 v2 v3 v4 v5
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
d_Show'45'PParams_620 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_620 ~v0 v1 v2 = du_Show'45'PParams_620 v1 v2
du_Show'45'PParams_620 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_620 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_5317 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
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
                                                                  (coe d_Q1_292 (coe v30)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_294 (coe v30)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_296 (coe v30)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_298 (coe v30)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_300 (coe v30)))))))
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
                                                                                 d_P1_260
                                                                                 (coe v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_262
                                                                              (coe v31)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_264 (coe v31)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_266 (coe v31)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_268 (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_270 (coe v31)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_272 (coe v31)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_274 (coe v31)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_276 (coe v31)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_278 (coe v31)))))))
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
d_PParamsUpdate_624 a0 a1 a2 = ()
data T_PParamsUpdate_624
  = C_PParamsUpdate'46'constructor_496527 (Maybe Integer)
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
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_238)
                                          (Maybe T_PoolThresholds_280) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_696 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_696 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_698 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_698 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_700 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_700 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_702 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_702 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_704 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_704 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_706 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_706 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_708 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_708 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_710 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_710 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.a
d_a_712 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_712 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.b
d_b_714 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_714 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_716 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_716 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_718 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_718 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_720 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_720 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_722 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_722 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_724 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_724 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_726 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_726 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_728 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_728 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_730 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_730 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_732 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_732 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_734 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_734 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_736 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_736 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_738 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_738 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_740 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_740 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_742 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_742 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_744 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_744 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_746 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_746 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_748 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_748 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_750 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_750 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_752 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_752 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_754 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_754 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_756 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_756 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_758 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_758 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_760 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_760 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_762 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_762 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_764 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_764 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496527 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_766 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 -> ()
d_paramsUpdateWellFormed_766 = erased
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.Emax
d_Emax_776 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_776 v0 = coe d_Emax_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.a
d_a_778 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_778 v0 = coe d_a_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.a0
d_a0_780 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_780 v0 = coe d_a0_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.b
d_b_782 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_782 v0 = coe d_b_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_784 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_784 v0 = coe d_ccMaxTermLength_764 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_786 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_786 v0 = coe d_ccMinSize_762 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_788 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_788 v0 = coe d_coinsPerUTxOByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_790 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_790 v0
  = coe d_collateralPercentage_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.costmdls
d_costmdls_792 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_792 v0 = coe d_costmdls_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_794 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_794 v0 = coe d_drepActivity_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_796 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_796 v0 = coe d_drepDeposit_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_798 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_798 v0 = coe d_drepThresholds_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_800 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_800 v0 = coe d_govActionDeposit_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_802 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_802 v0 = coe d_govActionLifetime_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_804 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_804 v0 = coe d_keyDeposit_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_806 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_806 v0 = coe d_maxBlockExUnits_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_808 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_808 v0 = coe d_maxBlockSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_810 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_810 v0
  = coe d_maxCollateralInputs_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_812 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_812 v0 = coe d_maxHeaderSize_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_814 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_814 v0
  = coe d_maxRefScriptSizePerBlock_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_816 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_816 v0
  = coe d_maxRefScriptSizePerTx_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_818 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_818 v0 = coe d_maxTxExUnits_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_820 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_820 v0 = coe d_maxTxSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_822 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_822 v0 = coe d_maxValSize_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_824 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_824 v0
  = coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_826 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_826 v0 = coe d_minUTxOValue_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.monetaryExpansion
d_monetaryExpansion_828 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_828 v0 = coe d_monetaryExpansion_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.nopt
d_nopt_830 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_830 v0 = coe d_nopt_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_832 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_832 v0 = coe d_poolDeposit_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_834 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_834 v0 = coe d_poolThresholds_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.prices
d_prices_836 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_836 v0 = coe d_prices_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.pv
d_pv_838 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_838 v0 = coe d_pv_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_840 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_840 v0
  = coe d_refScriptCostMultiplier_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_842 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_842 v0
  = coe d_refScriptCostStride_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._.treasuryCut
d_treasuryCut_844 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_844 v0 = coe d_treasuryCut_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_848 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_848 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_848 v3
du_paramsUpdateWellFormed'63'_848 ::
  T_PParamsUpdate_624 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_848 v0
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
                  (coe d_maxBlockSize_696 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_698 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_700 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_702 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_coinsPerUTxOByte_724 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_718 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_746 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_764 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_754 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_756 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_758 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_852 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 -> Bool
d_modifiesNetworkGroup_852 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_852 v3
du_modifiesNetworkGroup_852 :: T_PParamsUpdate_624 -> Bool
du_modifiesNetworkGroup_852 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_696 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_698 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_700 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_702 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_704 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_706 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_708 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_710 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_858 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_858 v0 = coe d_Emax_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_860 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_860 v0 = coe d_a_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_862 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_862 v0 = coe d_a0_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_864 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_864 v0 = coe d_b_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_866 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_866 v0 = coe d_ccMaxTermLength_764 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_868 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_868 v0 = coe d_ccMinSize_762 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_870 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_870 v0 = coe d_coinsPerUTxOByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_872 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_872 v0
  = coe d_collateralPercentage_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_874 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_874 v0 = coe d_costmdls_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_876 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_876 v0 = coe d_drepActivity_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_878 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_878 v0 = coe d_drepDeposit_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_880 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_880 v0 = coe d_drepThresholds_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_882 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_882 v0 = coe d_govActionDeposit_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_884 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_884 v0 = coe d_govActionLifetime_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_886 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_886 v0 = coe d_keyDeposit_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_888 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_888 v0 = coe d_maxBlockExUnits_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_890 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_890 v0 = coe d_maxBlockSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_892 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_892 v0
  = coe d_maxCollateralInputs_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_894 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_894 v0 = coe d_maxHeaderSize_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_896 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_896 v0
  = coe d_maxRefScriptSizePerBlock_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_898 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_898 v0
  = coe d_maxRefScriptSizePerTx_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_900 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_900 v0 = coe d_maxTxExUnits_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_902 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_902 v0 = coe d_maxTxSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_904 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_904 v0 = coe d_maxValSize_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_906 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_906 v0
  = coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_908 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_908 v0 = coe d_minUTxOValue_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_910 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_910 v0 = coe d_monetaryExpansion_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_912 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_912 v0 = coe d_nopt_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_914 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_914 v0 = coe d_poolDeposit_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_916 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_916 v0 = coe d_poolThresholds_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_918 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_918 v0 = coe d_prices_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_920 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_920 v0 = coe d_pv_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_922 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_922 v0
  = coe d_refScriptCostMultiplier_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_924 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_924 v0
  = coe d_refScriptCostStride_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_926 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_926 v0 = coe d_treasuryCut_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_928 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 -> Bool
d_modifiesEconomicGroup_928 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_928 v3
du_modifiesEconomicGroup_928 :: T_PParamsUpdate_624 -> Bool
du_modifiesEconomicGroup_928 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_712 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_714 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_716 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_718 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_monetaryExpansion_720 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_treasuryCut_722 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_coinsPerUTxOByte_724 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_maxRefScriptSizePerTx_730 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_maxRefScriptSizePerBlock_732 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_refScriptCostStride_734 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_refScriptCostMultiplier_736 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_prices_726 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_minUTxOValue_738 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_934 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_934 v0 = coe d_Emax_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_936 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_936 v0 = coe d_a_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_938 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_938 v0 = coe d_a0_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_940 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_940 v0 = coe d_b_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_942 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_942 v0 = coe d_ccMaxTermLength_764 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_944 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_944 v0 = coe d_ccMinSize_762 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_946 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_946 v0 = coe d_coinsPerUTxOByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_948 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_948 v0
  = coe d_collateralPercentage_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_950 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_950 v0 = coe d_costmdls_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_952 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_952 v0 = coe d_drepActivity_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_954 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_954 v0 = coe d_drepDeposit_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_956 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_956 v0 = coe d_drepThresholds_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_958 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_958 v0 = coe d_govActionDeposit_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_960 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_960 v0 = coe d_govActionLifetime_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_962 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_962 v0 = coe d_keyDeposit_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_964 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_964 v0 = coe d_maxBlockExUnits_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_966 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_966 v0 = coe d_maxBlockSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_968 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_968 v0
  = coe d_maxCollateralInputs_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_970 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_970 v0 = coe d_maxHeaderSize_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_972 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_972 v0
  = coe d_maxRefScriptSizePerBlock_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_974 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_974 v0
  = coe d_maxRefScriptSizePerTx_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_976 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_976 v0 = coe d_maxTxExUnits_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_978 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_978 v0 = coe d_maxTxSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_980 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_980 v0 = coe d_maxValSize_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_982 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_982 v0
  = coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_984 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_984 v0 = coe d_minUTxOValue_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_986 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_986 v0 = coe d_monetaryExpansion_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_988 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_988 v0 = coe d_nopt_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_990 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_990 v0 = coe d_poolDeposit_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_992 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_992 v0 = coe d_poolThresholds_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_994 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_994 v0 = coe d_prices_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_996 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_996 v0 = coe d_pv_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_998 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_998 v0
  = coe d_refScriptCostMultiplier_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1000 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1000 v0
  = coe d_refScriptCostStride_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1002 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1002 v0 = coe d_treasuryCut_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1004 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 -> Bool
d_modifiesTechnicalGroup_1004 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_1004 v3
du_modifiesTechnicalGroup_1004 :: T_PParamsUpdate_624 -> Bool
du_modifiesTechnicalGroup_1004 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_740 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_742 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_744 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_746 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_748 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1010 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_1010 v0 = coe d_Emax_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_1012 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_1012 v0 = coe d_a_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_1014 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1014 v0 = coe d_a0_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_1016 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_1016 v0 = coe d_b_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1018 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_1018 v0 = coe d_ccMaxTermLength_764 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1020 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_1020 v0 = coe d_ccMinSize_762 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1022 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_1022 v0 = coe d_coinsPerUTxOByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1024 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_1024 v0
  = coe d_collateralPercentage_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1026 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_1026 v0 = coe d_costmdls_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1028 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_1028 v0 = coe d_drepActivity_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1030 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_1030 v0 = coe d_drepDeposit_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1032 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_1032 v0 = coe d_drepThresholds_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1034 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_1034 v0 = coe d_govActionDeposit_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1036 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_1036 v0 = coe d_govActionLifetime_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1038 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_1038 v0 = coe d_keyDeposit_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1040 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_1040 v0 = coe d_maxBlockExUnits_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1042 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_1042 v0 = coe d_maxBlockSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1044 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_1044 v0
  = coe d_maxCollateralInputs_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1046 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_1046 v0 = coe d_maxHeaderSize_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1048 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_1048 v0
  = coe d_maxRefScriptSizePerBlock_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1050 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_1050 v0
  = coe d_maxRefScriptSizePerTx_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1052 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_1052 v0 = coe d_maxTxExUnits_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1054 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_1054 v0 = coe d_maxTxSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1056 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_1056 v0 = coe d_maxValSize_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1058 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1058 v0
  = coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1060 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_1060 v0 = coe d_minUTxOValue_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1062 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1062 v0 = coe d_monetaryExpansion_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1064 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_1064 v0 = coe d_nopt_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1066 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_1066 v0 = coe d_poolDeposit_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1068 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_1068 v0 = coe d_poolThresholds_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_1070 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_1070 v0 = coe d_prices_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_1072 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1072 v0 = coe d_pv_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1074 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1074 v0
  = coe d_refScriptCostMultiplier_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1076 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1076 v0
  = coe d_refScriptCostStride_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1078 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1078 v0 = coe d_treasuryCut_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1080 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 -> Bool
d_modifiesGovernanceGroup_1080 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_1080 v3
du_modifiesGovernanceGroup_1080 :: T_PParamsUpdate_624 -> Bool
du_modifiesGovernanceGroup_1080 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_750 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_752 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_754 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_756 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_758 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_760 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_762 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_764 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1086 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_1086 v0 = coe d_Emax_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_1088 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_1088 v0 = coe d_a_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_1090 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1090 v0 = coe d_a0_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_1092 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_1092 v0 = coe d_b_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1094 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_1094 v0 = coe d_ccMaxTermLength_764 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1096 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_1096 v0 = coe d_ccMinSize_762 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1098 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_1098 v0 = coe d_coinsPerUTxOByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1100 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_1100 v0
  = coe d_collateralPercentage_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1102 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_1102 v0 = coe d_costmdls_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1104 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_1104 v0 = coe d_drepActivity_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1106 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_1106 v0 = coe d_drepDeposit_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1108 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_1108 v0 = coe d_drepThresholds_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1110 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_1110 v0 = coe d_govActionDeposit_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1112 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_1112 v0 = coe d_govActionLifetime_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1114 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_1114 v0 = coe d_keyDeposit_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1116 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_1116 v0 = coe d_maxBlockExUnits_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1118 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_1118 v0 = coe d_maxBlockSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1120 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_1120 v0
  = coe d_maxCollateralInputs_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1122 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_1122 v0 = coe d_maxHeaderSize_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1124 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_1124 v0
  = coe d_maxRefScriptSizePerBlock_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1126 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_1126 v0
  = coe d_maxRefScriptSizePerTx_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1128 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_1128 v0 = coe d_maxTxExUnits_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1130 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_1130 v0 = coe d_maxTxSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1132 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_1132 v0 = coe d_maxValSize_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1134 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1134 v0
  = coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1136 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_1136 v0 = coe d_minUTxOValue_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1138 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1138 v0 = coe d_monetaryExpansion_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1140 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_1140 v0 = coe d_nopt_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1142 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_1142 v0 = coe d_poolDeposit_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1144 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_1144 v0 = coe d_poolThresholds_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_1146 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_1146 v0 = coe d_prices_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_1148 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1148 v0 = coe d_pv_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1150 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1150 v0
  = coe d_refScriptCostMultiplier_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1152 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1152 v0
  = coe d_refScriptCostStride_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1154 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1154 v0 = coe d_treasuryCut_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1156 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 -> Bool
d_modifiesSecurityGroup_1156 ~v0 ~v1 ~v2 v3
  = du_modifiesSecurityGroup_1156 v3
du_modifiesSecurityGroup_1156 :: T_PParamsUpdate_624 -> Bool
du_modifiesSecurityGroup_1156 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_696 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_698 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_700 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_702 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxBlockExUnits_708 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_b_714 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_a_712 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_724 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_govActionDeposit_756 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1162 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_1162 v0 = coe d_Emax_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a
d_a_1164 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_1164 v0 = coe d_a_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.a0
d_a0_1166 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1166 v0 = coe d_a0_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.b
d_b_1168 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_1168 v0 = coe d_b_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1170 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_1170 v0 = coe d_ccMaxTermLength_764 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1172 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_1172 v0 = coe d_ccMinSize_762 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1174 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_1174 v0 = coe d_coinsPerUTxOByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1176 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_1176 v0
  = coe d_collateralPercentage_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1178 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_1178 v0 = coe d_costmdls_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1180 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_1180 v0 = coe d_drepActivity_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1182 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_1182 v0 = coe d_drepDeposit_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1184 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_1184 v0 = coe d_drepThresholds_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1186 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_1186 v0 = coe d_govActionDeposit_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1188 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_1188 v0 = coe d_govActionLifetime_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1190 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_1190 v0 = coe d_keyDeposit_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1192 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_1192 v0 = coe d_maxBlockExUnits_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1194 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_1194 v0 = coe d_maxBlockSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1196 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_1196 v0
  = coe d_maxCollateralInputs_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1198 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_1198 v0 = coe d_maxHeaderSize_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1200 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_1200 v0
  = coe d_maxRefScriptSizePerBlock_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1202 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_1202 v0
  = coe d_maxRefScriptSizePerTx_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1204 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_1204 v0 = coe d_maxTxExUnits_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1206 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_1206 v0 = coe d_maxTxSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1208 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_1208 v0 = coe d_maxValSize_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1210 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1210 v0
  = coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1212 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_1212 v0 = coe d_minUTxOValue_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1214 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1214 v0 = coe d_monetaryExpansion_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1216 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_1216 v0 = coe d_nopt_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1218 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_1218 v0 = coe d_poolDeposit_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1220 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_1220 v0 = coe d_poolThresholds_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.prices
d_prices_1222 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_1222 v0 = coe d_prices_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.pv
d_pv_1224 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1224 v0 = coe d_pv_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1226 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1226 v0
  = coe d_refScriptCostMultiplier_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1228 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1228 v0
  = coe d_refScriptCostStride_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1230 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1230 v0 = coe d_treasuryCut_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1232 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 -> [T_PParamGroup_226]
d_modifiedUpdateGroups_1232 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1232 v3
du_modifiedUpdateGroups_1232 ::
  T_PParamsUpdate_624 -> [T_PParamGroup_226]
du_modifiedUpdateGroups_1232 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1240 (coe v0)
         (coe du_modifiesNetworkGroup_852) (coe C_NetworkGroup_228))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1240 (coe v0)
            (coe du_modifiesEconomicGroup_928) (coe C_EconomicGroup_230))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1240 (coe v0)
               (coe du_modifiesTechnicalGroup_1004) (coe C_TechnicalGroup_232))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  du__'63''9552''8658'__1240 (coe v0)
                  (coe du_modifiesGovernanceGroup_1080) (coe C_GovernanceGroup_234))
               (coe
                  du__'63''9552''8658'__1240 (coe v0)
                  (coe du_modifiesSecurityGroup_1156) (coe C_SecurityGroup_236)))))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1240 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsUpdate_624 ->
  (T_PParamsUpdate_624 -> Bool) ->
  T_PParamGroup_226 -> [T_PParamGroup_226]
d__'63''9552''8658'__1240 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1240 v3 v4 v5
du__'63''9552''8658'__1240 ::
  T_PParamsUpdate_624 ->
  (T_PParamsUpdate_624 -> Bool) ->
  T_PParamGroup_226 -> [T_PParamGroup_226]
du__'63''9552''8658'__1240 v0 v1 v2
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
d__'63''8599'__1248 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1248 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1248 v4 v5
du__'63''8599'__1248 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1248 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1262 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1262 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1262 v4
du_'8801''45'update_1262 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1262 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (\ v1 -> coe du_to_1282 (coe v0)) erased
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.to
d_to_1282 ::
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
d_to_1282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1282 v8
du_to_1282 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1282 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.from
d_from_1294 ::
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
d_from_1294 = erased
-- Ledger.Conway.Specification.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1296 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParams_302 -> T_PParamsUpdate_624 -> T_PParams_302
d_applyPParamsUpdate_1296 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1296 v3 v4
du_applyPParamsUpdate_1296 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> T_PParams_302
du_applyPParamsUpdate_1296 v0 v1
  = coe
      C_PParams'46'constructor_5317
      (coe
         du__'63''8599'__1248 (coe d_maxBlockSize_696 (coe v1))
         (coe d_maxBlockSize_374 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxTxSize_698 (coe v1))
         (coe d_maxTxSize_376 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxHeaderSize_700 (coe v1))
         (coe d_maxHeaderSize_378 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxTxExUnits_706 (coe v1))
         (coe d_maxTxExUnits_380 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxBlockExUnits_708 (coe v1))
         (coe d_maxBlockExUnits_382 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxValSize_702 (coe v1))
         (coe d_maxValSize_384 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxCollateralInputs_704 (coe v1))
         (coe d_maxCollateralInputs_386 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_pv_710 (coe v1))
         (coe d_pv_388 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_a_712 (coe v1)) (coe d_a_390 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_b_714 (coe v1)) (coe d_b_392 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_keyDeposit_716 (coe v1))
         (coe d_keyDeposit_394 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_poolDeposit_718 (coe v1))
         (coe d_poolDeposit_396 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_monetaryExpansion_720 (coe v1))
         (coe d_monetaryExpansion_398 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_treasuryCut_722 (coe v1))
         (coe d_treasuryCut_400 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_coinsPerUTxOByte_724 (coe v1))
         (coe d_coinsPerUTxOByte_402 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_prices_726 (coe v1))
         (coe d_prices_404 (coe v0)))
      (coe
         du__'63''8599'__1248
         (coe d_minFeeRefScriptCoinsPerByte_728 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_406 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxRefScriptSizePerTx_730 (coe v1))
         (coe d_maxRefScriptSizePerTx_408 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_maxRefScriptSizePerBlock_732 (coe v1))
         (coe d_maxRefScriptSizePerBlock_410 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_refScriptCostStride_734 (coe v1))
         (coe d_refScriptCostStride_412 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_refScriptCostMultiplier_736 (coe v1))
         (coe d_refScriptCostMultiplier_414 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_minUTxOValue_738 (coe v1))
         (coe d_minUTxOValue_416 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_Emax_742 (coe v1))
         (coe d_Emax_418 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_nopt_744 (coe v1))
         (coe d_nopt_420 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_a0_740 (coe v1))
         (coe d_a0_422 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_collateralPercentage_746 (coe v1))
         (coe d_collateralPercentage_424 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_costmdls_748 (coe v1))
         (coe d_costmdls_426 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_poolThresholds_752 (coe v1))
         (coe d_poolThresholds_428 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_drepThresholds_750 (coe v1))
         (coe d_drepThresholds_430 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_ccMinSize_762 (coe v1))
         (coe d_ccMinSize_432 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_ccMaxTermLength_764 (coe v1))
         (coe d_ccMaxTermLength_434 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_govActionLifetime_754 (coe v1))
         (coe d_govActionLifetime_436 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_govActionDeposit_756 (coe v1))
         (coe d_govActionDeposit_438 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_drepDeposit_758 (coe v1))
         (coe d_drepDeposit_440 (coe v0)))
      (coe
         du__'63''8599'__1248 (coe d_drepActivity_760 (coe v1))
         (coe d_drepActivity_442 (coe v0)))
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.Emax
d_Emax_1308 :: T_PParams_302 -> T_PParamsUpdate_624 -> AgdaAny
d_Emax_1308 v0 ~v1 = du_Emax_1308 v0
du_Emax_1308 :: T_PParams_302 -> AgdaAny
du_Emax_1308 v0 = coe d_Emax_418 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.a
d_a_1310 :: T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_a_1310 v0 ~v1 = du_a_1310 v0
du_a_1310 :: T_PParams_302 -> Integer
du_a_1310 v0 = coe d_a_390 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.a0
d_a0_1312 ::
  T_PParams_302 ->
  T_PParamsUpdate_624 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1312 v0 ~v1 = du_a0_1312 v0
du_a0_1312 ::
  T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1312 v0 = coe d_a0_422 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.b
d_b_1314 :: T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_b_1314 v0 ~v1 = du_b_1314 v0
du_b_1314 :: T_PParams_302 -> Integer
du_b_1314 v0 = coe d_b_392 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1316 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_ccMaxTermLength_1316 v0 ~v1 = du_ccMaxTermLength_1316 v0
du_ccMaxTermLength_1316 :: T_PParams_302 -> Integer
du_ccMaxTermLength_1316 v0 = coe d_ccMaxTermLength_434 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1318 :: T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_ccMinSize_1318 v0 ~v1 = du_ccMinSize_1318 v0
du_ccMinSize_1318 :: T_PParams_302 -> Integer
du_ccMinSize_1318 v0 = coe d_ccMinSize_432 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1320 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_coinsPerUTxOByte_1320 v0 ~v1 = du_coinsPerUTxOByte_1320 v0
du_coinsPerUTxOByte_1320 :: T_PParams_302 -> Integer
du_coinsPerUTxOByte_1320 v0 = coe d_coinsPerUTxOByte_402 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1322 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_collateralPercentage_1322 v0 ~v1
  = du_collateralPercentage_1322 v0
du_collateralPercentage_1322 :: T_PParams_302 -> Integer
du_collateralPercentage_1322 v0
  = coe d_collateralPercentage_424 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1324 :: T_PParams_302 -> T_PParamsUpdate_624 -> AgdaAny
d_costmdls_1324 v0 ~v1 = du_costmdls_1324 v0
du_costmdls_1324 :: T_PParams_302 -> AgdaAny
du_costmdls_1324 v0 = coe d_costmdls_426 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1326 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> AgdaAny
d_drepActivity_1326 v0 ~v1 = du_drepActivity_1326 v0
du_drepActivity_1326 :: T_PParams_302 -> AgdaAny
du_drepActivity_1326 v0 = coe d_drepActivity_442 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1328 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_drepDeposit_1328 v0 ~v1 = du_drepDeposit_1328 v0
du_drepDeposit_1328 :: T_PParams_302 -> Integer
du_drepDeposit_1328 v0 = coe d_drepDeposit_440 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1330 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> T_DrepThresholds_238
d_drepThresholds_1330 v0 ~v1 = du_drepThresholds_1330 v0
du_drepThresholds_1330 :: T_PParams_302 -> T_DrepThresholds_238
du_drepThresholds_1330 v0 = coe d_drepThresholds_430 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1332 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_govActionDeposit_1332 v0 ~v1 = du_govActionDeposit_1332 v0
du_govActionDeposit_1332 :: T_PParams_302 -> Integer
du_govActionDeposit_1332 v0 = coe d_govActionDeposit_438 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1334 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_govActionLifetime_1334 v0 ~v1 = du_govActionLifetime_1334 v0
du_govActionLifetime_1334 :: T_PParams_302 -> Integer
du_govActionLifetime_1334 v0 = coe d_govActionLifetime_436 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1336 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_keyDeposit_1336 v0 ~v1 = du_keyDeposit_1336 v0
du_keyDeposit_1336 :: T_PParams_302 -> Integer
du_keyDeposit_1336 v0 = coe d_keyDeposit_394 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1338 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> AgdaAny
d_maxBlockExUnits_1338 v0 ~v1 = du_maxBlockExUnits_1338 v0
du_maxBlockExUnits_1338 :: T_PParams_302 -> AgdaAny
du_maxBlockExUnits_1338 v0 = coe d_maxBlockExUnits_382 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1340 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_maxBlockSize_1340 v0 ~v1 = du_maxBlockSize_1340 v0
du_maxBlockSize_1340 :: T_PParams_302 -> Integer
du_maxBlockSize_1340 v0 = coe d_maxBlockSize_374 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1342 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_maxCollateralInputs_1342 v0 ~v1 = du_maxCollateralInputs_1342 v0
du_maxCollateralInputs_1342 :: T_PParams_302 -> Integer
du_maxCollateralInputs_1342 v0
  = coe d_maxCollateralInputs_386 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1344 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_maxHeaderSize_1344 v0 ~v1 = du_maxHeaderSize_1344 v0
du_maxHeaderSize_1344 :: T_PParams_302 -> Integer
du_maxHeaderSize_1344 v0 = coe d_maxHeaderSize_378 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1346 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_maxRefScriptSizePerBlock_1346 v0 ~v1
  = du_maxRefScriptSizePerBlock_1346 v0
du_maxRefScriptSizePerBlock_1346 :: T_PParams_302 -> Integer
du_maxRefScriptSizePerBlock_1346 v0
  = coe d_maxRefScriptSizePerBlock_410 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1348 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_maxRefScriptSizePerTx_1348 v0 ~v1
  = du_maxRefScriptSizePerTx_1348 v0
du_maxRefScriptSizePerTx_1348 :: T_PParams_302 -> Integer
du_maxRefScriptSizePerTx_1348 v0
  = coe d_maxRefScriptSizePerTx_408 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1350 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> AgdaAny
d_maxTxExUnits_1350 v0 ~v1 = du_maxTxExUnits_1350 v0
du_maxTxExUnits_1350 :: T_PParams_302 -> AgdaAny
du_maxTxExUnits_1350 v0 = coe d_maxTxExUnits_380 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1352 :: T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_maxTxSize_1352 v0 ~v1 = du_maxTxSize_1352 v0
du_maxTxSize_1352 :: T_PParams_302 -> Integer
du_maxTxSize_1352 v0 = coe d_maxTxSize_376 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1354 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_maxValSize_1354 v0 ~v1 = du_maxValSize_1354 v0
du_maxValSize_1354 :: T_PParams_302 -> Integer
du_maxValSize_1354 v0 = coe d_maxValSize_384 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1356 ::
  T_PParams_302 ->
  T_PParamsUpdate_624 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1356 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1356 v0
du_minFeeRefScriptCoinsPerByte_1356 ::
  T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1356 v0
  = coe d_minFeeRefScriptCoinsPerByte_406 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1358 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_minUTxOValue_1358 v0 ~v1 = du_minUTxOValue_1358 v0
du_minUTxOValue_1358 :: T_PParams_302 -> Integer
du_minUTxOValue_1358 v0 = coe d_minUTxOValue_416 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.monetaryExpansion
d_monetaryExpansion_1360 ::
  T_PParams_302 ->
  T_PParamsUpdate_624 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1360 v0 ~v1 = du_monetaryExpansion_1360 v0
du_monetaryExpansion_1360 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_monetaryExpansion_1360 v0 = coe d_monetaryExpansion_398 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.nopt
d_nopt_1362 :: T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_nopt_1362 v0 ~v1 = du_nopt_1362 v0
du_nopt_1362 :: T_PParams_302 -> Integer
du_nopt_1362 v0 = coe d_nopt_420 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1364 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> Integer
d_poolDeposit_1364 v0 ~v1 = du_poolDeposit_1364 v0
du_poolDeposit_1364 :: T_PParams_302 -> Integer
du_poolDeposit_1364 v0 = coe d_poolDeposit_396 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1366 ::
  T_PParams_302 -> T_PParamsUpdate_624 -> T_PoolThresholds_280
d_poolThresholds_1366 v0 ~v1 = du_poolThresholds_1366 v0
du_poolThresholds_1366 :: T_PParams_302 -> T_PoolThresholds_280
du_poolThresholds_1366 v0 = coe d_poolThresholds_428 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.prices
d_prices_1368 :: T_PParams_302 -> T_PParamsUpdate_624 -> AgdaAny
d_prices_1368 v0 ~v1 = du_prices_1368 v0
du_prices_1368 :: T_PParams_302 -> AgdaAny
du_prices_1368 v0 = coe d_prices_404 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.pv
d_pv_1370 ::
  T_PParams_302 ->
  T_PParamsUpdate_624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1370 v0 ~v1 = du_pv_1370 v0
du_pv_1370 ::
  T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1370 v0 = coe d_pv_388 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1372 ::
  T_PParams_302 ->
  T_PParamsUpdate_624 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1372 v0 ~v1
  = du_refScriptCostMultiplier_1372 v0
du_refScriptCostMultiplier_1372 ::
  T_PParams_302 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1372 v0
  = coe d_refScriptCostMultiplier_414 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1374 ::
  T_PParams_302 ->
  T_PParamsUpdate_624 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1374 v0 ~v1 = du_refScriptCostStride_1374 v0
du_refScriptCostStride_1374 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_refScriptCostStride_1374 v0
  = coe d_refScriptCostStride_412 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.P.treasuryCut
d_treasuryCut_1376 ::
  T_PParams_302 ->
  T_PParamsUpdate_624 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1376 v0 ~v1 = du_treasuryCut_1376 v0
du_treasuryCut_1376 ::
  T_PParams_302 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_treasuryCut_1376 v0 = coe d_treasuryCut_400 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.Emax
d_Emax_1380 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_Emax_1380 v0 = coe d_Emax_742 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.a
d_a_1382 :: T_PParamsUpdate_624 -> Maybe Integer
d_a_1382 v0 = coe d_a_712 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.a0
d_a0_1384 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1384 v0 = coe d_a0_740 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.b
d_b_1386 :: T_PParamsUpdate_624 -> Maybe Integer
d_b_1386 v0 = coe d_b_714 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1388 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMaxTermLength_1388 v0 = coe d_ccMaxTermLength_764 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1390 :: T_PParamsUpdate_624 -> Maybe Integer
d_ccMinSize_1390 v0 = coe d_ccMinSize_762 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1392 :: T_PParamsUpdate_624 -> Maybe Integer
d_coinsPerUTxOByte_1392 v0 = coe d_coinsPerUTxOByte_724 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1394 :: T_PParamsUpdate_624 -> Maybe Integer
d_collateralPercentage_1394 v0
  = coe d_collateralPercentage_746 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1396 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_costmdls_1396 v0 = coe d_costmdls_748 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1398 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_drepActivity_1398 v0 = coe d_drepActivity_760 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1400 :: T_PParamsUpdate_624 -> Maybe Integer
d_drepDeposit_1400 v0 = coe d_drepDeposit_758 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1402 ::
  T_PParamsUpdate_624 -> Maybe T_DrepThresholds_238
d_drepThresholds_1402 v0 = coe d_drepThresholds_750 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1404 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionDeposit_1404 v0 = coe d_govActionDeposit_756 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1406 :: T_PParamsUpdate_624 -> Maybe Integer
d_govActionLifetime_1406 v0 = coe d_govActionLifetime_754 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1408 :: T_PParamsUpdate_624 -> Maybe Integer
d_keyDeposit_1408 v0 = coe d_keyDeposit_716 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1410 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxBlockExUnits_1410 v0 = coe d_maxBlockExUnits_708 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1412 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxBlockSize_1412 v0 = coe d_maxBlockSize_696 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1414 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxCollateralInputs_1414 v0
  = coe d_maxCollateralInputs_704 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1416 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxHeaderSize_1416 v0 = coe d_maxHeaderSize_700 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1418 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerBlock_1418 v0
  = coe d_maxRefScriptSizePerBlock_732 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1420 ::
  T_PParamsUpdate_624 -> Maybe Integer
d_maxRefScriptSizePerTx_1420 v0
  = coe d_maxRefScriptSizePerTx_730 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1422 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_maxTxExUnits_1422 v0 = coe d_maxTxExUnits_706 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1424 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxTxSize_1424 v0 = coe d_maxTxSize_698 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1426 :: T_PParamsUpdate_624 -> Maybe Integer
d_maxValSize_1426 v0 = coe d_maxValSize_702 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1428 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1428 v0
  = coe d_minFeeRefScriptCoinsPerByte_728 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1430 :: T_PParamsUpdate_624 -> Maybe Integer
d_minUTxOValue_1430 v0 = coe d_minUTxOValue_738 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.monetaryExpansion
d_monetaryExpansion_1432 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1432 v0 = coe d_monetaryExpansion_720 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.nopt
d_nopt_1434 :: T_PParamsUpdate_624 -> Maybe Integer
d_nopt_1434 v0 = coe d_nopt_744 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1436 :: T_PParamsUpdate_624 -> Maybe Integer
d_poolDeposit_1436 v0 = coe d_poolDeposit_718 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1438 ::
  T_PParamsUpdate_624 -> Maybe T_PoolThresholds_280
d_poolThresholds_1438 v0 = coe d_poolThresholds_752 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.prices
d_prices_1440 :: T_PParamsUpdate_624 -> Maybe AgdaAny
d_prices_1440 v0 = coe d_prices_726 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.pv
d_pv_1442 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1442 v0 = coe d_pv_710 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1444 ::
  T_PParamsUpdate_624 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1444 v0
  = coe d_refScriptCostMultiplier_736 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1446 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1446 v0
  = coe d_refScriptCostStride_734 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate._.U.treasuryCut
d_treasuryCut_1448 ::
  T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1448 v0 = coe d_treasuryCut_722 (coe v0)
-- Ledger.Conway.Specification.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1450 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1450 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1450 v1 v2
du_DecEq'45'PParamsUpdate_1450 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1450 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_496527 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParamsUpdate'46'constructor_496527 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                 du_DecEq'45'PoolThresholds_610))
                                                                                                                           (coe
                                                                                                                              v67)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (coe
                                                                                                                              du_DecEq'45'DrepThresholds_608))
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
d_pvCanFollow'63'_1456 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1456 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1456 v3 v4
du_pvCanFollow'63'_1456 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1456 v0 v1
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
                                                                                                   C_canFollowMajor_220)))
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
                                                                                                    C_canFollowMajor_220)))
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
                                                                                                   C_canFollowMinor_222)))
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
                                                                                                    C_canFollowMinor_222)))
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
                                                                                                    C_canFollowMajor_220)))
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
                                                                                                     C_canFollowMajor_220)))
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
                                                                                                    C_canFollowMinor_222)))
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
                                                                                                     C_canFollowMinor_222)))
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
d_PParamsDiff_1504 a0 a1 a2 = ()
data T_PParamsDiff_1504
  = C_PParamsDiff'46'constructor_968245 (T_PParams_302 ->
                                         AgdaAny -> T_PParams_302)
                                        (AgdaAny -> [T_PParamGroup_226])
                                        (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.Specification.PParams.PParamsDiff.UpdateT
d_UpdateT_1518 :: T_PParamsDiff_1504 -> ()
d_UpdateT_1518 = erased
-- Ledger.Conway.Specification.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1520 ::
  T_PParamsDiff_1504 -> T_PParams_302 -> AgdaAny -> T_PParams_302
d_applyUpdate_1520 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_968245 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsDiff.updateGroups
d_updateGroups_1522 ::
  T_PParamsDiff_1504 -> AgdaAny -> [T_PParamGroup_226]
d_updateGroups_1522 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_968245 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1528 ::
  T_PParamsDiff_1504 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1528 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_968245 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1530 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsDiff_1504 -> AgdaAny -> ()
d_ppdWellFormed_1530 = erased
-- Ledger.Conway.Specification.PParams.GovParams
d_GovParams_1536 a0 a1 a2 = ()
data T_GovParams_1536
  = C_GovParams'46'constructor_968949 T_PParamsDiff_1504
                                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.Specification.PParams._.UpdateT
d_UpdateT_1542 :: T_PParamsDiff_1504 -> ()
d_UpdateT_1542 = erased
-- Ledger.Conway.Specification.PParams._.applyUpdate
d_applyUpdate_1544 ::
  T_PParamsDiff_1504 -> T_PParams_302 -> AgdaAny -> T_PParams_302
d_applyUpdate_1544 v0 = coe d_applyUpdate_1520 (coe v0)
-- Ledger.Conway.Specification.PParams._.ppWF?
d_ppWF'63'_1546 ::
  T_PParamsDiff_1504 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1546 v0 = coe d_ppWF'63'_1528 (coe v0)
-- Ledger.Conway.Specification.PParams._.ppdWellFormed
d_ppdWellFormed_1548 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_PParamsDiff_1504 -> AgdaAny -> ()
d_ppdWellFormed_1548 = erased
-- Ledger.Conway.Specification.PParams._.updateGroups
d_updateGroups_1550 ::
  T_PParamsDiff_1504 -> AgdaAny -> [T_PParamGroup_226]
d_updateGroups_1550 v0 = coe d_updateGroups_1522 (coe v0)
-- Ledger.Conway.Specification.PParams.GovParams.ppUpd
d_ppUpd_1554 :: T_GovParams_1536 -> T_PParamsDiff_1504
d_ppUpd_1554 v0
  = case coe v0 of
      C_GovParams'46'constructor_968949 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PParams.GovParams._.UpdateT
d_UpdateT_1558 :: T_GovParams_1536 -> ()
d_UpdateT_1558 = erased
-- Ledger.Conway.Specification.PParams.GovParams._.applyUpdate
d_applyUpdate_1560 ::
  T_GovParams_1536 -> T_PParams_302 -> AgdaAny -> T_PParams_302
d_applyUpdate_1560 v0
  = coe d_applyUpdate_1520 (coe d_ppUpd_1554 (coe v0))
-- Ledger.Conway.Specification.PParams.GovParams._.ppWF?
d_ppWF'63'_1562 ::
  T_GovParams_1536 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1562 v0
  = coe d_ppWF'63'_1528 (coe d_ppUpd_1554 (coe v0))
-- Ledger.Conway.Specification.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1564 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  T_GovParams_1536 -> AgdaAny -> ()
d_ppdWellFormed_1564 = erased
-- Ledger.Conway.Specification.PParams.GovParams._.updateGroups
d_updateGroups_1566 ::
  T_GovParams_1536 -> AgdaAny -> [T_PParamGroup_226]
d_updateGroups_1566 v0
  = coe d_updateGroups_1522 (coe d_ppUpd_1554 (coe v0))
-- Ledger.Conway.Specification.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1568 ::
  T_GovParams_1536 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1568 v0
  = case coe v0 of
      C_GovParams'46'constructor_968949 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
