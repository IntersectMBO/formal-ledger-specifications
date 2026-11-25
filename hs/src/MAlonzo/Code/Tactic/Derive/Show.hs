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

module MAlonzo.Code.Tactic.Derive.Show where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder
import qualified MAlonzo.Code.Tactic.Derive

-- Tactic.Derive.Show._.TransEntry
d_TransEntry_8 :: ()
d_TransEntry_8 = erased
-- Tactic.Derive.Show._.WrapperChain
d_WrapperChain_10 :: ()
d_WrapperChain_10 = erased
-- Tactic.Derive.Show._.applyChain
d_applyChain_12 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_applyChain_12 = coe MAlonzo.Code.Tactic.Derive.du_applyChain_18
-- Tactic.Derive.Show._.derive-Class
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
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (22 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core._.show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.Show._.deriveGroup
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
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (22 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core._.show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.Show._.deriveSingle
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
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (22 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core._.show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.Show._.genClassType
d_genClassType_20 ::
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genClassType_20
  = coe
      MAlonzo.Code.Tactic.Derive.du_genClassType_48
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.Show._.genMutualHelpers
d_genMutualHelpers_22 ::
  [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genMutualHelpers_22
  = coe
      MAlonzo.Code.Tactic.Derive.d_genMutualHelpers_236
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (22 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core._.show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.Show._.lookupByTerm
d_lookupByTerm_24 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_lookupByTerm_24
  = coe
      MAlonzo.Code.Tactic.Derive.d_lookupByTerm_154
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (22 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core._.show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.Show._.matchesChain
d_matchesChain_26 ::
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_matchesChain_26
  = coe
      MAlonzo.Code.Tactic.Derive.d_matchesChain_28
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (22 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core._.show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Tactic.Derive.Show.sLit
d_sLit_30 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_sLit_30 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_string_144 (coe v0))
-- Tactic.Derive.Show.showName
d_showName_32 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showName_32 v0
  = coe
      du_dropModulePrefix_40
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v0)
-- Tactic.Derive.Show._.dropModulePrefix
d_dropModulePrefix_40 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_dropModulePrefix_40 ~v0 v1 = du_dropModulePrefix_40 v1
du_dropModulePrefix_40 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_dropModulePrefix_40 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14
      (coe
         MAlonzo.Code.Data.List.Base.du_reverse_444
         (coe
            MAlonzo.Code.Data.List.Base.du_takeWhile_584
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Char_40 '.' v1)))
            (coe
               MAlonzo.Code.Data.List.Base.du_reverse_444
               (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0))))
-- Tactic.Derive.Show.wrapWithPars
d_wrapWithPars_48 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_wrapWithPars_48 v0
  = coe
      MAlonzo.Code.Data.String.Base.d__'43''43'__20
      ("(" :: Data.Text.Text)
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20 v0
         (")" :: Data.Text.Text))
-- Tactic.Derive.Show.genPars
d_genPars_52 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genPars_52 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
      (coe
         (MAlonzo.RTE.QName
            (48 :: Integer) (2893129390451081392 :: Integer)
            "Tactic.Derive.Show.wrapWithPars"
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
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Tactic.Derive.Show._.showFromTerm
d_showFromTerm_62 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_showFromTerm_62 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
              (coe
                 (MAlonzo.RTE.QName
                    (22 :: Integer) (3547679797816264244 :: Integer)
                    "Class.Show.Core._.show"
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
                    (coe v2))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
           -> let v6 = coe v0 v1 in
              coe
                (case coe v6 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                          (coe
                             (MAlonzo.RTE.QName
                                (22 :: Integer) (3547679797816264244 :: Integer)
                                "Class.Show.Core._.show"
                                (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v7)
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
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                          (coe
                             (MAlonzo.RTE.QName
                                (22 :: Integer) (3547679797816264244 :: Integer)
                                "Class.Show.Core._.show"
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
                                (coe v2))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> coe v3)
-- Tactic.Derive.Show._.genShow
d_genShow_84 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genShow_84 ~v0 v1 v2 = du_genShow_84 v1 v2
du_genShow_84 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_genShow_84 v0 v1
  = case coe v1 of
      [] -> coe d_sLit_30 (coe d_showName_32 (coe v0))
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
             (coe
                (MAlonzo.RTE.QName
                   (50 :: Integer) (11346540346813166715 :: Integer)
                   "Data.String.Base._<+>_"
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
                   (coe du_genShow_84 (coe v0) (coe v3)))
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
                      (coe d_genPars_52 (coe v2)))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.Show._.patternToClause
d_patternToClause_94 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_patternToClause_94 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> let v6
                        = coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Data.List.NonEmpty.Base.du_'91'_'93'_42 (coe v1))
                            (coe
                               MAlonzo.Code.Class.MonadTC.du_error1_736
                               (coe
                                  MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_138
                                  (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_40))
                               (coe ())
                               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                               (coe ("Error: not a con!" :: Data.Text.Text))) in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v7 v8
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Data.List.NonEmpty.Base.du_'91'_'93'_42 (coe v1))
                              (coe
                                 MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_728
                                 (coe
                                    MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () ()
                                         erased erased
                                         (coe
                                            MAlonzo.Code.Class.Traversable.Core.du_traverse_50
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                            MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28
                                            (\ v10 -> v10) () ()
                                            (coe
                                               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                                               (coe
                                                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                            (\ v10 v11 ->
                                               coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                 () () erased erased
                                                 (coe
                                                    MAlonzo.Code.Reflection.TCI.d_inferType_102 v10
                                                    v11)
                                                 (\ v12 ->
                                                    coe
                                                      MAlonzo.Code.Class.Monad.Core.d_return_22
                                                      MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 ()
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe v12) (coe v10))
                                                      v11))
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_applyDownFrom_368
                                               (coe
                                                  (\ v10 ->
                                                     coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                       (coe v10)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe MAlonzo.Code.Data.List.Base.du_length_268 v2))
                                            v9)
                                         (\ v10 ->
                                            coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 ()
                                              erased
                                              (coe
                                                 du_genShow_84 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                                       (coe d_showFromTerm_62 (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_reverse_444
                                                       v10)))))))
                       _ -> coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.Show._.derive-Show
d_derive'45'Show_116 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'Show_116 v0
  = coe
      MAlonzo.Code.Tactic.Derive.d_derive'45'Class_340
      (coe
         (MAlonzo.RTE.QName
            (10 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core.Show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         (MAlonzo.RTE.QName
            (22 :: Integer) (3547679797816264244 :: Integer)
            "Class.Show.Core._.show"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe (0 :: Integer))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.List.Base.du_map_22
              (coe d_patternToClause_94 (coe v1))))
      (coe v0)
