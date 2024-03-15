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

module MAlonzo.Code.Tactic.Assumption where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils
import qualified MAlonzo.Code.Reflection.Utils.TCI

-- Tactic.Assumption.solve
d_solve_6 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solve_6 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe
         MAlonzo.Code.Class.MonadTC.d_runSpeculative_184
         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 () erased
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
              erased
              (coe
                 MAlonzo.Code.Class.MonadReader.du_reader_50 ()
                 MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
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
                           (coe ("solve: Goal is not a term!" :: Data.Text.Text)) in
                 coe
                   (case coe v3 of
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                        -> coe
                             MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                             MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                             erased
                             (coe
                                MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                (coe
                                   MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                                   (coe
                                      MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
                                () erased () erased MAlonzo.Code.Reflection.Utils.d_findMetas_58
                                (coe
                                   MAlonzo.Code.Class.MonadTC.d_checkType_150
                                   MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v1 v5)
                                v2)
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                                  (coe MAlonzo.Code.Data.List.Base.du_null_282 (coe v6))
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                     (coe
                                        MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                                        (coe
                                           MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                           (coe
                                              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
                                     () erased () erased
                                     (\ v7 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                     (coe
                                        MAlonzo.Code.Class.MonadTC.d_unify_142
                                        MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v5 v1))
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                     (coe
                                        MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                                        (coe
                                           MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                           (coe
                                              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
                                     () erased () erased
                                     (\ v7 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
                                     (coe
                                        MAlonzo.Code.Class.MonadTC.du_error1_592
                                        (coe
                                           MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                           (coe
                                              MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                                        (coe ())
                                        (coe
                                           MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                        (coe
                                           ("Unsolved metavariables remaining!"
                                            ::
                                            Data.Text.Text))))
                                  v2)
                      _ -> coe v4 v2))))
-- Tactic.Assumption.assumption'
d_assumption''_20 ::
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_assumption''_20
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_328
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe ())
      (coe ("assumption" :: Data.Text.Text))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
              erased
              (coe
                 MAlonzo.Code.Class.MonadTC.du_getContext_546
                 (coe
                    MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                 (coe
                    MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                 v0)
              (\ v1 ->
                 coe
                   MAlonzo.Code.Data.List.Base.du_foldl_256
                   (\ v2 v3 ->
                      coe
                        MAlonzo.Code.Class.MonadError.d_catch_30
                        MAlonzo.Code.Meta.d_iMonadError'45'TC_8 () erased
                        (coe
                           MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                           (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ()) (coe ())
                           (coe
                              MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_684
                              (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                              (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                              (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                              (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v3)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Class.MonadTC.du_debugLog_438
                              (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                              (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                              (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                              (coe
                                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                 (coe ("Success with: " :: Data.Text.Text))
                                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                 (coe
                                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v3)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                    (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (\ v4 -> v2))
                   (coe
                      MAlonzo.Code.Class.MonadTC.du_logAndError1_600
                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                      (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                      (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                      (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6) (coe ())
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                      (coe ("No valid assumption!" :: Data.Text.Text)))
                   (coe
                      MAlonzo.Code.Data.List.Base.d_downFrom_478
                      (coe MAlonzo.Code.Data.List.Base.du_length_304 v1))
                   v0)))
-- Tactic.Assumption._.assumption
d_assumption_36 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_assumption_36 v0
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_100 (coe v0)
      (coe d_assumption''_20)
-- Tactic.Assumption._.assumptionOpts
d_assumptionOpts_38 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_assumptionOpts_38 ~v0 = du_assumptionOpts_38
du_assumptionOpts_38 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_assumptionOpts_38
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTacOpts_86
      (coe d_assumption''_20)
