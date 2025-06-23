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
import qualified MAlonzo.Code.Ledger.Conway.Script
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
d_Acnt_146 a0 a1 a2 = ()
data T_Acnt_146 = C_'10214'_'44'_'10215''7491'_156 Integer Integer
-- Ledger.Conway.PParams.Acnt.treasury
d_treasury_152 :: T_Acnt_146 -> Integer
d_treasury_152 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_156 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.Acnt.reserves
d_reserves_154 :: T_Acnt_146 -> Integer
d_reserves_154 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7491'_156 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.Hastreasury
d_Hastreasury_162 a0 a1 a2 a3 a4 = ()
newtype T_Hastreasury_162
  = C_Hastreasury'46'constructor_529 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.Hastreasury.treasuryOf
d_treasuryOf_170 :: T_Hastreasury_162 -> AgdaAny -> Integer
d_treasuryOf_170 v0
  = case coe v0 of
      C_Hastreasury'46'constructor_529 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.treasuryOf
d_treasuryOf_174 :: T_Hastreasury_162 -> AgdaAny -> Integer
d_treasuryOf_174 v0 = coe d_treasuryOf_170 (coe v0)
-- Ledger.Conway.PParams.Hasreserves
d_Hasreserves_180 a0 a1 a2 a3 a4 = ()
newtype T_Hasreserves_180
  = C_Hasreserves'46'constructor_661 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.Hasreserves.reservesOf
d_reservesOf_188 :: T_Hasreserves_180 -> AgdaAny -> Integer
d_reservesOf_188 v0
  = case coe v0 of
      C_Hasreserves'46'constructor_661 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.reservesOf
d_reservesOf_192 :: T_Hasreserves_180 -> AgdaAny -> Integer
d_reservesOf_192 v0 = coe d_reservesOf_188 (coe v0)
-- Ledger.Conway.PParams.ProtVer
d_ProtVer_194 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_ProtVer_194 = erased
-- Ledger.Conway.PParams.Show-ProtVer
d_Show'45'ProtVer_196 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_196 ~v0 = du_Show'45'ProtVer_196
du_Show'45'ProtVer_196 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_196
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.PParams.pvCanFollow
d_pvCanFollow_198 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_198
  = C_canFollowMajor_200 | C_canFollowMinor_202
-- Ledger.Conway.PParams.HasCast-Acnt
d_HasCast'45'Acnt_204 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_204 ~v0 ~v1 ~v2 = du_HasCast'45'Acnt_204
du_HasCast'45'Acnt_204 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_204
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
                                 (146 :: Integer) (15687114209670515289 :: Integer)
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
                                    (146 :: Integer) (15687114209670515289 :: Integer)
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
         (coe C_'10214'_'44'_'10215''7491'_156))
-- Ledger.Conway.PParams.PParamGroup
d_PParamGroup_206 a0 a1 a2 = ()
data T_PParamGroup_206
  = C_NetworkGroup_208 | C_EconomicGroup_210 | C_TechnicalGroup_212 |
    C_GovernanceGroup_214 | C_SecurityGroup_216
-- Ledger.Conway.PParams.DrepThresholds
d_DrepThresholds_218 a0 a1 a2 = ()
data T_DrepThresholds_218
  = C_DrepThresholds'46'constructor_2765 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
d_P1_240 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_240 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P2a
d_P2a_242 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_242 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P2b
d_P2b_244 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_244 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P3
d_P3_246 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_246 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P4
d_P4_248 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_248 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5a
d_P5a_250 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_250 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5b
d_P5b_252 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_252 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5c
d_P5c_254 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_254 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P5d
d_P5d_256 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_256 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.DrepThresholds.P6
d_P6_258 ::
  T_DrepThresholds_218 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_258 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds
d_PoolThresholds_260 a0 a1 a2 = ()
data T_PoolThresholds_260
  = C_PoolThresholds'46'constructor_3329 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.Conway.PParams.PoolThresholds.Q1
d_Q1_272 ::
  T_PoolThresholds_260 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_272 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3329 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q2a
d_Q2a_274 ::
  T_PoolThresholds_260 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_274 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3329 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q2b
d_Q2b_276 ::
  T_PoolThresholds_260 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_276 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3329 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q4
d_Q4_278 ::
  T_PoolThresholds_260 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_278 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3329 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PoolThresholds.Q5
d_Q5_280 ::
  T_PoolThresholds_260 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_280 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_3329 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams
d_PParams_282 a0 a1 a2 = ()
data T_PParams_282
  = C_PParams'46'constructor_4923 Integer Integer Integer AgdaAny
                                  AgdaAny Integer Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer AgdaAny
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer Integer
                                  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 Integer AgdaAny
                                  T_PoolThresholds_260 T_DrepThresholds_218 Integer Integer Integer
                                  Integer Integer AgdaAny
-- Ledger.Conway.PParams.PParams.maxBlockSize
d_maxBlockSize_354 :: T_PParams_282 -> Integer
d_maxBlockSize_354 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxTxSize
d_maxTxSize_356 :: T_PParams_282 -> Integer
d_maxTxSize_356 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxHeaderSize
d_maxHeaderSize_358 :: T_PParams_282 -> Integer
d_maxHeaderSize_358 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxTxExUnits
d_maxTxExUnits_360 :: T_PParams_282 -> AgdaAny
d_maxTxExUnits_360 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_362 :: T_PParams_282 -> AgdaAny
d_maxBlockExUnits_362 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxValSize
d_maxValSize_364 :: T_PParams_282 -> Integer
d_maxValSize_364 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_366 :: T_PParams_282 -> Integer
d_maxCollateralInputs_366 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.pv
d_pv_368 :: T_PParams_282 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_368 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.a
d_a_370 :: T_PParams_282 -> Integer
d_a_370 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.b
d_b_372 :: T_PParams_282 -> Integer
d_b_372 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.keyDeposit
d_keyDeposit_374 :: T_PParams_282 -> Integer
d_keyDeposit_374 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.poolDeposit
d_poolDeposit_376 :: T_PParams_282 -> Integer
d_poolDeposit_376 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.monetaryExpansion
d_monetaryExpansion_378 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_378 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.treasuryCut
d_treasuryCut_380 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_380 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_382 :: T_PParams_282 -> Integer
d_coinsPerUTxOByte_382 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.prices
d_prices_384 :: T_PParams_282 -> AgdaAny
d_prices_384 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_386 ::
  T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_386 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_388 :: T_PParams_282 -> Integer
d_maxRefScriptSizePerTx_388 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_390 :: T_PParams_282 -> Integer
d_maxRefScriptSizePerBlock_390 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.refScriptCostStride
d_refScriptCostStride_392 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_392 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_394 ::
  T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_394 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.minUTxOValue
d_minUTxOValue_396 :: T_PParams_282 -> Integer
d_minUTxOValue_396 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.Emax
d_Emax_398 :: T_PParams_282 -> AgdaAny
d_Emax_398 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.nopt
d_nopt_400 :: T_PParams_282 -> Integer
d_nopt_400 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.a0
d_a0_402 :: T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_402 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.collateralPercentage
d_collateralPercentage_404 :: T_PParams_282 -> Integer
d_collateralPercentage_404 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.costmdls
d_costmdls_406 :: T_PParams_282 -> AgdaAny
d_costmdls_406 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.poolThresholds
d_poolThresholds_408 :: T_PParams_282 -> T_PoolThresholds_260
d_poolThresholds_408 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.drepThresholds
d_drepThresholds_410 :: T_PParams_282 -> T_DrepThresholds_218
d_drepThresholds_410 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.ccMinSize
d_ccMinSize_412 :: T_PParams_282 -> Integer
d_ccMinSize_412 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_414 :: T_PParams_282 -> Integer
d_ccMaxTermLength_414 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.govActionLifetime
d_govActionLifetime_416 :: T_PParams_282 -> Integer
d_govActionLifetime_416 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.govActionDeposit
d_govActionDeposit_418 :: T_PParams_282 -> Integer
d_govActionDeposit_418 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.drepDeposit
d_drepDeposit_420 :: T_PParams_282 -> Integer
d_drepDeposit_420 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParams.drepActivity
d_drepActivity_422 :: T_PParams_282 -> AgdaAny
d_drepActivity_422 v0
  = case coe v0 of
      C_PParams'46'constructor_4923 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.HasPParams
d_HasPParams_428 a0 a1 a2 a3 a4 = ()
newtype T_HasPParams_428
  = C_HasPParams'46'constructor_9331 (AgdaAny -> T_PParams_282)
-- Ledger.Conway.PParams.HasPParams.PParamsOf
d_PParamsOf_436 :: T_HasPParams_428 -> AgdaAny -> T_PParams_282
d_PParamsOf_436 v0
  = case coe v0 of
      C_HasPParams'46'constructor_9331 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.PParamsOf
d_PParamsOf_440 :: T_HasPParams_428 -> AgdaAny -> T_PParams_282
d_PParamsOf_440 v0 = coe d_PParamsOf_436 (coe v0)
-- Ledger.Conway.PParams.HasgovActionDeposit
d_HasgovActionDeposit_446 a0 a1 a2 a3 a4 = ()
newtype T_HasgovActionDeposit_446
  = C_HasgovActionDeposit'46'constructor_9463 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_454 ::
  T_HasgovActionDeposit_446 -> AgdaAny -> Integer
d_govActionDepositOf_454 v0
  = case coe v0 of
      C_HasgovActionDeposit'46'constructor_9463 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.govActionDepositOf
d_govActionDepositOf_458 ::
  T_HasgovActionDeposit_446 -> AgdaAny -> Integer
d_govActionDepositOf_458 v0 = coe d_govActionDepositOf_454 (coe v0)
-- Ledger.Conway.PParams.HasccMaxTermLength
d_HasccMaxTermLength_464 a0 a1 a2 a3 a4 = ()
newtype T_HasccMaxTermLength_464
  = C_HasccMaxTermLength'46'constructor_9595 (AgdaAny -> Integer)
-- Ledger.Conway.PParams.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_472 ::
  T_HasccMaxTermLength_464 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_472 v0
  = case coe v0 of
      C_HasccMaxTermLength'46'constructor_9595 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_476 ::
  T_HasccMaxTermLength_464 -> AgdaAny -> Integer
d_ccMaxTermLengthOf_476 v0 = coe d_ccMaxTermLengthOf_472 (coe v0)
-- Ledger.Conway.PParams.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_478 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_HasgovActionDeposit_446
d_HasgovActionDeposit'45'PParams_478 ~v0 ~v1 ~v2
  = du_HasgovActionDeposit'45'PParams_478
du_HasgovActionDeposit'45'PParams_478 :: T_HasgovActionDeposit_446
du_HasgovActionDeposit'45'PParams_478
  = coe
      C_HasgovActionDeposit'46'constructor_9463
      (coe (\ v0 -> d_govActionDeposit_418 (coe v0)))
-- Ledger.Conway.PParams.positivePParams
d_positivePParams_480 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParams_282 -> [Integer]
d_positivePParams_480 ~v0 ~v1 ~v2 v3 = du_positivePParams_480 v3
du_positivePParams_480 :: T_PParams_282 -> [Integer]
du_positivePParams_480 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_maxBlockSize_354 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe d_maxTxSize_356 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe d_maxHeaderSize_358 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe d_maxValSize_364 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe d_coinsPerUTxOByte_382 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_poolDeposit_376 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_collateralPercentage_404 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_ccMaxTermLength_414 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_govActionLifetime_416 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_govActionDeposit_418 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_drepDeposit_420 (coe v0))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.PParams._._.Emax
d_Emax_490 :: T_PParams_282 -> AgdaAny
d_Emax_490 v0 = coe d_Emax_398 (coe v0)
-- Ledger.Conway.PParams._._.a
d_a_492 :: T_PParams_282 -> Integer
d_a_492 v0 = coe d_a_370 (coe v0)
-- Ledger.Conway.PParams._._.a0
d_a0_494 :: T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_494 v0 = coe d_a0_402 (coe v0)
-- Ledger.Conway.PParams._._.b
d_b_496 :: T_PParams_282 -> Integer
d_b_496 v0 = coe d_b_372 (coe v0)
-- Ledger.Conway.PParams._._.ccMaxTermLength
d_ccMaxTermLength_498 :: T_PParams_282 -> Integer
d_ccMaxTermLength_498 v0 = coe d_ccMaxTermLength_414 (coe v0)
-- Ledger.Conway.PParams._._.ccMinSize
d_ccMinSize_500 :: T_PParams_282 -> Integer
d_ccMinSize_500 v0 = coe d_ccMinSize_412 (coe v0)
-- Ledger.Conway.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_502 :: T_PParams_282 -> Integer
d_coinsPerUTxOByte_502 v0 = coe d_coinsPerUTxOByte_382 (coe v0)
-- Ledger.Conway.PParams._._.collateralPercentage
d_collateralPercentage_504 :: T_PParams_282 -> Integer
d_collateralPercentage_504 v0
  = coe d_collateralPercentage_404 (coe v0)
-- Ledger.Conway.PParams._._.costmdls
d_costmdls_506 :: T_PParams_282 -> AgdaAny
d_costmdls_506 v0 = coe d_costmdls_406 (coe v0)
-- Ledger.Conway.PParams._._.drepActivity
d_drepActivity_508 :: T_PParams_282 -> AgdaAny
d_drepActivity_508 v0 = coe d_drepActivity_422 (coe v0)
-- Ledger.Conway.PParams._._.drepDeposit
d_drepDeposit_510 :: T_PParams_282 -> Integer
d_drepDeposit_510 v0 = coe d_drepDeposit_420 (coe v0)
-- Ledger.Conway.PParams._._.drepThresholds
d_drepThresholds_512 :: T_PParams_282 -> T_DrepThresholds_218
d_drepThresholds_512 v0 = coe d_drepThresholds_410 (coe v0)
-- Ledger.Conway.PParams._._.govActionDeposit
d_govActionDeposit_514 :: T_PParams_282 -> Integer
d_govActionDeposit_514 v0 = coe d_govActionDeposit_418 (coe v0)
-- Ledger.Conway.PParams._._.govActionLifetime
d_govActionLifetime_516 :: T_PParams_282 -> Integer
d_govActionLifetime_516 v0 = coe d_govActionLifetime_416 (coe v0)
-- Ledger.Conway.PParams._._.keyDeposit
d_keyDeposit_518 :: T_PParams_282 -> Integer
d_keyDeposit_518 v0 = coe d_keyDeposit_374 (coe v0)
-- Ledger.Conway.PParams._._.maxBlockExUnits
d_maxBlockExUnits_520 :: T_PParams_282 -> AgdaAny
d_maxBlockExUnits_520 v0 = coe d_maxBlockExUnits_362 (coe v0)
-- Ledger.Conway.PParams._._.maxBlockSize
d_maxBlockSize_522 :: T_PParams_282 -> Integer
d_maxBlockSize_522 v0 = coe d_maxBlockSize_354 (coe v0)
-- Ledger.Conway.PParams._._.maxCollateralInputs
d_maxCollateralInputs_524 :: T_PParams_282 -> Integer
d_maxCollateralInputs_524 v0
  = coe d_maxCollateralInputs_366 (coe v0)
-- Ledger.Conway.PParams._._.maxHeaderSize
d_maxHeaderSize_526 :: T_PParams_282 -> Integer
d_maxHeaderSize_526 v0 = coe d_maxHeaderSize_358 (coe v0)
-- Ledger.Conway.PParams._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_528 :: T_PParams_282 -> Integer
d_maxRefScriptSizePerBlock_528 v0
  = coe d_maxRefScriptSizePerBlock_390 (coe v0)
-- Ledger.Conway.PParams._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_530 :: T_PParams_282 -> Integer
d_maxRefScriptSizePerTx_530 v0
  = coe d_maxRefScriptSizePerTx_388 (coe v0)
-- Ledger.Conway.PParams._._.maxTxExUnits
d_maxTxExUnits_532 :: T_PParams_282 -> AgdaAny
d_maxTxExUnits_532 v0 = coe d_maxTxExUnits_360 (coe v0)
-- Ledger.Conway.PParams._._.maxTxSize
d_maxTxSize_534 :: T_PParams_282 -> Integer
d_maxTxSize_534 v0 = coe d_maxTxSize_356 (coe v0)
-- Ledger.Conway.PParams._._.maxValSize
d_maxValSize_536 :: T_PParams_282 -> Integer
d_maxValSize_536 v0 = coe d_maxValSize_364 (coe v0)
-- Ledger.Conway.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_538 ::
  T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_538 v0
  = coe d_minFeeRefScriptCoinsPerByte_386 (coe v0)
-- Ledger.Conway.PParams._._.minUTxOValue
d_minUTxOValue_540 :: T_PParams_282 -> Integer
d_minUTxOValue_540 v0 = coe d_minUTxOValue_396 (coe v0)
-- Ledger.Conway.PParams._._.monetaryExpansion
d_monetaryExpansion_542 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_542 v0 = coe d_monetaryExpansion_378 (coe v0)
-- Ledger.Conway.PParams._._.nopt
d_nopt_544 :: T_PParams_282 -> Integer
d_nopt_544 v0 = coe d_nopt_400 (coe v0)
-- Ledger.Conway.PParams._._.poolDeposit
d_poolDeposit_546 :: T_PParams_282 -> Integer
d_poolDeposit_546 v0 = coe d_poolDeposit_376 (coe v0)
-- Ledger.Conway.PParams._._.poolThresholds
d_poolThresholds_548 :: T_PParams_282 -> T_PoolThresholds_260
d_poolThresholds_548 v0 = coe d_poolThresholds_408 (coe v0)
-- Ledger.Conway.PParams._._.prices
d_prices_550 :: T_PParams_282 -> AgdaAny
d_prices_550 v0 = coe d_prices_384 (coe v0)
-- Ledger.Conway.PParams._._.pv
d_pv_552 :: T_PParams_282 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_552 v0 = coe d_pv_368 (coe v0)
-- Ledger.Conway.PParams._._.refScriptCostMultiplier
d_refScriptCostMultiplier_554 ::
  T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_554 v0
  = coe d_refScriptCostMultiplier_394 (coe v0)
-- Ledger.Conway.PParams._._.refScriptCostStride
d_refScriptCostStride_556 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_556 v0
  = coe d_refScriptCostStride_392 (coe v0)
-- Ledger.Conway.PParams._._.treasuryCut
d_treasuryCut_558 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_558 v0 = coe d_treasuryCut_380 (coe v0)
-- Ledger.Conway.PParams.paramsWellFormed
d_paramsWellFormed_560 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParams_282 -> ()
d_paramsWellFormed_560 = erased
-- Ledger.Conway.PParams.paramsWF-elim
d_paramsWF'45'elim_568 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParams_282 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_568 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_paramsWF'45'elim_568 v5
du_paramsWF'45'elim_568 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_568 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Ledger.Conway.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_588 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_588 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_588
du_DecEq'45'DrepThresholds_588 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_588
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_2765 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
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
d_DecEq'45'PoolThresholds_590 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_590 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_590
du_DecEq'45'PoolThresholds_590 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_590
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3329 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_3329 v7 v8 v9 v10 v11
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
d_DecEq'45'PParams_592 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_592 ~v0 v1 v2 = du_DecEq'45'PParams_592 v1 v2
du_DecEq'45'PParams_592 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_592 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_4923 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParams'46'constructor_4923 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                                               d_P6_258
                                                                                                                                                               (coe
                                                                                                                                                                  v31))
                                                                                                                                                            (coe
                                                                                                                                                               d_P6_258
                                                                                                                                                               (coe
                                                                                                                                                                  v67))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_256
                                                                                                                                                            (coe
                                                                                                                                                               v31))
                                                                                                                                                         (coe
                                                                                                                                                            d_P5d_256
                                                                                                                                                            (coe
                                                                                                                                                               v67))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_254
                                                                                                                                                         (coe
                                                                                                                                                            v31))
                                                                                                                                                      (coe
                                                                                                                                                         d_P5c_254
                                                                                                                                                         (coe
                                                                                                                                                            v67))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_252
                                                                                                                                                      (coe
                                                                                                                                                         v31))
                                                                                                                                                   (coe
                                                                                                                                                      d_P5b_252
                                                                                                                                                      (coe
                                                                                                                                                         v67))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_250
                                                                                                                                                   (coe
                                                                                                                                                      v31))
                                                                                                                                                (coe
                                                                                                                                                   d_P5a_250
                                                                                                                                                   (coe
                                                                                                                                                      v67))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                             (coe
                                                                                                                                                d_P4_248
                                                                                                                                                (coe
                                                                                                                                                   v31))
                                                                                                                                             (coe
                                                                                                                                                d_P4_248
                                                                                                                                                (coe
                                                                                                                                                   v67))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                          (coe
                                                                                                                                             d_P3_246
                                                                                                                                             (coe
                                                                                                                                                v31))
                                                                                                                                          (coe
                                                                                                                                             d_P3_246
                                                                                                                                             (coe
                                                                                                                                                v67))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_P2b_244
                                                                                                                                          (coe
                                                                                                                                             v31))
                                                                                                                                       (coe
                                                                                                                                          d_P2b_244
                                                                                                                                          (coe
                                                                                                                                             v67))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_P2a_242
                                                                                                                                       (coe
                                                                                                                                          v31))
                                                                                                                                    (coe
                                                                                                                                       d_P2a_242
                                                                                                                                       (coe
                                                                                                                                          v67))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_P1_240
                                                                                                                                    (coe
                                                                                                                                       v31))
                                                                                                                                 (coe
                                                                                                                                    d_P1_240
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
                                                                                                                                             d_Q5_280
                                                                                                                                             (coe
                                                                                                                                                v30))
                                                                                                                                          (coe
                                                                                                                                             d_Q5_280
                                                                                                                                             (coe
                                                                                                                                                v66))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                       (coe
                                                                                                                                          d_Q4_278
                                                                                                                                          (coe
                                                                                                                                             v30))
                                                                                                                                       (coe
                                                                                                                                          d_Q4_278
                                                                                                                                          (coe
                                                                                                                                             v66))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_276
                                                                                                                                       (coe
                                                                                                                                          v30))
                                                                                                                                    (coe
                                                                                                                                       d_Q2b_276
                                                                                                                                       (coe
                                                                                                                                          v66))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_274
                                                                                                                                    (coe
                                                                                                                                       v30))
                                                                                                                                 (coe
                                                                                                                                    d_Q2a_274
                                                                                                                                    (coe
                                                                                                                                       v66))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706
                                                                                                                              (coe
                                                                                                                                 d_Q1_272
                                                                                                                                 (coe
                                                                                                                                    v30))
                                                                                                                              (coe
                                                                                                                                 d_Q1_272
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
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
                                                   (MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                         (coe v1)))
                                                   v43 v7))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
d_DecEq'45'PParamGroup_594 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_594 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_594
du_DecEq'45'PParamGroup_594 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_594
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_208
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_208
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
                          C_EconomicGroup_210
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_212
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_214
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_216
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_210
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_208
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_210
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
                          C_TechnicalGroup_212
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_214
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_216
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_212
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_208
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_210
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_212
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
                          C_GovernanceGroup_214
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_216
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_214
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_208
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_210
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_212
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_214
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
                          C_SecurityGroup_216
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_216
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_208
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_210
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_212
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_214
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_216
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
d_Show'45'DrepThresholds_596 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_596 ~v0 ~v1 ~v2
  = du_Show'45'DrepThresholds_596
du_Show'45'DrepThresholds_596 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_596
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_2765 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
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
d_Show'45'PoolThresholds_598 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_598 ~v0 ~v1 ~v2
  = du_Show'45'PoolThresholds_598
du_Show'45'PoolThresholds_598 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_598
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_3329 v1 v2 v3 v4 v5
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
d_Show'45'PParams_600 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_600 ~v0 v1 v2 = du_Show'45'PParams_600 v1 v2
du_Show'45'PParams_600 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PParams_600 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_4923 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
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
                                                                                                                        (MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                                                                                              (coe
                                                                                                                                 v1)))
                                                                                                                        v6)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
                                                   (MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
                                                                  (coe d_Q1_272 (coe v30)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_Q2a_274 (coe v30)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_Q2b_276 (coe v30)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_Q4_278 (coe v30)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_Q5_280 (coe v30)))))))
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
                                                                                 d_P1_240
                                                                                 (coe v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                        (coe
                                                                           MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                           (coe
                                                                              d_P2a_242
                                                                              (coe v31)))))
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                     (coe
                                                                        MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                        (coe d_P2b_244 (coe v31)))))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                                  (coe
                                                                     MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                     (coe d_P3_246 (coe v31)))))
                                                            (coe
                                                               MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Show.d_show_6
                                                                  (coe d_P4_248 (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Show.d_show_6
                                                               (coe d_P5a_250 (coe v31)))))
                                                      (coe
                                                         MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Show.d_show_6
                                                            (coe d_P5b_252 (coe v31)))))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Show.d_show_6
                                                         (coe d_P5c_254 (coe v31)))))
                                                (coe
                                                   MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Show.d_show_6
                                                      (coe d_P5d_256 (coe v31)))))
                                             (coe
                                                MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Show.d_show_6
                                                   (coe d_P6_258 (coe v31)))))))
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
d_PParamsUpdate_604 a0 a1 a2 = ()
data T_PParamsUpdate_604
  = C_PParamsUpdate'46'constructor_496133 (Maybe Integer)
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
                                          (Maybe AgdaAny) (Maybe T_DrepThresholds_218)
                                          (Maybe T_PoolThresholds_260) (Maybe Integer)
                                          (Maybe Integer) (Maybe Integer) (Maybe AgdaAny)
                                          (Maybe Integer) (Maybe Integer)
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_676 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_676 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_678 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_678 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_680 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_680 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_682 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_682 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_684 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_684 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_686 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_686 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_688 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_688 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.pv
d_pv_690 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_690 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.a
d_a_692 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_692 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.b
d_b_694 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_694 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_696 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_696 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_698 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_698 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_700 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_700 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_702 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_702 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_704 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_704 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.prices
d_prices_706 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_706 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_708 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_708 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_710 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_710 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_712 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_712 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_714 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_714 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_716 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_716 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_718 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_718 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.a0
d_a0_720 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_720 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.Emax
d_Emax_722 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_722 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.nopt
d_nopt_724 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_724 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_726 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_726 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_728 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_728 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_730 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_730 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_732 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_732 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_734 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_734 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_736 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_736 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_738 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_738 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_740 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_740 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v33
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_742 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_742 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v34
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_744 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_744 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_496133 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
        -> coe v35
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_746 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 -> ()
d_paramsUpdateWellFormed_746 = erased
-- Ledger.Conway.PParams.PParamsUpdate._._.Emax
d_Emax_756 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_756 v0 = coe d_Emax_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.a
d_a_758 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_758 v0 = coe d_a_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.a0
d_a0_760 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_760 v0 = coe d_a0_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.b
d_b_762 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_762 v0 = coe d_b_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.ccMaxTermLength
d_ccMaxTermLength_764 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_764 v0 = coe d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.ccMinSize
d_ccMinSize_766 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_766 v0 = coe d_ccMinSize_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.coinsPerUTxOByte
d_coinsPerUTxOByte_768 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_768 v0 = coe d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.collateralPercentage
d_collateralPercentage_770 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_770 v0
  = coe d_collateralPercentage_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.costmdls
d_costmdls_772 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_772 v0 = coe d_costmdls_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.drepActivity
d_drepActivity_774 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_774 v0 = coe d_drepActivity_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.drepDeposit
d_drepDeposit_776 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_776 v0 = coe d_drepDeposit_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.drepThresholds
d_drepThresholds_778 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_778 v0 = coe d_drepThresholds_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.govActionDeposit
d_govActionDeposit_780 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_780 v0 = coe d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.govActionLifetime
d_govActionLifetime_782 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_782 v0 = coe d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.keyDeposit
d_keyDeposit_784 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_784 v0 = coe d_keyDeposit_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxBlockExUnits
d_maxBlockExUnits_786 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_786 v0 = coe d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxBlockSize
d_maxBlockSize_788 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_788 v0 = coe d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxCollateralInputs
d_maxCollateralInputs_790 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_790 v0
  = coe d_maxCollateralInputs_684 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxHeaderSize
d_maxHeaderSize_792 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_792 v0 = coe d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_794 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_794 v0
  = coe d_maxRefScriptSizePerBlock_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_796 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_796 v0
  = coe d_maxRefScriptSizePerTx_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxTxExUnits
d_maxTxExUnits_798 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_798 v0 = coe d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxTxSize
d_maxTxSize_800 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_800 v0 = coe d_maxTxSize_678 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.maxValSize
d_maxValSize_802 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_802 v0 = coe d_maxValSize_682 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_804 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_804 v0
  = coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.minUTxOValue
d_minUTxOValue_806 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_806 v0 = coe d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.monetaryExpansion
d_monetaryExpansion_808 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_808 v0 = coe d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.nopt
d_nopt_810 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_810 v0 = coe d_nopt_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.poolDeposit
d_poolDeposit_812 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_812 v0 = coe d_poolDeposit_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.poolThresholds
d_poolThresholds_814 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_814 v0 = coe d_poolThresholds_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.prices
d_prices_816 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_816 v0 = coe d_prices_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.pv
d_pv_818 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_818 v0 = coe d_pv_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.refScriptCostMultiplier
d_refScriptCostMultiplier_820 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_820 v0
  = coe d_refScriptCostMultiplier_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.refScriptCostStride
d_refScriptCostStride_822 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_822 v0
  = coe d_refScriptCostStride_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._._.treasuryCut
d_treasuryCut_824 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_824 v0 = coe d_treasuryCut_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_828 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_828 ~v0 ~v1 ~v2 v3
  = du_paramsUpdateWellFormed'63'_828 v3
du_paramsUpdateWellFormed'63'_828 ::
  T_PParamsUpdate_604 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_828 v0
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
                  (coe d_maxBlockSize_676 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe d_maxTxSize_678 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe d_maxHeaderSize_680 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe d_maxValSize_682 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe d_coinsPerUTxOByte_704 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe d_poolDeposit_698 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe d_collateralPercentage_726 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe d_ccMaxTermLength_744 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe d_govActionLifetime_734 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe d_govActionDeposit_736 (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe d_drepDeposit_738 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.Conway.PParams.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_832 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 -> Bool
d_modifiesNetworkGroup_832 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_832 v3
du_modifiesNetworkGroup_832 :: T_PParamsUpdate_604 -> Bool
du_modifiesNetworkGroup_832 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_676 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_678 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_680 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_682 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_684 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_686 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_688 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_690 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_838 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_838 v0 = coe d_Emax_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_840 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_840 v0 = coe d_a_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_842 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_842 v0 = coe d_a0_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_844 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_844 v0 = coe d_b_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_846 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_846 v0 = coe d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_848 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_848 v0 = coe d_ccMinSize_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_850 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_850 v0 = coe d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_852 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_852 v0
  = coe d_collateralPercentage_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_854 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_854 v0 = coe d_costmdls_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_856 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_856 v0 = coe d_drepActivity_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_858 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_858 v0 = coe d_drepDeposit_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_860 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_860 v0 = coe d_drepThresholds_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_862 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_862 v0 = coe d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_864 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_864 v0 = coe d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_866 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_866 v0 = coe d_keyDeposit_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_868 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_868 v0 = coe d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_870 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_870 v0 = coe d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_872 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_872 v0
  = coe d_maxCollateralInputs_684 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_874 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_874 v0 = coe d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_876 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_876 v0
  = coe d_maxRefScriptSizePerBlock_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_878 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_878 v0
  = coe d_maxRefScriptSizePerTx_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_880 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_880 v0 = coe d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_882 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_882 v0 = coe d_maxTxSize_678 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_884 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_884 v0 = coe d_maxValSize_682 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_886 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_886 v0
  = coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_888 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_888 v0 = coe d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_890 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_890 v0 = coe d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_892 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_892 v0 = coe d_nopt_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_894 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_894 v0 = coe d_poolDeposit_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_896 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_896 v0 = coe d_poolThresholds_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_898 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_898 v0 = coe d_prices_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_900 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_900 v0 = coe d_pv_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_902 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_902 v0
  = coe d_refScriptCostMultiplier_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_904 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_904 v0
  = coe d_refScriptCostStride_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_906 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_906 v0 = coe d_treasuryCut_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_908 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 -> Bool
d_modifiesEconomicGroup_908 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_908 v3
du_modifiesEconomicGroup_908 :: T_PParamsUpdate_604 -> Bool
du_modifiesEconomicGroup_908 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_692 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_694 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_696 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_698 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_monetaryExpansion_700 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_treasuryCut_702 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_coinsPerUTxOByte_704 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_maxRefScriptSizePerTx_710 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_maxRefScriptSizePerBlock_712 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                          (coe d_refScriptCostStride_714 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                             (coe d_refScriptCostMultiplier_716 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                (coe d_prices_706 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                                   (coe d_minUTxOValue_718 (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_914 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_914 v0 = coe d_Emax_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_916 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_916 v0 = coe d_a_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_918 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_918 v0 = coe d_a0_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_920 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_920 v0 = coe d_b_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_922 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_922 v0 = coe d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_924 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_924 v0 = coe d_ccMinSize_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_926 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_926 v0 = coe d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_928 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_928 v0
  = coe d_collateralPercentage_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_930 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_930 v0 = coe d_costmdls_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_932 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_932 v0 = coe d_drepActivity_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_934 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_934 v0 = coe d_drepDeposit_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_936 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_936 v0 = coe d_drepThresholds_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_938 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_938 v0 = coe d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_940 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_940 v0 = coe d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_942 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_942 v0 = coe d_keyDeposit_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_944 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_944 v0 = coe d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_946 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_946 v0 = coe d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_948 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_948 v0
  = coe d_maxCollateralInputs_684 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_950 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_950 v0 = coe d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_952 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_952 v0
  = coe d_maxRefScriptSizePerBlock_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_954 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_954 v0
  = coe d_maxRefScriptSizePerTx_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_956 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_956 v0 = coe d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_958 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_958 v0 = coe d_maxTxSize_678 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_960 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_960 v0 = coe d_maxValSize_682 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_962 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_962 v0
  = coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_964 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_964 v0 = coe d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_966 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_966 v0 = coe d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_968 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_968 v0 = coe d_nopt_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_970 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_970 v0 = coe d_poolDeposit_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_972 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_972 v0 = coe d_poolThresholds_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_974 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_974 v0 = coe d_prices_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_976 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_976 v0 = coe d_pv_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_978 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_978 v0
  = coe d_refScriptCostMultiplier_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_980 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_980 v0
  = coe d_refScriptCostStride_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_982 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_982 v0 = coe d_treasuryCut_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_984 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 -> Bool
d_modifiesTechnicalGroup_984 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_984 v3
du_modifiesTechnicalGroup_984 :: T_PParamsUpdate_604 -> Bool
du_modifiesTechnicalGroup_984 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_720 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_722 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_724 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_726 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_728 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_990 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_990 v0 = coe d_Emax_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_992 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_992 v0 = coe d_a_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_994 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_994 v0 = coe d_a0_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_996 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_996 v0 = coe d_b_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_998 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_998 v0 = coe d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1000 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_1000 v0 = coe d_ccMinSize_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1002 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_1002 v0 = coe d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1004 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_1004 v0
  = coe d_collateralPercentage_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_1006 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_1006 v0 = coe d_costmdls_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1008 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_1008 v0 = coe d_drepActivity_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1010 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_1010 v0 = coe d_drepDeposit_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1012 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_1012 v0 = coe d_drepThresholds_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1014 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_1014 v0 = coe d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1016 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_1016 v0 = coe d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1018 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_1018 v0 = coe d_keyDeposit_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1020 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_1020 v0 = coe d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1022 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_1022 v0 = coe d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1024 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_1024 v0
  = coe d_maxCollateralInputs_684 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1026 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_1026 v0 = coe d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1028 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_1028 v0
  = coe d_maxRefScriptSizePerBlock_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1030 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_1030 v0
  = coe d_maxRefScriptSizePerTx_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1032 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_1032 v0 = coe d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1034 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_1034 v0 = coe d_maxTxSize_678 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1036 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_1036 v0 = coe d_maxValSize_682 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1038 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1038 v0
  = coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1040 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_1040 v0 = coe d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1042 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1042 v0 = coe d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_1044 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_1044 v0 = coe d_nopt_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1046 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_1046 v0 = coe d_poolDeposit_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1048 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_1048 v0 = coe d_poolThresholds_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_1050 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_1050 v0 = coe d_prices_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_1052 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1052 v0 = coe d_pv_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1054 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1054 v0
  = coe d_refScriptCostMultiplier_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1056 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1056 v0
  = coe d_refScriptCostStride_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1058 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1058 v0 = coe d_treasuryCut_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1060 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 -> Bool
d_modifiesGovernanceGroup_1060 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_1060 v3
du_modifiesGovernanceGroup_1060 :: T_PParamsUpdate_604 -> Bool
du_modifiesGovernanceGroup_1060 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_730 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_732 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_734 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_736 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_738 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_740 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_742 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_744 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_1066 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_1066 v0 = coe d_Emax_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_1068 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_1068 v0 = coe d_a_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_1070 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1070 v0 = coe d_a0_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_1072 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_1072 v0 = coe d_b_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1074 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_1074 v0 = coe d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1076 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_1076 v0 = coe d_ccMinSize_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1078 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_1078 v0 = coe d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1080 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_1080 v0
  = coe d_collateralPercentage_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_1082 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_1082 v0 = coe d_costmdls_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1084 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_1084 v0 = coe d_drepActivity_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1086 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_1086 v0 = coe d_drepDeposit_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1088 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_1088 v0 = coe d_drepThresholds_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1090 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_1090 v0 = coe d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1092 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_1092 v0 = coe d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1094 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_1094 v0 = coe d_keyDeposit_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1096 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_1096 v0 = coe d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1098 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_1098 v0 = coe d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1100 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_1100 v0
  = coe d_maxCollateralInputs_684 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1102 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_1102 v0 = coe d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1104 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_1104 v0
  = coe d_maxRefScriptSizePerBlock_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1106 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_1106 v0
  = coe d_maxRefScriptSizePerTx_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1108 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_1108 v0 = coe d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1110 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_1110 v0 = coe d_maxTxSize_678 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1112 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_1112 v0 = coe d_maxValSize_682 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1114 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1114 v0
  = coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1116 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_1116 v0 = coe d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1118 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1118 v0 = coe d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_1120 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_1120 v0 = coe d_nopt_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1122 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_1122 v0 = coe d_poolDeposit_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1124 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_1124 v0 = coe d_poolThresholds_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_1126 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_1126 v0 = coe d_prices_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_1128 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1128 v0 = coe d_pv_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1130 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1130 v0
  = coe d_refScriptCostMultiplier_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1132 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1132 v0
  = coe d_refScriptCostStride_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1134 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1134 v0 = coe d_treasuryCut_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1136 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 -> Bool
d_modifiesSecurityGroup_1136 ~v0 ~v1 ~v2 v3
  = du_modifiesSecurityGroup_1136 v3
du_modifiesSecurityGroup_1136 :: T_PParamsUpdate_604 -> Bool
du_modifiesSecurityGroup_1136 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_270
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_676 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_678 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_680 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_682 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxBlockExUnits_688 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_b_694 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_a_692 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_coinsPerUTxOByte_704 (coe v0)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                    (coe d_govActionDeposit_736 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                       (coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.PParams.PParamsUpdate._.Emax
d_Emax_1142 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_1142 v0 = coe d_Emax_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a
d_a_1144 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_1144 v0 = coe d_a_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.a0
d_a0_1146 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1146 v0 = coe d_a0_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.b
d_b_1148 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_1148 v0 = coe d_b_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMaxTermLength
d_ccMaxTermLength_1150 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_1150 v0 = coe d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.ccMinSize
d_ccMinSize_1152 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_1152 v0 = coe d_ccMinSize_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.coinsPerUTxOByte
d_coinsPerUTxOByte_1154 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_1154 v0 = coe d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.collateralPercentage
d_collateralPercentage_1156 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_1156 v0
  = coe d_collateralPercentage_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.costmdls
d_costmdls_1158 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_1158 v0 = coe d_costmdls_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepActivity
d_drepActivity_1160 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_1160 v0 = coe d_drepActivity_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepDeposit
d_drepDeposit_1162 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_1162 v0 = coe d_drepDeposit_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.drepThresholds
d_drepThresholds_1164 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_1164 v0 = coe d_drepThresholds_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionDeposit
d_govActionDeposit_1166 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_1166 v0 = coe d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.govActionLifetime
d_govActionLifetime_1168 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_1168 v0 = coe d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.keyDeposit
d_keyDeposit_1170 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_1170 v0 = coe d_keyDeposit_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockExUnits
d_maxBlockExUnits_1172 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_1172 v0 = coe d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxBlockSize
d_maxBlockSize_1174 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_1174 v0 = coe d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxCollateralInputs
d_maxCollateralInputs_1176 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_1176 v0
  = coe d_maxCollateralInputs_684 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxHeaderSize
d_maxHeaderSize_1178 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_1178 v0 = coe d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1180 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_1180 v0
  = coe d_maxRefScriptSizePerBlock_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1182 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_1182 v0
  = coe d_maxRefScriptSizePerTx_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxExUnits
d_maxTxExUnits_1184 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_1184 v0 = coe d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxTxSize
d_maxTxSize_1186 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_1186 v0 = coe d_maxTxSize_678 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.maxValSize
d_maxValSize_1188 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_1188 v0 = coe d_maxValSize_682 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1190 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1190 v0
  = coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.minUTxOValue
d_minUTxOValue_1192 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_1192 v0 = coe d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.monetaryExpansion
d_monetaryExpansion_1194 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1194 v0 = coe d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.nopt
d_nopt_1196 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_1196 v0 = coe d_nopt_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolDeposit
d_poolDeposit_1198 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_1198 v0 = coe d_poolDeposit_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.poolThresholds
d_poolThresholds_1200 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_1200 v0 = coe d_poolThresholds_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.prices
d_prices_1202 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_1202 v0 = coe d_prices_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.pv
d_pv_1204 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1204 v0 = coe d_pv_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostMultiplier
d_refScriptCostMultiplier_1206 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1206 v0
  = coe d_refScriptCostMultiplier_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.refScriptCostStride
d_refScriptCostStride_1208 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1208 v0
  = coe d_refScriptCostStride_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.treasuryCut
d_treasuryCut_1210 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1210 v0 = coe d_treasuryCut_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1212 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 -> [T_PParamGroup_206]
d_modifiedUpdateGroups_1212 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_1212 v3
du_modifiedUpdateGroups_1212 ::
  T_PParamsUpdate_604 -> [T_PParamGroup_206]
du_modifiedUpdateGroups_1212 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du__'63''9552''8658'__1220 (coe v0)
         (coe du_modifiesNetworkGroup_832) (coe C_NetworkGroup_208))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du__'63''9552''8658'__1220 (coe v0)
            (coe du_modifiesEconomicGroup_908) (coe C_EconomicGroup_210))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               du__'63''9552''8658'__1220 (coe v0)
               (coe du_modifiesTechnicalGroup_984) (coe C_TechnicalGroup_212))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  du__'63''9552''8658'__1220 (coe v0)
                  (coe du_modifiesGovernanceGroup_1060) (coe C_GovernanceGroup_214))
               (coe
                  du__'63''9552''8658'__1220 (coe v0)
                  (coe du_modifiesSecurityGroup_1136) (coe C_SecurityGroup_216)))))
-- Ledger.Conway.PParams.PParamsUpdate._._?═⇒_
d__'63''9552''8658'__1220 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsUpdate_604 ->
  (T_PParamsUpdate_604 -> Bool) ->
  T_PParamGroup_206 -> [T_PParamGroup_206]
d__'63''9552''8658'__1220 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__1220 v3 v4 v5
du__'63''9552''8658'__1220 ::
  T_PParamsUpdate_604 ->
  (T_PParamsUpdate_604 -> Bool) ->
  T_PParamGroup_206 -> [T_PParamGroup_206]
du__'63''9552''8658'__1220 v0 v1 v2
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
d__'63''8599'__1228 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1228 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__1228 v4 v5
du__'63''8599'__1228 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1228 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate.≡-update
d_'8801''45'update_1242 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1242 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_1242 v4
du_'8801''45'update_1242 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1242 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
      (\ v1 -> coe du_to_1262 (coe v0)) erased
-- Ledger.Conway.PParams.PParamsUpdate._.to
d_to_1262 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
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
d_to_1262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_1262 v8
du_to_1262 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_1262 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsUpdate._.from
d_from_1274 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
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
d_from_1274 = erased
-- Ledger.Conway.PParams.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1276 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParams_282 -> T_PParamsUpdate_604 -> T_PParams_282
d_applyPParamsUpdate_1276 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_1276 v3 v4
du_applyPParamsUpdate_1276 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> T_PParams_282
du_applyPParamsUpdate_1276 v0 v1
  = coe
      C_PParams'46'constructor_4923
      (coe
         du__'63''8599'__1228 (coe d_maxBlockSize_676 (coe v1))
         (coe d_maxBlockSize_354 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxTxSize_678 (coe v1))
         (coe d_maxTxSize_356 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxHeaderSize_680 (coe v1))
         (coe d_maxHeaderSize_358 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxTxExUnits_686 (coe v1))
         (coe d_maxTxExUnits_360 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxBlockExUnits_688 (coe v1))
         (coe d_maxBlockExUnits_362 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxValSize_682 (coe v1))
         (coe d_maxValSize_364 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxCollateralInputs_684 (coe v1))
         (coe d_maxCollateralInputs_366 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_pv_690 (coe v1))
         (coe d_pv_368 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_a_692 (coe v1)) (coe d_a_370 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_b_694 (coe v1)) (coe d_b_372 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_keyDeposit_696 (coe v1))
         (coe d_keyDeposit_374 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_poolDeposit_698 (coe v1))
         (coe d_poolDeposit_376 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_monetaryExpansion_700 (coe v1))
         (coe d_monetaryExpansion_378 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_treasuryCut_702 (coe v1))
         (coe d_treasuryCut_380 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_coinsPerUTxOByte_704 (coe v1))
         (coe d_coinsPerUTxOByte_382 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_prices_706 (coe v1))
         (coe d_prices_384 (coe v0)))
      (coe
         du__'63''8599'__1228
         (coe d_minFeeRefScriptCoinsPerByte_708 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_386 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxRefScriptSizePerTx_710 (coe v1))
         (coe d_maxRefScriptSizePerTx_388 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_maxRefScriptSizePerBlock_712 (coe v1))
         (coe d_maxRefScriptSizePerBlock_390 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_refScriptCostStride_714 (coe v1))
         (coe d_refScriptCostStride_392 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_refScriptCostMultiplier_716 (coe v1))
         (coe d_refScriptCostMultiplier_394 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_minUTxOValue_718 (coe v1))
         (coe d_minUTxOValue_396 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_Emax_722 (coe v1))
         (coe d_Emax_398 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_nopt_724 (coe v1))
         (coe d_nopt_400 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_a0_720 (coe v1))
         (coe d_a0_402 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_collateralPercentage_726 (coe v1))
         (coe d_collateralPercentage_404 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_costmdls_728 (coe v1))
         (coe d_costmdls_406 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_poolThresholds_732 (coe v1))
         (coe d_poolThresholds_408 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_drepThresholds_730 (coe v1))
         (coe d_drepThresholds_410 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_ccMinSize_742 (coe v1))
         (coe d_ccMinSize_412 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_ccMaxTermLength_744 (coe v1))
         (coe d_ccMaxTermLength_414 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_govActionLifetime_734 (coe v1))
         (coe d_govActionLifetime_416 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_govActionDeposit_736 (coe v1))
         (coe d_govActionDeposit_418 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_drepDeposit_738 (coe v1))
         (coe d_drepDeposit_420 (coe v0)))
      (coe
         du__'63''8599'__1228 (coe d_drepActivity_740 (coe v1))
         (coe d_drepActivity_422 (coe v0)))
-- Ledger.Conway.PParams.PParamsUpdate._.P.Emax
d_Emax_1288 :: T_PParams_282 -> T_PParamsUpdate_604 -> AgdaAny
d_Emax_1288 v0 ~v1 = du_Emax_1288 v0
du_Emax_1288 :: T_PParams_282 -> AgdaAny
du_Emax_1288 v0 = coe d_Emax_398 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.a
d_a_1290 :: T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_a_1290 v0 ~v1 = du_a_1290 v0
du_a_1290 :: T_PParams_282 -> Integer
du_a_1290 v0 = coe d_a_370 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.a0
d_a0_1292 ::
  T_PParams_282 ->
  T_PParamsUpdate_604 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1292 v0 ~v1 = du_a0_1292 v0
du_a0_1292 ::
  T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_1292 v0 = coe d_a0_402 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.b
d_b_1294 :: T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_b_1294 v0 ~v1 = du_b_1294 v0
du_b_1294 :: T_PParams_282 -> Integer
du_b_1294 v0 = coe d_b_372 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.ccMaxTermLength
d_ccMaxTermLength_1296 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_ccMaxTermLength_1296 v0 ~v1 = du_ccMaxTermLength_1296 v0
du_ccMaxTermLength_1296 :: T_PParams_282 -> Integer
du_ccMaxTermLength_1296 v0 = coe d_ccMaxTermLength_414 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.ccMinSize
d_ccMinSize_1298 :: T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_ccMinSize_1298 v0 ~v1 = du_ccMinSize_1298 v0
du_ccMinSize_1298 :: T_PParams_282 -> Integer
du_ccMinSize_1298 v0 = coe d_ccMinSize_412 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_1300 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_coinsPerUTxOByte_1300 v0 ~v1 = du_coinsPerUTxOByte_1300 v0
du_coinsPerUTxOByte_1300 :: T_PParams_282 -> Integer
du_coinsPerUTxOByte_1300 v0 = coe d_coinsPerUTxOByte_382 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.collateralPercentage
d_collateralPercentage_1302 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_collateralPercentage_1302 v0 ~v1
  = du_collateralPercentage_1302 v0
du_collateralPercentage_1302 :: T_PParams_282 -> Integer
du_collateralPercentage_1302 v0
  = coe d_collateralPercentage_404 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.costmdls
d_costmdls_1304 :: T_PParams_282 -> T_PParamsUpdate_604 -> AgdaAny
d_costmdls_1304 v0 ~v1 = du_costmdls_1304 v0
du_costmdls_1304 :: T_PParams_282 -> AgdaAny
du_costmdls_1304 v0 = coe d_costmdls_406 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.drepActivity
d_drepActivity_1306 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> AgdaAny
d_drepActivity_1306 v0 ~v1 = du_drepActivity_1306 v0
du_drepActivity_1306 :: T_PParams_282 -> AgdaAny
du_drepActivity_1306 v0 = coe d_drepActivity_422 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.drepDeposit
d_drepDeposit_1308 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_drepDeposit_1308 v0 ~v1 = du_drepDeposit_1308 v0
du_drepDeposit_1308 :: T_PParams_282 -> Integer
du_drepDeposit_1308 v0 = coe d_drepDeposit_420 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.drepThresholds
d_drepThresholds_1310 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> T_DrepThresholds_218
d_drepThresholds_1310 v0 ~v1 = du_drepThresholds_1310 v0
du_drepThresholds_1310 :: T_PParams_282 -> T_DrepThresholds_218
du_drepThresholds_1310 v0 = coe d_drepThresholds_410 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.govActionDeposit
d_govActionDeposit_1312 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_govActionDeposit_1312 v0 ~v1 = du_govActionDeposit_1312 v0
du_govActionDeposit_1312 :: T_PParams_282 -> Integer
du_govActionDeposit_1312 v0 = coe d_govActionDeposit_418 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.govActionLifetime
d_govActionLifetime_1314 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_govActionLifetime_1314 v0 ~v1 = du_govActionLifetime_1314 v0
du_govActionLifetime_1314 :: T_PParams_282 -> Integer
du_govActionLifetime_1314 v0 = coe d_govActionLifetime_416 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.keyDeposit
d_keyDeposit_1316 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_keyDeposit_1316 v0 ~v1 = du_keyDeposit_1316 v0
du_keyDeposit_1316 :: T_PParams_282 -> Integer
du_keyDeposit_1316 v0 = coe d_keyDeposit_374 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxBlockExUnits
d_maxBlockExUnits_1318 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> AgdaAny
d_maxBlockExUnits_1318 v0 ~v1 = du_maxBlockExUnits_1318 v0
du_maxBlockExUnits_1318 :: T_PParams_282 -> AgdaAny
du_maxBlockExUnits_1318 v0 = coe d_maxBlockExUnits_362 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxBlockSize
d_maxBlockSize_1320 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_maxBlockSize_1320 v0 ~v1 = du_maxBlockSize_1320 v0
du_maxBlockSize_1320 :: T_PParams_282 -> Integer
du_maxBlockSize_1320 v0 = coe d_maxBlockSize_354 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxCollateralInputs
d_maxCollateralInputs_1322 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_maxCollateralInputs_1322 v0 ~v1 = du_maxCollateralInputs_1322 v0
du_maxCollateralInputs_1322 :: T_PParams_282 -> Integer
du_maxCollateralInputs_1322 v0
  = coe d_maxCollateralInputs_366 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxHeaderSize
d_maxHeaderSize_1324 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_maxHeaderSize_1324 v0 ~v1 = du_maxHeaderSize_1324 v0
du_maxHeaderSize_1324 :: T_PParams_282 -> Integer
du_maxHeaderSize_1324 v0 = coe d_maxHeaderSize_358 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1326 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_maxRefScriptSizePerBlock_1326 v0 ~v1
  = du_maxRefScriptSizePerBlock_1326 v0
du_maxRefScriptSizePerBlock_1326 :: T_PParams_282 -> Integer
du_maxRefScriptSizePerBlock_1326 v0
  = coe d_maxRefScriptSizePerBlock_390 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1328 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_maxRefScriptSizePerTx_1328 v0 ~v1
  = du_maxRefScriptSizePerTx_1328 v0
du_maxRefScriptSizePerTx_1328 :: T_PParams_282 -> Integer
du_maxRefScriptSizePerTx_1328 v0
  = coe d_maxRefScriptSizePerTx_388 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxTxExUnits
d_maxTxExUnits_1330 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> AgdaAny
d_maxTxExUnits_1330 v0 ~v1 = du_maxTxExUnits_1330 v0
du_maxTxExUnits_1330 :: T_PParams_282 -> AgdaAny
du_maxTxExUnits_1330 v0 = coe d_maxTxExUnits_360 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxTxSize
d_maxTxSize_1332 :: T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_maxTxSize_1332 v0 ~v1 = du_maxTxSize_1332 v0
du_maxTxSize_1332 :: T_PParams_282 -> Integer
du_maxTxSize_1332 v0 = coe d_maxTxSize_356 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.maxValSize
d_maxValSize_1334 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_maxValSize_1334 v0 ~v1 = du_maxValSize_1334 v0
du_maxValSize_1334 :: T_PParams_282 -> Integer
du_maxValSize_1334 v0 = coe d_maxValSize_364 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1336 ::
  T_PParams_282 ->
  T_PParamsUpdate_604 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1336 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_1336 v0
du_minFeeRefScriptCoinsPerByte_1336 ::
  T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_1336 v0
  = coe d_minFeeRefScriptCoinsPerByte_386 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.minUTxOValue
d_minUTxOValue_1338 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_minUTxOValue_1338 v0 ~v1 = du_minUTxOValue_1338 v0
du_minUTxOValue_1338 :: T_PParams_282 -> Integer
du_minUTxOValue_1338 v0 = coe d_minUTxOValue_396 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.monetaryExpansion
d_monetaryExpansion_1340 ::
  T_PParams_282 ->
  T_PParamsUpdate_604 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1340 v0 ~v1 = du_monetaryExpansion_1340 v0
du_monetaryExpansion_1340 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_monetaryExpansion_1340 v0 = coe d_monetaryExpansion_378 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.nopt
d_nopt_1342 :: T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_nopt_1342 v0 ~v1 = du_nopt_1342 v0
du_nopt_1342 :: T_PParams_282 -> Integer
du_nopt_1342 v0 = coe d_nopt_400 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.poolDeposit
d_poolDeposit_1344 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> Integer
d_poolDeposit_1344 v0 ~v1 = du_poolDeposit_1344 v0
du_poolDeposit_1344 :: T_PParams_282 -> Integer
du_poolDeposit_1344 v0 = coe d_poolDeposit_376 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.poolThresholds
d_poolThresholds_1346 ::
  T_PParams_282 -> T_PParamsUpdate_604 -> T_PoolThresholds_260
d_poolThresholds_1346 v0 ~v1 = du_poolThresholds_1346 v0
du_poolThresholds_1346 :: T_PParams_282 -> T_PoolThresholds_260
du_poolThresholds_1346 v0 = coe d_poolThresholds_408 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.prices
d_prices_1348 :: T_PParams_282 -> T_PParamsUpdate_604 -> AgdaAny
d_prices_1348 v0 ~v1 = du_prices_1348 v0
du_prices_1348 :: T_PParams_282 -> AgdaAny
du_prices_1348 v0 = coe d_prices_384 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.pv
d_pv_1350 ::
  T_PParams_282 ->
  T_PParamsUpdate_604 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1350 v0 ~v1 = du_pv_1350 v0
du_pv_1350 ::
  T_PParams_282 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_1350 v0 = coe d_pv_368 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.refScriptCostMultiplier
d_refScriptCostMultiplier_1352 ::
  T_PParams_282 ->
  T_PParamsUpdate_604 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1352 v0 ~v1
  = du_refScriptCostMultiplier_1352 v0
du_refScriptCostMultiplier_1352 ::
  T_PParams_282 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_refScriptCostMultiplier_1352 v0
  = coe d_refScriptCostMultiplier_394 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.refScriptCostStride
d_refScriptCostStride_1354 ::
  T_PParams_282 ->
  T_PParamsUpdate_604 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1354 v0 ~v1 = du_refScriptCostStride_1354 v0
du_refScriptCostStride_1354 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_refScriptCostStride_1354 v0
  = coe d_refScriptCostStride_392 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.P.treasuryCut
d_treasuryCut_1356 ::
  T_PParams_282 ->
  T_PParamsUpdate_604 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1356 v0 ~v1 = du_treasuryCut_1356 v0
du_treasuryCut_1356 ::
  T_PParams_282 -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_treasuryCut_1356 v0 = coe d_treasuryCut_380 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.Emax
d_Emax_1360 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_Emax_1360 v0 = coe d_Emax_722 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.a
d_a_1362 :: T_PParamsUpdate_604 -> Maybe Integer
d_a_1362 v0 = coe d_a_692 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.a0
d_a0_1364 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1364 v0 = coe d_a0_720 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.b
d_b_1366 :: T_PParamsUpdate_604 -> Maybe Integer
d_b_1366 v0 = coe d_b_694 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.ccMaxTermLength
d_ccMaxTermLength_1368 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMaxTermLength_1368 v0 = coe d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.ccMinSize
d_ccMinSize_1370 :: T_PParamsUpdate_604 -> Maybe Integer
d_ccMinSize_1370 v0 = coe d_ccMinSize_742 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_1372 :: T_PParamsUpdate_604 -> Maybe Integer
d_coinsPerUTxOByte_1372 v0 = coe d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.collateralPercentage
d_collateralPercentage_1374 :: T_PParamsUpdate_604 -> Maybe Integer
d_collateralPercentage_1374 v0
  = coe d_collateralPercentage_726 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.costmdls
d_costmdls_1376 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_costmdls_1376 v0 = coe d_costmdls_728 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.drepActivity
d_drepActivity_1378 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_drepActivity_1378 v0 = coe d_drepActivity_740 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.drepDeposit
d_drepDeposit_1380 :: T_PParamsUpdate_604 -> Maybe Integer
d_drepDeposit_1380 v0 = coe d_drepDeposit_738 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.drepThresholds
d_drepThresholds_1382 ::
  T_PParamsUpdate_604 -> Maybe T_DrepThresholds_218
d_drepThresholds_1382 v0 = coe d_drepThresholds_730 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.govActionDeposit
d_govActionDeposit_1384 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionDeposit_1384 v0 = coe d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.govActionLifetime
d_govActionLifetime_1386 :: T_PParamsUpdate_604 -> Maybe Integer
d_govActionLifetime_1386 v0 = coe d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.keyDeposit
d_keyDeposit_1388 :: T_PParamsUpdate_604 -> Maybe Integer
d_keyDeposit_1388 v0 = coe d_keyDeposit_696 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxBlockExUnits
d_maxBlockExUnits_1390 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxBlockExUnits_1390 v0 = coe d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxBlockSize
d_maxBlockSize_1392 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxBlockSize_1392 v0 = coe d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxCollateralInputs
d_maxCollateralInputs_1394 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxCollateralInputs_1394 v0
  = coe d_maxCollateralInputs_684 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxHeaderSize
d_maxHeaderSize_1396 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxHeaderSize_1396 v0 = coe d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1398 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerBlock_1398 v0
  = coe d_maxRefScriptSizePerBlock_712 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1400 ::
  T_PParamsUpdate_604 -> Maybe Integer
d_maxRefScriptSizePerTx_1400 v0
  = coe d_maxRefScriptSizePerTx_710 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxTxExUnits
d_maxTxExUnits_1402 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_maxTxExUnits_1402 v0 = coe d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxTxSize
d_maxTxSize_1404 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxTxSize_1404 v0 = coe d_maxTxSize_678 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.maxValSize
d_maxValSize_1406 :: T_PParamsUpdate_604 -> Maybe Integer
d_maxValSize_1406 v0 = coe d_maxValSize_682 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1408 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1408 v0
  = coe d_minFeeRefScriptCoinsPerByte_708 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.minUTxOValue
d_minUTxOValue_1410 :: T_PParamsUpdate_604 -> Maybe Integer
d_minUTxOValue_1410 v0 = coe d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.monetaryExpansion
d_monetaryExpansion_1412 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1412 v0 = coe d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.nopt
d_nopt_1414 :: T_PParamsUpdate_604 -> Maybe Integer
d_nopt_1414 v0 = coe d_nopt_724 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.poolDeposit
d_poolDeposit_1416 :: T_PParamsUpdate_604 -> Maybe Integer
d_poolDeposit_1416 v0 = coe d_poolDeposit_698 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.poolThresholds
d_poolThresholds_1418 ::
  T_PParamsUpdate_604 -> Maybe T_PoolThresholds_260
d_poolThresholds_1418 v0 = coe d_poolThresholds_732 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.prices
d_prices_1420 :: T_PParamsUpdate_604 -> Maybe AgdaAny
d_prices_1420 v0 = coe d_prices_706 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.pv
d_pv_1422 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1422 v0 = coe d_pv_690 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.refScriptCostMultiplier
d_refScriptCostMultiplier_1424 ::
  T_PParamsUpdate_604 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1424 v0
  = coe d_refScriptCostMultiplier_716 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.refScriptCostStride
d_refScriptCostStride_1426 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1426 v0
  = coe d_refScriptCostStride_714 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate._.U.treasuryCut
d_treasuryCut_1428 ::
  T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1428 v0 = coe d_treasuryCut_702 (coe v0)
-- Ledger.Conway.PParams.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1430 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1430 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1430 v1 v2
du_DecEq'45'PParamsUpdate_1430 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1430 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_496133 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37
                -> coe
                     (\ v38 ->
                        case coe v38 of
                          C_PParamsUpdate'46'constructor_496133 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63 v64 v65 v66 v67 v68 v69 v70 v71 v72 v73
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
                                                                                                                                 du_DecEq'45'PoolThresholds_590))
                                                                                                                           (coe
                                                                                                                              v67)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                           (coe
                                                                                                                              du_DecEq'45'DrepThresholds_588))
                                                                                                                        (coe
                                                                                                                           v66)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
                                                                                          MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
                                                               MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                                  (coe v1))))
                                                         (coe v45) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
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
d_pvCanFollow'63'_1436 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1436 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1436 v3 v4
du_pvCanFollow'63'_1436 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1436 v0 v1
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
                                                                                                   C_canFollowMajor_200)))
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
                                                                                                    C_canFollowMajor_200)))
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
                                                                                                   C_canFollowMinor_202)))
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
                                                                                                    C_canFollowMinor_202)))
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
                                                                                                    C_canFollowMajor_200)))
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
                                                                                                     C_canFollowMajor_200)))
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
                                                                                                    C_canFollowMinor_202)))
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
                                                                                                     C_canFollowMinor_202)))
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
d_PParamsDiff_1484 a0 a1 a2 = ()
data T_PParamsDiff_1484
  = C_PParamsDiff'46'constructor_967851 (T_PParams_282 ->
                                         AgdaAny -> T_PParams_282)
                                        (AgdaAny -> [T_PParamGroup_206])
                                        (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Conway.PParams.PParamsDiff.UpdateT
d_UpdateT_1498 :: T_PParamsDiff_1484 -> ()
d_UpdateT_1498 = erased
-- Ledger.Conway.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1500 ::
  T_PParamsDiff_1484 -> T_PParams_282 -> AgdaAny -> T_PParams_282
d_applyUpdate_1500 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967851 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsDiff.updateGroups
d_updateGroups_1502 ::
  T_PParamsDiff_1484 -> AgdaAny -> [T_PParamGroup_206]
d_updateGroups_1502 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967851 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1508 ::
  T_PParamsDiff_1484 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1508 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_967851 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1510 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsDiff_1484 -> AgdaAny -> ()
d_ppdWellFormed_1510 = erased
-- Ledger.Conway.PParams.GovParams
d_GovParams_1516 a0 a1 a2 = ()
data T_GovParams_1516
  = C_GovParams'46'constructor_968555 T_PParamsDiff_1484
                                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.PParams._.UpdateT
d_UpdateT_1522 :: T_PParamsDiff_1484 -> ()
d_UpdateT_1522 = erased
-- Ledger.Conway.PParams._.applyUpdate
d_applyUpdate_1524 ::
  T_PParamsDiff_1484 -> T_PParams_282 -> AgdaAny -> T_PParams_282
d_applyUpdate_1524 v0 = coe d_applyUpdate_1500 (coe v0)
-- Ledger.Conway.PParams._.ppWF?
d_ppWF'63'_1526 ::
  T_PParamsDiff_1484 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1526 v0 = coe d_ppWF'63'_1508 (coe v0)
-- Ledger.Conway.PParams._.ppdWellFormed
d_ppdWellFormed_1528 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_PParamsDiff_1484 -> AgdaAny -> ()
d_ppdWellFormed_1528 = erased
-- Ledger.Conway.PParams._.updateGroups
d_updateGroups_1530 ::
  T_PParamsDiff_1484 -> AgdaAny -> [T_PParamGroup_206]
d_updateGroups_1530 v0 = coe d_updateGroups_1502 (coe v0)
-- Ledger.Conway.PParams.GovParams.ppUpd
d_ppUpd_1534 :: T_GovParams_1516 -> T_PParamsDiff_1484
d_ppUpd_1534 v0
  = case coe v0 of
      C_GovParams'46'constructor_968555 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.PParams.GovParams._.UpdateT
d_UpdateT_1538 :: T_GovParams_1516 -> ()
d_UpdateT_1538 = erased
-- Ledger.Conway.PParams.GovParams._.applyUpdate
d_applyUpdate_1540 ::
  T_GovParams_1516 -> T_PParams_282 -> AgdaAny -> T_PParams_282
d_applyUpdate_1540 v0
  = coe d_applyUpdate_1500 (coe d_ppUpd_1534 (coe v0))
-- Ledger.Conway.PParams.GovParams._.ppWF?
d_ppWF'63'_1542 ::
  T_GovParams_1516 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1542 v0
  = coe d_ppWF'63'_1508 (coe d_ppUpd_1534 (coe v0))
-- Ledger.Conway.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1544 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  T_GovParams_1516 -> AgdaAny -> ()
d_ppdWellFormed_1544 = erased
-- Ledger.Conway.PParams.GovParams._.updateGroups
d_updateGroups_1546 ::
  T_GovParams_1516 -> AgdaAny -> [T_PParamGroup_206]
d_updateGroups_1546 v0
  = coe d_updateGroups_1502 (coe d_ppUpd_1534 (coe v0))
-- Ledger.Conway.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1548 ::
  T_GovParams_1516 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1548 v0
  = case coe v0 of
      C_GovParams'46'constructor_968555 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
