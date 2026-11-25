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
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.AST.DeBruijn
import qualified MAlonzo.Code.Reflection.AST.Term
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.QQuotedDefinitions
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder
import qualified MAlonzo.Code.Tactic.Derive

-- Tactic.Derive.DecEq._.TransEntry
d_TransEntry_8 :: ()
d_TransEntry_8 = erased
-- Tactic.Derive.DecEq._.WrapperChain
d_WrapperChain_10 :: ()
d_WrapperChain_10 = erased
-- Tactic.Derive.DecEq._.applyChain
d_applyChain_12 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_applyChain_12 = coe MAlonzo.Code.Tactic.Derive.du_applyChain_18
-- Tactic.Derive.DecEq._.derive-Class
d_derive'45'Class_14 ::
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'Class_14
  = coe
      MAlonzo.Code.Tactic.Derive.d_derive'45'Class_340
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
-- Tactic.Derive.DecEq._.deriveGroup
d_deriveGroup_16 ::
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveGroup_16
  = coe
      MAlonzo.Code.Tactic.Derive.d_deriveGroup_280
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
-- Tactic.Derive.DecEq._.deriveSingle
d_deriveSingle_18 ::
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  Maybe [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveSingle_18
  = coe
      MAlonzo.Code.Tactic.Derive.d_deriveSingle_252
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
-- Tactic.Derive.DecEq._.genClassType
d_genClassType_20 ::
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genClassType_20
  = coe
      MAlonzo.Code.Tactic.Derive.du_genClassType_48
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.DecEq._.genMutualHelpers
d_genMutualHelpers_22 ::
  [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genMutualHelpers_22
  = coe
      MAlonzo.Code.Tactic.Derive.d_genMutualHelpers_236
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
-- Tactic.Derive.DecEq._.lookupByTerm
d_lookupByTerm_24 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_lookupByTerm_24
  = coe
      MAlonzo.Code.Tactic.Derive.d_lookupByTerm_154
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
-- Tactic.Derive.DecEq._.matchesChain
d_matchesChain_26 ::
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_matchesChain_26
  = coe
      MAlonzo.Code.Tactic.Derive.d_matchesChain_28
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
-- Tactic.Derive.DecEq.`case_returning_of_
d_'96'case_returning_of__28 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'96'case_returning_of__28 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
      (coe
         (MAlonzo.RTE.QName
            (248 :: Integer) (10779521135412943468 :: Integer)
            "Function.Base.case_of_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (0.0 :: Double)))))
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
                           (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
-- Tactic.Derive.DecEq._.eqFromTerm
d_eqFromTerm_52 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
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
                    (32 :: Integer) (11870211246910590228 :: Integer)
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
           -> let v7 = coe v0 v1 in
              coe
                (case coe v7 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                          (coe
                             (MAlonzo.RTE.QName
                                (32 :: Integer) (11870211246910590228 :: Integer)
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
                                (32 :: Integer) (11870211246910590228 :: Integer)
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
-- Tactic.Derive.DecEq._.genBranch
d_genBranch_82 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genBranch_82 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v3 of
                    []
                      -> coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                                (MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'yes_26
                                   (coe MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'refl_16)))
                    (:) v5 v6
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                             -> coe
                                  (\ v9 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () ()
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 ()
                                          erased v8)
                                       (\ v10 ->
                                          let v11
                                                = coe
                                                    MAlonzo.Code.Class.MonadTC.du_error1_736
                                                    (coe
                                                       MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                                                    (coe ())
                                                    (coe
                                                       MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                                    (coe ("BUG: genBranch" :: Data.Text.Text)) in
                                          coe
                                            (case coe v10 of
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v12 v13
                                                 -> coe
                                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24
                                                      MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 ()
                                                      erased () erased
                                                      (coe
                                                         MAlonzo.Code.Class.Traversable.Core.du_traverse_50
                                                         (coe
                                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
                                                         (coe
                                                            MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
                                                         (coe (\ v14 -> v14)) (coe ()) (coe ())
                                                         (coe
                                                            MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                         (coe
                                                            MAlonzo.Code.Class.MonadTC.d_inferType_140
                                                            (coe
                                                               MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_applyUpTo_360
                                                            (coe
                                                               (\ v14 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                    (coe v14)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_268
                                                               v3)))
                                                      (\ v14 v15 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                           () erased
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_foldl_230
                                                              (coe
                                                                 (\ v16 v17 ->
                                                                    coe
                                                                      du_genCase_102 (coe v6)
                                                                      (coe
                                                                         MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v17))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                            (coe
                                                                               (MAlonzo.RTE.QName
                                                                                  (20 :: Integer)
                                                                                  (16368259409245829246 ::
                                                                                     Integer)
                                                                                  "Relation.Nullary.Decidable.Core.Dec"
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
                                                                                     MAlonzo.Code.Reflection.QQuotedDefinitions.d__'96''8801'__4
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                        (coe v12)
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Base.du_applyDownFrom_368
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                      (coe
                                                                                                         addInt
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.List.Base.du_length_268
                                                                                                            v3)
                                                                                                         (coe
                                                                                                            v18))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.List.Base.du_length_268
                                                                                              v3)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                        (coe v12)
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Base.du_applyDownFrom_368
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                      (coe
                                                                                                         v18)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.List.Base.du_length_268
                                                                                              v3)))))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                      (coe
                                                                         d_eqFromTerm_52 (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v17)))
                                                                      (coe v16)))
                                                              (coe du_genTrueCase_110 (coe v6))
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_zip_182
                                                                 v14
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.d_downFrom_404
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du_length_268
                                                                       v3)))))
                                                      v9
                                               _ -> coe v11 v9)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             (\ v2 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                  (MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'no_28
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
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
-- Tactic.Derive.DecEq._._.k
d_k_98 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> Integer
d_k_98 ~v0 ~v1 v2 ~v3 ~v4 = du_k_98 v2
du_k_98 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
du_k_98 v0
  = coe
      addInt (coe (1 :: Integer))
      (coe MAlonzo.Code.Data.List.Base.du_length_268 v0)
-- Tactic.Derive.DecEq._._.vars
d_vars_100 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22
d_vars_100 ~v0 ~v1 v2 ~v3 ~v4 = du_vars_100 v2
du_vars_100 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22
du_vars_100 v0
  = coe
      MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34
      (coe (0 :: Integer))
      (coe
         MAlonzo.Code.Data.List.Base.du_applyUpTo_360
         (coe (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)))
         (coe MAlonzo.Code.Data.List.Base.du_length_268 v0))
-- Tactic.Derive.DecEq._._.genCase
d_genCase_102 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genCase_102 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_genCase_102 v2 v5 v6 v7
du_genCase_102 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_genCase_102 v0 v1 v2 v3
  = coe
      d_'96'case_returning_of__28
      (coe
         v2
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
               (mulInt (coe (2 :: Integer)) (coe du_k_98 (coe v0)))
               (1 :: Integer))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 (coe du_k_98 (coe v0))
               (1 :: Integer))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe v1)
      (coe
         MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToPatLam_436
         (coe
            MAlonzo.Code.Tactic.ClauseBuilder.C_MatchExpr_304
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Tactic.ClauseBuilder.d_singlePatternFromPattern_108
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (10 :: Integer) (4305008439024043551 :: Integer)
                                          "Agda.Builtin.Bool.Bool.true"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                       (coe (0 :: Integer))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                  (coe
                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Tactic.ClauseBuilder.d_singlePatternFromPattern_108
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
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (8 :: Integer) (4305008439024043551 :: Integer)
                                             "Agda.Builtin.Bool.Bool.false"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                          (coe (0 :: Integer))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                     (coe
                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'no_28
                              (coe
                                 MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'case_of__20
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                    (coe (0 :: Integer))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                 (coe
                                    MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToPatLam_436
                                    (coe
                                       MAlonzo.Code.Tactic.ClauseBuilder.d_multiClauseExpr_306
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34
                                                (coe
                                                   MAlonzo.Code.Tactic.ClauseBuilder.d_singlePatternFromPattern_108
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
                                                         (coe
                                                            (MAlonzo.RTE.QName
                                                               (26 :: Integer)
                                                               (5284306542668000596 :: Integer)
                                                               "Relation.Nullary.Reflects.Reflects.of\8319"
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
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                                  (coe (0 :: Integer))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Tactic.ClauseBuilder.d_singlePatternFromPattern_108
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
                                                            (coe
                                                               (MAlonzo.RTE.QName
                                                                  (20 :: Integer)
                                                                  (1335258922519917603 :: Integer)
                                                                  "Agda.Builtin.Equality._\8801_.refl"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe
                                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                      (coe (0 :: Integer))
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
                                                               MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'refl_16))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Tactic.Derive.DecEq._._.genTrueCase
d_genTrueCase_110 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genTrueCase_110 ~v0 ~v1 v2 ~v3 ~v4 = du_genTrueCase_110 v2
du_genTrueCase_110 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_genTrueCase_110 v0
  = coe
      MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'yes_26
      (coe
         MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'case_of__20
         (coe
            MAlonzo.Code.Data.List.NonEmpty.Base.du_foldl'8321'_174
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                 (coe
                    (MAlonzo.RTE.QName
                       (84 :: Integer) (14176793942586333973 :: Integer)
                       "Data.Product.Base._,\8242_"
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
                          (coe v2))
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Data.List.NonEmpty.Base.du_map_98
               (coe
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v1)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe du_vars_100 (coe v0))))
         (coe
            MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToPatLam_436
            (coe
               MAlonzo.Code.Tactic.ClauseBuilder.C_MatchExpr_304
               (coe
                  MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Tactic.ClauseBuilder.d_singlePatternFromPattern_108
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
                              MAlonzo.Code.Data.List.NonEmpty.Base.du_foldl'8321'_174
                              (\ v1 v2 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                   (coe
                                      (MAlonzo.RTE.QName
                                         (32 :: Integer) (15581396396021577314 :: Integer)
                                         "Agda.Builtin.Sigma._,_"
                                         (MAlonzo.RTE.Fixity
                                            MAlonzo.RTE.RightAssoc
                                            (MAlonzo.RTE.Related (4.0 :: Double)))))
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
                                            (coe v2))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                              (coe
                                 MAlonzo.Code.Data.List.NonEmpty.Base.du_map_98
                                 (coe
                                    (\ v1 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (22 :: Integer) (5284306542668000596 :: Integer)
                                               "Relation.Nullary.Reflects.Reflects.of\696"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (20 :: Integer)
                                                        (1335258922519917603 :: Integer)
                                                        "Agda.Builtin.Equality._\8801_.refl"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                 (coe du_vars_100 (coe v0))))))
                     (coe
                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'refl_16))))))))
-- Tactic.Derive.DecEq._.toMapDiag
d_toMapDiag_144 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMapDiag_144 v0 v1 v2
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
                                     (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v2)))
                                  (coe
                                     MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_728
                                     (coe
                                        MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                     (coe
                                        MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140
                                           () erased
                                           (MAlonzo.Code.Reflection.AST.Term.d__'8799''45'Pattern__230
                                              (coe v6) (coe v10)))
                                        (coe
                                           d_genBranch_82 (coe v0)
                                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                        (coe
                                           d_genBranch_82 (coe v0)
                                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.DecEq._.derive-DecEq
d_derive'45'DecEq_160 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'DecEq_160 v0
  = coe
      MAlonzo.Code.Tactic.Derive.d_derive'45'Class_340
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core.DecEq"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (32 :: Integer) (11870211246910590228 :: Integer)
            "Class.DecEq.Core._._\8799_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
      (coe (0 :: Integer))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Data.List.Base.du_cartesianProductWith_70
              (coe d_toMapDiag_144 (coe v1)) (coe v2) (coe v2)))
      (coe v0)
