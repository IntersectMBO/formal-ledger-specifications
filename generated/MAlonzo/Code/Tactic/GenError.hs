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

module MAlonzo.Code.Tactic.GenError where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Meta
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.TCI
import qualified MAlonzo.Code.Tactic.ClauseBuilder

-- Tactic.GenError._
d___12 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_450
d___12 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_604 v1
      v2 v3 v4
-- Tactic.GenError.liftTC
d_liftTC_16 ::
  () -> AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_liftTC_16 ~v0 v1 v2 = du_liftTC_16 v1 v2
du_liftTC_16 ::
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
du_liftTC_16 v0 v1
  = coe
      MAlonzo.Code.Reflection.TCI.du_applyExtContext_66 (coe ())
      (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v1))
      (coe v0)
-- Tactic.GenError.genError'
d_genError''_22 :: MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_genError''_22
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_328
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe ())
      (coe ("genError" :: Data.Text.Text))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Reflection.TCI.d_inferType_112
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                 v0)
              (\ v1 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                   MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                   (coe
                      du_liftTC_16
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_formatErrorParts_460
                         (coe
                            MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312 (coe v1)))))
                   (\ v2 ->
                      coe
                        MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_684
                        (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                        (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                        (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                        (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_string_144 (coe v2))))
                   v0)))
-- Tactic.GenError._.genError
d_genError_34 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_genError_34 v0
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe d_genError''_22)
-- Tactic.GenError.genErrors'
d_genErrors''_36 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_genErrors''_36 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Class.MonadTC.du_error1_592
             (coe
                MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
             (coe ())
             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
             (coe ("genErrors: out of fuel" :: Data.Text.Text))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_328
                (coe
                   MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                (coe
                   MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe ())
                (coe ("genErrors" :: Data.Text.Text))
                (coe
                   (\ v3 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 () erased
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                           erased
                           (coe
                              MAlonzo.Code.Class.MonadTC.du_newMeta_270
                              MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) v3)
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                                (coe
                                   MAlonzo.Code.Class.MonadTC.du_extendContext_536
                                   MAlonzo.Code.Meta.d_iMonadReader'45'TC_6 ()
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
                                         (coe v4)))
                                   (coe
                                      MAlonzo.Code.Class.MonadTC.du_newMeta_270
                                      MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)))
                                (\ v5 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                     (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ()) (coe ())
                                     (coe
                                        MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
                                        (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ()) (coe ())
                                        (coe
                                           MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_684
                                           (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                           (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                                           (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                           (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6))
                                        (coe
                                           MAlonzo.Code.Tactic.ClauseBuilder.du_caseMatch_510
                                           (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                           (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                                           (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                              (coe
                                                 (MAlonzo.RTE.QName
                                                    (8 :: Integer) (18014622004808103972 :: Integer)
                                                    "Ledger.Prelude.dec-de-morgan"
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
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe
                                              MAlonzo.Code.Tactic.ClauseBuilder.du_matchExprM_630
                                              (coe
                                                 MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                                 (coe
                                                    MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                              (coe
                                                 d___12 erased
                                                 (coe
                                                    MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                                    (coe
                                                       MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                 MAlonzo.Code.Meta.d_iMonadError'45'TC_8
                                                 MAlonzo.Code.Meta.d_iMonadReader'45'TC_6
                                                 MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe ("" :: Data.Text.Text))
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
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
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
                                                                   (38 :: Integer)
                                                                   (9738182687374166275 :: Integer)
                                                                   "Data.Sum.Base._\8846_.inj\8321"
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
                                                       MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_732
                                                       (coe
                                                          MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                                          (coe
                                                             MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.du_withGoalHole_712
                                                          (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                                          (coe
                                                             MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                                          (coe
                                                             MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                                                          (coe d_genError''_22))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe ("" :: Data.Text.Text))
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
                                                                   (coe v4))))
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
                                                                      (42 :: Integer)
                                                                      (9738182687374166275 ::
                                                                         Integer)
                                                                      "Data.Sum.Base._\8846_.inj\8322"
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
                                                          MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_732
                                                          (coe
                                                             MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                                          (coe
                                                             (\ v6 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                  () erased v5))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                     (coe
                                        MAlonzo.Code.Class.MonadTC.du_extendContext_536
                                        MAlonzo.Code.Meta.d_iMonadReader'45'TC_6 ()
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe ("" :: Data.Text.Text))
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
                                              (coe v4)))
                                        (coe
                                           MAlonzo.Code.Class.MonadTC.du_runWithHole_692
                                           (coe
                                              MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                              (coe
                                                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                           () v5
                                           (d_genErrors''_36
                                              (coe v2)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                 (coe (0 :: Integer))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                v3))
                        (coe d_genError''_22 v3))))
-- Tactic.GenError._.genErrors
d_genErrors_54 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_genErrors_54 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe d_genErrors''_36 (coe (100 :: Integer)) (coe v1))
