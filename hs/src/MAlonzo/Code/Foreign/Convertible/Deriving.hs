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
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.HaskellTypes.Deriving
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.AST.DeBruijn
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.TCM
import qualified MAlonzo.Code.Reflection.TCM.Format
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.Core
import qualified MAlonzo.Code.Reflection.Utils.Substitute
import qualified MAlonzo.Code.Reflection.Utils.TCI

-- Foreign.Convertible.Deriving._
d___6 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
d___6 v0
  = coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_60 (coe v0)
-- Foreign.Convertible.Deriving.TyViewTel
d_TyViewTel_16 :: ()
d_TyViewTel_16 = erased
-- Foreign.Convertible.Deriving.substTel
d_substTel_18 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_substTel_18 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v5)
                       (coe
                          MAlonzo.Code.Reflection.Utils.Substitute.d_substArg_14 (coe v0)
                          (coe v1) (coe v6)))
                    (coe
                       d_substTel_18 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.smashLevels
d_smashLevels_34 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_smashLevels_34 v0
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
                                                         d_substTel_18
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
                                                   (coe d_smashLevels_34 (coe v3))
                                            _ -> coe v1
                                     _ -> coe v1
                              _ -> coe v1
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Foreign.Convertible.Deriving.tyViewToTel
d_tyViewToTel_44 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tyViewToTel_44
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
d_hideTyView_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
d_hideTyView_52 ~v0 ~v1 v2 = du_hideTyView_52 v2
du_hideTyView_52 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
du_hideTyView_52 v0
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
d_instanceType_64 ::
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_instanceType_64 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (coe
            MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_60
            (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4))
         () erased () erased d_smashLevels_34
         (coe
            MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_416
            (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_134
               (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe v0))
         v2)
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                  MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                  (coe
                     MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                     (d___6 (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)) () erased ()
                     erased d_smashLevels_34
                     (coe
                        MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_416
                        (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe v1)))
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                              MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                              (coe
                                 MAlonzo.Code.Class.Monad.Core.d_return_20
                                 MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe MAlonzo.Code.Data.List.Base.du_length_268 v5)
                                    (coe MAlonzo.Code.Data.List.Base.du_length_268 v8)))
                              (\ v9 ->
                                 if coe v9
                                   then coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                          MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased ()
                                          erased
                                          (coe
                                             MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_476
                                             (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                             (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                                             (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                             (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_replicate_278
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
                                                      MAlonzo.Code.Data.List.Base.du_take_530
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_length_268
                                                         v5)
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.d_downFrom_404
                                                         (addInt
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_268
                                                               v5)
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_268
                                                               v5)))))))
                                          (\ v10 v11 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 ()
                                               () erased erased
                                               (coe
                                                  MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_476
                                                  MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6
                                                  MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10
                                                  MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
                                                  MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 v1
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_replicate_278
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
                                                           (\ v12 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.d_downFrom_404
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_length_268
                                                              v5))))
                                                  v11)
                                               (\ v12 ->
                                                  coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                    () erased
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe du_hideTyView_52)
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                (coe v5) (coe v8)))
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_replicate_278
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du_length_268
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
                                                                                        MAlonzo.Code.Data.List.Base.du_length_268
                                                                                        v5)
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.List.Base.du_length_268
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
                                                                                        MAlonzo.Code.Data.List.Base.du_length_268
                                                                                        v5)
                                                                                     (1 :: Integer))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                       (coe
                                                          MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_length_268
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
                                                                      (coe v12))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                   else coe
                                          MAlonzo.Code.Reflection.TCI.du_liftTC_66 (coe ())
                                          (coe
                                             MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92
                                             ()
                                             ("%q and %q have different number of parameters"
                                              ::
                                              Data.Text.Text)
                                             v0 v1))
                       _ -> MAlonzo.RTE.mazUnreachableError)
                  v2
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Foreign.Convertible.Deriving.conversionClause
d_conversionClause_96 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_conversionClause_96 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> coe
                           (\ v9 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                erased
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                                      (coe
                                         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_length_268
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter'7495'_674
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
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22
                                                  (coe v6)))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_length_268
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter'7495'_674
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
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22
                                                  (coe v8)))))))
                                (\ v10 ->
                                   if coe v10
                                     then coe
                                            MAlonzo.Code.Class.Monad.Core.d_return_20
                                            MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                               (coe
                                                  d_tyViewToTel_44
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
                                                        MAlonzo.Code.Data.List.Base.du_filter'7495'_674
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
                                                                                  (case coe v16 of
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                       -> coe v10
                                                                                     _ -> coe v18)
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22
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
                                                                 MAlonzo.Code.Data.List.Base.d_downFrom_404
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.du_length_268
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du_filter'7495'_674
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
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22
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
                                                        MAlonzo.Code.Data.List.Base.d_downFrom_404
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_length_268
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_filter'7495'_674
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
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22
                                                                    (coe v6)))))))))
                                            v9
                                     else coe
                                            MAlonzo.Code.Reflection.TCI.du_liftTC_66 (coe ())
                                            (coe
                                               MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92
                                               ()
                                               ("%q and %q have different number of arguments"
                                                ::
                                                Data.Text.Text)
                                               v5 v7)
                                            (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.Convertible.Deriving.instanceClauses
d_instanceClauses_146 ::
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_instanceClauses_146 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Class.MonadTC.du_getConstrs_782
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_134
            (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146 v0 v2)
      (\ v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
           erased
           (coe
              MAlonzo.Code.Class.MonadTC.du_getConstrs_782
              MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6
              MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10
              MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 v1 v2)
           (\ v4 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                erased
                (coe
                   MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                   (d___6 (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)) () erased ()
                   erased (coe MAlonzo.Code.Data.List.Base.du_length_268)
                   (coe
                      MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_416
                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe v0))
                   v2)
                (\ v5 ->
                   coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                     (coe
                        MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                        (d___6 (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)) () erased ()
                        erased (coe MAlonzo.Code.Data.List.Base.du_length_268)
                        (coe
                           MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_416
                           (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                           (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                           (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                           (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe v1)))
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                          MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                          (\ v7 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_268 v3)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_268 v4)))
                          (\ v7 ->
                             if coe v7
                               then coe
                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                      MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                                      (coe
                                         MAlonzo.Code.Class.Monad.Core.du_mapM_104
                                         (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ())
                                         (coe
                                            d_conversionClause_96
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (18 :: Integer) (14615801261834023095 :: Integer)
                                                  "Foreign.Convertible.Convertible.to"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (28 :: Integer) (14615801261834023095 :: Integer)
                                                  "Foreign.Convertible._.to"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated))))
                                         (coe MAlonzo.Code.Data.List.Base.du_zip_182 v3 v4))
                                      (\ v8 v9 ->
                                         coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () ()
                                           erased erased
                                           (coe
                                              MAlonzo.Code.Class.Monad.Core.du_mapM_104
                                              MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 ()
                                              (d_conversionClause_96
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
                                                       (26 :: Integer)
                                                       (14615801261834023095 :: Integer)
                                                       "Foreign.Convertible._.from"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated))))
                                              (coe MAlonzo.Code.Data.List.Base.du_zip_182 v4 v3) v9)
                                           (\ v10 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                () erased
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe v8) (coe v10))))
                               else coe
                                      MAlonzo.Code.Reflection.TCI.du_liftTC_66 (coe ())
                                      (coe
                                         MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                         ("%q and %q have different number of constructors"
                                          ::
                                          Data.Text.Text)
                                         v0 v1)))
                     v2)))
-- Foreign.Convertible.Deriving.absurdClause
d_absurdClause_166 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_absurdClause_166 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe ("x" :: Data.Text.Text))
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
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
            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 (coe v0)))
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
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264
                  (coe (0 :: Integer))))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Foreign.Convertible.Deriving.patternLambda
d_patternLambda_170 ::
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_patternLambda_170 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         () () MAlonzo.Code.Reflection.TCI.d_reduce_108
         (coe
            MAlonzo.Code.Class.MonadTC.du_goalTy_752
            (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
         v0)
      (\ v1 ->
         let v2
               = coe
                   MAlonzo.Code.Reflection.TCI.du_liftTC_66 (coe ())
                   (coe
                      MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                      ("Expected Convertible A B, got %t" :: Data.Text.Text) v1) in
         coe
           (case coe v1 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
                -> case coe v3 of
                     MAlonzo.RTE.QName 8 14615801261834023095 _ _
                       -> case coe v4 of
                            (:) v5 v6
                              -> case coe v5 of
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                                     -> case coe v7 of
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v9 v10
                                            -> case coe v9 of
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                   -> case coe v10 of
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v11 v12
                                                          -> case coe v11 of
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                 -> case coe v12 of
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                        -> case coe v6 of
                                                                             (:) v13 v14
                                                                               -> case coe v13 of
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v15 v16
                                                                                      -> case coe
                                                                                                v15 of
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v17 v18
                                                                                             -> case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                    -> case coe
                                                                                                              v18 of
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v19 v20
                                                                                                           -> case coe
                                                                                                                     v19 of
                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                  -> case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                         -> case coe
                                                                                                                                   v14 of
                                                                                                                              []
                                                                                                                                -> coe
                                                                                                                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                                                                                                                     ()
                                                                                                                                     erased
                                                                                                                                     ()
                                                                                                                                     erased
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.MonadTC.du_getConstrsForType_804
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                                                                                                                        (coe
                                                                                                                                           v8))
                                                                                                                                     (\ v21
                                                                                                                                        v22 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                                                                                                          ()
                                                                                                                                          ()
                                                                                                                                          erased
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.MonadTC.du_getConstrsForType_804
                                                                                                                                             MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6
                                                                                                                                             MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10
                                                                                                                                             MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                                                                                                                             v16
                                                                                                                                             v22)
                                                                                                                                          (\ v23 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                                                                                                               ()
                                                                                                                                               ()
                                                                                                                                               erased
                                                                                                                                               erased
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Class.Monad.Core.du_mapM_104
                                                                                                                                                  MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                                                                                                                                  ()
                                                                                                                                                  (d_conversionClause_96
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
                                                                                                                                                           (28 ::
                                                                                                                                                              Integer)
                                                                                                                                                           (14615801261834023095 ::
                                                                                                                                                              Integer)
                                                                                                                                                           "Foreign.Convertible._.to"
                                                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                                                              MAlonzo.RTE.Unrelated))))
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Data.List.Base.du_zip_182
                                                                                                                                                     v21
                                                                                                                                                     v23)
                                                                                                                                                  v22)
                                                                                                                                               (\ v24 ->
                                                                                                                                                  coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                                                                                                                    ()
                                                                                                                                                    ()
                                                                                                                                                    erased
                                                                                                                                                    erased
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Class.Monad.Core.du_mapM_104
                                                                                                                                                       MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                                                                                                                                       ()
                                                                                                                                                       (d_conversionClause_96
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
                                                                                                                                                                (26 ::
                                                                                                                                                                   Integer)
                                                                                                                                                                (14615801261834023095 ::
                                                                                                                                                                   Integer)
                                                                                                                                                                "Foreign.Convertible._.from"
                                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                                   MAlonzo.RTE.Unrelated))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Data.List.Base.du_zip_182
                                                                                                                                                          v23
                                                                                                                                                          v21)
                                                                                                                                                       v22)
                                                                                                                                                    (\ v25 ->
                                                                                                                                                       let v26
                                                                                                                                                             = coe
                                                                                                                                                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                                                                                                 (coe
                                                                                                                                                                    v24)
                                                                                                                                                                 (coe
                                                                                                                                                                    v25) in
                                                                                                                                                       coe
                                                                                                                                                         (case coe
                                                                                                                                                                 v26 of
                                                                                                                                                            []
                                                                                                                                                              -> coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                                                                                                                   ()
                                                                                                                                                                   erased
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                         (coe
                                                                                                                                                                            d_absurdClause_166
                                                                                                                                                                            (coe
                                                                                                                                                                               (MAlonzo.RTE.QName
                                                                                                                                                                                  (18 ::
                                                                                                                                                                                     Integer)
                                                                                                                                                                                  (14615801261834023095 ::
                                                                                                                                                                                     Integer)
                                                                                                                                                                                  "Foreign.Convertible.Convertible.to"
                                                                                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                                                                                     MAlonzo.RTE.Unrelated))))
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                            (coe
                                                                                                                                                                               d_absurdClause_166
                                                                                                                                                                               (coe
                                                                                                                                                                                  (MAlonzo.RTE.QName
                                                                                                                                                                                     (20 ::
                                                                                                                                                                                        Integer)
                                                                                                                                                                                     (14615801261834023095 ::
                                                                                                                                                                                        Integer)
                                                                                                                                                                                     "Foreign.Convertible.Convertible.from"
                                                                                                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                                                                                                        MAlonzo.RTE.Unrelated))))
                                                                                                                                                                            (coe
                                                                                                                                                                               v26)))
                                                                                                                                                                      (coe
                                                                                                                                                                         v26))
                                                                                                                                                            _ -> coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                                                                                                                   ()
                                                                                                                                                                   erased
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                                                                                                                                                                      (coe
                                                                                                                                                                         v26)
                                                                                                                                                                      (coe
                                                                                                                                                                         v14)))))))
                                                                                                                                     v0
                                                                                                                              _ -> coe
                                                                                                                                     v2
                                                                                                                                     v0
                                                                                                                       _ -> coe
                                                                                                                              v2
                                                                                                                              v0
                                                                                                                _ -> coe
                                                                                                                       v2
                                                                                                                       v0
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                  _ -> coe
                                                                                                         v2
                                                                                                         v0
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> coe v2 v0
                                                                      _ -> coe v2 v0
                                                               _ -> coe v2 v0
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> coe v2 v0
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> coe v2 v0
                     _ -> coe v2 v0
              _ -> coe v2 v0))
-- Foreign.Convertible.Deriving.doPatternLambda
d_doPatternLambda_192 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_doPatternLambda_192 v0
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
      (coe ()) (coe d_patternLambda_170)
      (coe MAlonzo.Code.Class.MonadTC.d_initTCEnvWithGoal_68 (coe v0))
-- Foreign.Convertible.Deriving.deriveConvertible
d_deriveConvertible_196 :: AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_deriveConvertible_196 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initUnquoteWithGoal_112
      (coe MAlonzo.Code.Class.MonadTC.d_defaultTCOptions_24)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_lit_224
            (coe (0 :: Integer))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased (coe MAlonzo.Code.Reflection.TCI.d_getDefinition_130 v1 v3)
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                   MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                   (coe
                      MAlonzo.Code.Class.MonadTC.d_getDefinition_166
                      MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 v2)
                   (\ v5 ->
                      coe
                        MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                        MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                        (d_instanceType_64 (coe v1) (coe v2))
                        (\ v6 ->
                           seq
                             (coe v6)
                             (coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                                (coe
                                   MAlonzo.Code.Class.MonadTC.d_declareDef_158
                                   MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                      (coe v0))
                                   (MAlonzo.Code.Reflection.Utils.Core.d_tyView_34 (coe v6)))
                                (\ v7 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                                     (d_instanceClauses_146 (coe v1) (coe v2))
                                     (\ v8 ->
                                        coe
                                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                          (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ())
                                          (coe ())
                                          (coe
                                             MAlonzo.Code.Class.MonadTC.d_defineFun_162
                                             MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 v0 v8)
                                          (coe
                                             MAlonzo.Code.Class.Monad.Core.d_return_20
                                             MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))))
                   v3)))
-- Foreign.Convertible.Deriving.ConvertibleType
d_ConvertibleType_218 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_ConvertibleType_218 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108
      (coe MAlonzo.Code.Class.MonadTC.d_defaultTCOptions_24)
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
                 (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                 (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                 (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                 (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                 (coe MAlonzo.Code.Reflection.Utils.Core.d_tyView_34 (coe v2))))
         (coe d_instanceType_64 (coe v0) (coe v1)))
-- Foreign.Convertible.Deriving.autoConvertible
d_autoConvertible_224 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_autoConvertible_224
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108
      (coe MAlonzo.Code.Class.MonadTC.d_defaultTCOptions_24)
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_134
               (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
         (coe d_patternLambda_170))
-- Foreign.Convertible.Deriving.autoConvert
d_autoConvert_226 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_autoConvert_226 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Reflection.TCM.d_newMeta_4
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                  (coe
                     (MAlonzo.RTE.QName
                        (22 :: Integer) (18364543503877314478 :: Integer) "Level.0\8467"
                        (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (\ v2 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
           (coe ())
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348 v1
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                 (coe
                    (MAlonzo.RTE.QName
                       (8 :: Integer) (14615801261834023095 :: Integer)
                       "Foreign.Convertible.Convertible"
                       (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                          (coe v2))
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (MAlonzo.Code.Foreign.HaskellTypes.Deriving.d_solveHsType_138
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
              (\ v3 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                   (coe ())
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2 v3)
                   (coe
                      MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                      (coe ()) (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v1)
                      (coe d_doPatternLambda_192 (coe v1))))))
