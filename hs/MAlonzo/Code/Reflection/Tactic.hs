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
d_Tactic_72 :: ()
d_Tactic_72 = erased
-- Reflection.Tactic.UnquoteDecl
d_UnquoteDecl_74 :: ()
d_UnquoteDecl_74 = erased
-- Reflection.Tactic.ITactic
d_ITactic_76 :: ()
d_ITactic_76 = erased
-- Reflection.Tactic.initTacEnv
d_initTacEnv_78 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 ->
   MAlonzo.Code.Class.MonadTC.T_TCEnv_32) ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTacEnv_78 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (MAlonzo.Code.Class.MonadTC.d_initTCEnvWithGoal_72 (coe v2))
      (\ v3 -> coe v1 (coe v0 v3))
-- Reflection.Tactic.initTacOpts
d_initTacOpts_86 ::
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTacOpts_86 v0 v1
  = coe
      d_initTacEnv_78
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_245
              (coe MAlonzo.Code.Class.MonadTC.d_normalisation_50 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_52 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_54 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_reduction_56 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_globalContext_58 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v2))
              (coe MAlonzo.Code.Class.MonadTC.d_goal_62 (coe v2)) (coe v1)))
      (coe v0)
-- Reflection.Tactic._.initTac
d_initTac_100 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTac_100 v0 v1 = coe d_initTacOpts_86 (coe v1) (coe v0)
-- Reflection.Tactic._.initUnquoteWithGoal
d_initUnquoteWithGoal_104 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) -> AgdaAny
d_initUnquoteWithGoal_104 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (MAlonzo.Code.Class.MonadTC.d_initTCEnvWithGoal_72 (coe v1))
      (\ v3 ->
         coe
           v2
           (coe
              MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_245
              (coe MAlonzo.Code.Class.MonadTC.d_normalisation_50 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_52 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_54 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_reduction_56 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_globalContext_58 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v3))
              (coe MAlonzo.Code.Class.MonadTC.d_goal_62 (coe v3)) (coe v0)))
-- Reflection.Tactic._.initUnquote
d_initUnquote_112 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) -> AgdaAny
d_initUnquote_112 v0 v1
  = coe
      d_initUnquoteWithGoal_104 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) (coe v1)
-- Reflection.Tactic._.byTC
d_byTC_116 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_byTC_116 v0 v1 ~v2 v3 = du_byTC_116 v0 v1 v3
du_byTC_116 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_byTC_116 v0 v1 v2
  = coe
      d_initTac_100 (coe v0)
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 v1 () erased
                 erased (coe v2 v3)
                 (\ v4 -> coe MAlonzo.Code.Reflection.TCI.du_quoteTC_120 v1 v4 v3))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_684
                   MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                      (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                   MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                   v4 v3)))
-- Reflection.Tactic._.by
d_by_120 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by_120 v0 = coe d_initTac_100 (coe v0)
