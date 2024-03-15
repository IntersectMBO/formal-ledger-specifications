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

module MAlonzo.Code.Foreign.Convertible.Deriving where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Meta
import qualified MAlonzo.Code.Reflection.AST.DeBruijn
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.TCM.Format
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils
import qualified MAlonzo.Code.Reflection.Utils.TCI

-- Foreign.Convertible.Deriving._
d___6 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
d___6 v0
  = coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)
-- Foreign.Convertible.Deriving.liftTC
d_liftTC_12 ::
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_liftTC_12 v0 ~v1 = du_liftTC_12 v0
du_liftTC_12 :: AgdaAny -> AgdaAny
du_liftTC_12 v0 = coe v0
-- Foreign.Convertible.Deriving.Subst
d_Subst_30 :: () -> ()
d_Subst_30 = erased
-- Foreign.Convertible.Deriving.substTerm
d_substTerm_34 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_substTerm_34 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
        -> coe
             d_'46'extendedlambda0_52 (coe v0) (coe v1) (coe v3) (coe v4)
             (coe MAlonzo.Code.Data.Nat.Base.d_compare_444 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3)
             (coe d_substArgs_36 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
             (coe d_substArgs_36 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v3)
             (coe d_substAbs_40 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
        -> coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
             (coe d_substArg_38 (coe v0) (coe v1) (coe v3))
             (coe d_substAbs_40 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
             (coe d_substSort_42 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v3)
             (coe d_substArgs_36 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.substArgs
d_substArgs_36 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_substArgs_36 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_substArg_38 (coe v0) (coe v1) (coe v3))
             (coe d_substArgs_36 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.substArg
d_substArg_38 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_substArg_38 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3)
             (coe d_substTerm_34 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.substAbs
d_substAbs_40 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
d_substAbs_40 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v3)
             (coe
                d_substTerm_34 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.substSort
d_substSort_42 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_substSort_42 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
             (coe d_substTerm_34 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_224 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228
             (coe d_substTerm_34 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_232 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_236 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_238 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving..extendedlambda0
d_'46'extendedlambda0_52 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Data.Nat.Base.T_Ordering_422 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'46'extendedlambda0_52 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C_less_428 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
             (coe
                MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                (addInt (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v6))
                (1 :: Integer))
             (coe d_substArgs_36 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Data.Nat.Base.C_equal_432 -> coe v1
      MAlonzo.Code.Data.Nat.Base.C_greater_438 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v2)
             (coe
                d_substArgs_36
                (coe addInt (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v6))
                (coe v1) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.TyViewTel
d_TyViewTel_180 :: ()
d_TyViewTel_180 = erased
-- Foreign.Convertible.Deriving.substTel
d_substTel_182 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_substTel_182 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v5)
                       (coe d_substArg_38 (coe v0) (coe v1) (coe v6)))
                    (coe
                       d_substTel_182 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.smashLevels
d_smashLevels_198 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_smashLevels_198 v0
  = let v1
          = coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
              (coe v0) in
    coe
      (case coe v0 of
         (:) v2 v3
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v4 v5
                  -> case coe v5 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                         -> case coe v7 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v8 v9
                                -> case coe v8 of
                                     MAlonzo.RTE.QName 18 10880583612240331187 _ _
                                       -> case coe v9 of
                                            []
                                              -> coe
                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                   (coe
                                                      (\ v10 ->
                                                         addInt (coe (1 :: Integer)) (coe v10)))
                                                   (coe
                                                      (\ v10 ->
                                                         d_substTel_182
                                                           (coe (0 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                              (coe
                                                                 (MAlonzo.RTE.QName
                                                                    (22 :: Integer)
                                                                    (18364543503877314478 ::
                                                                       Integer)
                                                                    "Level.0\8467"
                                                                    (MAlonzo.RTE.Fixity
                                                                       MAlonzo.RTE.NonAssoc
                                                                       MAlonzo.RTE.Unrelated)))
                                                              (coe v9))))
                                                   (coe d_smashLevels_198 (coe v3))
                                            _ -> coe v1
                                     _ -> coe v1
                              _ -> coe v1
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Foreign.Convertible.Deriving.tyViewToTel
d_tyViewToTel_208 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tyViewToTel_208
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Foreign.Convertible.Deriving.hideTyView
d_hideTyView_216 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
d_hideTyView_216 ~v0 v1 = du_hideTyView_216 v1
du_hideTyView_216 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
du_hideTyView_216 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v5 v6
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v1)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52) (coe v6))
                              (coe v4))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.instanceType
d_instanceType_228 ::
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_instanceType_228 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (coe
            MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
         () erased () erased d_smashLevels_198
         (coe
            MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_422
            (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
               (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe v0))
         v2)
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                  erased
                  (coe
                     MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                     (coe
                        MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
                     () erased () erased d_smashLevels_198
                     (coe
                        MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_422
                        (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                           (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                        (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe v1))
                     v2)
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                              erased
                              (coe
                                 MAlonzo.Code.Class.Monad.Core.d_return_16
                                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                    (coe MAlonzo.Code.Data.List.Base.du_length_304 v5)
                                    (coe MAlonzo.Code.Data.List.Base.du_length_304 v8)))
                              (\ v9 ->
                                 if coe v9
                                   then coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                          MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 ()
                                          erased () erased
                                          (coe
                                             MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_484
                                             (coe
                                                MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                             (coe
                                                MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                                (coe
                                                   MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                                             (coe
                                                MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                             MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v0
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_replicate_314
                                                   (coe v4)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (22 :: Integer)
                                                            (18364543503877314478 :: Integer)
                                                            "Level.0\8467"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_take_622
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_length_304
                                                         v5)
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.d_downFrom_478
                                                         (addInt
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_304
                                                               v5)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_304
                                                               v5))))))
                                             v2)
                                          (\ v10 ->
                                             coe
                                               MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                               MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_484
                                                  MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                                                  MAlonzo.Code.Meta.d_iMonadError'45'TC_8
                                                  MAlonzo.Code.Meta.d_iMonadReader'45'TC_6
                                                  MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4 v1
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_replicate_314
                                                        (coe v7)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (22 :: Integer)
                                                                 (18364543503877314478 :: Integer)
                                                                 "Level.0\8467"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.NonAssoc
                                                                    MAlonzo.RTE.Unrelated)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_map_22
                                                        (coe
                                                           (\ v11 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                (coe v11)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.d_downFrom_478
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_length_304
                                                              v5))))
                                                  v2)
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.Class.Monad.Core.d_return_16
                                                    MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                    () erased
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe du_hideTyView_216)
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                (coe v5) (coe v8)))
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_replicate_314
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du_length_304
                                                                v5)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                (coe ("_" :: Data.Text.Text))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                      (coe
                                                                         (MAlonzo.RTE.QName
                                                                            (8 :: Integer)
                                                                            (14615801261834023095 ::
                                                                               Integer)
                                                                            "Foreign.Convertible.Convertible"
                                                                            (MAlonzo.RTE.Fixity
                                                                               MAlonzo.RTE.NonAssoc
                                                                               MAlonzo.RTE.Unrelated)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                  (addInt
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.List.Base.du_length_304
                                                                                        v5)
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.List.Base.du_length_304
                                                                                        v5))
                                                                                  (1 :: Integer))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.List.Base.du_length_304
                                                                                        v5)
                                                                                     (1 :: Integer))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                       (coe
                                                          MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_length_304
                                                             v5)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                             (coe
                                                                (MAlonzo.RTE.QName
                                                                   (8 :: Integer)
                                                                   (14615801261834023095 :: Integer)
                                                                   "Foreign.Convertible.Convertible"
                                                                   (MAlonzo.RTE.Fixity
                                                                      MAlonzo.RTE.NonAssoc
                                                                      MAlonzo.RTE.Unrelated)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                   (coe v10))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                      (coe v11))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                   else coe
                                          MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90 ()
                                          ("%q and %q have different number of parameters"
                                           ::
                                           Data.Text.Text)
                                          v0 v1)
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Foreign.Convertible.Deriving.conversionClause
d_conversionClause_260 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_conversionClause_260 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> coe
                           (\ v9 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                                erased
                                (coe
                                   MAlonzo.Code.Class.Monad.Core.d_return_16
                                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                                      (coe
                                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_length_304
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter'7495'_694
                                            (coe
                                               (\ v10 ->
                                                  case coe v10 of
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                                                      -> case coe v12 of
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v13 v14
                                                             -> case coe v13 of
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v15 v16
                                                                    -> let v17
                                                                             = coe
                                                                                 MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                                                                       coe
                                                                         (case coe v15 of
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                              -> coe
                                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                            _ -> coe v17)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Reflection.Utils.d_viewTy_146
                                                  (coe v6)))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_length_304
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter'7495'_694
                                            (coe
                                               (\ v10 ->
                                                  case coe v10 of
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                                                      -> case coe v12 of
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v13 v14
                                                             -> case coe v13 of
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v15 v16
                                                                    -> let v17
                                                                             = coe
                                                                                 MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                                                                       coe
                                                                         (case coe v15 of
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                              -> coe
                                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                            _ -> coe v17)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Reflection.Utils.d_viewTy_146
                                                  (coe v8)))))))
                                (\ v10 ->
                                   if coe v10
                                     then coe
                                            MAlonzo.Code.Class.Monad.Core.d_return_16
                                            MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 ()
                                            erased
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                               (coe
                                                  d_tyViewToTel_208
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22
                                                     (coe
                                                        (\ v11 ->
                                                           case coe v11 of
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                               -> case coe v13 of
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                                      -> coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                           (coe v12)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe v14)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_filter'7495'_694
                                                        (coe
                                                           (\ v11 ->
                                                              case coe v11 of
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                                  -> case coe v13 of
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                                         -> case coe v14 of
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v16 v17
                                                                                -> let v18
                                                                                         = coe
                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                                                                                   coe
                                                                                     (case coe
                                                                                             v16 of
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                          -> coe v10
                                                                                        _ -> coe
                                                                                               v18)
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Reflection.Utils.d_viewTy_146
                                                              (coe v6))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                           (coe v5)
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_map_22
                                                              (coe
                                                                 (\ v11 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                                         (coe v11))))
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.d_downFrom_478
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.du_length_304
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du_filter'7495'_694
                                                                       (coe
                                                                          (\ v11 ->
                                                                             case coe v11 of
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                                                 -> case coe v13 of
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                                                        -> case coe
                                                                                                  v14 of
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v16 v17
                                                                                               -> let v18
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                                                                                                  coe
                                                                                                    (case coe
                                                                                                            v16 of
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                         -> coe
                                                                                                              v10
                                                                                                       _ -> coe
                                                                                                              v18)
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Reflection.Utils.d_viewTy_146
                                                                             (coe v6)))))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22
                                                     (coe
                                                        (\ v11 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                (coe v1)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                         (coe v11)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.d_downFrom_478
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_length_304
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_filter'7495'_694
                                                              (coe
                                                                 (\ v11 ->
                                                                    case coe v11 of
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                                        -> case coe v13 of
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                                               -> case coe v14 of
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v16 v17
                                                                                      -> let v18
                                                                                               = coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                                                                                         coe
                                                                                           (case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                -> coe
                                                                                                     v10
                                                                                              _ -> coe
                                                                                                     v18)
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    MAlonzo.Code.Reflection.Utils.d_viewTy_146
                                                                    (coe v6)))))))))
                                     else coe
                                            MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90 ()
                                            ("%q and %q have different number of arguments"
                                             ::
                                             Data.Text.Text)
                                            v5 v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.instanceClauses
d_instanceClauses_310 ::
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_instanceClauses_310 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadTC.du_getConstrs_642
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
            (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v0 v2)
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
           erased
           (coe
              MAlonzo.Code.Class.MonadTC.du_getConstrs_642
              MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
              MAlonzo.Code.Meta.d_iMonadError'45'TC_8
              MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4 v1 v2)
           (\ v4 ->
              coe
                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                erased
                (coe
                   MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                   (d___6
                      (coe
                         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
                   () erased () erased (coe MAlonzo.Code.Data.List.Base.du_length_304)
                   (coe
                      MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_422
                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                      (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                      (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                      (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4) (coe v0))
                   v2)
                (\ v5 ->
                   coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                     MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                     (coe
                        MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                        (d___6
                           (coe
                              MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                              (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
                        () erased () erased (coe MAlonzo.Code.Data.List.Base.du_length_304)
                        (coe
                           MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_422
                           (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                           (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                           (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                           (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4) (coe v1)))
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                          MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                          (\ v7 ->
                             coe
                               MAlonzo.Code.Class.Monad.Core.d_return_16
                               MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_304 v3)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_304 v4)))
                          (\ v7 ->
                             if coe v7
                               then coe
                                      (\ v8 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Class.Monad.Core.du_mapM_60
                                              (coe
                                                 MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                                 (coe
                                                    MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                              ()
                                              (d_conversionClause_260
                                                 (coe
                                                    (MAlonzo.RTE.QName
                                                       (18 :: Integer)
                                                       (14615801261834023095 :: Integer)
                                                       "Foreign.Convertible.Convertible.to"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated)))
                                                 (coe
                                                    (MAlonzo.RTE.QName
                                                       (26 :: Integer)
                                                       (14615801261834023095 :: Integer)
                                                       "Foreign.Convertible._.to"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated))))
                                              (coe MAlonzo.Code.Data.List.Base.du_zip_212 v3 v4) v8)
                                           (\ v9 ->
                                              coe
                                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                () erased () erased
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Core.du_mapM_60
                                                   MAlonzo.Code.Meta.d_iMonad'45'TC_2 ()
                                                   (d_conversionClause_260
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (20 :: Integer)
                                                            (14615801261834023095 :: Integer)
                                                            "Foreign.Convertible.Convertible.from"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (24 :: Integer)
                                                            (14615801261834023095 :: Integer)
                                                            "Foreign.Convertible._.from"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated))))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_zip_212 v4 v3)
                                                   v8)
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Class.Monad.Core.d_return_16
                                                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                     () erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                        (coe v9) (coe v10)))))
                               else coe
                                      (\ v8 ->
                                         coe
                                           MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90 ()
                                           ("%q and %q have different number of constructors"
                                            ::
                                            Data.Text.Text)
                                           v0 v1)))
                     v2)))
-- Foreign.Convertible.Deriving.patternLambda
d_patternLambda_330 ::
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_patternLambda_330 v0
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         () ()
         (MAlonzo.Code.Class.MonadTC.d_reduce_154
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156))
         (coe
            MAlonzo.Code.Class.MonadTC.du_goalTy_612
            (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
         v0)
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
             -> case coe v2 of
                  MAlonzo.RTE.QName 8 14615801261834023095 _ _
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
                                                                          (:) v12 v13
                                                                            -> case coe v12 of
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                                                   -> case coe
                                                                                             v14 of
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v16 v17
                                                                                          -> case coe
                                                                                                    v16 of
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                 -> case coe
                                                                                                           v17 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v18 v19
                                                                                                        -> case coe
                                                                                                                  v18 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                               -> case coe
                                                                                                                         v19 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                      -> case coe
                                                                                                                                v13 of
                                                                                                                           []
                                                                                                                             -> coe
                                                                                                                                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                                                                                                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                                                                                                  ()
                                                                                                                                  erased
                                                                                                                                  ()
                                                                                                                                  erased
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Class.MonadTC.du_getConstrsForType_664
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                                                                                                                                     MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                                                                                                                                     v7
                                                                                                                                     v0)
                                                                                                                                  (\ v20 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                                                                                                       MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       ()
                                                                                                                                       erased
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.MonadTC.du_getConstrsForType_664
                                                                                                                                          MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                                                                                                                                          MAlonzo.Code.Meta.d_iMonadError'45'TC_8
                                                                                                                                          MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                                                                                                                                          v15
                                                                                                                                          v0)
                                                                                                                                       (\ v21 ->
                                                                                                                                          coe
                                                                                                                                            MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                                                                                                            MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            ()
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Class.Monad.Core.du_mapM_60
                                                                                                                                               MAlonzo.Code.Meta.d_iMonad'45'TC_2
                                                                                                                                               ()
                                                                                                                                               (d_conversionClause_260
                                                                                                                                                  (coe
                                                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                                                        (18 ::
                                                                                                                                                           Integer)
                                                                                                                                                        (14615801261834023095 ::
                                                                                                                                                           Integer)
                                                                                                                                                        "Foreign.Convertible.Convertible.to"
                                                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                                                                  (coe
                                                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                                                        (26 ::
                                                                                                                                                           Integer)
                                                                                                                                                        (14615801261834023095 ::
                                                                                                                                                           Integer)
                                                                                                                                                        "Foreign.Convertible._.to"
                                                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                                                           MAlonzo.RTE.Unrelated))))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Data.List.Base.du_zip_212
                                                                                                                                                  v20
                                                                                                                                                  v21)
                                                                                                                                               v0)
                                                                                                                                            (\ v22 ->
                                                                                                                                               coe
                                                                                                                                                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                                                                                                                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                                                                                                                 ()
                                                                                                                                                 erased
                                                                                                                                                 ()
                                                                                                                                                 erased
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.Monad.Core.du_mapM_60
                                                                                                                                                    MAlonzo.Code.Meta.d_iMonad'45'TC_2
                                                                                                                                                    ()
                                                                                                                                                    (d_conversionClause_260
                                                                                                                                                       (coe
                                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                                             (20 ::
                                                                                                                                                                Integer)
                                                                                                                                                             (14615801261834023095 ::
                                                                                                                                                                Integer)
                                                                                                                                                             "Foreign.Convertible.Convertible.from"
                                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                                                       (coe
                                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                                             (24 ::
                                                                                                                                                                Integer)
                                                                                                                                                             (14615801261834023095 ::
                                                                                                                                                                Integer)
                                                                                                                                                             "Foreign.Convertible._.from"
                                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                                MAlonzo.RTE.Unrelated))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Data.List.Base.du_zip_212
                                                                                                                                                       v21
                                                                                                                                                       v20)
                                                                                                                                                    v0)
                                                                                                                                                 (\ v23 ->
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Class.Monad.Core.d_return_16
                                                                                                                                                      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                                                                                                                      ()
                                                                                                                                                      erased
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                                                                                                            (coe
                                                                                                                                                               v22)
                                                                                                                                                            (coe
                                                                                                                                                               v23))
                                                                                                                                                         (coe
                                                                                                                                                            v13))))))
                                                                                                                           _ -> coe
                                                                                                                                  MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                                                                                                  ()
                                                                                                                                  ("Expected Convertible A B, got %t"
                                                                                                                                   ::
                                                                                                                                   Data.Text.Text)
                                                                                                                                  v1
                                                                                                                    _ -> coe
                                                                                                                           MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                                                                                           ()
                                                                                                                           ("Expected Convertible A B, got %t"
                                                                                                                            ::
                                                                                                                            Data.Text.Text)
                                                                                                                           v1
                                                                                                             _ -> coe
                                                                                                                    MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                                                                                    ()
                                                                                                                    ("Expected Convertible A B, got %t"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                                    v1
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               _ -> coe
                                                                                                      MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                                                                      ()
                                                                                                      ("Expected Convertible A B, got %t"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                                      v1
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> coe
                                                                                 MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                                                 ()
                                                                                 ("Expected Convertible A B, got %t"
                                                                                  ::
                                                                                  Data.Text.Text)
                                                                                 v1
                                                                   _ -> coe
                                                                          MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                                          ()
                                                                          ("Expected Convertible A B, got %t"
                                                                           ::
                                                                           Data.Text.Text)
                                                                          v1
                                                            _ -> coe
                                                                   MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                                   ()
                                                                   ("Expected Convertible A B, got %t"
                                                                    ::
                                                                    Data.Text.Text)
                                                                   v1
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> coe
                                                     MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90
                                                     ()
                                                     ("Expected Convertible A B, got %t"
                                                      ::
                                                      Data.Text.Text)
                                                     v1
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> coe
                                MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90 ()
                                ("Expected Convertible A B, got %t" :: Data.Text.Text) v1
                  _ -> coe
                         MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90 ()
                         ("Expected Convertible A B, got %t" :: Data.Text.Text) v1
           _ -> coe
                  MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_90 ()
                  ("Expected Convertible A B, got %t" :: Data.Text.Text) v1)
-- Foreign.Convertible.Deriving.deriveConvertible
d_deriveConvertible_348 :: AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_deriveConvertible_348 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initUnquoteWithGoal_104
      (coe MAlonzo.Code.Class.MonadTC.d_defaultTCOptions_30)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_lit_224
            (coe (0 :: Integer))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
              erased
              (coe
                 MAlonzo.Code.Class.MonadTC.d_getDefinition_174
                 MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v1 v3)
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                   MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                   (coe
                      MAlonzo.Code.Class.MonadTC.d_getDefinition_174
                      MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4 v2)
                   (\ v5 ->
                      coe
                        MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                        MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                        (d_instanceType_228 (coe v1) (coe v2))
                        (\ v6 ->
                           seq
                             (coe v6)
                             (coe
                                (\ v7 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                                     erased
                                     (coe
                                        MAlonzo.Code.Class.MonadTC.d_declareDef_166
                                        MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                           (coe v0))
                                        (MAlonzo.Code.Reflection.Utils.d_tyView_158 (coe v6)) v7)
                                     (\ v8 ->
                                        coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                          MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                                          (d_instanceClauses_310 (coe v1) (coe v2))
                                          (\ v9 ->
                                             coe
                                               MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                               (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ())
                                               (coe ())
                                               (coe
                                                  MAlonzo.Code.Class.MonadTC.d_defineFun_170
                                                  MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4 v0 v9)
                                               (coe
                                                  MAlonzo.Code.Class.Monad.Core.d_return_16
                                                  MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          v7)))))
                   v3)))
-- Foreign.Convertible.Deriving.ConvertibleType
d_ConvertibleType_370 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_ConvertibleType_370 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100
      (coe MAlonzo.Code.Class.MonadTC.d_defaultTCOptions_30)
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_684
                 (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                 (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                 (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                 (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                 (coe MAlonzo.Code.Reflection.Utils.d_tyView_158 (coe v2))))
         (coe d_instanceType_228 (coe v0) (coe v1)))
-- Foreign.Convertible.Deriving.autoConvertible
d_autoConvertible_376 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_autoConvertible_376
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100
      (coe MAlonzo.Code.Class.MonadTC.d_defaultTCOptions_30)
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_684
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
               (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
         (coe d_patternLambda_330))
