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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.TCI

-- Tactic.Assumption.assumption'
d_assumption''_6 ::
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_assumption''_6
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_320
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144) (coe ())
      (coe ("assumption" :: Data.Text.Text))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Class.MonadTC.du_getContext_682
                 (coe
                    MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                 (coe
                    MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                 v0)
              (\ v1 ->
                 coe
                   MAlonzo.Code.Data.List.Base.du_foldl_230
                   (\ v2 v3 ->
                      coe
                        MAlonzo.Code.Class.MonadError.d_catch_28
                        MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
                        (coe
                           MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                           (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                           (coe
                              MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_820
                              (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                              (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                              (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                              (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v3)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Class.MonadTC.du_debugLog_574
                              (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                              (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                              (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                              (coe
                                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__36
                                 (coe ("Success with: " :: Data.Text.Text))
                                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_18)
                                 (coe
                                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__36
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v3)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                    (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_20)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (\ v4 -> v2))
                   (coe
                      MAlonzo.Code.Class.MonadTC.du_logAndError1_736
                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                      (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8) (coe ())
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_18)
                      (coe ("No valid assumption!" :: Data.Text.Text)))
                   (coe
                      MAlonzo.Code.Data.List.Base.d_downFrom_420
                      (coe MAlonzo.Code.Data.List.Base.du_length_284 v1))
                   v0)))
-- Tactic.Assumption._.assumption
d_assumption_22 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_assumption_22 v0
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_assumption''_6)
-- Tactic.Assumption._.assumptionOpts
d_assumptionOpts_24 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_assumptionOpts_24 ~v0 = du_assumptionOpts_24
du_assumptionOpts_24 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_assumptionOpts_24
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTacOpts_94
      (coe d_assumption''_6)
