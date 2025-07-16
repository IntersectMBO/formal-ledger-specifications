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

module MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.ClauseBuilder

-- stdlib-meta.Tactic.GenError.dec-de-morgan
d_dec'45'de'45'morgan_10 ::
  () ->
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_dec'45'de'45'morgan_10 ~v0 ~v1 v2 v3
  = du_dec'45'de'45'morgan_10 v2 v3
du_dec'45'de'45'morgan_10 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_dec'45'de'45'morgan_10 v0 v1
  = case coe v0 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v2
        -> case coe v2 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
               -> if coe v3
                    then case coe v4 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     (\ v6 ->
                                        coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                             (coe v6))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v4) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Tactic.GenError._
d___26 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_20 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_444
d___26 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_598 v1
      v2 v3 v4
-- stdlib-meta.Tactic.GenError.genError'
d_genError''_28 :: MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_genError''_28
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_320
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144) (coe ())
      (coe ("genError" :: Data.Text.Text))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Reflection.TCI.d_inferType_100
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                 v0)
              (\ v1 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                   MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                   (coe
                      MAlonzo.Code.Reflection.TCI.du_liftTC_64 (coe ())
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_formatErrorParts_460
                         (coe
                            MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312 (coe v1)))))
                   (\ v2 ->
                      coe
                        MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_820
                        (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_string_144 (coe v2))))
                   v0)))
-- stdlib-meta.Tactic.GenError._.genError
d_genError_40 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_genError_40 v0
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_genError''_28)
-- stdlib-meta.Tactic.GenError.genErrors'
d_genErrors''_42 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_genErrors''_42 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Class.MonadTC.du_error1_728
             (coe
                MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_120
                (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30))
             (coe ())
             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_18)
             (coe ("genErrors: out of fuel" :: Data.Text.Text))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_320
                (coe
                   MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                (coe
                   MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144) (coe ())
                (coe ("genErrors" :: Data.Text.Text))
                (coe
                   (\ v3 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 () erased
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                           erased
                           (coe
                              MAlonzo.Code.Class.MonadTC.du_newMeta_394
                              MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) v3)
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                                (coe
                                   MAlonzo.Code.Class.MonadTC.du_extendContext_672
                                   MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 ()
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
                                      MAlonzo.Code.Class.MonadTC.du_newMeta_394
                                      MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)))
                                (\ v5 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                     (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                                     (coe
                                        MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
                                        (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ())
                                        (coe ())
                                        (coe
                                           MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_820
                                           (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                           (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                                           (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                           (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8))
                                        (coe
                                           MAlonzo.Code.Tactic.ClauseBuilder.du_caseMatch_504
                                           (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                           (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                           (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                              (coe
                                                 (MAlonzo.RTE.QName
                                                    (10 :: Integer) (4251189518202500422 :: Integer)
                                                    "stdlib-meta.Tactic.GenError.dec-de-morgan"
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
                                              MAlonzo.Code.Tactic.ClauseBuilder.du_matchExprM_626
                                              (coe
                                                 MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                                                 (coe
                                                    MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                              (coe
                                                 d___26 erased
                                                 (coe
                                                    MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                                                    (coe
                                                       MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                 MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10
                                                 MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
                                                 MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
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
                                                       MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_728
                                                       (coe
                                                          MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                                                          (coe
                                                             MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                       (coe
                                                          MAlonzo.Code.Class.MonadTC.du_withGoalHole_848
                                                          (coe
                                                             MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                          (coe
                                                             MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                                          (coe
                                                             MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                                          (coe d_genError''_28))))
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
                                                          MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_728
                                                          (coe
                                                             MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                                          (coe
                                                             (\ v6 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                  () erased v5))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                     (coe
                                        MAlonzo.Code.Class.MonadTC.du_extendContext_672
                                        MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 ()
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
                                           MAlonzo.Code.Class.MonadTC.du_runWithHole_828
                                           (coe
                                              MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                                              (coe
                                                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                           () v5
                                           (d_genErrors''_42
                                              (coe v2)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                 (coe (0 :: Integer))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                v3))
                        (coe d_genError''_28 v3))))
-- stdlib-meta.Tactic.GenError._.genErrors
d_genErrors_60 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_genErrors_60 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_genErrors''_42 (coe (100 :: Integer)) (coe v1))
