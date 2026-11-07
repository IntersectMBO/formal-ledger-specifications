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

module MAlonzo.Code.Reflection.Utils.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.Utils.Args

-- Reflection.Utils.Core.absName
d_absName_6 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_absName_6 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.tyName
d_tyName_12 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_tyName_12 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
         _ -> coe v1)
-- Reflection.Utils.Core.insertName
d_insertName_20 :: AgdaAny -> [AgdaAny] -> [AgdaAny]
d_insertName_20 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v0 v2)
             (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                (coe d_insertName_20 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core._≡ᵐ_
d__'8801''7504'__30 :: Maybe AgdaAny -> Maybe AgdaAny -> Bool
d__'8801''7504'__30 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
           -> case coe v1 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v3 v4
                _ -> coe v2
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> case coe v1 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                _ -> coe v2
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Reflection.Utils.Core.headName
d_headName_36 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_headName_36 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v2 v3
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v4 v5
                  -> coe d_headName_36 (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Reflection.Utils.Core.pickDefName
d_pickDefName_42 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [AgdaAny] -> [AgdaAny]
d_pickDefName_42 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_44
      (\ v2 -> d_insertName_20 (coe v2) (coe v1)) v1
      (d_headName_36 (coe v0))
-- Reflection.Utils.Core.extractNat
d_extractNat_50 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe Integer
d_extractNat_50 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
           -> case coe v2 of
                MAlonzo.RTE.QName 8 13537827747504913145 _ _
                  -> case coe v3 of
                       []
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer))
                       _ -> coe v1
                MAlonzo.RTE.QName 12 13537827747504913145 _ _
                  -> case coe v3 of
                       (:) v4 v5
                         -> case coe v4 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                                -> case coe v6 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v8 v9
                                       -> case coe v8 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                              -> case coe v9 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v10 v11
                                                     -> case coe v10 of
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                            -> case coe v11 of
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                   -> case coe v5 of
                                                                        []
                                                                          -> coe
                                                                               MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                               (\ v12 ->
                                                                                  addInt
                                                                                    (coe
                                                                                       (1 ::
                                                                                          Integer))
                                                                                    (coe v12))
                                                                               (d_extractNat_50
                                                                                  (coe v7))
                                                                        _ -> coe v1
                                                                 _ -> coe v1
                                                          _ -> coe v1
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> coe v1
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> coe v1
                _ -> coe v1
         MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v2
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_nat_128 v3
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3)
                _ -> coe v1
         _ -> coe v1)
-- Reflection.Utils.Core.peelLitCon
d_peelLitCon_56 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe Integer
d_peelLitCon_56 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
           -> let v5
                    = coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v3 v0 in
              coe
                (if coe v5
                   then let v6
                              = coe MAlonzo.Code.Reflection.Utils.Args.du_vArgs_40 () v4 in
                        coe
                          (case coe v6 of
                             (:) v7 v8
                               -> case coe v8 of
                                    [] -> coe d_extractNat_50 (coe v7)
                                    _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                   else coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> coe v2)
-- Reflection.Utils.Core.extractCarrierNat
d_extractCarrierNat_70 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe Integer
d_extractCarrierNat_70 v0 v1
  = let v2 = d_extractNat_50 (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3 -> coe v2
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> case coe v0 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
                  -> coe d_peelLitCon_56 (coe v3) (coe v1)
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Reflection.Utils.Core.TypeView
d_TypeView_84 :: ()
d_TypeView_84 = erased
-- Reflection.Utils.Core.viewTy
d_viewTy_86 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_viewTy_86 v0
  = let v1
          = coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0) in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v4 v5
                  -> coe
                       MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v4) (coe v2)))
                       (d_viewTy_86 (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Reflection.Utils.Core.tyView
d_tyView_98 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_tyView_98 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             [] -> coe v2
             (:) v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 (coe v6)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v5)
                              (coe
                                 d_tyView_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.argumentWise
d_argumentWise_110 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_argumentWise_110 v0 v1
  = coe
      d_tyView_98
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe
               MAlonzo.Code.Reflection.AST.Abstraction.du_map_22
               (coe MAlonzo.Code.Reflection.AST.Argument.du_map_54 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe d_viewTy_86 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe d_viewTy_86 (coe v1))))
-- Reflection.Utils.Core.viewTy′
d_viewTy'8242'_122 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_viewTy'8242'_122 v0
  = let v1
          = coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0) in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v4 v5
                  -> coe
                       MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                       (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2))
                       (d_viewTy'8242'_122 (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Reflection.Utils.Core.argTys
d_argTys_132 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_argTys_132 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_viewTy'8242'_122 (coe v0))
-- Reflection.Utils.Core.resultTy
d_resultTy_134 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_resultTy_134 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_viewTy'8242'_122 (coe v0))
-- Reflection.Utils.Core.tyTele
d_tyTele_136 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tyTele_136 = coe d_'46'extendedlambda5_138
-- Reflection.Utils.Core..extendedlambda5
d_'46'extendedlambda5_138 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'extendedlambda5_138 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v4 v5
                  -> coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2))
                       (coe d_tyTele_136 v5)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Reflection.Utils.Core.DataDef
d_DataDef_146 = ()
data T_DataDef_146
  = C_constructor_164 AgdaAny
                      [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                      [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
                      [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
-- Reflection.Utils.Core.DataDef.name
d_name_156 :: T_DataDef_146 -> AgdaAny
d_name_156 v0
  = case coe v0 of
      C_constructor_164 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.DataDef.constructors
d_constructors_158 ::
  T_DataDef_146 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_constructors_158 v0
  = case coe v0 of
      C_constructor_164 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.DataDef.params
d_params_160 ::
  T_DataDef_146 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_params_160 v0
  = case coe v0 of
      C_constructor_164 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.DataDef.indices
d_indices_162 ::
  T_DataDef_146 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_indices_162 v0
  = case coe v0 of
      C_constructor_164 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.RecordDef
d_RecordDef_166 = ()
data T_RecordDef_166
  = C_constructor_180 AgdaAny
                      [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
                      [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
-- Reflection.Utils.Core.RecordDef.name
d_name_174 :: T_RecordDef_166 -> AgdaAny
d_name_174 v0
  = case coe v0 of
      C_constructor_180 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.RecordDef.fields
d_fields_176 ::
  T_RecordDef_166 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_fields_176 v0
  = case coe v0 of
      C_constructor_180 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.RecordDef.params
d_params_178 ::
  T_RecordDef_166 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_params_178 v0
  = case coe v0 of
      C_constructor_180 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Core.parameters
d_parameters_182 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Definition_280 -> Integer
d_parameters_182 v0
  = let v1 = 0 :: Integer in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v2 v3
           -> coe v2
         _ -> coe v1)
-- Reflection.Utils.Core.toTelescope
d_toTelescope_186 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toTelescope_186
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Reflection.Utils.Core.fromTelescope
d_fromTelescope_194 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_fromTelescope_194
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
