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

module MAlonzo.Code.Reflection.Ext where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.PreludeMeta

-- Reflection.Ext.extendContextTel
d_extendContextTel_10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_extendContextTel_10 v0 ~v1 = du_extendContextTel_10 v0
du_extendContextTel_10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_extendContextTel_10 v0 = coe du_'46'extendedlambda0_12 (coe v0)
-- Reflection.Ext..extendedlambda0
d_'46'extendedlambda0_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_'46'extendedlambda0_12 v0 ~v1 v2
  = du_'46'extendedlambda0_12 v0 v2
du_'46'extendedlambda0_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_'46'extendedlambda0_12 v0 v1
  = case coe v1 of
      [] -> coe (\ v2 -> v2)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_380 v0 erased
                         v4 v5 (coe du_extendContextTel_10 v0 v3 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Ext.extendContextTel′
d_extendContextTel'8242'_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_extendContextTel'8242'_20 v0 ~v1
  = du_extendContextTel'8242'_20 v0
du_extendContextTel'8242'_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
du_extendContextTel'8242'_20 v0
  = coe du_'46'extendedlambda1_22 (coe v0)
-- Reflection.Ext..extendedlambda1
d_'46'extendedlambda1_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_'46'extendedlambda1_22 v0 ~v1 v2 v3
  = du_'46'extendedlambda1_22 v0 v2 v3
du_'46'extendedlambda1_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
du_'46'extendedlambda1_22 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    (\ v7 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_380 v0 erased
                         v5 v6 (coe du_extendContextTel'8242'_20 v0 v4 v2 v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Ext.reduceDef
d_reduceDef_34 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduceDef_34 v0
  = let v1
          = coe
              MAlonzo.Code.Class.Monad.Core.d_return_16
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased v0 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe
                MAlonzo.Code.Class.MonadTC.d_reduce_154
                MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 v0
         _ -> coe v1)
-- Reflection.Ext.apply∗
d_apply'8727'_42 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_apply'8727'_42 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v2)
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v3) (coe v1))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v2)
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v3) (coe v1))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v2)
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v3) (coe v1))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 (coe v2)
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v3) (coe v1))
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v2)
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v3) (coe v1))
      _ -> coe v0
-- Reflection.Ext._`∷_
d__'96''8759'__72 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d__'96''8759'__72 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadTC.d_quoteTC_156
         MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 () erased v0)
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
           erased
           (coe
              MAlonzo.Code.Class.MonadTC.d_quoteTC_156
              MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 () erased v1)
           (\ v4 ->
              coe
                MAlonzo.Code.Class.MonadTC.d_unify_142
                MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 v2
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                   (coe
                      (MAlonzo.RTE.QName
                         (22 :: Integer) (15090436609435731260 :: Integer)
                         "Agda.Builtin.List.List._\8759_"
                         (MAlonzo.RTE.Fixity
                            MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (5.0 :: Double)))))
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
                         (coe v3))
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
                            (coe v4))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Reflection.Ext.freeVars
d_freeVars_84 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_freeVars_84 = coe d_go_90 (coe (0 :: Integer))
-- Reflection.Ext._.go
d_go_90 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_go_90 v0 = coe d_'46'extendedlambda4_104 (coe v0)
-- Reflection.Ext._.goArg
d_goArg_92 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> [Integer]
d_goArg_92 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> coe d_go_90 v0 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Ext._.goAbs
d_goAbs_94 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 -> [Integer]
d_goAbs_94 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v2 v3
        -> coe d_go_90 v0 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Ext._.goArgs
d_goArgs_96 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_goArgs_96 v0 = coe d_'46'extendedlambda5_136 (coe v0)
-- Reflection.Ext._.goCl
d_goCl_98 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> [Integer]
d_goCl_98 v0 = coe d_'46'extendedlambda6_144 (coe v0)
-- Reflection.Ext._.goCls
d_goCls_100 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> [Integer]
d_goCls_100 v0 = coe d_'46'extendedlambda7_152 (coe v0)
-- Reflection.Ext._..extendedlambda4
d_'46'extendedlambda4_104 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_'46'extendedlambda4_104 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
           -> coe
                MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                (coe
                   MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10 (coe v0) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                   (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v3 v0))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
           -> coe d_goArgs_96 v0 v4
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
           -> coe d_goArgs_96 v0 v4
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4
           -> coe
                d_goAbs_94 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v4)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
           -> coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__62
                (coe d_goCls_100 v0 v3) (coe d_goArgs_96 v0 v4)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v3 v4
           -> coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__62
                (coe d_goArg_92 (coe v0) (coe v3))
                (coe
                   d_goAbs_94 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v4))
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
           -> coe d_goArgs_96 v0 v4
         _ -> coe v2)
-- Reflection.Ext._..extendedlambda5
d_'46'extendedlambda5_136 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_'46'extendedlambda5_136 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__62
             (coe d_goArg_92 (coe v0) (coe v2)) (coe d_goArgs_96 v0 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Ext._..extendedlambda6
d_'46'extendedlambda6_144 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> [Integer]
d_'46'extendedlambda6_144 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v2 v3 v4
        -> coe
             d_go_90
             (addInt
                (coe MAlonzo.Code.Data.List.Base.du_length_304 v2) (coe v0))
             v4
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Ext._..extendedlambda7
d_'46'extendedlambda7_152 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> [Integer]
d_'46'extendedlambda7_152 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe d_goCl_98 v0 v2)
             (coe d_goCls_100 v0 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Ext.AbsTelescope
d_AbsTelescope_190 :: ()
d_AbsTelescope_190 = erased
-- Reflection.Ext.absTelescope
d_absTelescope_192 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_absTelescope_192
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (\ v0 ->
         case coe v0 of
           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2
             -> coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Reflection.Ext.telescopeAbs
d_telescopeAbs_200 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_telescopeAbs_200
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122))
-- Reflection.Ext.showAbsTel
d_showAbsTel_202 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showAbsTel_202 v0
  = coe
      MAlonzo.Code.Class.Show.Core.d_show_16
      MAlonzo.Code.Class.Show.Instances.d_Show'45'Tel_94
      (coe d_absTelescope_192 v0)
-- Reflection.Ext.hasInstance
d_hasInstance_204 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasInstance_204 v0
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSuccessful_202
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
      (coe MAlonzo.Code.PreludeMeta.d_iTCE_74)
      (coe MAlonzo.Code.PreludeMeta.d_iTC_72) (coe ())
      (coe
         MAlonzo.Code.Class.MonadTC.d_checkType_150
         MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (264 :: Integer) (10779521135412943468 :: Integer)
                  "Function.Base.it"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         v0)
-- Reflection.Ext.Semigroup-Term-×
d_Semigroup'45'Term'45''215'_206 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'Term'45''215'_206
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
              (coe
                 (MAlonzo.RTE.QName
                    (76 :: Integer) (14176793942586333973 :: Integer)
                    "Data.Product.Base._\215_"
                    (MAlonzo.RTE.Fixity
                       MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (2.0 :: Double)))))
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
                    (coe v0))
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
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Reflection.Ext.Semigroup-Term-⊎
d_Semigroup'45'Term'45''8846'_214 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'Term'45''8846'_214
  = coe
      MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
              (coe
                 (MAlonzo.RTE.QName
                    (30 :: Integer) (9738182687374166275 :: Integer)
                    "Data.Sum.Base._\8846_"
                    (MAlonzo.RTE.Fixity
                       MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (1.0 :: Double)))))
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
                    (coe v0))
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
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Reflection.Ext.Monoid-Term-×
d_Monoid'45'Term'45''215'_222 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'Term'45''215'_222
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (6 :: Integer) (13559399870857524843 :: Integer)
               "Agda.Builtin.Unit.\8868"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Reflection.Ext.Monoid-Term-⊎
d_Monoid'45'Term'45''8846'_232 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'Term'45''8846'_232
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (6 :: Integer) (15304854876389679301 :: Integer) "Data.Empty.\8869"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
