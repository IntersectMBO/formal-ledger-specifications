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

module MAlonzo.Code.Reflection.Tactic where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Reflection.TCI

-- Reflection.Tactic.Tactic
d_Tactic_80 :: ()
d_Tactic_80 = erased
-- Reflection.Tactic.UnquoteDecl
d_UnquoteDecl_82 :: ()
d_UnquoteDecl_82 = erased
-- Reflection.Tactic.ITactic
d_ITactic_84 :: ()
d_ITactic_84 = erased
-- Reflection.Tactic.initTacEnv
d_initTacEnv_86 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 ->
   MAlonzo.Code.Class.MonadTC.T_TCEnv_26) ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTacEnv_86 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (MAlonzo.Code.Class.MonadTC.d_initTCEnvWithGoal_68 (coe v2))
      (\ v3 -> coe v1 (coe v0 v3))
-- Reflection.Tactic.initTacOpts
d_initTacOpts_94 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTacOpts_94 v0 v1
  = coe
      d_initTacEnv_86
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.MonadTC.C_constructor_66
              (coe MAlonzo.Code.Class.MonadTC.d_normalisation_44 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_46 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_48 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_reduction_50 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_globalContext_52 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_localContext_54 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v2)) (coe v1)))
      (coe v0)
-- Reflection.Tactic._.initTac
d_initTac_108 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTac_108 v0 v1 = coe d_initTacOpts_94 (coe v1) (coe v0)
-- Reflection.Tactic._.initUnquoteWithGoal
d_initUnquoteWithGoal_112 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) -> AgdaAny
d_initUnquoteWithGoal_112 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (MAlonzo.Code.Class.MonadTC.d_initTCEnvWithGoal_68 (coe v1))
      (\ v3 ->
         coe
           v2
           (coe
              MAlonzo.Code.Class.MonadTC.C_constructor_66
              (coe MAlonzo.Code.Class.MonadTC.d_normalisation_44 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_46 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_48 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_reduction_50 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_globalContext_52 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_localContext_54 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v3)) (coe v0)))
-- Reflection.Tactic._.initUnquote
d_initUnquote_120 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) -> AgdaAny
d_initUnquote_120 v0 v1
  = coe
      d_initUnquoteWithGoal_112 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) (coe v1)
-- Reflection.Tactic._.byTC
d_byTC_124 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_byTC_124 v0 v1 ~v2 v3 = du_byTC_124 v0 v1 v3
du_byTC_124 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_byTC_124 v0 v1 v2
  = coe
      d_initTac_108 (coe v0)
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 v1 () erased
                 erased (coe v2 v3)
                 (\ v4 -> coe MAlonzo.Code.Reflection.TCI.du_quoteTC_110 v1 v4 v3))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
                   MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_134
                      (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                   MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                   v4 v3)))
-- Reflection.Tactic._.by
d_by_128 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by_128 v0 = coe d_initTac_108 (coe v0)
