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

module MAlonzo.Code.Class.HasCast.Derive where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic

-- Class.HasCast.Derive.getCodPi
d_getCodPi_6 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_getCodPi_6 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v1 v2
        -> coe
             d_adjustTerm_16 (coe v1) (coe v2) (coe (1 :: Integer))
             (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36 (coe v2))
      _ -> coe v0
-- Class.HasCast.Derive._.adjustTerm
d_adjustTerm_16 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_adjustTerm_16 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v4 v2)
             (coe d_adjustArgs_20 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v4)
             (coe d_adjustArgs_20 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v4)
             (coe d_adjustArgs_20 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> coe v3
-- Class.HasCast.Derive._.adjustArg
d_adjustArg_18 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_adjustArg_18 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
             (coe d_adjustTerm_16 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Derive._.adjustArgs
d_adjustArgs_20 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_adjustArgs_20 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_adjustArg_18 (coe v0) (coe v1) (coe v2) (coe v4))
             (coe d_adjustArgs_20 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Derive.fromRecDef
d_fromRecDef_60 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Definition_280 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_fromRecDef_60 v0
  = let v1
          = coe
              MAlonzo.Code.Reflection.TCI.du_typeError_98 ()
              (coe
                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                    (coe ("Expected a record type" :: Data.Text.Text)))) in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v2 v3
           -> coe
                (\ v4 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                        MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12
                        () ()
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                             (coe
                                MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                                (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4))
                             () erased () erased d_getCodPi_6
                             (MAlonzo.Code.Reflection.TCI.d_getType_126
                                (coe MAlonzo.Code.Reflection.AST.Argument.du_unArg_74 (coe v5))))
                        v3 v4)
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.d_return_16
                          MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v5))
                          v4))
         _ -> coe v1)
-- Class.HasCast.Derive.getRecConstrName
d_getRecConstrName_72 ::
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_getRecConstrName_72 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (coe MAlonzo.Code.Reflection.TCI.d_getDefinition_128 v0 v1)
      (\ v2 ->
         let v3
               = coe
                   MAlonzo.Code.Reflection.TCI.du_typeError_98 ()
                   (coe
                      MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                         (coe
                            ("Expected a record got something else" :: Data.Text.Text)))) in
         coe
           (case coe v2 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v4 v5
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d_return_16
                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased v4 v1
              _ -> coe v3 v1))
-- Class.HasCast.Derive.derive-HasCast-single
d_derive'45'HasCast'45'single_82 ::
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_derive'45'HasCast'45'single_82 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
         erased
         (coe
            MAlonzo.Code.Reflection.TCI.d_getDefinition_128
            (MAlonzo.RTE.QName
               (14 :: Integer) (4128242885554451053 :: Integer)
               "Class.HasCast.Base.HasCast"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated))
            v2)
         (\ v3 -> coe d_fromRecDef_60 v3 v2))
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                  MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                  (coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                     (MAlonzo.Code.Reflection.TCI.d_getDefinition_128 (coe v0))
                     d_fromRecDef_60)
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                         -> case coe v8 of
                              []
                                -> coe
                                     MAlonzo.Code.Reflection.TCI.du_typeError_98 ()
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                                           (coe
                                              ("Expecting a nonempty record type"
                                               ::
                                               Data.Text.Text))))
                              (:) v9 v10
                                -> coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                                     (coe
                                        MAlonzo.Code.Reflection.TCI.du_quoteTC_108 (coe ())
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (\ v11 ->
                                        coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                          MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased ()
                                          erased
                                          (coe
                                             MAlonzo.Code.Reflection.TCI.du_quoteTC_108 (coe ())
                                             erased)
                                          (\ v12 ->
                                             coe
                                               MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                               (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                               (coe ()) (coe ())
                                               (coe
                                                  MAlonzo.Code.Reflection.TCI.d_declareDef_120
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
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                     (coe
                                                        (MAlonzo.RTE.QName
                                                           (14 :: Integer)
                                                           (4128242885554451053 :: Integer)
                                                           "Class.HasCast.Base.HasCast"
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
                                                              MAlonzo.Code.Data.List.NonEmpty.Base.du_foldr'8321'_160
                                                              (\ v13 v14 ->
                                                                 coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                   (coe
                                                                      (MAlonzo.RTE.QName
                                                                         (76 :: Integer)
                                                                         (14176793942586333973 ::
                                                                            Integer)
                                                                         "Data.Product.Base._\215_"
                                                                         (MAlonzo.RTE.Fixity
                                                                            MAlonzo.RTE.RightAssoc
                                                                            (MAlonzo.RTE.Related
                                                                               (2.0 :: Double)))))
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
                                                                         (coe v13))
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
                                                                            (coe v14))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                              (coe
                                                                 MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34
                                                                 (coe v9) (coe v10))))
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
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                               (coe
                                                  MAlonzo.Code.Reflection.TCI.d_defineFun_124 v1
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                           (coe v4)
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
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                    (coe
                                                                       (MAlonzo.RTE.QName
                                                                          (150 :: Integer)
                                                                          (17182498516943719915 ::
                                                                             Integer)
                                                                          "Data.Product.Nary.NonDependent.uncurry\8345"
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
                                                                          (coe v11))
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
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                (coe v7)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
                  v2
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.HasCast.Derive._.derive-HasCast
d_derive'45'HasCast_122 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'HasCast_122 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initUnquoteWithGoal_112 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (14 :: Integer) (4128242885554451053 :: Integer)
               "Class.HasCast.Base.HasCast"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.Traversable.Core.du_traverse_20
            (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
            (coe
               MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
            (coe ()) (coe ())
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe d_derive'45'HasCast'45'single_82))
            (coe v1))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
-- Class.HasCast.Derive.R
d_R_126 = ()
newtype T_R_126 = C_R'46'constructor_10193 Bool
-- Class.HasCast.Derive.R.r
d_r_130 :: T_R_126 -> Bool
d_r_130 v0
  = case coe v0 of
      C_R'46'constructor_10193 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Derive.R'
d_R''_132 = ()
data T_R''_132
  = C_R'''46'constructor_10207 Bool (Integer -> Integer)
-- Class.HasCast.Derive.R'.x
d_x_138 :: T_R''_132 -> Bool
d_x_138 v0
  = case coe v0 of
      C_R'''46'constructor_10207 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Derive.R'.y
d_y_140 :: T_R''_132 -> Integer -> Integer
d_y_140 v0
  = case coe v0 of
      C_R'''46'constructor_10207 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Derive._.R''
d_R''''_158 a0 = ()
data T_R''''_158 = C_R'''''46'constructor_10517 Integer Bool Bool
-- Class.HasCast.Derive._.R''.a
d_a_166 :: T_R''''_158 -> Integer
d_a_166 v0
  = case coe v0 of
      C_R'''''46'constructor_10517 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Derive._.R''.b
d_b_168 :: T_R''''_158 -> Bool
d_b_168 v0
  = case coe v0 of
      C_R'''''46'constructor_10517 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Derive._.R''.c
d_c_170 :: T_R''''_158 -> Bool
d_c_170 v0
  = case coe v0 of
      C_R'''''46'constructor_10517 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
