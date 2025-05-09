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

module MAlonzo.Code.QstdlibZ45Zmeta.Reflection where

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
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base

-- stdlib-meta.Reflection.iTC
d_iTC_86 :: MAlonzo.Code.Class.MonadTC.T_MonadTC_80
d_iTC_86 = coe MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_878
-- stdlib-meta.Reflection.iTCE
d_iTCE_88 :: MAlonzo.Code.Class.MonadError.T_MonadError_16
d_iTCE_88 = coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30
-- stdlib-meta.Reflection.extendContextTel
d_extendContextTel_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_extendContextTel_90 v0 ~v1 = du_extendContextTel_90 v0
du_extendContextTel_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_extendContextTel_90 v0 = coe du_'46'extendedlambda0_92 (coe v0)
-- stdlib-meta.Reflection..extendedlambda0
d_'46'extendedlambda0_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_'46'extendedlambda0_92 v0 ~v1 v2
  = du_'46'extendedlambda0_92 v0 v2
du_'46'extendedlambda0_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_'46'extendedlambda0_92 v0 v1
  = case coe v1 of
      [] -> coe (\ v2 -> v2)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_382 v0 erased
                         v4 v5 (coe du_extendContextTel_90 v0 v3 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Reflection.extendContextTel′
d_extendContextTel'8242'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_extendContextTel'8242'_100 v0 ~v1
  = du_extendContextTel'8242'_100 v0
du_extendContextTel'8242'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_extendContextTel'8242'_100 v0
  = coe du_'46'extendedlambda1_102 (coe v0)
-- stdlib-meta.Reflection..extendedlambda1
d_'46'extendedlambda1_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_'46'extendedlambda1_102 v0 ~v1 v2 v3
  = du_'46'extendedlambda1_102 v0 v2 v3
du_'46'extendedlambda1_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_'46'extendedlambda1_102 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    (\ v7 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_382 v0 erased
                         v5 v6 (coe du_extendContextTel'8242'_100 v0 v4 v2 v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Reflection.reduceDef
d_reduceDef_114 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduceDef_114 v0
  = let v1
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v0 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Reflection.d_reduce_352 v0
         _ -> coe v1)
-- stdlib-meta.Reflection._`∷_
d__'96''8759'__122 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d__'96''8759'__122 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 () erased v0)
      (\ v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
           erased
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 () erased v1)
           (\ v4 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2
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
-- stdlib-meta.Reflection.freeVars
d_freeVars_134 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_freeVars_134 = coe d_go_140 (coe (0 :: Integer))
-- stdlib-meta.Reflection._.go
d_go_140 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_go_140 v0 = coe d_'46'extendedlambda3_154 (coe v0)
-- stdlib-meta.Reflection._.goArg
d_goArg_142 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> [Integer]
d_goArg_142 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> coe d_go_140 v0 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Reflection._.goAbs
d_goAbs_144 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 -> [Integer]
d_goAbs_144 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v2 v3
        -> coe d_go_140 v0 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Reflection._.goArgs
d_goArgs_146 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_goArgs_146 v0 = coe d_'46'extendedlambda4_186 (coe v0)
-- stdlib-meta.Reflection._.goCl
d_goCl_148 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> [Integer]
d_goCl_148 v0 = coe d_'46'extendedlambda5_194 (coe v0)
-- stdlib-meta.Reflection._.goCls
d_goCls_150 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> [Integer]
d_goCls_150 v0 = coe d_'46'extendedlambda6_202 (coe v0)
-- stdlib-meta.Reflection._..extendedlambda3
d_'46'extendedlambda3_154 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_'46'extendedlambda3_154 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
           -> coe
                MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                (coe
                   MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                   (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v3 v0))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
           -> coe d_goArgs_146 v0 v4
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
           -> coe d_goArgs_146 v0 v4
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4
           -> coe
                d_goAbs_144 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v4)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
           -> coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                (coe d_goCls_150 v0 v3) (coe d_goArgs_146 v0 v4)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v3 v4
           -> coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                (coe d_goArg_142 (coe v0) (coe v3))
                (coe
                   d_goAbs_144 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v4))
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
           -> coe d_goArgs_146 v0 v4
         _ -> coe v2)
-- stdlib-meta.Reflection._..extendedlambda4
d_'46'extendedlambda4_186 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_'46'extendedlambda4_186 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__32
             (coe d_goArg_142 (coe v0) (coe v2)) (coe d_goArgs_146 v0 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Reflection._..extendedlambda5
d_'46'extendedlambda5_194 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> [Integer]
d_'46'extendedlambda5_194 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v2 v3 v4
        -> coe
             d_go_140
             (addInt
                (coe MAlonzo.Code.Data.List.Base.du_length_284 v2) (coe v0))
             v4
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Reflection._..extendedlambda6
d_'46'extendedlambda6_202 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> [Integer]
d_'46'extendedlambda6_202 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe d_goCl_148 v0 v2)
             (coe d_goCls_150 v0 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Reflection.AbsTelescope
d_AbsTelescope_240 :: ()
d_AbsTelescope_240 = erased
-- stdlib-meta.Reflection.absTelescope
d_absTelescope_242 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_absTelescope_242
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- stdlib-meta.Reflection.telescopeAbs
d_telescopeAbs_250 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_telescopeAbs_250
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122))
-- stdlib-meta.Reflection.showAbsTel
d_showAbsTel_252 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showAbsTel_252 v0
  = coe
      MAlonzo.Code.Class.Show.Core.d_show_16
      MAlonzo.Code.Class.Show.Instances.d_Show'45'Tel_104
      (coe d_absTelescope_242 v0)
-- stdlib-meta.Reflection.hasInstance
d_hasInstance_254 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasInstance_254 v0
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSuccessful_190
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
      (coe d_iTCE_88) (coe d_iTC_86) (coe ())
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (264 :: Integer) (10779521135412943468 :: Integer)
                  "Function.Base.it"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         v0)
-- stdlib-meta.Reflection.Semigroup-Term-×
d_Semigroup'45'Term'45''215'_256 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'Term'45''215'_256
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
-- stdlib-meta.Reflection.Semigroup-Term-⊎
d_Semigroup'45'Term'45''8846'_264 ::
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_Semigroup'45'Term'45''8846'_264
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
-- stdlib-meta.Reflection.Monoid-Term-×
d_Monoid'45'Term'45''215'_272 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'Term'45''215'_272
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
-- stdlib-meta.Reflection.Monoid-Term-⊎
d_Monoid'45'Term'45''8846'_282 ::
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_Monoid'45'Term'45''8846'_282
  = coe
      MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (6 :: Integer) (15304854876389679301 :: Integer) "Data.Empty.\8869"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
