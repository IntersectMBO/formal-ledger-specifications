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

module MAlonzo.Code.QstdlibZ45Zmeta.Tactic.Derive.DecEqRecord where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- stdlib-meta.Tactic.Derive.DecEqRecord.record-equality
d_record'45'equality_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_record'45'equality_24 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7
  = du_record'45'equality_24 v4 v5
du_record'45'equality_24 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_record'45'equality_24 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              erased erased
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 (coe v1 v2)
                 (coe v1 v3))))
-- stdlib-meta.Tactic.Derive.DecEqRecord.fields-product
d_fields'45'product_38 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_fields'45'product_38 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
             (coe
                (MAlonzo.RTE.QName
                   (8 :: Integer) (13559399870857524843 :: Integer)
                   "Agda.Builtin.Unit.tt"
                   (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
             (coe v0)
      (:) v1 v2
        -> case coe v2 of
             [] -> coe v1
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                    (coe
                       (MAlonzo.RTE.QName
                          (32 :: Integer) (15581396396021577314 :: Integer)
                          "Agda.Builtin.Sigma._,_"
                          (MAlonzo.RTE.Fixity
                             MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
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
                             (coe d_fields'45'product_38 (coe v2)))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Tactic.Derive.DecEqRecord.unpack-fields
d_unpack'45'fields_48 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_unpack'45'fields_48 v0 v1
  = case coe v0 of
      [] -> coe v0
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> case coe v3 of
                    []
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4) (coe v1))
                           (coe v3)
                    (:) v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (28 :: Integer) (15581396396021577314 :: Integer)
                                       "Agda.Builtin.Sigma.\931.fst"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe v1))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                           (coe
                              d_unpack'45'fields_48 (coe v3)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (30 :: Integer) (15581396396021577314 :: Integer)
                                       "Agda.Builtin.Sigma.\931.snd"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe v1))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Tactic.Derive.DecEqRecord.derive-single
d_derive'45'single_62 ::
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_derive'45'single_62 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (coe MAlonzo.Code.Reflection.TCI.d_getDefinition_130 v0 v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Reflection.TCI.du_typeError_100 ()
                   (coe
                      MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                         (coe ("Expected a record type" :: Data.Text.Text)))) in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v5 v6
                -> coe
                     MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () ()
                     (coe
                        MAlonzo.Code.Reflection.TCI.d_declareDef_122
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe v1))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (10 :: Integer) (11870211246910590228 :: Integer)
                                 "Class.DecEq.Core.DecEq"
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                     (coe
                        MAlonzo.Code.Reflection.TCI.d_defineFun_126 v1
                        (coe
                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (24 :: Integer) (15796047224321161206 :: Integer)
                                       "stdlib-meta.Tactic.Derive.DecEqRecord.record-equality"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                             (coe ("r" :: Data.Text.Text))
                                             (coe
                                                d_fields'45'product_38
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                   (coe
                                                      (\ v7 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              MAlonzo.Code.Reflection.AST.Argument.d_unArg_74
                                                              (coe v7))
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
                                                                    (coe (0 :: Integer))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                   (coe v6))))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                (coe ("p" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                   (coe v5)
                                                   (coe
                                                      d_unpack'45'fields_48 (coe v6)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                         (coe (0 :: Integer))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                   (coe ("r" :: Data.Text.Text))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (20 :: Integer)
                                                            (1335258922519917603 :: Integer)
                                                            "Agda.Builtin.Equality._\8801_.refl"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                     v2
              _ -> coe v4 v2))
-- stdlib-meta.Tactic.Derive.DecEqRecord._.derive-DecEqRecord
d_derive'45'DecEqRecord_92 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'DecEqRecord_92 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initUnquoteWithGoal_112 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (10 :: Integer) (11870211246910590228 :: Integer)
               "Class.DecEq.Core.DecEq"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.Traversable.Core.du_traverse_46
            (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
            (coe
               MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
            (coe ()) (coe ())
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe d_derive'45'single_62))
            (coe v1))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
-- stdlib-meta.Tactic.Derive.DecEqRecord.Tests.Empty
d_Empty_108 = ()
data T_Empty_108 = C_empty_110
-- stdlib-meta.Tactic.Derive.DecEqRecord.Tests.Triple
d_Triple_112 = ()
data T_Triple_112 = C_triple_126 Integer Bool Integer
-- stdlib-meta.Tactic.Derive.DecEqRecord.Tests.Triple.firstField
d_firstField_120 :: T_Triple_112 -> Integer
d_firstField_120 v0
  = case coe v0 of
      C_triple_126 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Tactic.Derive.DecEqRecord.Tests.Triple.middleField
d_middleField_122 :: T_Triple_112 -> Bool
d_middleField_122 v0
  = case coe v0 of
      C_triple_126 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Tactic.Derive.DecEqRecord.Tests.Triple.lastField
d_lastField_124 :: T_Triple_112 -> Integer
d_lastField_124 v0
  = case coe v0 of
      C_triple_126 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Tactic.Derive.DecEqRecord.Tests._.Box
d_Box_152 a0 a1 a2 = ()
newtype T_Box_152 = C_box_158 AgdaAny
-- stdlib-meta.Tactic.Derive.DecEqRecord.Tests._.Box.boxValue
d_boxValue_156 :: T_Box_152 -> AgdaAny
d_boxValue_156 v0
  = case coe v0 of
      C_box_158 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
