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

module MAlonzo.Code.Tactic.AnyOf where

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

-- Tactic.AnyOf.anyOf'
d_anyOf''_4 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_anyOf''_4 v0
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
      (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
      (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
      (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe ())
      (coe ("anyOf" :: Data.Text.Text))
      (coe
         MAlonzo.Code.Data.List.Base.du_foldl_230
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Class.MonadError.d_catch_28
                 MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
                 (coe
                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                    (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                    (coe
                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                       (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                       (coe
                          MAlonzo.Code.Class.MonadTC.du_debugLog_578
                          (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                          (coe
                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                             (coe ("Attempting: " :: Data.Text.Text))
                             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                             (coe
                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                                (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                       (coe
                          MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
                          (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8) (coe v2)))
                    (coe
                       MAlonzo.Code.Class.MonadTC.du_debugLog_578
                       (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                       (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                       (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                       (coe
                          MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                          (coe ("Success with: " :: Data.Text.Text))
                          (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                          (coe
                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                 (\ v3 -> v1)))
         (coe
            MAlonzo.Code.Class.MonadTC.du_logAndError1_740
            (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_134
               (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe ())
            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
            (coe
               ("None of the provded terms solve the goal!" :: Data.Text.Text)))
         (coe v0))
-- Tactic.AnyOf.anyOfⁿ
d_anyOf'8319'_12 ::
  [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_anyOf'8319'_12 v0
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
      (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
      (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
      (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe ())
      (coe ("anyOf" :: Data.Text.Text))
      (coe
         MAlonzo.Code.Data.List.Base.du_foldl_230
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Class.MonadError.d_catch_28
                 MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
                 (coe
                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                    (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                    (coe
                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                       (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                       (coe
                          MAlonzo.Code.Class.MonadTC.du_debugLog_578
                          (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                          (coe
                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                             (coe ("Attempting: " :: Data.Text.Text))
                             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                             (coe
                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                                (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_24)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                       (coe
                          MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
                          (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                          (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v2)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                    (coe
                       MAlonzo.Code.Class.MonadTC.du_debugLog_578
                       (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                       (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                       (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                       (coe
                          MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                          (coe ("Success with: " :: Data.Text.Text))
                          (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                          (coe
                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_24)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                 (\ v3 -> v1)))
         (coe
            MAlonzo.Code.Class.MonadTC.du_logAndError1_740
            (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_134
               (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe ())
            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
            (coe
               ("None of the provded terms solve the goal!" :: Data.Text.Text)))
         (coe v0))
-- Tactic.AnyOf._.anyOfᵗ
d_anyOf'7511'_26 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_anyOf'7511'_26 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_anyOf''_4 (coe v1))
-- Tactic.AnyOf._.anyOfⁿᵗ
d_anyOf'8319''7511'_30 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_anyOf'8319''7511'_30 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_anyOf'8319'_12 (coe v1))
-- Tactic.AnyOf._.anyOf
d_anyOf_34 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_anyOf_34 v0 = coe d_anyOf'7511'_26 (coe v0)
