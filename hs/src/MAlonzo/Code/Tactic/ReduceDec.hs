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
import qualified MAlonzo.Code.Class.DecEq.Core
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
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.QQuotedDefinitions
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.Substitute
import qualified MAlonzo.Code.Reflection.Utils.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.Assumption
import qualified MAlonzo.Code.Tactic.Constrs

-- Tactic.ReduceDec.selectSubterms
d_selectSubterms_4 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_selectSubterms_4 v0 v1
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v1)
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
      (coe d_helper_14 (coe v0) (coe v1) (coe v1))
-- Tactic.ReduceDec._.helper
d_helper_14 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_helper_14 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v4 v5
           -> coe d_argHelper_16 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v4 v5
           -> coe d_argHelper_16 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
           -> coe d_argHelper_16 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v4 v5
           -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v4 v5
           -> coe d_argHelper_16 (coe v0) (coe v1) (coe v5)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v4 v5
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                  -> coe
                       MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v7)
                       (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v7))
                       (coe d_helper_14 (coe v0) (coe v1) (coe v7))
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v4 v5
           -> coe d_argHelper_16 (coe v0) (coe v1) (coe v5)
         _ -> coe v3)
-- Tactic.ReduceDec._.argHelper
d_argHelper_16 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_argHelper_16 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe
                       MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v6)
                       (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v6))
                       (coe d_helper_14 (coe v0) (coe v1) (coe v6)))
                    (coe d_argHelper_16 (coe v0) (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ReduceDec.generalizeSubterms
d_generalizeSubterms_48 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_generalizeSubterms_48 v0 v1
  = coe
      d_lambdas_100 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v1)
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (coe
            d_helper_58 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Reflection.Utils.Substitute.d_mapVars_246
               (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) v1)))
-- Tactic.ReduceDec._.helper
d_helper_58 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_helper_58 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v3)
             (coe d_argHelper_60 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3)
             (coe d_argHelper_60 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
             (coe d_argHelper_60 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 (coe v3)
             (coe d_argHelper_60 (coe v0) (coe v1) (coe v4))
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
                          (coe d_helper_58 (coe v0) (coe v1) (coe v6))))
                    (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v3)
             (coe d_argHelper_60 (coe v0) (coe v1) (coe v4))
      _ -> coe v2
-- Tactic.ReduceDec._.argHelper
d_argHelper_60 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_argHelper_60 v0 v1 v2
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
                          (coe d_helper_58 (coe v0) (coe v1) (coe v6))))
                    (coe d_argHelper_60 (coe v0) (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ReduceDec._.lambdas
d_lambdas_100 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_lambdas_100 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                 (coe ("g" :: Data.Text.Text)) (coe v3))))
      (coe v2) (coe d_selectSubterms_4 (coe v0) (coe v1))
-- Tactic.ReduceDec.extractDec
d_extractDec_108 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_extractDec_108 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> case coe v2 of
                MAlonzo.RTE.QName 132 16368259409245829246 _ _
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
d_isIsYes_114 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_isIsYes_114 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe d_extractDec_108 (coe v0))
-- Tactic.ReduceDec.fromWitness'
d_fromWitness''_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromWitness''_122 = erased
-- Tactic.ReduceDec.fromWitnessFalse'
d_fromWitnessFalse''_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromWitnessFalse''_138 = erased
-- Tactic.ReduceDec.fromWitness'Type
d_fromWitness''Type_148 ::
  Bool ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_fromWitness''Type_148 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Reflection.QQuotedDefinitions.d__'96''8801'__4
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                (coe
                   (MAlonzo.RTE.QName
                      (132 :: Integer) (16368259409245829246 :: Integer)
                      "Relation.Nullary.Decidable.Core.isYes"
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
                      (coe v1))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                (coe
                   (MAlonzo.RTE.QName
                      (10 :: Integer) (4305008439024043551 :: Integer)
                      "Agda.Builtin.Bool.Bool.true"
                      (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      else coe
             MAlonzo.Code.Reflection.QQuotedDefinitions.d__'96''8801'__4
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                (coe
                   (MAlonzo.RTE.QName
                      (132 :: Integer) (16368259409245829246 :: Integer)
                      "Relation.Nullary.Decidable.Core.isYes"
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
                      (coe v1))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                (coe
                   (MAlonzo.RTE.QName
                      (8 :: Integer) (4305008439024043551 :: Integer)
                      "Agda.Builtin.Bool.Bool.false"
                      (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Tactic.ReduceDec.findDecRWHypWith
d_findDecRWHypWith_154 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_findDecRWHypWith_154 v0 v1
  = coe
      d_helper_164 (coe v0) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe
         d_helper_164 (coe v0) (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344 () erased
                 (coe
                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                    (coe
                       ("reduceDec: Could not find an equation to rewrite with!"
                        ::
                        Data.Text.Text))
                    (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Tactic.ReduceDec._.helper
d_helper_164 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Bool ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_helper_164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.MonadTC.du_runSpeculativeMaybe_760
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Class.MonadTC.du_newMeta_396
                 MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146
                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) v4)
              (\ v5 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                   MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                   (if coe v2
                      then coe
                             MAlonzo.Code.Reflection.TCI.d_checkType_104
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                (coe
                                   (MAlonzo.RTE.QName
                                      (122 :: Integer) (1919047259428906691 :: Integer)
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
                             (d_fromWitness''Type_148 (coe v2) (coe v1))
                      else coe
                             MAlonzo.Code.Class.MonadTC.d_checkType_142
                             MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                (coe
                                   (MAlonzo.RTE.QName
                                      (138 :: Integer) (1919047259428906691 :: Integer)
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
                             (d_fromWitness''Type_148 (coe v2) (coe v1)))
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.MonadError.d_catch_28
                        MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
                        (coe
                           MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                           (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                           (coe
                              MAlonzo.Code.Class.MonadReader.d_local_40
                              MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 () erased
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Class.MonadTC.C_constructor_66
                                   (coe MAlonzo.Code.Class.MonadTC.d_normalisation_44 (coe v7))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_46 (coe v7))
                                   (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_48 (coe v7))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reduction_50 (coe v7))
                                   (coe MAlonzo.Code.Class.MonadTC.d_globalContext_52 (coe v7))
                                   (coe MAlonzo.Code.Class.MonadTC.d_localContext_54 (coe v7))
                                   (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v5))
                                   (coe MAlonzo.Code.Class.MonadTC.d_options_58 (coe v7)))
                              v0)
                           (coe
                              MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                              (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                              (coe
                                 MAlonzo.Code.Class.MonadTC.du_debugLog'7504'_586
                                 (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                 (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                 (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                 (coe
                                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                    MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 () erased () erased
                                    (coe
                                       MAlonzo.Code.Class.MonadTC.d_toMErrorPart_516
                                       (coe
                                          MAlonzo.Code.Class.MonadTC.du_IsMErrorPart'45'String_534
                                          (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6))
                                       ("Hypothesis is " :: Data.Text.Text))
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                         MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 () erased ()
                                         erased
                                         (coe
                                            MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                            MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 () erased ()
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                               MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 () erased
                                               () erased
                                               (coe
                                                  MAlonzo.Code.Class.MonadReader.d_local_40
                                                  MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 ()
                                                  erased
                                                  (\ v8 ->
                                                     coe
                                                       MAlonzo.Code.Class.MonadTC.C_constructor_66
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_reconstruction_46
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_noConstraints_48
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_reduction_50
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_globalContext_52
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_localContext_54
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_goal_56
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.d_options_58
                                                          (coe v8)))
                                                  (coe
                                                     MAlonzo.Code.Class.MonadTC.d_quoteTC_148
                                                     MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 ()
                                                     erased v2))
                                               (\ v8 ->
                                                  coe
                                                    MAlonzo.Code.Class.Monad.Core.d_return_20
                                                    MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 ()
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                            (\ v8 ->
                                               coe
                                                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                 MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 ()
                                                 erased () erased
                                                 (coe
                                                    MAlonzo.Code.Class.Monad.Core.d_return_20
                                                    MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 ()
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                 (\ v9 ->
                                                    coe
                                                      MAlonzo.Code.Class.Monad.Core.d_return_20
                                                      MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 ()
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe v8) (coe v9)))))
                                         (\ v8 ->
                                            coe
                                              MAlonzo.Code.Class.Monad.Core.d_return_20
                                              MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6 () erased
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                 (coe v7) (coe v8))))))
                              (coe
                                 MAlonzo.Code.Class.Monad.Core.d_return_20
                                 MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)))))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Class.Monad.Core.d_return_20
                             MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                   v4)))
      (coe v3)
-- Tactic.ReduceDec.reduceDecTermWith
d_reduceDecTermWith_178 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_4 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_reduceDecTermWith_178 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
      (coe ("reduceDec" :: Data.Text.Text))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                 erased
                 (coe
                    MAlonzo.Code.Reflection.TCI.d_inferType_102 v2
                    (coe
                       MAlonzo.Code.Class.MonadTC.C_constructor_66
                       (coe MAlonzo.Code.Class.MonadTC.d_normalisation_44 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_46 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_48 (coe v3))
                       (coe v1)
                       (coe MAlonzo.Code.Class.MonadTC.d_globalContext_52 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_localContext_54 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v3))
                       (coe MAlonzo.Code.Class.MonadTC.d_options_58 (coe v3))))
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Reflection.TCI.d_normalise_106 v4
                      (coe
                         MAlonzo.Code.Class.MonadTC.C_constructor_66
                         (coe MAlonzo.Code.Class.MonadTC.d_normalisation_44 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_46 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_48 (coe v3))
                         (coe v1)
                         (coe MAlonzo.Code.Class.MonadTC.d_globalContext_52 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_localContext_54 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v3))
                         (coe MAlonzo.Code.Class.MonadTC.d_options_58 (coe v3)))))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                   () ()
                   (coe
                      MAlonzo.Code.Class.MonadTC.du_debugLog_578
                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                      (coe
                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                         (coe ("Reduce dec in " :: Data.Text.Text))
                         (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                         (coe
                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                            (coe
                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                               (coe (" : " :: Data.Text.Text))
                               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                               (coe
                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v4)
                                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                   (\ v5 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                        erased
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                           (coe
                              MAlonzo.Code.Data.List.Base.du_mapMaybe_258 (coe d_extractDec_108)
                              (coe d_selectSubterms_4 (coe d_isIsYes_114) (coe v4))))
                        (\ v6 ->
                           let v7
                                 = coe
                                     MAlonzo.Code.Class.MonadError.d_error_26
                                     MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
                                     (coe
                                        MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                        (coe
                                           ("No subterms of the form 'isYes t' found!"
                                            ::
                                            Data.Text.Text))
                                        (coe
                                           MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
                           coe
                             (case coe v6 of
                                (:) v8 v9
                                  -> coe
                                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                       MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () ()
                                       (coe
                                          MAlonzo.Code.Class.MonadTC.du_debugLog_578
                                          (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                          (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                          (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                          (coe
                                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                             (coe ("Rewrite scheme: " :: Data.Text.Text))
                                             (coe
                                                MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                             (coe
                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                (coe
                                                   d_generalizeSubterms_48 (coe d_isIsYes_114)
                                                   (coe v4))
                                                (coe
                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                       (coe
                                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                          (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ())
                                          (coe ())
                                          (coe
                                             MAlonzo.Code.Class.MonadTC.du_debugLog_578
                                             (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                             (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                             (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                             (coe
                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                (coe ("`isYes` to reduce: " :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                                (coe
                                                   MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                   (coe v8)
                                                   (coe
                                                      MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                          (coe
                                             MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                             MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased ()
                                             erased (d_findDecRWHypWith_154 (coe v0) (coe v8))
                                             (\ v10 v11 ->
                                                coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                  () () erased erased
                                                  (coe
                                                     MAlonzo.Code.Class.MonadTC.d_inferType_140
                                                     MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 v10
                                                     v11)
                                                  (\ v12 ->
                                                     coe
                                                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                                       MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () ()
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.du_debugLog_578
                                                          (coe
                                                             MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                                          (coe
                                                             MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                                          (coe
                                                             MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                                          (coe
                                                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                             (coe ("Eq: " :: Data.Text.Text))
                                                             (coe
                                                                MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                                             (coe
                                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                (coe v10)
                                                                (coe
                                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                                                (coe
                                                                   MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                   (coe (" : " :: Data.Text.Text))
                                                                   (coe
                                                                      MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                                                   (coe
                                                                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                      (coe v12)
                                                                      (coe
                                                                         MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                       (coe
                                                          MAlonzo.Code.Class.Monad.Core.d_return_20
                                                          MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 ()
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                d_generalizeSubterms_48
                                                                (coe d_isIsYes_114) (coe v4))
                                                             (coe v10)))
                                                       v11))))
                                       v5
                                _ -> coe v7 v5)))
                   v3)))
-- Tactic.ReduceDec.reduceDecTerm
d_reduceDecTerm_202 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_4 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_reduceDecTerm_202 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Reflection.Utils.TCI.du_getFuel_422
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_134
            (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         ("reduceDec/constrs" :: Data.Text.Text) v2)
      (\ v3 ->
         coe
           d_reduceDecTermWith_178
           (MAlonzo.Code.Tactic.Constrs.d_tryConstrsWith''_20
              (coe v3) (coe MAlonzo.Code.Tactic.Assumption.d_assumption''_6))
           v0 v1 v2)
-- Tactic.ReduceDec.reduceDec'
d_reduceDec''_210 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_4 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_reduceDec''_210 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_reduceDecTerm_202 (coe v0) (coe v1) (coe v2))
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d_return_20
                  MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                     (coe
                        (MAlonzo.RTE.QName
                           (114 :: Integer) (6189151057044369179 :: Integer)
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
                  v2
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.ReduceDec.reduceDec
d_reduceDec_222 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_4 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_reduceDec_222 v0 v1
  = coe
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
      (coe d_reduceDec''_210 (coe v0) (coe v1))
-- Tactic.ReduceDec.reduceDecInGoal
d_reduceDecInGoal_228 ::
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_4 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_reduceDecInGoal_228 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_46 ()
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         () (\ v3 -> MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v3)) v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Class.MonadError.d_error_26
                   MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
                   (coe
                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                      (coe ("Goal is not a hole!" :: Data.Text.Text))
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                     (d_reduceDecTerm_202 (coe v0) (coe v5))
                     (\ v6 ->
                        case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                            -> coe
                                 MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
                                 (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                 (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                                 (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                 (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (114 :: Integer) (6189151057044369179 :: Integer)
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
                                                      (108 :: Integer)
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
                          _ -> MAlonzo.RTE.mazUnreachableError)
                     v2
              _ -> coe v4 v2))
-- Tactic.ReduceDec._.by-reduceDec
d_by'45'reduceDec_250 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDec_250 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe
         d_reduceDec_222 (coe MAlonzo.Code.Class.MonadTC.d_reduceAll_10)
         (coe v1))
-- Tactic.ReduceDec._.by-reduceDecInGoal
d_by'45'reduceDecInGoal_254 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDecInGoal_254 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe
         d_reduceDecInGoal_228
         (coe MAlonzo.Code.Class.MonadTC.d_reduceAll_10) (coe v1))
-- Tactic.ReduceDec._.by-reduceDec'
d_by'45'reduceDec''_258 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_4 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDec''_258 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_reduceDec_222 (coe v1) (coe v2))
-- Tactic.ReduceDec._.by-reduceDecInGoal'
d_by'45'reduceDecInGoal''_264 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Class.MonadTC.T_ReductionOptions_4 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'reduceDecInGoal''_264 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_reduceDecInGoal_228 (coe v1) (coe v2))
-- Tactic.ReduceDec.Test.fun
d_fun_288 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
d_fun_288 ~v0 v1 v2 v3 = du_fun_288 v1 v2 v3
du_fun_288 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
du_fun_288 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
      erased (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v1 v2)
