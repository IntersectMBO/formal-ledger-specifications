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

module MAlonzo.Code.Tactic.Derive.DecEq where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Reflection.AST.Term
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder
import qualified MAlonzo.Code.Tactic.Derive

-- Tactic.Derive.DecEq.`yes
d_'96'yes_22 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'96'yes_22 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (16368259409245829246 :: Integer)
            "Relation.Nullary.Decidable.Core._because_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (2.0 :: Double)))))
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
               MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
               (coe
                  (MAlonzo.RTE.QName
                     (10 :: Integer) (4305008439024043551 :: Integer)
                     "Agda.Builtin.Bool.Bool.true"
                     (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                  (coe
                     (MAlonzo.RTE.QName
                        (22 :: Integer) (5284306542668000596 :: Integer)
                        "Relation.Nullary.Reflects.Reflects.of\696"
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
                        (coe v0))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Derive.DecEq.`no
d_'96'no_24 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'96'no_24 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (16368259409245829246 :: Integer)
            "Relation.Nullary.Decidable.Core._because_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (2.0 :: Double)))))
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
               MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
               (coe
                  (MAlonzo.RTE.QName
                     (8 :: Integer) (4305008439024043551 :: Integer)
                     "Agda.Builtin.Bool.Bool.false"
                     (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                  (coe
                     (MAlonzo.RTE.QName
                        (26 :: Integer) (5284306542668000596 :: Integer)
                        "Relation.Nullary.Reflects.Reflects.of\8319"
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
                        (coe v0))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Derive.DecEq.map'
d_map''_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_map''_38 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_map''_38 v4 v5
du_map''_38 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_map''_38 v0 v1
  = case coe v1 of
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_25797 v2 v3 v4 v5
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
             (coe v2) (coe v3) (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.DecEq._.eqFromTerm
d_eqFromTerm_52 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_eqFromTerm_52 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
              (coe
                 (MAlonzo.RTE.QName
                    (36 :: Integer) (11870211246910590228 :: Integer)
                    "Class.DecEq.Core._._\8799_"
                    (MAlonzo.RTE.Fixity
                       MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
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
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v5 v6
           -> let v7 = coe v0 v5 in
              coe
                (case coe v7 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                          (coe
                             (MAlonzo.RTE.QName
                                (36 :: Integer) (11870211246910590228 :: Integer)
                                "Class.DecEq.Core._._\8799_"
                                (MAlonzo.RTE.Fixity
                                   MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v8)
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
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                   (coe v2))
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
                                      (coe v3))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                          (coe
                             (MAlonzo.RTE.QName
                                (36 :: Integer) (11870211246910590228 :: Integer)
                                "Class.DecEq.Core._._\8799_"
                                (MAlonzo.RTE.Fixity
                                   MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
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
                                (coe v2))
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
                                   (coe v3))
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> coe v4)
-- Tactic.Derive.DecEq._.toDecEqName
d_toDecEqName_82 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_toDecEqName_82 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Data.List.Base.du_map_22
             (coe
                (\ v4 ->
                   case coe v4 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                       -> case coe v6 of
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                              -> coe d_eqFromTerm_52 (coe v0) (coe v8)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError))
             (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.DecEq._.mapDiag
d_mapDiag_90 ::
  (AgdaAny -> Maybe AgdaAny) ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_mapDiag_90 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    (\ v5 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                         erased
                         (coe
                            MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12
                            () ()
                            (coe
                               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                            MAlonzo.Code.Reflection.TCI.d_inferType_112
                            (coe
                               MAlonzo.Code.Data.List.Base.du_applyDownFrom_384
                               (coe
                                  (\ v6 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v6)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                               (coe MAlonzo.Code.Data.List.Base.du_length_284 v3))
                            v5)
                         (\ v6 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (38 :: Integer) (10922215703697431620 :: Integer)
                                       "Tactic.Derive.DecEq.map'"
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
                                          du_genPf_100
                                          (coe MAlonzo.Code.Data.List.Base.du_length_284 v3)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22
                                             (coe d_eqFromTerm_52 (coe v0)) (coe v6))))
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
                                             du_genEquiv_110
                                             (coe MAlonzo.Code.Data.List.Base.du_length_284 v3)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             (\ v2 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                  (d_'96'no_24
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe ("" :: Data.Text.Text))
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
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
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
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264
                                       (coe (0 :: Integer))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.DecEq._._.genPf
d_genPf_100 ::
  (AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genPf_100 ~v0 ~v1 ~v2 v3 v4 = du_genPf_100 v3 v4
du_genPf_100 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_genPf_100 v0 v1
  = case coe v1 of
      []
        -> coe
             d_'96'yes_22
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                (coe
                   (MAlonzo.RTE.QName
                      (8 :: Integer) (13559399870857524843 :: Integer)
                      "Agda.Builtin.Unit.tt"
                      (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                (coe v1))
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
             (coe
                (MAlonzo.RTE.QName
                   (76 :: Integer) (16368259409245829246 :: Integer)
                   "Relation.Nullary.Decidable.Core._\215-dec_"
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
                   (coe du_genPf_100 (coe v0) (coe v3)))
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
                         v2
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                            (coe MAlonzo.Code.Data.List.Base.du_length_284 v3)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                            (coe
                               addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v3) (coe v0))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.DecEq._._.genEquiv
d_genEquiv_110 ::
  (AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genEquiv_110 ~v0 ~v1 ~v2 v3 = du_genEquiv_110 v3
du_genEquiv_110 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_genEquiv_110 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
      (coe
         (MAlonzo.RTE.QName
            (2298 :: Integer) (16285757545730121603 :: Integer)
            "Function.Bundles._.mk\8660"
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
               MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
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
                           (coe du_reflPattern_118 (coe v0)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                        (coe
                           (MAlonzo.RTE.QName
                              (20 :: Integer) (1335258922519917603 :: Integer)
                              "Agda.Builtin.Equality._\8801_.refl"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
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
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
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
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (20 :: Integer) (1335258922519917603 :: Integer)
                                       "Agda.Builtin.Equality._\8801_.refl"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        (coe du_reflTerm_122 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Derive.DecEq._._._.reflPattern
d_reflPattern_118 ::
  (AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_reflPattern_118 ~v0 ~v1 ~v2 ~v3 v4 = du_reflPattern_118 v4
du_reflPattern_118 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
du_reflPattern_118 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
             (coe
                (MAlonzo.RTE.QName
                   (8 :: Integer) (13559399870857524843 :: Integer)
                   "Agda.Builtin.Unit.tt"
                   (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
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
                      (coe du_reflPattern_118 (coe v1)))
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
                            MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                            (coe
                               (MAlonzo.RTE.QName
                                  (20 :: Integer) (1335258922519917603 :: Integer)
                                  "Agda.Builtin.Equality._\8801_.refl"
                                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Tactic.Derive.DecEq._._._.reflTerm
d_reflTerm_122 ::
  (AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_reflTerm_122 ~v0 ~v1 ~v2 ~v3 v4 = du_reflTerm_122 v4
du_reflTerm_122 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_reflTerm_122 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
             (coe
                (MAlonzo.RTE.QName
                   (8 :: Integer) (13559399870857524843 :: Integer)
                   "Agda.Builtin.Unit.tt"
                   (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
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
                      (coe du_reflTerm_122 (coe v1)))
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
                            MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                            (coe
                               (MAlonzo.RTE.QName
                                  (20 :: Integer) (1335258922519917603 :: Integer)
                                  "Agda.Builtin.Equality._\8801_.refl"
                                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Tactic.Derive.DecEq._.toMapDiag
d_toMapDiag_130 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMapDiag_130 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v9 v10
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 (coe v1)
                                     (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2)))
                                  (coe
                                     MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_732
                                     (coe
                                        MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                     (coe
                                        MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130
                                           () erased
                                           (MAlonzo.Code.Reflection.AST.Term.d__'8799''45'Pattern__230
                                              (coe v6) (coe v10)))
                                        (coe
                                           d_mapDiag_90 (coe v0)
                                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                        (coe
                                           d_mapDiag_90 (coe v0)
                                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.DecEq._.derive-DecEq
d_derive'45'DecEq_146 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'DecEq_146 v0
  = coe
      MAlonzo.Code.Tactic.Derive.d_derive'45'Class_150
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (36 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
      (coe (0 :: Integer))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Data.List.Base.du_cartesianProductWith_70
              (coe d_toMapDiag_130 (coe v1)) (coe v2) (coe v2)))
      (coe v0)
