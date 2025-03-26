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

module MAlonzo.Code.Reflection.Utils where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.AST.Argument.Information
import qualified MAlonzo.Code.Reflection.AST.Argument.Visibility
import qualified MAlonzo.Code.Reflection.AST.Name
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Reflection.Utils.TypeView
d_TypeView_10 :: ()
d_TypeView_10 = erased
-- Reflection.Utils.DataDef
d_DataDef_12 = ()
data T_DataDef_12
  = C_DataDef'46'constructor_181 AgdaAny
                                 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                 [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
                                 [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
-- Reflection.Utils.DataDef.name
d_name_22 :: T_DataDef_12 -> AgdaAny
d_name_22 v0
  = case coe v0 of
      C_DataDef'46'constructor_181 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.DataDef.constructors
d_constructors_24 ::
  T_DataDef_12 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_constructors_24 v0
  = case coe v0 of
      C_DataDef'46'constructor_181 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.DataDef.params
d_params_26 ::
  T_DataDef_12 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_params_26 v0
  = case coe v0 of
      C_DataDef'46'constructor_181 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.DataDef.indices
d_indices_28 ::
  T_DataDef_12 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_indices_28 v0
  = case coe v0 of
      C_DataDef'46'constructor_181 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.RecordDef
d_RecordDef_30 = ()
data T_RecordDef_30
  = C_RecordDef'46'constructor_311 AgdaAny
                                   [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
                                   [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
-- Reflection.Utils.RecordDef.name
d_name_38 :: T_RecordDef_30 -> AgdaAny
d_name_38 v0
  = case coe v0 of
      C_RecordDef'46'constructor_311 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.RecordDef.fields
d_fields_40 ::
  T_RecordDef_30 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_fields_40 v0
  = case coe v0 of
      C_RecordDef'46'constructor_311 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.RecordDef.params
d_params_42 ::
  T_RecordDef_30 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_params_42 v0
  = case coe v0 of
      C_RecordDef'46'constructor_311 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.absName
d_absName_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_absName_44 ~v0 ~v1 v2 = du_absName_44 v2
du_absName_44 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_absName_44 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.getVisibility
d_getVisibility_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48
d_getVisibility_54 ~v0 ~v1 v2 = du_getVisibility_54 v2
du_getVisibility_54 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48
du_getVisibility_54 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v3 v4
               -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.findMetas
d_findMetas_58 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_findMetas_58 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v1 v2
        -> coe d_findMetas''_60 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v1 v2
        -> coe d_findMetas''_60 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v1 v2
        -> coe d_findMetas''_60 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v3 v4
               -> coe d_findMetas_58 (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v1 v2
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__32
             (coe d_findMetasCl_62 (coe v1)) (coe d_findMetas''_60 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
                      -> coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe d_findMetas_58 (coe v4)) (coe d_findMetas_58 (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v1
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v1
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
             (coe d_findMetas''_60 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.findMetas'
d_findMetas''_60 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_findMetas''_60 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe d_findMetas_58 (coe v4)) (coe d_findMetas''_60 (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.findMetasCl
d_findMetasCl_62 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_findMetasCl_62 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v3 v4 v5
               -> coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe d_findMetas_58 (coe v5)) (coe d_findMetasCl_62 (coe v2))
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v3 v4
               -> coe d_findMetasCl_62 (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.isMeta
d_isMeta_116 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_isMeta_116 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Reflection.Utils.unArgs
d_unArgs_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [AgdaAny]
d_unArgs_118 ~v0 ~v1 = du_unArgs_118
du_unArgs_118 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [AgdaAny]
du_unArgs_118
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe MAlonzo.Code.Reflection.AST.Argument.du_unArg_74)
-- Reflection.Utils.mapVariables
d_mapVariables_120 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_mapVariables_120 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v2)
             (coe du_go_136 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 v2
        -> coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 (coe v0 v2)
      _ -> coe v1
-- Reflection.Utils._.go
d_go_136 ::
  (Integer -> Integer) ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_go_136 v0 ~v1 ~v2 v3 = du_go_136 v0 v3
du_go_136 ::
  (Integer -> Integer) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_go_136 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
                       (coe d_mapVariables_120 (coe v0) (coe v5)))
                    (coe du_go_136 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.viewTy
d_viewTy_146 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_viewTy_146 v0
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
                       (d_viewTy_146 (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Reflection.Utils.tyView
d_tyView_158 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_tyView_158 v0
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
                                 d_tyView_158
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.argumentWise
d_argumentWise_170 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_argumentWise_170 v0 v1
  = coe
      d_tyView_158
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe
               MAlonzo.Code.Reflection.AST.Abstraction.du_map_22
               (coe MAlonzo.Code.Reflection.AST.Argument.du_map_54 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe d_viewTy_146 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe d_viewTy_146 (coe v1))))
-- Reflection.Utils.viewTy′
d_viewTy'8242'_182 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_viewTy'8242'_182 v0
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
                       (d_viewTy'8242'_182 (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Reflection.Utils.argTys
d_argTys_192 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_argTys_192 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_viewTy'8242'_182 (coe v0))
-- Reflection.Utils.resultTy
d_resultTy_194 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_resultTy_194 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_viewTy'8242'_182 (coe v0))
-- Reflection.Utils.tyName
d_tyName_196 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_tyName_196 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
         _ -> coe v1)
-- Reflection.Utils.args
d_args_202 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_args_202 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v2 v3 -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3 -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3 -> coe v3
         _ -> coe v1)
-- Reflection.Utils.args′
d_args'8242'_210 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_args'8242'_210 v0 = coe du_unArgs_118 (d_args_202 (coe v0))
-- Reflection.Utils._._⁇_
d__'8263'__218 ::
  (Integer -> Integer) -> Integer -> Integer -> Integer
d__'8263'__218 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v1) (coe v2))
      (coe v0 v2) (coe v2)
-- Reflection.Utils._.mapFreeVars
d_mapFreeVars_224 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_mapFreeVars_224 v0 v1
  = coe d_'46'extendedlambda0_242 (coe v0) (coe v1)
-- Reflection.Utils._.mapFreeVars∗
d_mapFreeVars'8727'_226 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_mapFreeVars'8727'_226 v0 v1
  = coe d_'46'extendedlambda1_284 (coe v0) (coe v1)
-- Reflection.Utils._.mapFreeVarsᵖ
d_mapFreeVars'7510'_228 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_mapFreeVars'7510'_228 v0 v1
  = coe d_'46'extendedlambda2_294 (coe v0) (coe v1)
-- Reflection.Utils._.mapFreeVarsᵖ∗
d_mapFreeVars'7510''8727'_230 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_mapFreeVars'7510''8727'_230 v0 v1
  = coe d_'46'extendedlambda3_308 (coe v0) (coe v1)
-- Reflection.Utils._.mapFreeVarsᵗ
d_mapFreeVars'7511'_232 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapFreeVars'7511'_232 v0 v1
  = coe d_'46'extendedlambda4_318 (coe v0) (coe v1)
-- Reflection.Utils._.mapFreeVarsᶜ
d_mapFreeVars'7580'_234 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_mapFreeVars'7580'_234 v0 v1
  = coe d_'46'extendedlambda5_330 (coe v0) (coe v1)
-- Reflection.Utils._.mapFreeVarsᶜ∗
d_mapFreeVars'7580''8727'_236 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_mapFreeVars'7580''8727'_236 v0 v1
  = coe d_'46'extendedlambda6_344 (coe v0) (coe v1)
-- Reflection.Utils._.mapFreeVarsˢ
d_mapFreeVars'738'_238 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_mapFreeVars'738'_238 v0 v1
  = coe d_'46'extendedlambda7_352 (coe v0) (coe v1)
-- Reflection.Utils._..extendedlambda0
d_'46'extendedlambda0_242 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'46'extendedlambda0_242 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
             (coe d__'8263'__218 (coe v0) (coe v1) (coe v3))
             (coe d_mapFreeVars'8727'_226 v0 v1 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3)
             (coe d_mapFreeVars'8727'_226 v0 v1 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
             (coe d_mapFreeVars'8727'_226 v0 v1 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v3)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v5)
                       (coe
                          d_mapFreeVars_224 v0 (addInt (coe (1 :: Integer)) (coe v1)) v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
             (coe d_mapFreeVars'7580''8727'_236 v0 v1 v3)
             (coe d_mapFreeVars'8727'_226 v0 v1 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v7 v8
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                              (coe d_mapFreeVars_224 v0 v1 v6))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v7)
                              (coe
                                 d_mapFreeVars_224 v0 (addInt (coe (1 :: Integer)) (coe v1)) v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
             (coe d_mapFreeVars'738'_238 v0 v1 v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v3)
             (coe d_mapFreeVars'8727'_226 v0 v1 v4)
      _ -> coe v2
-- Reflection.Utils._..extendedlambda1
d_'46'extendedlambda1_284 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_'46'extendedlambda1_284 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                       (coe d_mapFreeVars_224 v0 v1 v6))
                    (coe d_mapFreeVars'8727'_226 v0 v1 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils._..extendedlambda2
d_'46'extendedlambda2_294 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_'46'extendedlambda2_294 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v3)
             (coe d_mapFreeVars'7510''8727'_230 v0 v1 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248
             (coe d_mapFreeVars_224 v0 v1 v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264
             (coe d__'8263'__218 (coe v0) (coe v1) (coe v3))
      _ -> coe v2
-- Reflection.Utils._..extendedlambda3
d_'46'extendedlambda3_308 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_'46'extendedlambda3_308 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                       (coe d_mapFreeVars'7510'_228 v0 v1 v6))
                    (coe
                       d_mapFreeVars'7510''8727'_230 v0
                       (addInt (coe (1 :: Integer)) (coe v1)) v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils._..extendedlambda4
d_'46'extendedlambda4_318 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'extendedlambda4_318 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v7)
                                 (coe d_mapFreeVars_224 v0 v1 v8)))
                           (coe
                              d_mapFreeVars'7511'_232 v0 (addInt (coe (1 :: Integer)) (coe v1))
                              v4)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils._..extendedlambda5
d_'46'extendedlambda5_330 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_'46'extendedlambda5_330 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v3 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
             (coe d_mapFreeVars'7511'_232 v0 v1 v3)
             (coe d_mapFreeVars'7510''8727'_230 v0 v1 v4)
             (coe
                d_mapFreeVars_224 v0
                (addInt
                   (coe MAlonzo.Code.Data.List.Base.du_length_284 v3) (coe v1))
                v5)
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
             (coe d_mapFreeVars'7511'_232 v0 v1 v3)
             (coe d_mapFreeVars'7510''8727'_230 v0 v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils._..extendedlambda6
d_'46'extendedlambda6_344 ::
  (Integer -> Integer) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_'46'extendedlambda6_344 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_mapFreeVars'7580'_234 v0 v1 v3)
             (coe d_mapFreeVars'7580''8727'_236 v0 v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils._..extendedlambda7
d_'46'extendedlambda7_352 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_'46'extendedlambda7_352 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
             (coe d_mapFreeVars_224 v0 v1 v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228
             (coe d_mapFreeVars_224 v0 v1 v3)
      _ -> coe v2
-- Reflection.Utils._.mapVars
d_mapVars_360 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_mapVars_360 v0
  = coe d_mapFreeVars_224 (coe v0) (coe (0 :: Integer))
-- Reflection.Utils.varsToUnknown
d_varsToUnknown_362 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_varsToUnknown_362 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v1)
             (coe d_varsToUnknown'8242'_364 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v1)
             (coe d_varsToUnknown'8242'_364 (coe v2))
      _ -> coe v0
-- Reflection.Utils.varsToUnknown′
d_varsToUnknown'8242'_364 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_varsToUnknown'8242'_364 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3)
                       (coe d_varsToUnknown_362 (coe v4)))
                    (coe d_varsToUnknown'8242'_364 (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.parameters
d_parameters_382 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Definition_280 -> Integer
d_parameters_382 v0
  = let v1 = 0 :: Integer in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v2 v3
           -> coe v2
         _ -> coe v1)
-- Reflection.Utils.vArgs
d_vArgs_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [AgdaAny]
d_vArgs_386 ~v0 ~v1 v2 = du_vArgs_386 v2
du_vArgs_386 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [AgdaAny]
du_vArgs_386 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v5 v6
                      -> let v7 = coe du_vArgs_386 (coe v2) in
                         coe
                           (case coe v5 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                -> case coe v6 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v8 v9
                                       -> case coe v8 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                              -> case coe v9 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                     -> coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe v4) (coe du_vArgs_386 (coe v2))
                                                   _ -> coe v7
                                            _ -> coe v7
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.argInfo
d_argInfo_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76
d_argInfo_394 ~v0 ~v1 v2 = du_argInfo_394 v2
du_argInfo_394 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76
du_argInfo_394 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.isVisible?
d_isVisible'63'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVisible'63'_400 ~v0 ~v1 v2 = du_isVisible'63'_400 v2
du_isVisible'63'_400 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVisible'63'_400 v0
  = coe
      MAlonzo.Code.Reflection.AST.Argument.Visibility.d__'8799'__8
      (coe
         MAlonzo.Code.Reflection.AST.Argument.Information.d_visibility_16
         (coe du_argInfo_394 (coe v0)))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
-- Reflection.Utils.isInstance?
d_isInstance'63'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isInstance'63'_406 ~v0 ~v1 v2 = du_isInstance'63'_406 v2
du_isInstance'63'_406 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isInstance'63'_406 v0
  = coe
      MAlonzo.Code.Reflection.AST.Argument.Visibility.d__'8799'__8
      (coe
         MAlonzo.Code.Reflection.AST.Argument.Information.d_visibility_16
         (coe du_argInfo_394 (coe v0)))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
-- Reflection.Utils.isHidden?
d_isHidden'63'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isHidden'63'_412 ~v0 ~v1 v2 = du_isHidden'63'_412 v2
du_isHidden'63'_412 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isHidden'63'_412 v0
  = coe
      MAlonzo.Code.Reflection.AST.Argument.Visibility.d__'8799'__8
      (coe
         MAlonzo.Code.Reflection.AST.Argument.Information.d_visibility_16
         (coe du_argInfo_394 (coe v0)))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
-- Reflection.Utils.remove-iArgs
d_remove'45'iArgs_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_remove'45'iArgs_416 ~v0 ~v1 v2 = du_remove'45'iArgs_416 v2
du_remove'45'iArgs_416 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_remove'45'iArgs_416 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v5 v6
                      -> let v7
                               = coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                   (coe du_remove'45'iArgs_416 (coe v2)) in
                         coe
                           (case coe v5 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54
                                -> case coe v6 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v8 v9
                                       -> case coe v8 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                              -> case coe v9 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                     -> coe du_remove'45'iArgs_416 (coe v2)
                                                   _ -> coe v7
                                            _ -> coe v7
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.hide
d_hide_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_hide_426 ~v0 ~v1 v2 = du_hide_426 v2
du_hide_426 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
du_hide_426 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v5 v6
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                    -> case coe v6 of
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                           -> coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                   (coe v4))
                                                (coe v2)
                                         _ -> coe v0
                                  _ -> coe v0
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v5 v6
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                    -> coe seq (coe v6) (coe v0)
                                  _ -> coe v0
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v5 v6
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                    -> coe seq (coe v6) (coe v0)
                                  _ -> coe v0
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.∀indices⋯
d_'8704'indices'8943'_436 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'8704'indices'8943'_436 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
             (coe du_hide_426 (coe v2))
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                (coe ("_" :: Data.Text.Text))
                (coe d_'8704'indices'8943'_436 (coe v3) (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.apply⋯
d_apply'8943'_446 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_apply'8943'_446 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v1)
      (coe
         du_remove'45'iArgs_416
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe
               (\ v2 ->
                  case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v0)
                                        (addInt
                                           (coe (1 :: Integer))
                                           (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v3))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               MAlonzo.Code.Data.List.Base.du_zip_182
               (MAlonzo.Code.Data.List.Base.d_allFin_424
                  (coe MAlonzo.Code.Data.List.Base.du_length_284 v0))
               v0)))
-- Reflection.Utils.mkRecord
d_mkRecord_458 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_mkRecord_458 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe
            (\ v1 ->
               case coe v1 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                   -> coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 (coe v2))))
                        (coe v3)
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Reflection.Utils.updateField
d_updateField_468 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_updateField_468 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                 (coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
                    erased
                    (MAlonzo.Code.Reflection.AST.Name.d__'8799'__12 (coe v4) (coe v2)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 (coe v2))))
                    (coe v3))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 (coe v4))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                             (coe v1))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
