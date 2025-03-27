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
import qualified MAlonzo.Code.Meta
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder
import qualified MAlonzo.Code.Tactic.Derive

-- Tactic.Derive.Show.sLit
d_sLit_22 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_sLit_22 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_string_144 (coe v0))
-- Tactic.Derive.Show.showName
d_showName_24 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showName_24 v0
  = coe
      du_dropModulePrefix_32
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v0)
-- Tactic.Derive.Show._.dropModulePrefix
d_dropModulePrefix_32 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_dropModulePrefix_32 ~v0 v1 = du_dropModulePrefix_32 v1
du_dropModulePrefix_32 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_dropModulePrefix_32 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14
      (coe
         MAlonzo.Code.Data.List.Base.du_reverse_460
         (coe
            MAlonzo.Code.Data.List.Base.du_takeWhile_600
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Char_40 '.' v1)))
            (coe
               MAlonzo.Code.Data.List.Base.du_reverse_460
               (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0))))
-- Tactic.Derive.Show.wrapWithPars
d_wrapWithPars_40 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_wrapWithPars_40 v0
  = coe
      MAlonzo.Code.Data.String.Base.d__'43''43'__20
      ("(" :: Data.Text.Text)
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20 v0
         (")" :: Data.Text.Text))
-- Tactic.Derive.Show.genPars
d_genPars_44 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genPars_44 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
      (coe
         (MAlonzo.RTE.QName
            (40 :: Integer) (2893129390451081392 :: Integer)
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
d_showFromTerm_54 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_showFromTerm_54 v0 v1 v2
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
           -> let v6 = coe v0 v4 in
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
d_genShow_76 ::
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_genShow_76 ~v0 v1 v2 = du_genShow_76 v1 v2
du_genShow_76 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_genShow_76 v0 v1
  = case coe v1 of
      [] -> coe d_sLit_22 (coe d_showName_24 (coe v0))
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
                   (coe du_genShow_76 (coe v0) (coe v3)))
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
                      (coe d_genPars_44 (coe v2)))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.Show._.patternToClause
d_patternToClause_86 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_patternToClause_86 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> let v6
                        = coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Data.List.NonEmpty.Base.du_'91'_'93'_42 (coe v1))
                            (coe
                               MAlonzo.Code.Class.MonadTC.du_error1_592
                               (coe
                                  MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                  (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                               (coe ())
                               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                               (coe ("Error: not a con!" :: Data.Text.Text))) in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v7 v8
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Data.List.NonEmpty.Base.du_'91'_'93'_42 (coe v1))
                              (coe
                                 MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_732
                                 (coe
                                    MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () ()
                                         erased erased
                                         (coe
                                            MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12
                                            () ()
                                            (coe
                                               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                               (coe
                                                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                            (\ v10 v11 ->
                                               coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                 () () erased erased
                                                 (coe
                                                    MAlonzo.Code.Reflection.TCI.d_inferType_112 v10
                                                    v11)
                                                 (\ v12 ->
                                                    coe
                                                      MAlonzo.Code.Class.Monad.Core.d_return_16
                                                      MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe v12) (coe v10))
                                                      v11))
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_applyDownFrom_384
                                               (coe
                                                  (\ v10 ->
                                                     coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                       (coe v10)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe MAlonzo.Code.Data.List.Base.du_length_284 v2))
                                            v9)
                                         (\ v10 ->
                                            coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 ()
                                              erased
                                              (coe
                                                 du_genShow_76 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                                       (coe d_showFromTerm_54 (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_reverse_460
                                                       v10)))))))
                       _ -> coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.Show._.derive-Show
d_derive'45'Show_108 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'Show_108 v0
  = coe
      MAlonzo.Code.Tactic.Derive.d_derive'45'Class_150
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
              (coe d_patternToClause_86 (coe v1))))
      (coe v0)
