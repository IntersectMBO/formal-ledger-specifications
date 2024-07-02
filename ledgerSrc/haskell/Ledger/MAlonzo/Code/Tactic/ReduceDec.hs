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

module MAlonzo.Code.Tactic.ReduceDec where

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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils
import qualified MAlonzo.Code.Reflection.Utils.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.Assumption
import qualified MAlonzo.Code.Tactic.Constrs

-- Tactic.ReduceDec.selectSubterms
d_selectSubterms_8 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_selectSubterms_8 v0 v1
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v1)
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v1))
      (coe d_helper_18 (coe v0) (coe v1) (coe v1))
-- Tactic.ReduceDec._.helper
d_helper_18 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_helper_18 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v4 v5
           -> coe d_argHelper_20 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v4 v5
           -> coe d_argHelper_20 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
           -> coe d_argHelper_20 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v4 v5
           -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v4 v5
           -> coe d_argHelper_20 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v4 v5
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                  -> coe
                       MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v7)
                       (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v7))
                       (coe d_helper_18 (coe v0) (coe v1) (coe v7))
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v4 v5
           -> coe d_argHelper_20 (coe v0) (coe v1) (coe v5)
         _ -> coe v3)
-- Tactic.ReduceDec._.argHelper
d_argHelper_20 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_argHelper_20 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__62
                    (coe
                       MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v6)
                       (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v6))
                       (coe d_helper_18 (coe v0) (coe v1) (coe v6)))
                    (coe d_argHelper_20 (coe v0) (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ReduceDec.generalizeSubterms
d_generalizeSubterms_52 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_generalizeSubterms_52 v0 v1
  = coe
      d_lambdas_104 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v1)
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (coe
            d_helper_62 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Reflection.Utils.d_mapVars_360
               (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) v1)))
-- Tactic.ReduceDec._.helper
d_helper_62 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_helper_62 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v3)
             (coe d_argHelper_64 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3)
             (coe d_argHelper_64 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
             (coe d_argHelper_64 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 (coe v3)
             (coe d_argHelper_64 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                       (coe
                          MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v6)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                          (coe d_helper_62 (coe v0) (coe v1) (coe v6))))
                    (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v3)
             (coe d_argHelper_64 (coe v0) (coe v1) (coe v4))
      _ -> coe v2
-- Tactic.ReduceDec._.argHelper
d_argHelper_64 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_argHelper_64 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                       (coe
                          MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v6)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                          (coe d_helper_62 (coe v0) (coe v1) (coe v6))))
                    (coe d_argHelper_64 (coe v0) (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ReduceDec._.lambdas
d_lambdas_104 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_lambdas_104 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                 (coe ("g" :: Data.Text.Text)) (coe v3))))
      (coe v2) (coe d_selectSubterms_8 (coe v0) (coe v1))
-- Tactic.ReduceDec.extractDec
d_extractDec_112 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_extractDec_112 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> case coe v2 of
                MAlonzo.RTE.QName 104 16368259409245829246 _ _
                  -> case coe v3 of
                       (:) v4 v5
                         -> case coe v5 of
                              (:) v6 v7
                                -> case coe v7 of
                                     (:) v8 v9
                                       -> case coe v8 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v10 v11
                                              -> case coe v10 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v12 v13
                                                     -> case coe v12 of
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                            -> case coe v13 of
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v14 v15
                                                                   -> case coe v14 of
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                          -> case coe v15 of
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                 -> case coe v9 of
                                                                                      []
                                                                                        -> coe
                                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                             (coe
                                                                                                v11)
                                                                                      _ -> coe v1
                                                                               _ -> coe v1
                                                                        _ -> coe v1
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> coe v1
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> coe v1
                              _ -> coe v1
                       _ -> coe v1
                _ -> coe v1
         _ -> coe v1)
-- Tactic.ReduceDec.isIsYes
d_isIsYes_118 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_isIsYes_118 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe d_extractDec_112 (coe v0))
-- Tactic.ReduceDec.fromWitness'
d_fromWitness''_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromWitness''_126 = erased
-- Tactic.ReduceDec.fromWitnessFalse'
d_fromWitnessFalse''_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromWitnessFalse''_142 = erased
-- Tactic.ReduceDec.fromWitness'Type
d_fromWitness''Type_152 ::
  Bool ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_fromWitness''Type_152 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
             (coe
                (MAlonzo.RTE.QName
                   (12 :: Integer) (1335258922519917603 :: Integer)
                   "Agda.Builtin.Equality._\8801_"
                   (MAlonzo.RTE.Fixity
                      MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                            (coe
                               (MAlonzo.RTE.QName
                                  (104 :: Integer) (16368259409245829246 :: Integer)
                                  "Relation.Nullary.Decidable.Core.isYes"
                                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                     (MAlonzo.RTE.Fixity
                                        MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      else coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
             (coe
                (MAlonzo.RTE.QName
                   (12 :: Integer) (1335258922519917603 :: Integer)
                   "Agda.Builtin.Equality._\8801_"
                   (MAlonzo.RTE.Fixity
                      MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                            (coe
                               (MAlonzo.RTE.QName
                                  (104 :: Integer) (16368259409245829246 :: Integer)
                                  "Relation.Nullary.Decidable.Core.isYes"
                                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                     (MAlonzo.RTE.Fixity
                                        MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Tactic.ReduceDec.findDecRWHypWith
d_findDecRWHypWith_158 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_findDecRWHypWith_158 v0 v1
  = coe
      d_helper_168 (coe v0) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe
         d_helper_168 (coe v0) (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe
            MAlonzo.Code.Class.MonadTC.du_error1_592
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
               (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
            (coe ())
            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
            (coe
               ("reduceDec: Could not find an equation to rewrite with!"
                ::
                Data.Text.Text))))
-- Tactic.ReduceDec._.helper
d_helper_168 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Bool ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_helper_168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.MonadTC.du_runSpeculativeMaybe_620
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe ())
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
              erased
              (coe
                 MAlonzo.Code.Class.MonadTC.du_newMeta_270
                 MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) v4)
              (\ v5 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                   MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                   (if coe v2
                      then coe
                             MAlonzo.Code.Class.MonadTC.d_checkType_150
                             MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                (coe
                                   (MAlonzo.RTE.QName
                                      (126 :: Integer) (1919047259428906691 :: Integer)
                                      "Tactic.ReduceDec.fromWitness'"
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
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
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
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe v5))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                             (d_fromWitness''Type_152 (coe v2) (coe v1))
                      else coe
                             MAlonzo.Code.Class.MonadTC.d_checkType_150
                             MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                (coe
                                   (MAlonzo.RTE.QName
                                      (142 :: Integer) (1919047259428906691 :: Integer)
                                      "Tactic.ReduceDec.fromWitnessFalse'"
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
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
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
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe v5))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                             (d_fromWitness''Type_152 (coe v2) (coe v1)))
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.MonadError.d_catch_30
                        MAlonzo.Code.Meta.d_iMonadError'45'TC_8 () erased
                        (coe
                           MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                           (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ()) (coe ())
                           (coe
                              MAlonzo.Code.Class.MonadTC.du_runWithHole_692
                              MAlonzo.Code.Meta.d_iMonadReader'45'TC_6 () v5 v0)
                           (coe
                              MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                              (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ()) (coe ())
                              (coe
                                 MAlonzo.Code.Class.MonadTC.du_debugLog'7504'_446
                                 (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                 (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                 (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                                 (coe
                                    MAlonzo.Code.Class.MonadTC.du__'8759''7496''7504'__408
                                    (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                    (coe ("Hypothesis is " :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Class.MonadTC.du_IsMErrorPart'45'String_394
                                       (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18))
                                    (coe
                                       MAlonzo.Code.Class.MonadTC.du__'8759''7496''7504'__408
                                       (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                       (coe
                                          MAlonzo.Code.Class.MonadTC.du__'7515''8319'_424
                                          (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                          (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                          (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6) (coe ())
                                          (coe v2))
                                       (coe
                                          MAlonzo.Code.Class.MonadTC.du_IsMErrorPart'45'MErrorPartWrap_400)
                                       (coe
                                          MAlonzo.Code.Class.Monad.Core.d_return_16
                                          MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18 () erased
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe
                                 MAlonzo.Code.Class.Monad.Core.d_return_16
                                 MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)))))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Class.Monad.Core.d_return_16
                             MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                   v4)))
      (coe v3)
-- Tactic.ReduceDec.reduceDecTermWith
d_reduceDecTermWith_182 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_reduceDecTermWith_182 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_328
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe ())
      (coe ("reduceDec" :: Data.Text.Text))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
              erased
              (coe
                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                 erased
                 (coe
                    MAlonzo.Code.Class.MonadTC.d_inferType_148
                    MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v2
                    (coe
                       MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_243
                       (coe MAlonzo.Code.Class.MonadTC.d_normalisation_50 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_52 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_54 (coe v3))
                       (coe v1)
                       (coe MAlonzo.Code.Class.MonadTC.d_globalContext_58 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_goal_62 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_options_64 (coe v3))))
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.MonadTC.d_normalise_152
                      MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v4
                      (coe
                         MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_243
                         (coe MAlonzo.Code.Class.MonadTC.d_normalisation_50 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_52 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_54 (coe v3))
                         (coe v1)
                         (coe MAlonzo.Code.Class.MonadTC.d_globalContext_58 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_goal_62 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_options_64 (coe v3)))))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                   () ()
                   (coe
                      MAlonzo.Code.Class.MonadTC.du_debugLog_438
                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                      (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                      (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                      (coe
                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                         (coe ("Reduce dec in " :: Data.Text.Text))
                         (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                         (coe
                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                            (coe
                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                               (coe (" : " :: Data.Text.Text))
                               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                               (coe
                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v4)
                                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                   (\ v5 ->
                      coe
                        MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                        MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                        erased
                        (coe
                           MAlonzo.Code.Class.Monad.Core.d_return_16
                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
                           (coe
                              MAlonzo.Code.Data.List.Base.du_mapMaybe_32 (coe d_extractDec_112)
                              (coe d_selectSubterms_8 (coe d_isIsYes_118) (coe v4))))
                        (\ v6 ->
                           let v7
                                 = coe
                                     MAlonzo.Code.Class.MonadTC.du_error1_592
                                     (coe
                                        MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                        (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                                     (coe ())
                                     (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                     (coe
                                        ("No subterms of the form 'isYes t' found!"
                                         ::
                                         Data.Text.Text)) in
                           coe
                             (case coe v6 of
                                (:) v8 v9
                                  -> coe
                                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                       (coe
                                          MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                          (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                       () ()
                                       (coe
                                          MAlonzo.Code.Class.MonadTC.du_debugLog_438
                                          (coe
                                             MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                             (coe
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                          (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
                                          (coe
                                             MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                             (coe
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                          (coe
                                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                             (coe ("Rewrite scheme: " :: Data.Text.Text))
                                             (coe
                                                MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                             (coe
                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                (coe
                                                   d_generalizeSubterms_52 (coe d_isIsYes_118)
                                                   (coe v4))
                                                (coe
                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                       (coe
                                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                          (coe
                                             MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                             (coe
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                          (coe ()) (coe ())
                                          (coe
                                             MAlonzo.Code.Class.MonadTC.du_debugLog_438
                                             (coe
                                                MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                             (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
                                             (coe
                                                MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                             (coe
                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                (coe ("`isYes` to reduce: " :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                (coe
                                                   MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                   (coe v8)
                                                   (coe
                                                      MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                          (coe
                                             (\ v10 ->
                                                coe
                                                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                  () erased () erased
                                                  (coe d_findDecRWHypWith_158 v0 v8 v10)
                                                  (\ v11 ->
                                                     coe
                                                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                       MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                       () erased () erased
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_inferType_148
                                                          MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                                                          v11 v10)
                                                       (\ v12 ->
                                                          coe
                                                            MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                            MAlonzo.Code.Meta.d_iMonad'45'TC_2 () ()
                                                            (coe
                                                               MAlonzo.Code.Class.MonadTC.du_debugLog_438
                                                               (coe
                                                                  MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                                               (coe
                                                                  MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                                               (coe
                                                                  MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                                                               (coe
                                                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                  (coe ("Eq: " :: Data.Text.Text))
                                                                  (coe
                                                                     MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                  (coe
                                                                     MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                     (coe v11)
                                                                     (coe
                                                                        MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                     (coe
                                                                        MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                        (coe
                                                                           (" : "
                                                                            ::
                                                                            Data.Text.Text))
                                                                        (coe
                                                                           MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                        (coe
                                                                           MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                           (coe v12)
                                                                           (coe
                                                                              MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                            (coe
                                                               MAlonzo.Code.Class.Monad.Core.d_return_16
                                                               MAlonzo.Code.Meta.d_iMonad'45'TC_2 ()
                                                               erased
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     d_generalizeSubterms_52
                                                                     (coe d_isIsYes_118) (coe v4))
                                                                  (coe v11)))
                                                            v10)))))
                                       v5
                                _ -> coe v7 v5)))
                   v3)))
-- Tactic.ReduceDec.reduceDecTerm
d_reduceDecTerm_206 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_reduceDecTerm_206 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Reflection.Utils.TCI.du_getFuel_428
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
            (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         ("reduceDec/constrs" :: Data.Text.Text) v2)
      (\ v3 ->
         coe
           d_reduceDecTermWith_182
           (MAlonzo.Code.Tactic.Constrs.d_tryConstrsWith''_20
              (coe v3) (coe MAlonzo.Code.Tactic.Assumption.d_assumption''_20))
           v0 v1 v2)
-- Tactic.ReduceDec.reduceDec'
d_reduceDec''_214 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_reduceDec''_214 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased (d_reduceDecTerm_206 (coe v0) (coe v1) (coe v2))
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d_return_16
                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                     (coe
                        (MAlonzo.RTE.QName
                           (98 :: Integer) (6189151057044369179 :: Integer)
                           "Relation.Binary.PropositionalEquality.Core.subst"
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
                           (coe v4))
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
                              (coe v5))
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
                                 (coe v1))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.ReduceDec.reduceDec
d_reduceDec_226 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_reduceDec_226 v0 v1
  = coe
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
      (coe d_reduceDec''_214 (coe v0) (coe v1))
-- Tactic.ReduceDec.reduceDecInGoal
d_reduceDecInGoal_232 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_reduceDecInGoal_232 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_50 ()
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         () (\ v3 -> MAlonzo.Code.Class.MonadTC.d_goal_62 (coe v3)) v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Class.MonadTC.du_error1_592
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                      (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                   (coe ())
                   (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                   (coe ("Goal is not a hole!" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                     erased (d_reduceDecTerm_206 (coe v0) (coe v5) (coe v2))
                     (\ v6 ->
                        case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                            -> coe
                                 MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_684
                                 (coe
                                    MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                 (coe
                                    MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                    (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                                 MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                                 (coe
                                    MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (98 :: Integer) (6189151057044369179 :: Integer)
                                          "Relation.Binary.PropositionalEquality.Core.subst"
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
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (92 :: Integer)
                                                      (6189151057044369179 :: Integer)
                                                      "Relation.Binary.PropositionalEquality.Core.sym"
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
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
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
                                                (coe v1))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 v2
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> coe v4 v2))
-- Tactic.ReduceDec._.by-reduceDec
d_by'45'reduceDec_254 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDec_254 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe
         d_reduceDec_226 (coe MAlonzo.Code.Class.MonadTC.d_reduceAll_18)
         (coe v1))
-- Tactic.ReduceDec._.by-reduceDecInGoal
d_by'45'reduceDecInGoal_258 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDecInGoal_258 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe
         d_reduceDecInGoal_232
         (coe MAlonzo.Code.Class.MonadTC.d_reduceAll_18) (coe v1))
-- Tactic.ReduceDec._.by-reduceDec'
d_by'45'reduceDec''_262 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDec''_262 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe d_reduceDec_226 (coe v1) (coe v2))
-- Tactic.ReduceDec._.by-reduceDecInGoal'
d_by'45'reduceDecInGoal''_268 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDecInGoal''_268 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe d_reduceDecInGoal_232 (coe v1) (coe v2))
