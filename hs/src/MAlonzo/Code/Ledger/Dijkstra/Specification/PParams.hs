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

module MAlonzo.Code.Ledger.Dijkstra.Specification.PParams where

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
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.ListAction
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.PositiveRational
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.Derive.DecEqRecord

-- _.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_96 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_96 ~v0 ~v1 ~v2 ~v3 v4
  = du_DecEq'45'LanguageCostModels_96 v4
du_DecEq'45'LanguageCostModels_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
      (coe v0)
-- _.LanguageCostModels
d_LanguageCostModels_120 a0 a1 a2 a3 a4 = ()
-- _.LanguageCostModels.languageCostModels
d_languageCostModels_194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Specification.PParams.Acnt
d_Acnt_202 a0 a1 a2 a3 a4 = ()
data T_Acnt_202 = C_'10214'_'44'_'10215''7491'_212 Integer Integer
-- Ledger.Dijkstra.Specification.PParams.Acnt.treasury
d_treasury_208 :: T_Acnt_202 -> Integer
d_treasury_208 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_212 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.Acnt.reserves
d_reserves_210 :: T_Acnt_202 -> Integer
d_reserves_210 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_212 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.HasAccount
d_HasAccount_218 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_HasAccount_218
  = C_constructor_228 (AgdaAny -> T_Acnt_202)
-- Ledger.Dijkstra.Specification.PParams.HasAccount.AccountOf
d_AccountOf_226 :: T_HasAccount_218 -> AgdaAny -> T_Acnt_202
d_AccountOf_226 v0
  = case coe v0 of
      C_constructor_228 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams._.AccountOf
d_AccountOf_232 :: T_HasAccount_218 -> AgdaAny -> T_Acnt_202
d_AccountOf_232 v0 = coe d_AccountOf_226 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.HasTreasury-Acnt
d_HasTreasury'45'Acnt_234 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_234 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_HasTreasury'45'Acnt_234
du_HasTreasury'45'Acnt_234 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_234
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_100
      (coe (\ v0 -> d_treasury_208 (coe v0)))
-- Ledger.Dijkstra.Specification.PParams.HasReserves-Acnt
d_HasReserves'45'Acnt_236 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_236 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_HasReserves'45'Acnt_236
du_HasReserves'45'Acnt_236 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
du_HasReserves'45'Acnt_236
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_80
      (coe (\ v0 -> d_reserves_210 (coe v0)))
-- Ledger.Dijkstra.Specification.PParams.HasCast-Acnt
d_HasCast'45'Acnt_238 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_238 ~v0 ~v1 ~v2 ~v3 ~v4 = du_HasCast'45'Acnt_238
du_HasCast'45'Acnt_238 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_238
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
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
                                 (202 :: Integer) (16149215068455016276 :: Integer)
                                 "Ledger.Dijkstra.Specification.PParams.Acnt"
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
                                    (202 :: Integer) (16149215068455016276 :: Integer)
                                    "Ledger.Dijkstra.Specification.PParams.Acnt"
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
         (coe C_'10214'_'44'_'10215''7491'_212))
-- Ledger.Dijkstra.Specification.PParams.PParamGroup
d_PParamGroup_240 a0 a1 a2 a3 a4 = ()
data T_PParamGroup_240
  = C_NetworkGroup_242 | C_EconomicGroup_244 | C_TechnicalGroup_246 |
    C_GovernanceGroup_248 | C_SecurityGroup_250
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds
d_DrepThresholds_252 a0 a1 a2 a3 a4 = ()
data T_DrepThresholds_252
  = C_constructor_294 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P1
d_P1_274 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_274 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P2a
d_P2a_276 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_276 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P2b
d_P2b_278 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_278 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P3
d_P3_280 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_280 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P4
d_P4_282 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_282 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P5a
d_P5a_284 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_284 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P5b
d_P5b_286 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_286 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P5c
d_P5c_288 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_288 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P5d
d_P5d_290 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_290 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.DrepThresholds.P6
d_P6_292 ::
  T_DrepThresholds_252 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_292 v0
  = case coe v0 of
      C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PoolThresholds
d_PoolThresholds_296 a0 a1 a2 a3 a4 = ()
data T_PoolThresholds_296
  = C_constructor_318 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Dijkstra.Specification.PParams.PoolThresholds.Q1
d_Q1_308 ::
  T_PoolThresholds_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_308 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PoolThresholds.Q2a
d_Q2a_310 ::
  T_PoolThresholds_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_310 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PoolThresholds.Q2b
d_Q2b_312 ::
  T_PoolThresholds_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_312 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PoolThresholds.Q4
d_Q4_314 ::
  T_PoolThresholds_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_314 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PoolThresholds.Q5
d_Q5_316 ::
  T_PoolThresholds_296 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_316 v0
  = case coe v0 of
      C_constructor_318 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams
d_PParams_320 a0 a1 a2 a3 a4 = ()
data T_PParams_320
  = C_constructor_508 Integer Integer Integer AgdaAny AgdaAny Integer
                      Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
                      Integer Integer Integer Integer
                      MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 AgdaAny Integer
                      Integer Integer Integer Integer Integer
                      MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                      MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer AgdaAny
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer
                      MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28) Integer
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
                      T_PoolThresholds_296 T_DrepThresholds_252 Integer Integer Integer
                      Integer Integer AgdaAny
-- Ledger.Dijkstra.Specification.PParams.PParams.maxBlockSize
d_maxBlockSize_414 :: T_PParams_320 -> Integer
d_maxBlockSize_414 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxTxSize
d_maxTxSize_416 :: T_PParams_320 -> Integer
d_maxTxSize_416 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxHeaderSize
d_maxHeaderSize_418 :: T_PParams_320 -> Integer
d_maxHeaderSize_418 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxTxExUnits
d_maxTxExUnits_420 :: T_PParams_320 -> AgdaAny
d_maxTxExUnits_420 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_422 :: T_PParams_320 -> AgdaAny
d_maxBlockExUnits_422 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxValSize
d_maxValSize_424 :: T_PParams_320 -> Integer
d_maxValSize_424 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_426 :: T_PParams_320 -> Integer
d_maxCollateralInputs_426 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.pv
d_pv_428 :: T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_428 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_430 :: T_PParams_320 -> Integer
d_leiosHeaderPeriod_430 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosVotingPeriod
d_leiosVotingPeriod_432 :: T_PParams_320 -> Integer
d_leiosVotingPeriod_432 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_434 :: T_PParams_320 -> Integer
d_leiosDiffusionPeriod_434 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosMaxEBSize
d_leiosMaxEBSize_436 :: T_PParams_320 -> Integer
d_leiosMaxEBSize_436 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_438 :: T_PParams_320 -> Integer
d_leiosMaxEBTxsSize_438 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosCommitteeSize
d_leiosCommitteeSize_440 :: T_PParams_320 -> Integer
d_leiosCommitteeSize_440 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_442 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_442 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_444 :: T_PParams_320 -> AgdaAny
d_leiosMaxEBExUnits_444 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_446 :: T_PParams_320 -> Integer
d_leiosMaxRefScriptSizePerEB_446 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.a
d_a_448 :: T_PParams_320 -> Integer
d_a_448 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.b
d_b_450 :: T_PParams_320 -> Integer
d_b_450 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.keyDeposit
d_keyDeposit_452 :: T_PParams_320 -> Integer
d_keyDeposit_452 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.poolDeposit
d_poolDeposit_454 :: T_PParams_320 -> Integer
d_poolDeposit_454 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.minPoolCost
d_minPoolCost_456 :: T_PParams_320 -> Integer
d_minPoolCost_456 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.monetaryExpansion
d_monetaryExpansion_458 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_458 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.treasuryCut
d_treasuryCut_460 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_460 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_462 :: T_PParams_320 -> Integer
d_coinsPerUTxOByte_462 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.prices
d_prices_464 :: T_PParams_320 -> AgdaAny
d_prices_464 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_466 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_466 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_468 :: T_PParams_320 -> Integer
d_maxRefScriptSizePerTx_468 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_470 :: T_PParams_320 -> Integer
d_maxRefScriptSizePerBlock_470 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.refScriptCostStride
d_refScriptCostStride_472 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_472 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_474 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_474 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.minUTxOValue
d_minUTxOValue_476 :: T_PParams_320 -> Integer
d_minUTxOValue_476 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.Emax
d_Emax_478 :: T_PParams_320 -> AgdaAny
d_Emax_478 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.nopt
d_nopt_480 :: T_PParams_320 -> Integer
d_nopt_480 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.a0
d_a0_482 :: T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_482 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.maxPledgeLeverage
d_maxPledgeLeverage_484 ::
  T_PParams_320 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_maxPledgeLeverage_484 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v36
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.collateralPercentage
d_collateralPercentage_486 :: T_PParams_320 -> Integer
d_collateralPercentage_486 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v37
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.costmdlsAssoc
d_costmdlsAssoc_488 ::
  T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_488 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v38
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.poolThresholds
d_poolThresholds_490 :: T_PParams_320 -> T_PoolThresholds_296
d_poolThresholds_490 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v39
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.drepThresholds
d_drepThresholds_492 :: T_PParams_320 -> T_DrepThresholds_252
d_drepThresholds_492 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v40
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.ccMinSize
d_ccMinSize_494 :: T_PParams_320 -> Integer
d_ccMinSize_494 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v41
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_496 :: T_PParams_320 -> Integer
d_ccMaxTermLength_496 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v42
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.govActionLifetime
d_govActionLifetime_498 :: T_PParams_320 -> Integer
d_govActionLifetime_498 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v43
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.govActionDeposit
d_govActionDeposit_500 :: T_PParams_320 -> Integer
d_govActionDeposit_500 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v44
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.drepDeposit
d_drepDeposit_502 :: T_PParams_320 -> Integer
d_drepDeposit_502 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v45
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.drepActivity
d_drepActivity_504 :: T_PParams_320 -> AgdaAny
d_drepActivity_504 v0
  = case coe v0 of
      C_constructor_508 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v46
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParams.costmdls
d_costmdls_506 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_506 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_costmdls_506 v4 v5
du_costmdls_506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_costmdls_506 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
         (coe d_costmdlsAssoc_488 (coe v1)))
-- Ledger.Dijkstra.Specification.PParams.positivePParams
d_positivePParams_510 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> [Integer]
d_positivePParams_510 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_positivePParams_510 v5
du_positivePParams_510 :: T_PParams_320 -> [Integer]
du_positivePParams_510 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_414 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_416 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_418 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_424 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_coinsPerUTxOByte_462 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_poolDeposit_454 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_collateralPercentage_486 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_ccMaxTermLength_496 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_govActionLifetime_498 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionDeposit_500 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_drepDeposit_502 (coe v0))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Dijkstra.Specification.PParams._._.Emax
d_Emax_520 :: T_PParams_320 -> AgdaAny
d_Emax_520 v0 = coe d_Emax_478 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.a
d_a_522 :: T_PParams_320 -> Integer
d_a_522 v0 = coe d_a_448 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.a0
d_a0_524 :: T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_524 v0 = coe d_a0_482 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.b
d_b_526 :: T_PParams_320 -> Integer
d_b_526 v0 = coe d_b_450 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.ccMaxTermLength
d_ccMaxTermLength_528 :: T_PParams_320 -> Integer
d_ccMaxTermLength_528 v0 = coe d_ccMaxTermLength_496 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.ccMinSize
d_ccMinSize_530 :: T_PParams_320 -> Integer
d_ccMinSize_530 v0 = coe d_ccMinSize_494 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_532 :: T_PParams_320 -> Integer
d_coinsPerUTxOByte_532 v0 = coe d_coinsPerUTxOByte_462 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.collateralPercentage
d_collateralPercentage_534 :: T_PParams_320 -> Integer
d_collateralPercentage_534 v0
  = coe d_collateralPercentage_486 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.costmdls
d_costmdls_536 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_536 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_costmdls_536 v4 v5
du_costmdls_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_costmdls_536 v0 v1 = coe du_costmdls_506 (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.PParams._._.costmdlsAssoc
d_costmdlsAssoc_538 ::
  T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_538 v0 = coe d_costmdlsAssoc_488 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.drepActivity
d_drepActivity_540 :: T_PParams_320 -> AgdaAny
d_drepActivity_540 v0 = coe d_drepActivity_504 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.drepDeposit
d_drepDeposit_542 :: T_PParams_320 -> Integer
d_drepDeposit_542 v0 = coe d_drepDeposit_502 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.drepThresholds
d_drepThresholds_544 :: T_PParams_320 -> T_DrepThresholds_252
d_drepThresholds_544 v0 = coe d_drepThresholds_492 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.govActionDeposit
d_govActionDeposit_546 :: T_PParams_320 -> Integer
d_govActionDeposit_546 v0 = coe d_govActionDeposit_500 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.govActionLifetime
d_govActionLifetime_548 :: T_PParams_320 -> Integer
d_govActionLifetime_548 v0 = coe d_govActionLifetime_498 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.keyDeposit
d_keyDeposit_550 :: T_PParams_320 -> Integer
d_keyDeposit_550 v0 = coe d_keyDeposit_452 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosCommitteeSize
d_leiosCommitteeSize_552 :: T_PParams_320 -> Integer
d_leiosCommitteeSize_552 v0 = coe d_leiosCommitteeSize_440 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_554 :: T_PParams_320 -> Integer
d_leiosDiffusionPeriod_554 v0
  = coe d_leiosDiffusionPeriod_434 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosHeaderPeriod
d_leiosHeaderPeriod_556 :: T_PParams_320 -> Integer
d_leiosHeaderPeriod_556 v0 = coe d_leiosHeaderPeriod_430 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_558 :: T_PParams_320 -> AgdaAny
d_leiosMaxEBExUnits_558 v0 = coe d_leiosMaxEBExUnits_444 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxEBSize
d_leiosMaxEBSize_560 :: T_PParams_320 -> Integer
d_leiosMaxEBSize_560 v0 = coe d_leiosMaxEBSize_436 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_562 :: T_PParams_320 -> Integer
d_leiosMaxEBTxsSize_562 v0 = coe d_leiosMaxEBTxsSize_438 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_564 :: T_PParams_320 -> Integer
d_leiosMaxRefScriptSizePerEB_564 v0
  = coe d_leiosMaxRefScriptSizePerEB_446 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_566 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_566 v0
  = coe d_leiosQuorumStakeThreshold_442 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosVotingPeriod
d_leiosVotingPeriod_568 :: T_PParams_320 -> Integer
d_leiosVotingPeriod_568 v0 = coe d_leiosVotingPeriod_432 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxBlockExUnits
d_maxBlockExUnits_570 :: T_PParams_320 -> AgdaAny
d_maxBlockExUnits_570 v0 = coe d_maxBlockExUnits_422 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxBlockSize
d_maxBlockSize_572 :: T_PParams_320 -> Integer
d_maxBlockSize_572 v0 = coe d_maxBlockSize_414 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxCollateralInputs
d_maxCollateralInputs_574 :: T_PParams_320 -> Integer
d_maxCollateralInputs_574 v0
  = coe d_maxCollateralInputs_426 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxHeaderSize
d_maxHeaderSize_576 :: T_PParams_320 -> Integer
d_maxHeaderSize_576 v0 = coe d_maxHeaderSize_418 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxPledgeLeverage
d_maxPledgeLeverage_578 ::
  T_PParams_320 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_maxPledgeLeverage_578 v0 = coe d_maxPledgeLeverage_484 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_580 :: T_PParams_320 -> Integer
d_maxRefScriptSizePerBlock_580 v0
  = coe d_maxRefScriptSizePerBlock_470 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_582 :: T_PParams_320 -> Integer
d_maxRefScriptSizePerTx_582 v0
  = coe d_maxRefScriptSizePerTx_468 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxTxExUnits
d_maxTxExUnits_584 :: T_PParams_320 -> AgdaAny
d_maxTxExUnits_584 v0 = coe d_maxTxExUnits_420 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxTxSize
d_maxTxSize_586 :: T_PParams_320 -> Integer
d_maxTxSize_586 v0 = coe d_maxTxSize_416 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxValSize
d_maxValSize_588 :: T_PParams_320 -> Integer
d_maxValSize_588 v0 = coe d_maxValSize_424 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_590 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_590 v0
  = coe d_minFeeRefScriptCoinsPerByte_466 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.minPoolCost
d_minPoolCost_592 :: T_PParams_320 -> Integer
d_minPoolCost_592 v0 = coe d_minPoolCost_456 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.minUTxOValue
d_minUTxOValue_594 :: T_PParams_320 -> Integer
d_minUTxOValue_594 v0 = coe d_minUTxOValue_476 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.monetaryExpansion
d_monetaryExpansion_596 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_596 v0 = coe d_monetaryExpansion_458 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.nopt
d_nopt_598 :: T_PParams_320 -> Integer
d_nopt_598 v0 = coe d_nopt_480 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.poolDeposit
d_poolDeposit_600 :: T_PParams_320 -> Integer
d_poolDeposit_600 v0 = coe d_poolDeposit_454 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.poolThresholds
d_poolThresholds_602 :: T_PParams_320 -> T_PoolThresholds_296
d_poolThresholds_602 v0 = coe d_poolThresholds_490 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.prices
d_prices_604 :: T_PParams_320 -> AgdaAny
d_prices_604 v0 = coe d_prices_464 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.pv
d_pv_606 :: T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_606 v0 = coe d_pv_428 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_608 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_608 v0
  = coe d_refScriptCostMultiplier_474 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.refScriptCostStride
d_refScriptCostStride_610 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_610 v0
  = coe d_refScriptCostStride_472 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.treasuryCut
d_treasuryCut_612 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_612 v0 = coe d_treasuryCut_460 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.paramsWellFormed
d_paramsWellFormed_614 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> ()
d_paramsWellFormed_614 = erased
-- Ledger.Dijkstra.Specification.PParams._._.Emax
d_Emax_624 :: T_PParams_320 -> AgdaAny
d_Emax_624 v0 = coe d_Emax_478 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.a
d_a_626 :: T_PParams_320 -> Integer
d_a_626 v0 = coe d_a_448 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.a0
d_a0_628 :: T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_628 v0 = coe d_a0_482 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.b
d_b_630 :: T_PParams_320 -> Integer
d_b_630 v0 = coe d_b_450 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.ccMaxTermLength
d_ccMaxTermLength_632 :: T_PParams_320 -> Integer
d_ccMaxTermLength_632 v0 = coe d_ccMaxTermLength_496 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.ccMinSize
d_ccMinSize_634 :: T_PParams_320 -> Integer
d_ccMinSize_634 v0 = coe d_ccMinSize_494 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_636 :: T_PParams_320 -> Integer
d_coinsPerUTxOByte_636 v0 = coe d_coinsPerUTxOByte_462 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.collateralPercentage
d_collateralPercentage_638 :: T_PParams_320 -> Integer
d_collateralPercentage_638 v0
  = coe d_collateralPercentage_486 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.costmdls
d_costmdls_640 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_640 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_costmdls_640 v4 v5
du_costmdls_640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_costmdls_640 v0 v1 = coe du_costmdls_506 (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.PParams._._.costmdlsAssoc
d_costmdlsAssoc_642 ::
  T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_642 v0 = coe d_costmdlsAssoc_488 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.drepActivity
d_drepActivity_644 :: T_PParams_320 -> AgdaAny
d_drepActivity_644 v0 = coe d_drepActivity_504 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.drepDeposit
d_drepDeposit_646 :: T_PParams_320 -> Integer
d_drepDeposit_646 v0 = coe d_drepDeposit_502 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.drepThresholds
d_drepThresholds_648 :: T_PParams_320 -> T_DrepThresholds_252
d_drepThresholds_648 v0 = coe d_drepThresholds_492 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.govActionDeposit
d_govActionDeposit_650 :: T_PParams_320 -> Integer
d_govActionDeposit_650 v0 = coe d_govActionDeposit_500 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.govActionLifetime
d_govActionLifetime_652 :: T_PParams_320 -> Integer
d_govActionLifetime_652 v0 = coe d_govActionLifetime_498 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.keyDeposit
d_keyDeposit_654 :: T_PParams_320 -> Integer
d_keyDeposit_654 v0 = coe d_keyDeposit_452 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosCommitteeSize
d_leiosCommitteeSize_656 :: T_PParams_320 -> Integer
d_leiosCommitteeSize_656 v0 = coe d_leiosCommitteeSize_440 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_658 :: T_PParams_320 -> Integer
d_leiosDiffusionPeriod_658 v0
  = coe d_leiosDiffusionPeriod_434 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosHeaderPeriod
d_leiosHeaderPeriod_660 :: T_PParams_320 -> Integer
d_leiosHeaderPeriod_660 v0 = coe d_leiosHeaderPeriod_430 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_662 :: T_PParams_320 -> AgdaAny
d_leiosMaxEBExUnits_662 v0 = coe d_leiosMaxEBExUnits_444 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxEBSize
d_leiosMaxEBSize_664 :: T_PParams_320 -> Integer
d_leiosMaxEBSize_664 v0 = coe d_leiosMaxEBSize_436 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_666 :: T_PParams_320 -> Integer
d_leiosMaxEBTxsSize_666 v0 = coe d_leiosMaxEBTxsSize_438 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_668 :: T_PParams_320 -> Integer
d_leiosMaxRefScriptSizePerEB_668 v0
  = coe d_leiosMaxRefScriptSizePerEB_446 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_670 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_670 v0
  = coe d_leiosQuorumStakeThreshold_442 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.leiosVotingPeriod
d_leiosVotingPeriod_672 :: T_PParams_320 -> Integer
d_leiosVotingPeriod_672 v0 = coe d_leiosVotingPeriod_432 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxBlockExUnits
d_maxBlockExUnits_674 :: T_PParams_320 -> AgdaAny
d_maxBlockExUnits_674 v0 = coe d_maxBlockExUnits_422 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxBlockSize
d_maxBlockSize_676 :: T_PParams_320 -> Integer
d_maxBlockSize_676 v0 = coe d_maxBlockSize_414 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxCollateralInputs
d_maxCollateralInputs_678 :: T_PParams_320 -> Integer
d_maxCollateralInputs_678 v0
  = coe d_maxCollateralInputs_426 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxHeaderSize
d_maxHeaderSize_680 :: T_PParams_320 -> Integer
d_maxHeaderSize_680 v0 = coe d_maxHeaderSize_418 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxPledgeLeverage
d_maxPledgeLeverage_682 ::
  T_PParams_320 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_maxPledgeLeverage_682 v0 = coe d_maxPledgeLeverage_484 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_684 :: T_PParams_320 -> Integer
d_maxRefScriptSizePerBlock_684 v0
  = coe d_maxRefScriptSizePerBlock_470 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_686 :: T_PParams_320 -> Integer
d_maxRefScriptSizePerTx_686 v0
  = coe d_maxRefScriptSizePerTx_468 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxTxExUnits
d_maxTxExUnits_688 :: T_PParams_320 -> AgdaAny
d_maxTxExUnits_688 v0 = coe d_maxTxExUnits_420 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxTxSize
d_maxTxSize_690 :: T_PParams_320 -> Integer
d_maxTxSize_690 v0 = coe d_maxTxSize_416 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.maxValSize
d_maxValSize_692 :: T_PParams_320 -> Integer
d_maxValSize_692 v0 = coe d_maxValSize_424 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_694 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_694 v0
  = coe d_minFeeRefScriptCoinsPerByte_466 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.minPoolCost
d_minPoolCost_696 :: T_PParams_320 -> Integer
d_minPoolCost_696 v0 = coe d_minPoolCost_456 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.minUTxOValue
d_minUTxOValue_698 :: T_PParams_320 -> Integer
d_minUTxOValue_698 v0 = coe d_minUTxOValue_476 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.monetaryExpansion
d_monetaryExpansion_700 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_700 v0 = coe d_monetaryExpansion_458 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.nopt
d_nopt_702 :: T_PParams_320 -> Integer
d_nopt_702 v0 = coe d_nopt_480 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.poolDeposit
d_poolDeposit_704 :: T_PParams_320 -> Integer
d_poolDeposit_704 v0 = coe d_poolDeposit_454 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.poolThresholds
d_poolThresholds_706 :: T_PParams_320 -> T_PoolThresholds_296
d_poolThresholds_706 v0 = coe d_poolThresholds_490 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.prices
d_prices_708 :: T_PParams_320 -> AgdaAny
d_prices_708 v0 = coe d_prices_464 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.pv
d_pv_710 :: T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_710 v0 = coe d_pv_428 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_712 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_712 v0
  = coe d_refScriptCostMultiplier_474 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.refScriptCostStride
d_refScriptCostStride_714 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_714 v0
  = coe d_refScriptCostStride_472 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._._.treasuryCut
d_treasuryCut_716 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_716 v0 = coe d_treasuryCut_460 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.paramsWF-elim
d_paramsWF'45'elim_722 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_722 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8
  = du_paramsWF'45'elim_722 v6 v7
du_paramsWF'45'elim_722 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_722 v0 v1
  = case coe v1 of
      0 -> coe
             seq (coe v0) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.Dijkstra.Specification.PParams.HasPParams
d_HasPParams_746 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_HasPParams_746
  = C_constructor_756 (AgdaAny -> T_PParams_320)
-- Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf
d_PParamsOf_754 :: T_HasPParams_746 -> AgdaAny -> T_PParams_320
d_PParamsOf_754 v0
  = case coe v0 of
      C_constructor_756 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams._.PParamsOf
d_PParamsOf_760 :: T_HasPParams_746 -> AgdaAny -> T_PParams_320
d_PParamsOf_760 v0 = coe d_PParamsOf_754 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.HasCCMaxTermLength
d_HasCCMaxTermLength_766 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_HasCCMaxTermLength_766
  = C_constructor_776 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.PParams.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_774 ::
  T_HasCCMaxTermLength_766 -> AgdaAny -> Integer
d_CCMaxTermLengthOf_774 v0
  = case coe v0 of
      C_constructor_776 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_780 ::
  T_HasCCMaxTermLength_766 -> AgdaAny -> Integer
d_CCMaxTermLengthOf_780 v0 = coe d_CCMaxTermLengthOf_774 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_782 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_782 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_DecEq'45'DrepThresholds_782
du_DecEq'45'DrepThresholds_782 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_782
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_constructor_294 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
                            -> let v22
                                     = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                         (coe v1) (coe v12) in
                               coe
                                 (case coe v22 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                      -> if coe v23
                                           then let v25
                                                      = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                          (coe v2) (coe v13) in
                                                coe
                                                  (case coe v25 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v26 v27
                                                       -> if coe v26
                                                            then let v28
                                                                       = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                           (coe v3) (coe v14) in
                                                                 coe
                                                                   (case coe v28 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v29 v30
                                                                        -> if coe v29
                                                                             then let v31
                                                                                        = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v15) in
                                                                                  coe
                                                                                    (case coe v31 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v32 v33
                                                                                         -> if coe
                                                                                                 v32
                                                                                              then let v34
                                                                                                         = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                                             (coe
                                                                                                                v5)
                                                                                                             (coe
                                                                                                                v16) in
                                                                                                   coe
                                                                                                     (case coe
                                                                                                             v34 of
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v35 v36
                                                                                                          -> if coe
                                                                                                                  v35
                                                                                                               then let v37
                                                                                                                          = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                                                              (coe
                                                                                                                                 v6)
                                                                                                                              (coe
                                                                                                                                 v17) in
                                                                                                                    coe
                                                                                                                      (case coe
                                                                                                                              v37 of
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v38 v39
                                                                                                                           -> if coe
                                                                                                                                   v38
                                                                                                                                then let v40
                                                                                                                                           = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                                                                               (coe
                                                                                                                                                  v7)
                                                                                                                                               (coe
                                                                                                                                                  v18) in
                                                                                                                                     coe
                                                                                                                                       (case coe
                                                                                                                                               v40 of
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v41 v42
                                                                                                                                            -> if coe
                                                                                                                                                    v41
                                                                                                                                                 then let v43
                                                                                                                                                            = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                                                                                                (coe
                                                                                                                                                                   v8)
                                                                                                                                                                (coe
                                                                                                                                                                   v19) in
                                                                                                                                                      coe
                                                                                                                                                        (case coe
                                                                                                                                                                v43 of
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v44 v45
                                                                                                                                                             -> if coe
                                                                                                                                                                     v44
                                                                                                                                                                  then let v46
                                                                                                                                                                             = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v9)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v20) in
                                                                                                                                                                       coe
                                                                                                                                                                         (case coe
                                                                                                                                                                                 v46 of
                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v47 v48
                                                                                                                                                                              -> if coe
                                                                                                                                                                                      v47
                                                                                                                                                                                   then let v49
                                                                                                                                                                                              = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v10)
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v21) in
                                                                                                                                                                                        coe
                                                                                                                                                                                          (case coe
                                                                                                                                                                                                  v49 of
                                                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v50 v51
                                                                                                                                                                                               -> if coe
                                                                                                                                                                                                       v50
                                                                                                                                                                                                    then coe
                                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              v50)
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                              erased)
                                                                                                                                                                                                    else coe
                                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              v50)
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                   else coe
                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v47)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                  else coe
                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v44)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                 else coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                        (coe
                                                                                                                                                           v41)
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                else coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                       (coe
                                                                                                                                          v38)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                               else coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         v35)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                              else coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v32)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v29)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v26)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v23)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.PParams.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_784 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_784 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_DecEq'45'PoolThresholds_784
du_DecEq'45'PoolThresholds_784 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_784
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_318 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_constructor_318 v7 v8 v9 v10 v11
                            -> let v12
                                     = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                         (coe v1) (coe v7) in
                               coe
                                 (case coe v12 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                      -> if coe v13
                                           then let v15
                                                      = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                          (coe v2) (coe v8) in
                                                coe
                                                  (case coe v15 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                       -> if coe v16
                                                            then let v18
                                                                       = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                           (coe v3) (coe v9) in
                                                                 coe
                                                                   (case coe v18 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                        -> if coe v19
                                                                             then let v21
                                                                                        = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v10) in
                                                                                  coe
                                                                                    (case coe v21 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                                         -> if coe
                                                                                                 v22
                                                                                              then let v24
                                                                                                         = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
                                                                                                             (coe
                                                                                                                v5)
                                                                                                             (coe
                                                                                                                v11) in
                                                                                                   coe
                                                                                                     (case coe
                                                                                                             v24 of
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v25 v26
                                                                                                          -> if coe
                                                                                                                  v25
                                                                                                               then coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         v25)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                         erased)
                                                                                                               else coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         v25)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                              else coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v22)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v19)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v16)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v13)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.PParams.DecEq-PParams
d_DecEq'45'PParams_786 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_786 ~v0 v1 ~v2 ~v3 v4
  = du_DecEq'45'PParams_786 v1 v4
du_DecEq'45'PParams_786 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_786 v0 v1
  = coe
      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.Derive.DecEqRecord.du_record'45'equality_24
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (coe
                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                 (coe
                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                    erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                          (coe
                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                             () erased
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                   erased () erased
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                   (coe
                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                      () erased () erased
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                         () erased () erased
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                            () erased () erased
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  () erased () erased
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                     () erased () erased
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                     (coe
                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                        () erased () erased
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                        (coe
                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                           () erased () erased
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                           (coe
                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                              () erased () erased
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                              (coe
                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                 () erased () erased
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                    () erased ()
                                                                                    erased
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                       () erased ()
                                                                                       erased
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                       (coe
                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                          () erased
                                                                                          () erased
                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                             ()
                                                                                             erased
                                                                                             ()
                                                                                             erased
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                ()
                                                                                                erased
                                                                                                ()
                                                                                                erased
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                      ()
                                                                                                      erased
                                                                                                      ()
                                                                                                      erased
                                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                     ()
                                                                                                                     erased
                                                                                                                     ()
                                                                                                                     erased
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
                                                                                                                           (coe
                                                                                                                              v1))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           (coe
                                                                                                                              du_DecEq'45'PoolThresholds_784)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                              ()
                                                                                                                              erased
                                                                                                                              ()
                                                                                                                              erased
                                                                                                                              (coe
                                                                                                                                 du_DecEq'45'DrepThresholds_782)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                 ()
                                                                                                                                 erased
                                                                                                                                 ()
                                                                                                                                 erased
                                                                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                          ()
                                                                                                                                          erased
                                                                                                                                          ()
                                                                                                                                          erased
                                                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                             ()
                                                                                                                                             erased
                                                                                                                                             ()
                                                                                                                                             erased
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                                             (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                                                                (coe
                                                                                                                                                   v0)))))))))))))))))))))))))))))))))))))))))))))))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_maxBlockSize_414 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe d_maxTxSize_416 (coe v2))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe d_maxHeaderSize_418 (coe v2))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe d_maxTxExUnits_420 (coe v2))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe d_maxBlockExUnits_422 (coe v2))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe d_maxValSize_424 (coe v2))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe d_maxCollateralInputs_426 (coe v2))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe d_pv_428 (coe v2))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe d_leiosHeaderPeriod_430 (coe v2))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe d_leiosVotingPeriod_432 (coe v2))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe d_leiosDiffusionPeriod_434 (coe v2))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe d_leiosMaxEBSize_436 (coe v2))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe d_leiosMaxEBTxsSize_438 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe d_leiosCommitteeSize_440 (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           d_leiosQuorumStakeThreshold_442 (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe d_leiosMaxEBExUnits_444 (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 d_leiosMaxRefScriptSizePerEB_446
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe d_a_448 (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe d_b_450 (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          d_keyDeposit_452 (coe v2))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             d_poolDeposit_454
                                                                             (coe v2))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                d_minPoolCost_456
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   d_monetaryExpansion_458
                                                                                   (coe v2))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      d_treasuryCut_460
                                                                                      (coe v2))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         d_coinsPerUTxOByte_462
                                                                                         (coe v2))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            d_prices_464
                                                                                            (coe
                                                                                               v2))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               d_minFeeRefScriptCoinsPerByte_466
                                                                                               (coe
                                                                                                  v2))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (coe
                                                                                                  d_maxRefScriptSizePerTx_468
                                                                                                  (coe
                                                                                                     v2))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     d_maxRefScriptSizePerBlock_470
                                                                                                     (coe
                                                                                                        v2))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        d_refScriptCostStride_472
                                                                                                        (coe
                                                                                                           v2))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           d_refScriptCostMultiplier_474
                                                                                                           (coe
                                                                                                              v2))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              d_minUTxOValue_476
                                                                                                              (coe
                                                                                                                 v2))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 d_Emax_478
                                                                                                                 (coe
                                                                                                                    v2))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    d_nopt_480
                                                                                                                    (coe
                                                                                                                       v2))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       d_a0_482
                                                                                                                       (coe
                                                                                                                          v2))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          d_maxPledgeLeverage_484
                                                                                                                          (coe
                                                                                                                             v2))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             d_collateralPercentage_486
                                                                                                                             (coe
                                                                                                                                v2))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                d_costmdlsAssoc_488
                                                                                                                                (coe
                                                                                                                                   v2))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   d_poolThresholds_490
                                                                                                                                   (coe
                                                                                                                                      v2))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      d_drepThresholds_492
                                                                                                                                      (coe
                                                                                                                                         v2))
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         d_ccMinSize_494
                                                                                                                                         (coe
                                                                                                                                            v2))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                         (coe
                                                                                                                                            d_ccMaxTermLength_496
                                                                                                                                            (coe
                                                                                                                                               v2))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                            (coe
                                                                                                                                               d_govActionLifetime_498
                                                                                                                                               (coe
                                                                                                                                                  v2))
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                               (coe
                                                                                                                                                  d_govActionDeposit_500
                                                                                                                                                  (coe
                                                                                                                                                     v2))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                  (coe
                                                                                                                                                     d_drepDeposit_502
                                                                                                                                                     (coe
                                                                                                                                                        v2))
                                                                                                                                                  (coe
                                                                                                                                                     d_drepActivity_504
                                                                                                                                                     (coe
                                                                                                                                                        v2))))))))))))))))))))))))))))))))))))))))))))))))
-- Ledger.Dijkstra.Specification.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_788 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_788 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_DecEq'45'PParamGroup_788
du_DecEq'45'PParamGroup_788 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_788
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_242
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_242
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_EconomicGroup_244
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_246
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_248
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_250
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_244
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_242
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_244
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TechnicalGroup_246
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_248
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_250
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_246
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_242
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_244
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_246
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_GovernanceGroup_248
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_250
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_248
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_242
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_244
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_246
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_248
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SecurityGroup_250
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_250
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_242
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_244
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_246
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_248
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_250
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.PParams.Show-DrepThresholds
d_Show'45'DrepThresholds_790 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_790 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_Show'45'DrepThresholds_790
du_Show'45'DrepThresholds_790 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_790
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_294 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
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
-- Ledger.Dijkstra.Specification.PParams.Show-PoolThresholds
d_Show'45'PoolThresholds_792 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_792 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_Show'45'PoolThresholds_792
du_Show'45'PoolThresholds_792 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_792
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_318 v1 v2 v3 v4 v5
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
-- Ledger.Dijkstra.Specification.PParams.Show-PParams
d_Show'45'PParams_794 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_794 ~v0 v1 ~v2 ~v3 v4
  = du_Show'45'PParams_794 v1 v4
du_Show'45'PParams_794 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_794 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_constructor_508 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48
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
                                                                                                                              MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
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
                                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                                                                               (coe
                                                                                                                                                                  v1)))
                                                                                                                                                         v6)))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
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
                                                                                                                           MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                           v16)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                                           (coe
                                                                                                                              v17)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                                           (coe
                                                                                                                              v1)))
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
                                                                                                      MAlonzo.Code.Data.Nat.Show.d_show_56
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                   (coe
                                                                                                      v25)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                (coe
                                                                                                   v26)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                          v27)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                             (coe
                                                                                                v1)))
                                                                                       v28)))
                                                                              (coe
                                                                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                                    (coe v29))))
                                                                           (coe
                                                                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                 v30)))
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                              v31)))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                           (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                              (coe v32)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe v33))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                     v34)))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Class.Show.Core.d_show_16
                                                                  (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
                                                                     (coe v0))
                                                                  v35)))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Show.d_show_56
                                                               v36)))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe v37))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Class.Show.Core.d_show_16
                                                         (coe
                                                            MAlonzo.Code.Class.Show.Instances.du_Show'45'Maybe_12
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Numeric.PositiveRational.d_Show'45'PosRational_12))
                                                         v38)))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v39)))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                   (coe ("mkLanguageCostModels" :: Data.Text.Text))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d_braces_48
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d_intersperse_30
                                                            (", " :: Data.Text.Text)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_map_22
                                                               (coe
                                                                  MAlonzo.Code.Class.Show.Core.d_show_16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du___702
                                                                     () erased () erased
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                           (coe v1)))
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                           (coe v1)))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                                                                  (coe v40)))))))))
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
                                                                  (coe d_Q1_308 (coe v41)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_310 (coe v41)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_312 (coe v41)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_314 (coe v41)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_316 (coe v41)))))))
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
                                                                                 d_P1_274
                                                                                 (coe v42)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_276
                                                                              (coe v42)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_278 (coe v42)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_280 (coe v42)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_282 (coe v42)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_284 (coe v42)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_286 (coe v42)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_288 (coe v42)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_290 (coe v42)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_292 (coe v42)))))))
                                    (coe
                                       MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                       (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v43)))
                                 (coe
                                    MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                    (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v44)))
                              (coe
                                 MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                 (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v45)))
                           (coe
                              MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                              (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v46)))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v47)))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
                              (coe v0))
                           v48))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_798 a0 a1 a2 a3 a4 = ()
data T_PParamsUpdate_798
  = C_constructor_984 (Maybe Integer) (Maybe Integer) (Maybe Integer)
                      (Maybe Integer) (Maybe Integer) (Maybe AgdaAny) (Maybe AgdaAny)
                      (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe Integer)
                      (Maybe Integer) (Maybe Integer) (Maybe Integer) (Maybe Integer)
                      (Maybe Integer)
                      (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                      (Maybe AgdaAny) (Maybe Integer) (Maybe Integer) (Maybe Integer)
                      (Maybe Integer) (Maybe Integer) (Maybe Integer)
                      (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                      (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                      (Maybe Integer) (Maybe AgdaAny)
                      (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6) (Maybe Integer)
                      (Maybe Integer)
                      (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
                      (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6) (Maybe Integer)
                      (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                      (Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28))
                      (Maybe AgdaAny) (Maybe Integer) (Maybe Integer)
                      (Maybe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690)
                      (Maybe T_DrepThresholds_252) (Maybe T_PoolThresholds_296)
                      (Maybe Integer) (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                      (Maybe Integer) (Maybe Integer)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_892 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_892 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_894 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_894 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_896 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_896 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_898 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_898 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_900 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_900 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_902 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_902 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_904 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_904 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_906 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_906 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_908 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_908 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_910 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_910 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_912 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_912 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_914 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_914 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_916 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_916 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_918 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_918 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_920 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_920 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_922 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_922 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_924 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_924 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.a
d_a_926 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_926 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.b
d_b_928 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_928 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_930 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_930 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_932 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_932 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_934 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_934 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_936 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_936 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_938 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_938 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_940 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_940 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_942 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_942 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_944 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_944 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_946 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_946 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_948 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_948 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_950 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_950 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_952 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_952 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_954 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_954 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_956 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_956 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.maxPledgeLeverage
d_maxPledgeLeverage_958 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_958 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_960 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_960 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_962 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_962 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v36
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_964 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_964 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v37
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_966 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_966 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v38
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_968 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_968 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v39
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_970 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_970 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v40
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_972 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_972 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v41
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_974 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_974 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v42
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_976 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_976 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v43
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_978 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_978 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v44
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_980 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_980 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v45
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_982 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_982 v0
  = case coe v0 of
      C_constructor_984 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
        -> coe v46
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_986 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 -> ()
d_paramsUpdateWellFormed_986 = erased
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.Emax
d_Emax_996 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_996 v0 = coe d_Emax_960 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.a
d_a_998 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_998 v0 = coe d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.a0
d_a0_1000 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1000 v0 = coe d_a0_956 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.b
d_b_1002 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_1002 v0 = coe d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_1004 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_1004 v0 = coe d_ccMaxTermLength_982 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_1006 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_1006 v0 = coe d_ccMinSize_980 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_1008 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_1008 v0 = coe d_coinsPerUTxOByte_940 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_1010 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_1010 v0
  = coe d_collateralPercentage_964 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.costmdls
d_costmdls_1012 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_1012 v0 = coe d_costmdls_966 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_1014 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_1014 v0 = coe d_drepActivity_978 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_1016 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_1016 v0 = coe d_drepDeposit_976 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_1018 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_1018 v0 = coe d_drepThresholds_968 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_1020 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_1020 v0 = coe d_govActionDeposit_974 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_1022 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_1022 v0 = coe d_govActionLifetime_972 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_1024 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_1024 v0 = coe d_keyDeposit_930 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosCommitteeSize
d_leiosCommitteeSize_1026 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_1026 v0
  = coe d_leiosCommitteeSize_918 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1028 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_1028 v0
  = coe d_leiosDiffusionPeriod_912 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosHeaderPeriod
d_leiosHeaderPeriod_1030 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_1030 v0 = coe d_leiosHeaderPeriod_908 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1032 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_1032 v0 = coe d_leiosMaxEBExUnits_922 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosMaxEBSize
d_leiosMaxEBSize_1034 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_1034 v0 = coe d_leiosMaxEBSize_914 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1036 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_1036 v0 = coe d_leiosMaxEBTxsSize_916 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1038 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_1038 v0
  = coe d_leiosMaxRefScriptSizePerEB_924 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1040 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1040 v0
  = coe d_leiosQuorumStakeThreshold_920 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.leiosVotingPeriod
d_leiosVotingPeriod_1042 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_1042 v0 = coe d_leiosVotingPeriod_910 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_1044 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_1044 v0 = coe d_maxBlockExUnits_904 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_1046 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_1046 v0 = coe d_maxBlockSize_892 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_1048 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_1048 v0
  = coe d_maxCollateralInputs_900 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_1050 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_1050 v0 = coe d_maxHeaderSize_896 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxPledgeLeverage
d_maxPledgeLeverage_1052 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_1052 v0 = coe d_maxPledgeLeverage_958 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1054 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_1054 v0
  = coe d_maxRefScriptSizePerBlock_948 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1056 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_1056 v0
  = coe d_maxRefScriptSizePerTx_946 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_1058 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_1058 v0 = coe d_maxTxExUnits_902 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_1060 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_1060 v0 = coe d_maxTxSize_894 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_1062 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_1062 v0 = coe d_maxValSize_898 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1064 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1064 v0
  = coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.minPoolCost
d_minPoolCost_1066 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_1066 v0 = coe d_minPoolCost_934 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_1068 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_1068 v0 = coe d_minUTxOValue_954 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.monetaryExpansion
d_monetaryExpansion_1070 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1070 v0 = coe d_monetaryExpansion_936 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.nopt
d_nopt_1072 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_1072 v0 = coe d_nopt_962 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_1074 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_1074 v0 = coe d_poolDeposit_932 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_1076 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_1076 v0 = coe d_poolThresholds_970 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.prices
d_prices_1078 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_1078 v0 = coe d_prices_942 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.pv
d_pv_1080 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1080 v0 = coe d_pv_906 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_1082 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1082 v0
  = coe d_refScriptCostMultiplier_952 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_1084 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1084 v0
  = coe d_refScriptCostStride_950 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._.treasuryCut
d_treasuryCut_1086 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1086 v0 = coe d_treasuryCut_938 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1092 ::
  T_PParamsUpdate_798 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1092 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe
            MAlonzo.Code.Class.Decidable.Core.d_dec_16
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_456
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxBlockSize_892 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxTxSize_894 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxHeaderSize_896 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_maxValSize_898 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_coinsPerUTxOByte_940 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_poolDeposit_932 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_collateralPercentage_964 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_ccMaxTermLength_982 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionLifetime_972 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_govActionDeposit_974 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe d_drepDeposit_976 (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''60'_44
                    MAlonzo.Code.Data.Rational.Base.d_'189'_182
                    (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                       (coe v1))))
            (coe d_leiosQuorumStakeThreshold_920 (coe v0))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1096 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 -> Bool
d_modifiesNetworkGroup_1096 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_modifiesNetworkGroup_1096 v5
du_modifiesNetworkGroup_1096 :: T_PParamsUpdate_798 -> Bool
du_modifiesNetworkGroup_1096 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.d_or_12
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_892 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_894 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_896 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_898 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_900 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_902 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_904 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_906 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_leiosHeaderPeriod_908 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_leiosVotingPeriod_910 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_leiosDiffusionPeriod_912 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_leiosMaxEBSize_914 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_leiosMaxEBTxsSize_916 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_leiosCommitteeSize_918 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                      (coe
                                                         d_leiosQuorumStakeThreshold_920 (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                         (coe d_leiosMaxEBExUnits_922 (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                            (coe
                                                               d_leiosMaxRefScriptSizePerEB_924
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1102 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_1102 v0 = coe d_Emax_960 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a
d_a_1104 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_1104 v0 = coe d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a0
d_a0_1106 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1106 v0 = coe d_a0_956 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.b
d_b_1108 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_1108 v0 = coe d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1110 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_1110 v0 = coe d_ccMaxTermLength_982 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1112 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_1112 v0 = coe d_ccMinSize_980 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1114 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_1114 v0 = coe d_coinsPerUTxOByte_940 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1116 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_1116 v0
  = coe d_collateralPercentage_964 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1118 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_1118 v0 = coe d_costmdls_966 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1120 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_1120 v0 = coe d_drepActivity_978 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1122 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_1122 v0 = coe d_drepDeposit_976 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1124 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_1124 v0 = coe d_drepThresholds_968 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1126 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_1126 v0 = coe d_govActionDeposit_974 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1128 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_1128 v0 = coe d_govActionLifetime_972 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1130 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_1130 v0 = coe d_keyDeposit_930 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosCommitteeSize
d_leiosCommitteeSize_1132 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_1132 v0
  = coe d_leiosCommitteeSize_918 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1134 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_1134 v0
  = coe d_leiosDiffusionPeriod_912 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosHeaderPeriod
d_leiosHeaderPeriod_1136 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_1136 v0 = coe d_leiosHeaderPeriod_908 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1138 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_1138 v0 = coe d_leiosMaxEBExUnits_922 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBSize
d_leiosMaxEBSize_1140 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_1140 v0 = coe d_leiosMaxEBSize_914 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1142 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_1142 v0 = coe d_leiosMaxEBTxsSize_916 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1144 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_1144 v0
  = coe d_leiosMaxRefScriptSizePerEB_924 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1146 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1146 v0
  = coe d_leiosQuorumStakeThreshold_920 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosVotingPeriod
d_leiosVotingPeriod_1148 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_1148 v0 = coe d_leiosVotingPeriod_910 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1150 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_1150 v0 = coe d_maxBlockExUnits_904 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1152 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_1152 v0 = coe d_maxBlockSize_892 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1154 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_1154 v0
  = coe d_maxCollateralInputs_900 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1156 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_1156 v0 = coe d_maxHeaderSize_896 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxPledgeLeverage
d_maxPledgeLeverage_1158 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_1158 v0 = coe d_maxPledgeLeverage_958 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1160 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_1160 v0
  = coe d_maxRefScriptSizePerBlock_948 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1162 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_1162 v0
  = coe d_maxRefScriptSizePerTx_946 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1164 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_1164 v0 = coe d_maxTxExUnits_902 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1166 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_1166 v0 = coe d_maxTxSize_894 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1168 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_1168 v0 = coe d_maxValSize_898 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1170 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1170 v0
  = coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minPoolCost
d_minPoolCost_1172 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_1172 v0 = coe d_minPoolCost_934 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1174 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_1174 v0 = coe d_minUTxOValue_954 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1176 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1176 v0 = coe d_monetaryExpansion_936 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1178 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_1178 v0 = coe d_nopt_962 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1180 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_1180 v0 = coe d_poolDeposit_932 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1182 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_1182 v0 = coe d_poolThresholds_970 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.prices
d_prices_1184 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_1184 v0 = coe d_prices_942 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.pv
d_pv_1186 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1186 v0 = coe d_pv_906 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1188 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1188 v0
  = coe d_refScriptCostMultiplier_952 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1190 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1190 v0
  = coe d_refScriptCostStride_950 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1192 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1192 v0 = coe d_treasuryCut_938 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1194 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 -> Bool
d_modifiesEconomicGroup_1194 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_modifiesEconomicGroup_1194 v5
du_modifiesEconomicGroup_1194 :: T_PParamsUpdate_798 -> Bool
du_modifiesEconomicGroup_1194 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.d_or_12
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_926 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_928 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_930 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_932 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_minPoolCost_934 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_monetaryExpansion_936 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_treasuryCut_938 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_940 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_maxRefScriptSizePerTx_946 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_maxRefScriptSizePerBlock_948 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_refScriptCostStride_950 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_refScriptCostMultiplier_952 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_prices_942 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                      (coe d_minUTxOValue_954 (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1200 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_1200 v0 = coe d_Emax_960 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a
d_a_1202 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_1202 v0 = coe d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a0
d_a0_1204 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1204 v0 = coe d_a0_956 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.b
d_b_1206 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_1206 v0 = coe d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1208 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_1208 v0 = coe d_ccMaxTermLength_982 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1210 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_1210 v0 = coe d_ccMinSize_980 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1212 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_1212 v0 = coe d_coinsPerUTxOByte_940 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1214 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_1214 v0
  = coe d_collateralPercentage_964 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1216 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_1216 v0 = coe d_costmdls_966 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1218 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_1218 v0 = coe d_drepActivity_978 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1220 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_1220 v0 = coe d_drepDeposit_976 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1222 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_1222 v0 = coe d_drepThresholds_968 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1224 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_1224 v0 = coe d_govActionDeposit_974 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1226 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_1226 v0 = coe d_govActionLifetime_972 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1228 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_1228 v0 = coe d_keyDeposit_930 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosCommitteeSize
d_leiosCommitteeSize_1230 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_1230 v0
  = coe d_leiosCommitteeSize_918 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1232 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_1232 v0
  = coe d_leiosDiffusionPeriod_912 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosHeaderPeriod
d_leiosHeaderPeriod_1234 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_1234 v0 = coe d_leiosHeaderPeriod_908 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1236 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_1236 v0 = coe d_leiosMaxEBExUnits_922 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBSize
d_leiosMaxEBSize_1238 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_1238 v0 = coe d_leiosMaxEBSize_914 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1240 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_1240 v0 = coe d_leiosMaxEBTxsSize_916 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1242 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_1242 v0
  = coe d_leiosMaxRefScriptSizePerEB_924 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1244 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1244 v0
  = coe d_leiosQuorumStakeThreshold_920 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosVotingPeriod
d_leiosVotingPeriod_1246 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_1246 v0 = coe d_leiosVotingPeriod_910 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1248 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_1248 v0 = coe d_maxBlockExUnits_904 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1250 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_1250 v0 = coe d_maxBlockSize_892 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1252 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_1252 v0
  = coe d_maxCollateralInputs_900 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1254 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_1254 v0 = coe d_maxHeaderSize_896 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxPledgeLeverage
d_maxPledgeLeverage_1256 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_1256 v0 = coe d_maxPledgeLeverage_958 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1258 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_1258 v0
  = coe d_maxRefScriptSizePerBlock_948 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1260 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_1260 v0
  = coe d_maxRefScriptSizePerTx_946 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1262 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_1262 v0 = coe d_maxTxExUnits_902 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1264 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_1264 v0 = coe d_maxTxSize_894 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1266 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_1266 v0 = coe d_maxValSize_898 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1268 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1268 v0
  = coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minPoolCost
d_minPoolCost_1270 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_1270 v0 = coe d_minPoolCost_934 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1272 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_1272 v0 = coe d_minUTxOValue_954 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1274 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1274 v0 = coe d_monetaryExpansion_936 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1276 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_1276 v0 = coe d_nopt_962 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1278 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_1278 v0 = coe d_poolDeposit_932 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1280 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_1280 v0 = coe d_poolThresholds_970 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.prices
d_prices_1282 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_1282 v0 = coe d_prices_942 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.pv
d_pv_1284 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1284 v0 = coe d_pv_906 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1286 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1286 v0
  = coe d_refScriptCostMultiplier_952 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1288 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1288 v0
  = coe d_refScriptCostStride_950 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1290 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1290 v0 = coe d_treasuryCut_938 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 -> Bool
d_modifiesTechnicalGroup_1292 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_modifiesTechnicalGroup_1292 v5
du_modifiesTechnicalGroup_1292 :: T_PParamsUpdate_798 -> Bool
du_modifiesTechnicalGroup_1292 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.d_or_12
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_956 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxPledgeLeverage_958 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_Emax_960 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_nopt_962 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_collateralPercentage_964 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_costmdls_966 (coe v0)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1298 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_1298 v0 = coe d_Emax_960 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a
d_a_1300 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_1300 v0 = coe d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a0
d_a0_1302 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1302 v0 = coe d_a0_956 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.b
d_b_1304 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_1304 v0 = coe d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1306 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_1306 v0 = coe d_ccMaxTermLength_982 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1308 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_1308 v0 = coe d_ccMinSize_980 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1310 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_1310 v0 = coe d_coinsPerUTxOByte_940 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1312 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_1312 v0
  = coe d_collateralPercentage_964 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1314 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_1314 v0 = coe d_costmdls_966 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1316 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_1316 v0 = coe d_drepActivity_978 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1318 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_1318 v0 = coe d_drepDeposit_976 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1320 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_1320 v0 = coe d_drepThresholds_968 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1322 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_1322 v0 = coe d_govActionDeposit_974 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1324 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_1324 v0 = coe d_govActionLifetime_972 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1326 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_1326 v0 = coe d_keyDeposit_930 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosCommitteeSize
d_leiosCommitteeSize_1328 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_1328 v0
  = coe d_leiosCommitteeSize_918 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1330 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_1330 v0
  = coe d_leiosDiffusionPeriod_912 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosHeaderPeriod
d_leiosHeaderPeriod_1332 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_1332 v0 = coe d_leiosHeaderPeriod_908 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1334 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_1334 v0 = coe d_leiosMaxEBExUnits_922 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBSize
d_leiosMaxEBSize_1336 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_1336 v0 = coe d_leiosMaxEBSize_914 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1338 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_1338 v0 = coe d_leiosMaxEBTxsSize_916 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1340 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_1340 v0
  = coe d_leiosMaxRefScriptSizePerEB_924 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1342 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1342 v0
  = coe d_leiosQuorumStakeThreshold_920 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosVotingPeriod
d_leiosVotingPeriod_1344 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_1344 v0 = coe d_leiosVotingPeriod_910 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1346 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_1346 v0 = coe d_maxBlockExUnits_904 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1348 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_1348 v0 = coe d_maxBlockSize_892 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1350 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_1350 v0
  = coe d_maxCollateralInputs_900 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1352 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_1352 v0 = coe d_maxHeaderSize_896 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxPledgeLeverage
d_maxPledgeLeverage_1354 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_1354 v0 = coe d_maxPledgeLeverage_958 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1356 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_1356 v0
  = coe d_maxRefScriptSizePerBlock_948 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1358 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_1358 v0
  = coe d_maxRefScriptSizePerTx_946 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1360 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_1360 v0 = coe d_maxTxExUnits_902 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1362 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_1362 v0 = coe d_maxTxSize_894 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1364 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_1364 v0 = coe d_maxValSize_898 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1366 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1366 v0
  = coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minPoolCost
d_minPoolCost_1368 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_1368 v0 = coe d_minPoolCost_934 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1370 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_1370 v0 = coe d_minUTxOValue_954 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1372 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1372 v0 = coe d_monetaryExpansion_936 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1374 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_1374 v0 = coe d_nopt_962 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1376 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_1376 v0 = coe d_poolDeposit_932 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1378 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_1378 v0 = coe d_poolThresholds_970 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.prices
d_prices_1380 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_1380 v0 = coe d_prices_942 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.pv
d_pv_1382 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1382 v0 = coe d_pv_906 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1384 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1384 v0
  = coe d_refScriptCostMultiplier_952 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1386 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1386 v0
  = coe d_refScriptCostStride_950 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1388 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1388 v0 = coe d_treasuryCut_938 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1390 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 -> Bool
d_modifiesGovernanceGroup_1390 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_modifiesGovernanceGroup_1390 v5
du_modifiesGovernanceGroup_1390 :: T_PParamsUpdate_798 -> Bool
du_modifiesGovernanceGroup_1390 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.d_or_12
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_968 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_970 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_972 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_974 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_976 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_978 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_980 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_982 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1396 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_1396 v0 = coe d_Emax_960 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a
d_a_1398 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_1398 v0 = coe d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a0
d_a0_1400 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1400 v0 = coe d_a0_956 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.b
d_b_1402 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_1402 v0 = coe d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1404 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_1404 v0 = coe d_ccMaxTermLength_982 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1406 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_1406 v0 = coe d_ccMinSize_980 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1408 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_1408 v0 = coe d_coinsPerUTxOByte_940 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1410 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_1410 v0
  = coe d_collateralPercentage_964 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1412 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_1412 v0 = coe d_costmdls_966 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1414 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_1414 v0 = coe d_drepActivity_978 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1416 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_1416 v0 = coe d_drepDeposit_976 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1418 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_1418 v0 = coe d_drepThresholds_968 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1420 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_1420 v0 = coe d_govActionDeposit_974 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1422 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_1422 v0 = coe d_govActionLifetime_972 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1424 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_1424 v0 = coe d_keyDeposit_930 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosCommitteeSize
d_leiosCommitteeSize_1426 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_1426 v0
  = coe d_leiosCommitteeSize_918 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1428 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_1428 v0
  = coe d_leiosDiffusionPeriod_912 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosHeaderPeriod
d_leiosHeaderPeriod_1430 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_1430 v0 = coe d_leiosHeaderPeriod_908 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1432 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_1432 v0 = coe d_leiosMaxEBExUnits_922 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBSize
d_leiosMaxEBSize_1434 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_1434 v0 = coe d_leiosMaxEBSize_914 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1436 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_1436 v0 = coe d_leiosMaxEBTxsSize_916 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1438 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_1438 v0
  = coe d_leiosMaxRefScriptSizePerEB_924 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1440 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1440 v0
  = coe d_leiosQuorumStakeThreshold_920 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosVotingPeriod
d_leiosVotingPeriod_1442 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_1442 v0 = coe d_leiosVotingPeriod_910 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1444 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_1444 v0 = coe d_maxBlockExUnits_904 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1446 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_1446 v0 = coe d_maxBlockSize_892 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1448 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_1448 v0
  = coe d_maxCollateralInputs_900 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1450 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_1450 v0 = coe d_maxHeaderSize_896 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxPledgeLeverage
d_maxPledgeLeverage_1452 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_1452 v0 = coe d_maxPledgeLeverage_958 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1454 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_1454 v0
  = coe d_maxRefScriptSizePerBlock_948 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1456 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_1456 v0
  = coe d_maxRefScriptSizePerTx_946 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1458 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_1458 v0 = coe d_maxTxExUnits_902 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1460 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_1460 v0 = coe d_maxTxSize_894 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1462 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_1462 v0 = coe d_maxValSize_898 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1464 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1464 v0
  = coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minPoolCost
d_minPoolCost_1466 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_1466 v0 = coe d_minPoolCost_934 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1468 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_1468 v0 = coe d_minUTxOValue_954 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1470 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1470 v0 = coe d_monetaryExpansion_936 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1472 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_1472 v0 = coe d_nopt_962 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1474 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_1474 v0 = coe d_poolDeposit_932 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1476 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_1476 v0 = coe d_poolThresholds_970 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.prices
d_prices_1478 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_1478 v0 = coe d_prices_942 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.pv
d_pv_1480 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1480 v0 = coe d_pv_906 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1482 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1482 v0
  = coe d_refScriptCostMultiplier_952 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1484 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1484 v0
  = coe d_refScriptCostStride_950 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1486 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1486 v0 = coe d_treasuryCut_938 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1488 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 -> Bool
d_modifiesSecurityGroup_1488 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_modifiesSecurityGroup_1488 v5
du_modifiesSecurityGroup_1488 :: T_PParamsUpdate_798 -> Bool
du_modifiesSecurityGroup_1488 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.d_or_12
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_892 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_894 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_896 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_898 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxBlockExUnits_904 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_b_928 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_a_926 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_940 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_govActionDeposit_974 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_leiosHeaderPeriod_908 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_leiosVotingPeriod_910 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_leiosDiffusionPeriod_912 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_leiosMaxEBSize_914 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                      (coe d_leiosMaxEBTxsSize_916 (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                         (coe d_leiosCommitteeSize_918 (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                            (coe
                                                               d_leiosQuorumStakeThreshold_920
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                               (coe
                                                                  d_leiosMaxEBExUnits_922 (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                                  (coe
                                                                     d_leiosMaxRefScriptSizePerEB_924
                                                                     (coe v0)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))))))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.Emax
d_Emax_1494 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_1494 v0 = coe d_Emax_960 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a
d_a_1496 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_1496 v0 = coe d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.a0
d_a0_1498 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1498 v0 = coe d_a0_956 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.b
d_b_1500 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_1500 v0 = coe d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1502 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_1502 v0 = coe d_ccMaxTermLength_982 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1504 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_1504 v0 = coe d_ccMinSize_980 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1506 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_1506 v0 = coe d_coinsPerUTxOByte_940 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1508 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_1508 v0
  = coe d_collateralPercentage_964 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.costmdls
d_costmdls_1510 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_1510 v0 = coe d_costmdls_966 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1512 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_1512 v0 = coe d_drepActivity_978 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1514 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_1514 v0 = coe d_drepDeposit_976 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1516 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_1516 v0 = coe d_drepThresholds_968 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1518 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_1518 v0 = coe d_govActionDeposit_974 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1520 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_1520 v0 = coe d_govActionLifetime_972 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1522 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_1522 v0 = coe d_keyDeposit_930 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosCommitteeSize
d_leiosCommitteeSize_1524 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_1524 v0
  = coe d_leiosCommitteeSize_918 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1526 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_1526 v0
  = coe d_leiosDiffusionPeriod_912 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosHeaderPeriod
d_leiosHeaderPeriod_1528 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_1528 v0 = coe d_leiosHeaderPeriod_908 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1530 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_1530 v0 = coe d_leiosMaxEBExUnits_922 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBSize
d_leiosMaxEBSize_1532 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_1532 v0 = coe d_leiosMaxEBSize_914 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1534 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_1534 v0 = coe d_leiosMaxEBTxsSize_916 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1536 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_1536 v0
  = coe d_leiosMaxRefScriptSizePerEB_924 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1538 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1538 v0
  = coe d_leiosQuorumStakeThreshold_920 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.leiosVotingPeriod
d_leiosVotingPeriod_1540 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_1540 v0 = coe d_leiosVotingPeriod_910 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1542 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_1542 v0 = coe d_maxBlockExUnits_904 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1544 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_1544 v0 = coe d_maxBlockSize_892 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1546 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_1546 v0
  = coe d_maxCollateralInputs_900 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1548 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_1548 v0 = coe d_maxHeaderSize_896 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxPledgeLeverage
d_maxPledgeLeverage_1550 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_1550 v0 = coe d_maxPledgeLeverage_958 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1552 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_1552 v0
  = coe d_maxRefScriptSizePerBlock_948 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1554 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_1554 v0
  = coe d_maxRefScriptSizePerTx_946 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1556 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_1556 v0 = coe d_maxTxExUnits_902 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1558 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_1558 v0 = coe d_maxTxSize_894 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1560 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_1560 v0 = coe d_maxValSize_898 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1562 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1562 v0
  = coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minPoolCost
d_minPoolCost_1564 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_1564 v0 = coe d_minPoolCost_934 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1566 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_1566 v0 = coe d_minUTxOValue_954 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1568 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1568 v0 = coe d_monetaryExpansion_936 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.nopt
d_nopt_1570 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_1570 v0 = coe d_nopt_962 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1572 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_1572 v0 = coe d_poolDeposit_932 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1574 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_1574 v0 = coe d_poolThresholds_970 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.prices
d_prices_1576 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_1576 v0 = coe d_prices_942 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.pv
d_pv_1578 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1578 v0 = coe d_pv_906 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1580 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1580 v0
  = coe d_refScriptCostMultiplier_952 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1582 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1582 v0
  = coe d_refScriptCostStride_950 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1584 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1584 v0 = coe d_treasuryCut_938 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1586 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 -> [T_PParamGroup_240]
d_modifiedUpdateGroups_1586 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_modifiedUpdateGroups_1586 v5
du_modifiedUpdateGroups_1586 ::
  T_PParamsUpdate_798 -> [T_PParamGroup_240]
du_modifiedUpdateGroups_1586 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1594 (coe v0)
         (coe du_modifiesNetworkGroup_1096) (coe C_NetworkGroup_242))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1594 (coe v0)
            (coe du_modifiesEconomicGroup_1194) (coe C_EconomicGroup_244))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1594 (coe v0)
               (coe du_modifiesTechnicalGroup_1292) (coe C_TechnicalGroup_246))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  du__'63''9552''8658'__1594 (coe v0)
                  (coe du_modifiesGovernanceGroup_1390) (coe C_GovernanceGroup_248))
               (coe
                  du__'63''9552''8658'__1594 (coe v0)
                  (coe du_modifiesSecurityGroup_1488) (coe C_SecurityGroup_250)))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1594 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsUpdate_798 ->
  (T_PParamsUpdate_798 -> Bool) ->
  T_PParamGroup_240 -> [T_PParamGroup_240]
d__'63''9552''8658'__1594 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du__'63''9552''8658'__1594 v5 v6 v7
du__'63''9552''8658'__1594 ::
  T_PParamsUpdate_798 ->
  (T_PParamsUpdate_798 -> Bool) ->
  T_PParamGroup_240 -> [T_PParamGroup_240]
du__'63''9552''8658'__1594 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88) (coe v1 v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
              (coe
                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_348
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
              v2))
      (coe
         (\ v3 ->
            MAlonzo.Code.Class.HasEmptySet.d_'8709'_334
              (coe
                 MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_344
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._?↗_
d__'63''8599'__1602 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'63''8599'__1602 v6 v7
du__'63''8599'__1602 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1602 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1616 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'8801''45'update_1616 v6
du_'8801''45'update_1616 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1616 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (\ v1 -> coe du_to_1636 (coe v0)) erased
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.to
d_to_1636 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
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
d_to_1636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12
          ~v13
  = du_to_1636 v10
du_to_1636 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1636 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.from
d_from_1648 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
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
d_from_1648 = erased
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__1650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d__'8746''737''7580''7504'__1650 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_696
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe v0)))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1656 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> T_PParamsUpdate_798 -> T_PParams_320
d_applyPParamsUpdate_1656 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_applyPParamsUpdate_1656 v4 v5 v6
du_applyPParamsUpdate_1656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> T_PParamsUpdate_798 -> T_PParams_320
du_applyPParamsUpdate_1656 v0 v1 v2
  = coe
      C_constructor_508
      (coe
         du__'63''8599'__1602 (coe d_maxBlockSize_892 (coe v2))
         (coe d_maxBlockSize_414 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxTxSize_894 (coe v2))
         (coe d_maxTxSize_416 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxHeaderSize_896 (coe v2))
         (coe d_maxHeaderSize_418 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxTxExUnits_902 (coe v2))
         (coe d_maxTxExUnits_420 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxBlockExUnits_904 (coe v2))
         (coe d_maxBlockExUnits_422 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxValSize_898 (coe v2))
         (coe d_maxValSize_424 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxCollateralInputs_900 (coe v2))
         (coe d_maxCollateralInputs_426 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_pv_906 (coe v2))
         (coe d_pv_428 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosHeaderPeriod_908 (coe v2))
         (coe d_leiosHeaderPeriod_430 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosVotingPeriod_910 (coe v2))
         (coe d_leiosVotingPeriod_432 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosDiffusionPeriod_912 (coe v2))
         (coe d_leiosDiffusionPeriod_434 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosMaxEBSize_914 (coe v2))
         (coe d_leiosMaxEBSize_436 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosMaxEBTxsSize_916 (coe v2))
         (coe d_leiosMaxEBTxsSize_438 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosCommitteeSize_918 (coe v2))
         (coe d_leiosCommitteeSize_440 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosQuorumStakeThreshold_920 (coe v2))
         (coe d_leiosQuorumStakeThreshold_442 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_leiosMaxEBExUnits_922 (coe v2))
         (coe d_leiosMaxEBExUnits_444 (coe v1)))
      (coe
         du__'63''8599'__1602
         (coe d_leiosMaxRefScriptSizePerEB_924 (coe v2))
         (coe d_leiosMaxRefScriptSizePerEB_446 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_a_926 (coe v2)) (coe d_a_448 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_b_928 (coe v2)) (coe d_b_450 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_keyDeposit_930 (coe v2))
         (coe d_keyDeposit_452 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_poolDeposit_932 (coe v2))
         (coe d_poolDeposit_454 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_minPoolCost_934 (coe v2))
         (coe d_minPoolCost_456 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_monetaryExpansion_936 (coe v2))
         (coe d_monetaryExpansion_458 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_treasuryCut_938 (coe v2))
         (coe d_treasuryCut_460 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_coinsPerUTxOByte_940 (coe v2))
         (coe d_coinsPerUTxOByte_462 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_prices_942 (coe v2))
         (coe d_prices_464 (coe v1)))
      (coe
         du__'63''8599'__1602
         (coe d_minFeeRefScriptCoinsPerByte_944 (coe v2))
         (coe d_minFeeRefScriptCoinsPerByte_466 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxRefScriptSizePerTx_946 (coe v2))
         (coe d_maxRefScriptSizePerTx_468 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxRefScriptSizePerBlock_948 (coe v2))
         (coe d_maxRefScriptSizePerBlock_470 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_refScriptCostStride_950 (coe v2))
         (coe d_refScriptCostStride_472 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_refScriptCostMultiplier_952 (coe v2))
         (coe d_refScriptCostMultiplier_474 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_minUTxOValue_954 (coe v2))
         (coe d_minUTxOValue_476 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_Emax_960 (coe v2))
         (coe d_Emax_478 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_nopt_962 (coe v2))
         (coe d_nopt_480 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_a0_956 (coe v2))
         (coe d_a0_482 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_maxPledgeLeverage_958 (coe v2))
         (coe d_maxPledgeLeverage_484 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_collateralPercentage_964 (coe v2))
         (coe d_collateralPercentage_486 (coe v1)))
      (coe
         MAlonzo.Code.Class.ToBool.du_if_then_else__38
         (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
         (coe d_costmdls_966 (coe v2))
         (coe
            MAlonzo.Code.Level.C_lift_20
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_696
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                             (coe v3))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                             (coe d_costmdlsAssoc_488 (coe v1))))))))
         (coe (\ v3 -> d_costmdlsAssoc_488 (coe v1))))
      (coe
         du__'63''8599'__1602 (coe d_poolThresholds_970 (coe v2))
         (coe d_poolThresholds_490 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_drepThresholds_968 (coe v2))
         (coe d_drepThresholds_492 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_ccMinSize_980 (coe v2))
         (coe d_ccMinSize_494 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_ccMaxTermLength_982 (coe v2))
         (coe d_ccMaxTermLength_496 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_govActionLifetime_972 (coe v2))
         (coe d_govActionLifetime_498 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_govActionDeposit_974 (coe v2))
         (coe d_govActionDeposit_500 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_drepDeposit_976 (coe v2))
         (coe d_drepDeposit_502 (coe v1)))
      (coe
         du__'63''8599'__1602 (coe d_drepActivity_978 (coe v2))
         (coe d_drepActivity_504 (coe v1)))
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.Emax
d_Emax_1668 :: T_PParams_320 -> T_PParamsUpdate_798 -> AgdaAny
d_Emax_1668 v0 ~v1 = du_Emax_1668 v0
du_Emax_1668 :: T_PParams_320 -> AgdaAny
du_Emax_1668 v0 = coe d_Emax_478 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.a
d_a_1670 :: T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_a_1670 v0 ~v1 = du_a_1670 v0
du_a_1670 :: T_PParams_320 -> Integer
du_a_1670 v0 = coe d_a_448 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.a0
d_a0_1672 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1672 v0 ~v1 = du_a0_1672 v0
du_a0_1672 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1672 v0 = coe d_a0_482 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.b
d_b_1674 :: T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_b_1674 v0 ~v1 = du_b_1674 v0
du_b_1674 :: T_PParams_320 -> Integer
du_b_1674 v0 = coe d_b_450 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1676 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_ccMaxTermLength_1676 v0 ~v1 = du_ccMaxTermLength_1676 v0
du_ccMaxTermLength_1676 :: T_PParams_320 -> Integer
du_ccMaxTermLength_1676 v0 = coe d_ccMaxTermLength_496 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1678 :: T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_ccMinSize_1678 v0 ~v1 = du_ccMinSize_1678 v0
du_ccMinSize_1678 :: T_PParams_320 -> Integer
du_ccMinSize_1678 v0 = coe d_ccMinSize_494 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1680 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_coinsPerUTxOByte_1680 v0 ~v1 = du_coinsPerUTxOByte_1680 v0
du_coinsPerUTxOByte_1680 :: T_PParams_320 -> Integer
du_coinsPerUTxOByte_1680 v0 = coe d_coinsPerUTxOByte_462 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1682 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_collateralPercentage_1682 v0 ~v1
  = du_collateralPercentage_1682 v0
du_collateralPercentage_1682 :: T_PParams_320 -> Integer
du_collateralPercentage_1682 v0
  = coe d_collateralPercentage_486 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1684 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 ->
  T_PParamsUpdate_798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1684 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_costmdls_1684 v4 v5
du_costmdls_1684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_costmdls_1684 v0 v1 = coe du_costmdls_506 (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.costmdlsAssoc
d_costmdlsAssoc_1686 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_1686 v0 ~v1 = du_costmdlsAssoc_1686 v0
du_costmdlsAssoc_1686 ::
  T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
du_costmdlsAssoc_1686 v0 = coe d_costmdlsAssoc_488 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1688 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> AgdaAny
d_drepActivity_1688 v0 ~v1 = du_drepActivity_1688 v0
du_drepActivity_1688 :: T_PParams_320 -> AgdaAny
du_drepActivity_1688 v0 = coe d_drepActivity_504 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1690 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_drepDeposit_1690 v0 ~v1 = du_drepDeposit_1690 v0
du_drepDeposit_1690 :: T_PParams_320 -> Integer
du_drepDeposit_1690 v0 = coe d_drepDeposit_502 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1692 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> T_DrepThresholds_252
d_drepThresholds_1692 v0 ~v1 = du_drepThresholds_1692 v0
du_drepThresholds_1692 :: T_PParams_320 -> T_DrepThresholds_252
du_drepThresholds_1692 v0 = coe d_drepThresholds_492 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1694 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_govActionDeposit_1694 v0 ~v1 = du_govActionDeposit_1694 v0
du_govActionDeposit_1694 :: T_PParams_320 -> Integer
du_govActionDeposit_1694 v0 = coe d_govActionDeposit_500 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1696 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_govActionLifetime_1696 v0 ~v1 = du_govActionLifetime_1696 v0
du_govActionLifetime_1696 :: T_PParams_320 -> Integer
du_govActionLifetime_1696 v0 = coe d_govActionLifetime_498 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1698 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_keyDeposit_1698 v0 ~v1 = du_keyDeposit_1698 v0
du_keyDeposit_1698 :: T_PParams_320 -> Integer
du_keyDeposit_1698 v0 = coe d_keyDeposit_452 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosCommitteeSize
d_leiosCommitteeSize_1700 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_leiosCommitteeSize_1700 v0 ~v1 = du_leiosCommitteeSize_1700 v0
du_leiosCommitteeSize_1700 :: T_PParams_320 -> Integer
du_leiosCommitteeSize_1700 v0
  = coe d_leiosCommitteeSize_440 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1702 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_leiosDiffusionPeriod_1702 v0 ~v1
  = du_leiosDiffusionPeriod_1702 v0
du_leiosDiffusionPeriod_1702 :: T_PParams_320 -> Integer
du_leiosDiffusionPeriod_1702 v0
  = coe d_leiosDiffusionPeriod_434 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosHeaderPeriod
d_leiosHeaderPeriod_1704 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_leiosHeaderPeriod_1704 v0 ~v1 = du_leiosHeaderPeriod_1704 v0
du_leiosHeaderPeriod_1704 :: T_PParams_320 -> Integer
du_leiosHeaderPeriod_1704 v0 = coe d_leiosHeaderPeriod_430 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1706 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> AgdaAny
d_leiosMaxEBExUnits_1706 v0 ~v1 = du_leiosMaxEBExUnits_1706 v0
du_leiosMaxEBExUnits_1706 :: T_PParams_320 -> AgdaAny
du_leiosMaxEBExUnits_1706 v0 = coe d_leiosMaxEBExUnits_444 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosMaxEBSize
d_leiosMaxEBSize_1708 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_leiosMaxEBSize_1708 v0 ~v1 = du_leiosMaxEBSize_1708 v0
du_leiosMaxEBSize_1708 :: T_PParams_320 -> Integer
du_leiosMaxEBSize_1708 v0 = coe d_leiosMaxEBSize_436 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1710 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_leiosMaxEBTxsSize_1710 v0 ~v1 = du_leiosMaxEBTxsSize_1710 v0
du_leiosMaxEBTxsSize_1710 :: T_PParams_320 -> Integer
du_leiosMaxEBTxsSize_1710 v0 = coe d_leiosMaxEBTxsSize_438 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1712 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_leiosMaxRefScriptSizePerEB_1712 v0 ~v1
  = du_leiosMaxRefScriptSizePerEB_1712 v0
du_leiosMaxRefScriptSizePerEB_1712 :: T_PParams_320 -> Integer
du_leiosMaxRefScriptSizePerEB_1712 v0
  = coe d_leiosMaxRefScriptSizePerEB_446 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1714 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1714 v0 ~v1
  = du_leiosQuorumStakeThreshold_1714 v0
du_leiosQuorumStakeThreshold_1714 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_leiosQuorumStakeThreshold_1714 v0
  = coe d_leiosQuorumStakeThreshold_442 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.leiosVotingPeriod
d_leiosVotingPeriod_1716 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_leiosVotingPeriod_1716 v0 ~v1 = du_leiosVotingPeriod_1716 v0
du_leiosVotingPeriod_1716 :: T_PParams_320 -> Integer
du_leiosVotingPeriod_1716 v0 = coe d_leiosVotingPeriod_432 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1718 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> AgdaAny
d_maxBlockExUnits_1718 v0 ~v1 = du_maxBlockExUnits_1718 v0
du_maxBlockExUnits_1718 :: T_PParams_320 -> AgdaAny
du_maxBlockExUnits_1718 v0 = coe d_maxBlockExUnits_422 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1720 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_maxBlockSize_1720 v0 ~v1 = du_maxBlockSize_1720 v0
du_maxBlockSize_1720 :: T_PParams_320 -> Integer
du_maxBlockSize_1720 v0 = coe d_maxBlockSize_414 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1722 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_maxCollateralInputs_1722 v0 ~v1 = du_maxCollateralInputs_1722 v0
du_maxCollateralInputs_1722 :: T_PParams_320 -> Integer
du_maxCollateralInputs_1722 v0
  = coe d_maxCollateralInputs_426 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1724 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_maxHeaderSize_1724 v0 ~v1 = du_maxHeaderSize_1724 v0
du_maxHeaderSize_1724 :: T_PParams_320 -> Integer
du_maxHeaderSize_1724 v0 = coe d_maxHeaderSize_418 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxPledgeLeverage
d_maxPledgeLeverage_1726 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_maxPledgeLeverage_1726 v0 ~v1 = du_maxPledgeLeverage_1726 v0
du_maxPledgeLeverage_1726 ::
  T_PParams_320 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_maxPledgeLeverage_1726 v0 = coe d_maxPledgeLeverage_484 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1728 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_maxRefScriptSizePerBlock_1728 v0 ~v1
  = du_maxRefScriptSizePerBlock_1728 v0
du_maxRefScriptSizePerBlock_1728 :: T_PParams_320 -> Integer
du_maxRefScriptSizePerBlock_1728 v0
  = coe d_maxRefScriptSizePerBlock_470 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1730 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_maxRefScriptSizePerTx_1730 v0 ~v1
  = du_maxRefScriptSizePerTx_1730 v0
du_maxRefScriptSizePerTx_1730 :: T_PParams_320 -> Integer
du_maxRefScriptSizePerTx_1730 v0
  = coe d_maxRefScriptSizePerTx_468 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1732 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> AgdaAny
d_maxTxExUnits_1732 v0 ~v1 = du_maxTxExUnits_1732 v0
du_maxTxExUnits_1732 :: T_PParams_320 -> AgdaAny
du_maxTxExUnits_1732 v0 = coe d_maxTxExUnits_420 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1734 :: T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_maxTxSize_1734 v0 ~v1 = du_maxTxSize_1734 v0
du_maxTxSize_1734 :: T_PParams_320 -> Integer
du_maxTxSize_1734 v0 = coe d_maxTxSize_416 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1736 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_maxValSize_1736 v0 ~v1 = du_maxValSize_1736 v0
du_maxValSize_1736 :: T_PParams_320 -> Integer
du_maxValSize_1736 v0 = coe d_maxValSize_424 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1738 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1738 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1738 v0
du_minFeeRefScriptCoinsPerByte_1738 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1738 v0
  = coe d_minFeeRefScriptCoinsPerByte_466 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.minPoolCost
d_minPoolCost_1740 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_minPoolCost_1740 v0 ~v1 = du_minPoolCost_1740 v0
du_minPoolCost_1740 :: T_PParams_320 -> Integer
du_minPoolCost_1740 v0 = coe d_minPoolCost_456 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1742 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_minUTxOValue_1742 v0 ~v1 = du_minUTxOValue_1742 v0
du_minUTxOValue_1742 :: T_PParams_320 -> Integer
du_minUTxOValue_1742 v0 = coe d_minUTxOValue_476 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.monetaryExpansion
d_monetaryExpansion_1744 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1744 v0 ~v1 = du_monetaryExpansion_1744 v0
du_monetaryExpansion_1744 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_monetaryExpansion_1744 v0 = coe d_monetaryExpansion_458 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.nopt
d_nopt_1746 :: T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_nopt_1746 v0 ~v1 = du_nopt_1746 v0
du_nopt_1746 :: T_PParams_320 -> Integer
du_nopt_1746 v0 = coe d_nopt_480 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1748 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> Integer
d_poolDeposit_1748 v0 ~v1 = du_poolDeposit_1748 v0
du_poolDeposit_1748 :: T_PParams_320 -> Integer
du_poolDeposit_1748 v0 = coe d_poolDeposit_454 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1750 ::
  T_PParams_320 -> T_PParamsUpdate_798 -> T_PoolThresholds_296
d_poolThresholds_1750 v0 ~v1 = du_poolThresholds_1750 v0
du_poolThresholds_1750 :: T_PParams_320 -> T_PoolThresholds_296
du_poolThresholds_1750 v0 = coe d_poolThresholds_490 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.prices
d_prices_1752 :: T_PParams_320 -> T_PParamsUpdate_798 -> AgdaAny
d_prices_1752 v0 ~v1 = du_prices_1752 v0
du_prices_1752 :: T_PParams_320 -> AgdaAny
du_prices_1752 v0 = coe d_prices_464 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.pv
d_pv_1754 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1754 v0 ~v1 = du_pv_1754 v0
du_pv_1754 ::
  T_PParams_320 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1754 v0 = coe d_pv_428 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1756 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1756 v0 ~v1
  = du_refScriptCostMultiplier_1756 v0
du_refScriptCostMultiplier_1756 ::
  T_PParams_320 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1756 v0
  = coe d_refScriptCostMultiplier_474 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1758 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1758 v0 ~v1 = du_refScriptCostStride_1758 v0
du_refScriptCostStride_1758 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_refScriptCostStride_1758 v0
  = coe d_refScriptCostStride_472 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.P.treasuryCut
d_treasuryCut_1760 ::
  T_PParams_320 ->
  T_PParamsUpdate_798 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1760 v0 ~v1 = du_treasuryCut_1760 v0
du_treasuryCut_1760 ::
  T_PParams_320 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_treasuryCut_1760 v0 = coe d_treasuryCut_460 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.Emax
d_Emax_1764 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_Emax_1764 v0 = coe d_Emax_960 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.a
d_a_1766 :: T_PParamsUpdate_798 -> Maybe Integer
d_a_1766 v0 = coe d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.a0
d_a0_1768 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1768 v0 = coe d_a0_956 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.b
d_b_1770 :: T_PParamsUpdate_798 -> Maybe Integer
d_b_1770 v0 = coe d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1772 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMaxTermLength_1772 v0 = coe d_ccMaxTermLength_982 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1774 :: T_PParamsUpdate_798 -> Maybe Integer
d_ccMinSize_1774 v0 = coe d_ccMinSize_980 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1776 :: T_PParamsUpdate_798 -> Maybe Integer
d_coinsPerUTxOByte_1776 v0 = coe d_coinsPerUTxOByte_940 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1778 :: T_PParamsUpdate_798 -> Maybe Integer
d_collateralPercentage_1778 v0
  = coe d_collateralPercentage_964 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1780 ::
  T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_1780 v0 = coe d_costmdls_966 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1782 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_drepActivity_1782 v0 = coe d_drepActivity_978 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1784 :: T_PParamsUpdate_798 -> Maybe Integer
d_drepDeposit_1784 v0 = coe d_drepDeposit_976 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1786 ::
  T_PParamsUpdate_798 -> Maybe T_DrepThresholds_252
d_drepThresholds_1786 v0 = coe d_drepThresholds_968 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1788 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionDeposit_1788 v0 = coe d_govActionDeposit_974 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1790 :: T_PParamsUpdate_798 -> Maybe Integer
d_govActionLifetime_1790 v0 = coe d_govActionLifetime_972 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1792 :: T_PParamsUpdate_798 -> Maybe Integer
d_keyDeposit_1792 v0 = coe d_keyDeposit_930 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosCommitteeSize
d_leiosCommitteeSize_1794 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosCommitteeSize_1794 v0
  = coe d_leiosCommitteeSize_918 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1796 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosDiffusionPeriod_1796 v0
  = coe d_leiosDiffusionPeriod_912 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosHeaderPeriod
d_leiosHeaderPeriod_1798 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosHeaderPeriod_1798 v0 = coe d_leiosHeaderPeriod_908 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1800 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_leiosMaxEBExUnits_1800 v0 = coe d_leiosMaxEBExUnits_922 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosMaxEBSize
d_leiosMaxEBSize_1802 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBSize_1802 v0 = coe d_leiosMaxEBSize_914 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1804 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxEBTxsSize_1804 v0 = coe d_leiosMaxEBTxsSize_916 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1806 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_leiosMaxRefScriptSizePerEB_1806 v0
  = coe d_leiosMaxRefScriptSizePerEB_924 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1808 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1808 v0
  = coe d_leiosQuorumStakeThreshold_920 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.leiosVotingPeriod
d_leiosVotingPeriod_1810 :: T_PParamsUpdate_798 -> Maybe Integer
d_leiosVotingPeriod_1810 v0 = coe d_leiosVotingPeriod_910 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1812 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxBlockExUnits_1812 v0 = coe d_maxBlockExUnits_904 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1814 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxBlockSize_1814 v0 = coe d_maxBlockSize_892 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1816 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxCollateralInputs_1816 v0
  = coe d_maxCollateralInputs_900 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1818 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxHeaderSize_1818 v0 = coe d_maxHeaderSize_896 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxPledgeLeverage
d_maxPledgeLeverage_1820 ::
  T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_1820 v0 = coe d_maxPledgeLeverage_958 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1822 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerBlock_1822 v0
  = coe d_maxRefScriptSizePerBlock_948 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1824 ::
  T_PParamsUpdate_798 -> Maybe Integer
d_maxRefScriptSizePerTx_1824 v0
  = coe d_maxRefScriptSizePerTx_946 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1826 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_maxTxExUnits_1826 v0 = coe d_maxTxExUnits_902 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1828 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxTxSize_1828 v0 = coe d_maxTxSize_894 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1830 :: T_PParamsUpdate_798 -> Maybe Integer
d_maxValSize_1830 v0 = coe d_maxValSize_898 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1832 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1832 v0
  = coe d_minFeeRefScriptCoinsPerByte_944 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.minPoolCost
d_minPoolCost_1834 :: T_PParamsUpdate_798 -> Maybe Integer
d_minPoolCost_1834 v0 = coe d_minPoolCost_934 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1836 :: T_PParamsUpdate_798 -> Maybe Integer
d_minUTxOValue_1836 v0 = coe d_minUTxOValue_954 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.monetaryExpansion
d_monetaryExpansion_1838 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1838 v0 = coe d_monetaryExpansion_936 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.nopt
d_nopt_1840 :: T_PParamsUpdate_798 -> Maybe Integer
d_nopt_1840 v0 = coe d_nopt_962 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1842 :: T_PParamsUpdate_798 -> Maybe Integer
d_poolDeposit_1842 v0 = coe d_poolDeposit_932 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1844 ::
  T_PParamsUpdate_798 -> Maybe T_PoolThresholds_296
d_poolThresholds_1844 v0 = coe d_poolThresholds_970 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.prices
d_prices_1846 :: T_PParamsUpdate_798 -> Maybe AgdaAny
d_prices_1846 v0 = coe d_prices_942 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.pv
d_pv_1848 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1848 v0 = coe d_pv_906 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1850 ::
  T_PParamsUpdate_798 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1850 v0
  = coe d_refScriptCostMultiplier_952 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1852 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1852 v0
  = coe d_refScriptCostStride_950 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate._.U.treasuryCut
d_treasuryCut_1854 ::
  T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1854 v0 = coe d_treasuryCut_938 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1858 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1858 ~v0 v1 ~v2 ~v3 v4
  = du_DecEq'45'PParamsUpdate_1858 v1 v4
du_DecEq'45'PParamsUpdate_1858 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1858 v0 v1
  = coe
      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.Derive.DecEqRecord.du_record'45'equality_24
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                    erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                              (coe
                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                 (coe
                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                    erased
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                          (coe
                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                             () erased
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                   erased () erased
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34)))
                                                   (coe
                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                               (coe v1))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                         () erased () erased
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                        (coe
                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                     (coe
                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                        (coe
                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                           () erased () erased
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34)))
                                                                           (coe
                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                              () erased () erased
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34)))
                                                                              (coe
                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                 () erased () erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                 (coe
                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                    () erased ()
                                                                                    erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                             (coe
                                                                                                v1))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                       (coe
                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                          (coe
                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                             ()
                                                                                             erased
                                                                                             ()
                                                                                             erased
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                             (coe
                                                                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                ()
                                                                                                erased
                                                                                                ()
                                                                                                erased
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                      ()
                                                                                                      erased
                                                                                                      ()
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Refinement_150
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                     ()
                                                                                                                     erased
                                                                                                                     ()
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
                                                                                                                              (coe
                                                                                                                                 v1)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                              (coe
                                                                                                                                 du_DecEq'45'DrepThresholds_782))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                              ()
                                                                                                                              erased
                                                                                                                              ()
                                                                                                                              erased
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                 (coe
                                                                                                                                    du_DecEq'45'PoolThresholds_784))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                 ()
                                                                                                                                 erased
                                                                                                                                 ()
                                                                                                                                 erased
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                          ()
                                                                                                                                          erased
                                                                                                                                          ()
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                                                                (coe
                                                                                                                                                   v0)))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                             ()
                                                                                                                                             erased
                                                                                                                                             ()
                                                                                                                                             erased
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))))))))))))))))))))))))))))))))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_maxBlockSize_892 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe d_maxTxSize_894 (coe v2))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe d_maxHeaderSize_896 (coe v2))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe d_maxValSize_898 (coe v2))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe d_maxCollateralInputs_900 (coe v2))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe d_maxTxExUnits_902 (coe v2))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe d_maxBlockExUnits_904 (coe v2))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe d_pv_906 (coe v2))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe d_leiosHeaderPeriod_908 (coe v2))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe d_leiosVotingPeriod_910 (coe v2))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe d_leiosDiffusionPeriod_912 (coe v2))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe d_leiosMaxEBSize_914 (coe v2))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe d_leiosMaxEBTxsSize_916 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe d_leiosCommitteeSize_918 (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           d_leiosQuorumStakeThreshold_920 (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe d_leiosMaxEBExUnits_922 (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 d_leiosMaxRefScriptSizePerEB_924
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe d_a_926 (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe d_b_928 (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          d_keyDeposit_930 (coe v2))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             d_poolDeposit_932
                                                                             (coe v2))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                d_minPoolCost_934
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   d_monetaryExpansion_936
                                                                                   (coe v2))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      d_treasuryCut_938
                                                                                      (coe v2))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         d_coinsPerUTxOByte_940
                                                                                         (coe v2))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            d_prices_942
                                                                                            (coe
                                                                                               v2))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               d_minFeeRefScriptCoinsPerByte_944
                                                                                               (coe
                                                                                                  v2))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (coe
                                                                                                  d_maxRefScriptSizePerTx_946
                                                                                                  (coe
                                                                                                     v2))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     d_maxRefScriptSizePerBlock_948
                                                                                                     (coe
                                                                                                        v2))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        d_refScriptCostStride_950
                                                                                                        (coe
                                                                                                           v2))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           d_refScriptCostMultiplier_952
                                                                                                           (coe
                                                                                                              v2))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              d_minUTxOValue_954
                                                                                                              (coe
                                                                                                                 v2))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 d_a0_956
                                                                                                                 (coe
                                                                                                                    v2))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    d_maxPledgeLeverage_958
                                                                                                                    (coe
                                                                                                                       v2))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       d_Emax_960
                                                                                                                       (coe
                                                                                                                          v2))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          d_nopt_962
                                                                                                                          (coe
                                                                                                                             v2))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             d_collateralPercentage_964
                                                                                                                             (coe
                                                                                                                                v2))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                d_costmdls_966
                                                                                                                                (coe
                                                                                                                                   v2))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   d_drepThresholds_968
                                                                                                                                   (coe
                                                                                                                                      v2))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      d_poolThresholds_970
                                                                                                                                      (coe
                                                                                                                                         v2))
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         d_govActionLifetime_972
                                                                                                                                         (coe
                                                                                                                                            v2))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                         (coe
                                                                                                                                            d_govActionDeposit_974
                                                                                                                                            (coe
                                                                                                                                               v2))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                            (coe
                                                                                                                                               d_drepDeposit_976
                                                                                                                                               (coe
                                                                                                                                                  v2))
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                               (coe
                                                                                                                                                  d_drepActivity_978
                                                                                                                                                  (coe
                                                                                                                                                     v2))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                  (coe
                                                                                                                                                     d_ccMinSize_980
                                                                                                                                                     (coe
                                                                                                                                                        v2))
                                                                                                                                                  (coe
                                                                                                                                                     d_ccMaxTermLength_982
                                                                                                                                                     (coe
                                                                                                                                                        v2))))))))))))))))))))))))))))))))))))))))))))))))
-- Ledger.Dijkstra.Specification.PParams.PParamsDiff
d_PParamsDiff_1860 a0 a1 a2 a3 a4 = ()
data T_PParamsDiff_1860
  = C_constructor_1892 (T_PParams_320 -> AgdaAny -> T_PParams_320)
                       (AgdaAny -> [T_PParamGroup_240])
                       (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Dijkstra.Specification.PParams.PParamsDiff.UpdateT
d_UpdateT_1874 :: T_PParamsDiff_1860 -> ()
d_UpdateT_1874 = erased
-- Ledger.Dijkstra.Specification.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1876 ::
  T_PParamsDiff_1860 -> T_PParams_320 -> AgdaAny -> T_PParams_320
d_applyUpdate_1876 v0
  = case coe v0 of
      C_constructor_1892 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsDiff.updateGroups
d_updateGroups_1878 ::
  T_PParamsDiff_1860 -> AgdaAny -> [T_PParamGroup_240]
d_updateGroups_1878 v0
  = case coe v0 of
      C_constructor_1892 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1884 ::
  T_PParamsDiff_1860 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1884 v0
  = case coe v0 of
      C_constructor_1892 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1886 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsDiff_1860 -> AgdaAny -> ()
d_ppdWellFormed_1886 = erased
-- Ledger.Dijkstra.Specification.PParams.GovParams
d_GovParams_1894 a0 a1 a2 a3 a4 = ()
data T_GovParams_1894
  = C_constructor_1928 T_PParamsDiff_1860
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Dijkstra.Specification.PParams._.UpdateT
d_UpdateT_1900 :: T_PParamsDiff_1860 -> ()
d_UpdateT_1900 = erased
-- Ledger.Dijkstra.Specification.PParams._.applyUpdate
d_applyUpdate_1902 ::
  T_PParamsDiff_1860 -> T_PParams_320 -> AgdaAny -> T_PParams_320
d_applyUpdate_1902 v0 = coe d_applyUpdate_1876 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._.ppWF?
d_ppWF'63'_1904 ::
  T_PParamsDiff_1860 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1904 v0 = coe d_ppWF'63'_1884 (coe v0)
-- Ledger.Dijkstra.Specification.PParams._.ppdWellFormed
d_ppdWellFormed_1906 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_PParamsDiff_1860 -> AgdaAny -> ()
d_ppdWellFormed_1906 = erased
-- Ledger.Dijkstra.Specification.PParams._.updateGroups
d_updateGroups_1908 ::
  T_PParamsDiff_1860 -> AgdaAny -> [T_PParamGroup_240]
d_updateGroups_1908 v0 = coe d_updateGroups_1878 (coe v0)
-- Ledger.Dijkstra.Specification.PParams.GovParams.ppUpd
d_ppUpd_1912 :: T_GovParams_1894 -> T_PParamsDiff_1860
d_ppUpd_1912 v0
  = case coe v0 of
      C_constructor_1928 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PParams.GovParams._.UpdateT
d_UpdateT_1916 :: T_GovParams_1894 -> ()
d_UpdateT_1916 = erased
-- Ledger.Dijkstra.Specification.PParams.GovParams._.applyUpdate
d_applyUpdate_1918 ::
  T_GovParams_1894 -> T_PParams_320 -> AgdaAny -> T_PParams_320
d_applyUpdate_1918 v0
  = coe d_applyUpdate_1876 (coe d_ppUpd_1912 (coe v0))
-- Ledger.Dijkstra.Specification.PParams.GovParams._.ppWF?
d_ppWF'63'_1920 ::
  T_GovParams_1894 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1920 v0
  = coe d_ppWF'63'_1884 (coe d_ppUpd_1912 (coe v0))
-- Ledger.Dijkstra.Specification.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1922 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  T_GovParams_1894 -> AgdaAny -> ()
d_ppdWellFormed_1922 = erased
-- Ledger.Dijkstra.Specification.PParams.GovParams._.updateGroups
d_updateGroups_1924 ::
  T_GovParams_1894 -> AgdaAny -> [T_PParamGroup_240]
d_updateGroups_1924 v0
  = coe d_updateGroups_1878 (coe d_ppUpd_1912 (coe v0))
-- Ledger.Dijkstra.Specification.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1926 ::
  T_GovParams_1894 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1926 v0
  = case coe v0 of
      C_constructor_1928 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
