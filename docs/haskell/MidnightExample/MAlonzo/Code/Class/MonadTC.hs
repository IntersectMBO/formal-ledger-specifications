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

module MAlonzo.Code.Class.MonadTC where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Reflection.Debug

-- Class.MonadTC.ReductionOptions
d_ReductionOptions_12 = ()
data T_ReductionOptions_12
  = C_onlyReduce_14 [AgdaAny] | C_dontReduce_16 [AgdaAny]
-- Class.MonadTC.reduceAll
d_reduceAll_18 :: T_ReductionOptions_12
d_reduceAll_18
  = coe
      C_dontReduce_16 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC.TCOptions
d_TCOptions_20 = ()
data T_TCOptions_20
  = C_TCOptions'46'constructor_133 MAlonzo.Code.Reflection.Debug.T_DebugOptions_234
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Class.MonadTC.TCOptions.debug
d_debug_26 ::
  T_TCOptions_20 -> MAlonzo.Code.Reflection.Debug.T_DebugOptions_234
d_debug_26 v0
  = case coe v0 of
      C_TCOptions'46'constructor_133 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCOptions.fuel
d_fuel_28 ::
  T_TCOptions_20 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_fuel_28 v0
  = case coe v0 of
      C_TCOptions'46'constructor_133 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.defaultTCOptions
d_defaultTCOptions_30 :: T_TCOptions_20
d_defaultTCOptions_30
  = coe
      C_TCOptions'46'constructor_133
      (coe MAlonzo.Code.Reflection.Debug.d_defaultDebugOptions_256)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC.TCEnv
d_TCEnv_32 = ()
data T_TCEnv_32
  = C_TCEnv'46'constructor_309 Bool Bool Bool T_ReductionOptions_12
                               [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                               [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                               MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_TCOptions_20
-- Class.MonadTC.TCEnv.normalisation
d_normalisation_50 :: T_TCEnv_32 -> Bool
d_normalisation_50 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.reconstruction
d_reconstruction_52 :: T_TCEnv_32 -> Bool
d_reconstruction_52 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.noConstraints
d_noConstraints_54 :: T_TCEnv_32 -> Bool
d_noConstraints_54 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.reduction
d_reduction_56 :: T_TCEnv_32 -> T_ReductionOptions_12
d_reduction_56 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.globalContext
d_globalContext_58 ::
  T_TCEnv_32 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_globalContext_58 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.localContext
d_localContext_60 ::
  T_TCEnv_32 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_localContext_60 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.goal
d_goal_62 :: T_TCEnv_32 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_goal_62 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.options
d_options_64 :: T_TCEnv_32 -> T_TCOptions_20
d_options_64 v0
  = case coe v0 of
      C_TCEnv'46'constructor_309 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv._.debug
d_debug_68 ::
  T_TCEnv_32 -> MAlonzo.Code.Reflection.Debug.T_DebugOptions_234
d_debug_68 v0 = coe d_debug_26 (coe d_options_64 (coe v0))
-- Class.MonadTC.TCEnv._.fuel
d_fuel_70 :: T_TCEnv_32 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_fuel_70 v0 = coe d_fuel_28 (coe d_options_64 (coe v0))
-- Class.MonadTC.initTCEnvWithGoal
d_initTCEnvWithGoal_72 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTCEnvWithGoal_72 v0
  = coe
      MAlonzo.Code.Class.Functor.Core.du__'60''38''62'__30
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_82)
      (coe ()) (coe ())
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getContext_374)
      (coe
         (\ v1 ->
            coe
              C_TCEnv'46'constructor_309
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) (coe d_reduceAll_18)
              (coe v1) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v0))
              (coe d_defaultTCOptions_30)))
-- Class.MonadTC.initTCEnv
d_initTCEnv_78 :: AgdaAny
d_initTCEnv_78
  = coe
      d_initTCEnvWithGoal_72
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)
-- Class.MonadTC.MonadTC
d_MonadTC_88 a0 a1 a2 = ()
data T_MonadTC_88
  = C_MonadTC'46'constructor_5687 (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                   () ->
                                   [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] ->
                                   AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                   () -> AgdaAny -> AgdaAny)
                                  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                   () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (() -> AgdaAny -> AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                                  (AgdaAny ->
                                   [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny)
                                  (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                   () -> AgdaAny -> AgdaAny)
                                  AgdaAny (AgdaAny -> AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
                                   Integer ->
                                   [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] ->
                                   AgdaAny)
                                  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                   () -> AgdaAny -> AgdaAny)
                                  (AgdaAny -> AgdaAny)
-- Class.MonadTC.MonadTC.unify
d_unify_142 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unify_142 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.typeError
d_typeError_146 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
d_typeError_146 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.inferType
d_inferType_148 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_inferType_148 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.checkType
d_checkType_150 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_checkType_150 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.normalise
d_normalise_152 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_normalise_152 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.reduce
d_reduce_154 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduce_154 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.quoteTC
d_quoteTC_156 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_quoteTC_156 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.unquoteTC
d_unquoteTC_158 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unquoteTC_158 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.quoteωTC
d_quoteωTC_162 :: T_MonadTC_88 -> () -> AgdaAny -> AgdaAny
d_quoteωTC_162 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.freshName
d_freshName_164 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_freshName_164 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.declareDef
d_declareDef_166 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declareDef_166 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.declarePostulate
d_declarePostulate_168 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declarePostulate_168 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.defineFun
d_defineFun_170 ::
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_defineFun_170 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.getType
d_getType_172 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
d_getType_172 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.getDefinition
d_getDefinition_174 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
d_getDefinition_174 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.blockOnMeta
d_blockOnMeta_176 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_blockOnMeta_176 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.commitTC
d_commitTC_178 :: T_MonadTC_88 -> AgdaAny
d_commitTC_178 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.isMacro
d_isMacro_180 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
d_isMacro_180 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.debugPrint
d_debugPrint_182 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
d_debugPrint_182 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.runSpeculative
d_runSpeculative_184 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runSpeculative_184 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.getInstances
d_getInstances_186 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
d_getInstances_186 v0
  = case coe v0 of
      C_MonadTC'46'constructor_5687 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.runAndReset
d_runAndReset_196 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runAndReset_196 ~v0 v1 ~v2 v3 v4 ~v5 v6
  = du_runAndReset_196 v1 v3 v4 v6
du_runAndReset_196 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_runAndReset_196 v0 v1 v2 v3
  = coe
      d_runSpeculative_184 v1 v2 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) v2
         erased v2 erased
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
         v3)
-- Class.MonadTC.MonadTC.isSuccessful
d_isSuccessful_202 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_isSuccessful_202 ~v0 v1 v2 v3 v4 ~v5 v6
  = du_isSuccessful_202 v1 v2 v3 v4 v6
du_isSuccessful_202 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_isSuccessful_202 v0 v1 v2 v3 v4
  = coe
      du_runAndReset_196 (coe v0) (coe v2) (coe ())
      (coe
         MAlonzo.Code.Class.MonadError.d_catch_30 v1 () erased
         (coe
            MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe v3)
            (coe ()) (coe v4)
            (coe
               MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
         (\ v5 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Class.MonadTC.MonadTC.isDef
d_isDef_208 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
d_isDef_208 ~v0 v1 ~v2 v3 v4 = du_isDef_208 v1 v3 v4
du_isDef_208 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
du_isDef_208 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe d_getDefinition_174 v1 v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'cons_300 v5
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
              _ -> coe v4))
-- Class.MonadTC.MonadTC.isCon
d_isCon_214 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
d_isCon_214 ~v0 v1 ~v2 v3 v4 = du_isCon_214 v1 v3 v4
du_isCon_214 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
du_isCon_214 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe d_getDefinition_174 v1 v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'cons_300 v5
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
              _ -> coe v4))
-- Class.MonadTC.MonadTC.nameConstr
d_nameConstr_220 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_nameConstr_220 ~v0 v1 v2 v3 v4 v5
  = du_nameConstr_220 v1 v2 v3 v4 v5
du_nameConstr_220 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_nameConstr_220 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe du_isDef_208 (coe v0) (coe v2) (coe v3))
      (\ v5 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
           erased (coe du_isCon_214 (coe v0) (coe v2) (coe v3))
           (\ v6 ->
              if coe v5
                then coe
                       MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3) (coe v4))
                else (if coe v6
                        then coe
                               MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3) (coe v4))
                        else coe
                               MAlonzo.Code.Class.MonadError.d_error_28 v1 () erased
                               (coe
                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v3)
                                     (coe
                                        ("is neither a definition nor a constructor!"
                                         ::
                                         Data.Text.Text)))
                                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Class.MonadTC.MonadTC.termFromName
d_termFromName_232 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
d_termFromName_232 ~v0 v1 v2 v3 v4
  = du_termFromName_232 v1 v2 v3 v4
du_termFromName_232 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
du_termFromName_232 v0 v1 v2 v3
  = coe
      du_nameConstr_220 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC.MonadTC.mkRecord
d_mkRecord_236 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_mkRecord_236 ~v0 v1 v2 v3 v4 v5 = du_mkRecord_236 v1 v2 v3 v4 v5
du_mkRecord_236 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_mkRecord_236 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe d_getDefinition_174 v2 v3)
      (\ v5 ->
         let v6
               = coe
                   MAlonzo.Code.Class.MonadError.d_error_28 v1 () erased
                   (coe
                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                      (coe ("Not a record!" :: Data.Text.Text))
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
         coe
           (case coe v5 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v7 v8
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v7) (coe v4))
              _ -> coe v6))
-- Class.MonadTC.MonadTC.declareAndDefineFuns
d_declareAndDefineFuns_246 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFuns_246 ~v0 v1 ~v2 v3 v4
  = du_declareAndDefineFuns_246 v1 v3 v4
du_declareAndDefineFuns_246 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFuns_246 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Class.Traversable.Core.du_traverse_20
         (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
         (coe
            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
         (coe ()) (coe ()) (coe v0)
         (coe
            (\ v3 ->
               coe
                 d_declareDef_166 v1
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe v2))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
         (coe ())
         (coe
            MAlonzo.Code.Class.Traversable.Core.du_traverse_20
            (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
            (coe
               MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
            (coe ()) (coe ()) (coe v0)
            (coe
               (\ v3 ->
                  case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                    -> coe d_defineFun_170 v1 v7 v9
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe v2))
         (coe
            MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Class.MonadTC.MonadTC.declareAndDefineFun
d_declareAndDefineFun_262 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_declareAndDefineFun_262 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_declareAndDefineFun_262 v1 v3 v4 v5 v6
du_declareAndDefineFun_262 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_declareAndDefineFun_262 v0 v1 v2 v3 v4
  = coe
      du_declareAndDefineFuns_246 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))
-- Class.MonadTC.MonadTC.newMeta
d_newMeta_270 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_newMeta_270 ~v0 ~v1 ~v2 v3 = du_newMeta_270 v3
du_newMeta_270 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_newMeta_270 v0
  = coe
      d_checkType_150 v0
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)
-- Class.MonadTC._._
d___288 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
d___288 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du___288 v5
du___288 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
du___288 v0
  = coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)
-- Class.MonadTC._._.blockOnMeta
d_blockOnMeta_298 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_blockOnMeta_298 ~v0 ~v1 ~v2 v3 ~v4 = du_blockOnMeta_298 v3
du_blockOnMeta_298 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_blockOnMeta_298 v0 = coe d_blockOnMeta_176 (coe v0)
-- Class.MonadTC._._.checkType
d_checkType_300 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_checkType_300 ~v0 ~v1 ~v2 v3 ~v4 = du_checkType_300 v3
du_checkType_300 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_checkType_300 v0 = coe d_checkType_150 (coe v0)
-- Class.MonadTC._._.commitTC
d_commitTC_302 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_commitTC_302 ~v0 ~v1 ~v2 v3 ~v4 = du_commitTC_302 v3
du_commitTC_302 :: T_MonadTC_88 -> AgdaAny
du_commitTC_302 v0 = coe d_commitTC_178 (coe v0)
-- Class.MonadTC._._.debugPrint
d_debugPrint_304 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
d_debugPrint_304 ~v0 ~v1 ~v2 v3 ~v4 = du_debugPrint_304 v3
du_debugPrint_304 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
du_debugPrint_304 v0 = coe d_debugPrint_182 (coe v0)
-- Class.MonadTC._._.declareAndDefineFun
d_declareAndDefineFun_306 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_declareAndDefineFun_306 ~v0 v1 ~v2 v3 ~v4
  = du_declareAndDefineFun_306 v1 v3
du_declareAndDefineFun_306 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_declareAndDefineFun_306 v0 v1
  = coe du_declareAndDefineFun_262 (coe v0) (coe v1)
-- Class.MonadTC._._.declareAndDefineFuns
d_declareAndDefineFuns_308 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFuns_308 ~v0 v1 ~v2 v3 ~v4
  = du_declareAndDefineFuns_308 v1 v3
du_declareAndDefineFuns_308 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFuns_308 v0 v1
  = coe du_declareAndDefineFuns_246 (coe v0) (coe v1)
-- Class.MonadTC._._.declareDef
d_declareDef_310 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declareDef_310 ~v0 ~v1 ~v2 v3 ~v4 = du_declareDef_310 v3
du_declareDef_310 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_declareDef_310 v0 = coe d_declareDef_166 (coe v0)
-- Class.MonadTC._._.declarePostulate
d_declarePostulate_312 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declarePostulate_312 ~v0 ~v1 ~v2 v3 ~v4
  = du_declarePostulate_312 v3
du_declarePostulate_312 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_declarePostulate_312 v0 = coe d_declarePostulate_168 (coe v0)
-- Class.MonadTC._._.defineFun
d_defineFun_314 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_defineFun_314 ~v0 ~v1 ~v2 v3 ~v4 = du_defineFun_314 v3
du_defineFun_314 ::
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_defineFun_314 v0 = coe d_defineFun_170 (coe v0)
-- Class.MonadTC._._.freshName
d_freshName_316 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_freshName_316 ~v0 ~v1 ~v2 v3 ~v4 = du_freshName_316 v3
du_freshName_316 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
du_freshName_316 v0 = coe d_freshName_164 (coe v0)
-- Class.MonadTC._._.getDefinition
d_getDefinition_318 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getDefinition_318 ~v0 ~v1 ~v2 v3 ~v4 = du_getDefinition_318 v3
du_getDefinition_318 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
du_getDefinition_318 v0 = coe d_getDefinition_174 (coe v0)
-- Class.MonadTC._._.getInstances
d_getInstances_320 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getInstances_320 ~v0 ~v1 ~v2 v3 ~v4 = du_getInstances_320 v3
du_getInstances_320 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
du_getInstances_320 v0 = coe d_getInstances_186 (coe v0)
-- Class.MonadTC._._.getType
d_getType_322 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getType_322 ~v0 ~v1 ~v2 v3 ~v4 = du_getType_322 v3
du_getType_322 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
du_getType_322 v0 = coe d_getType_172 (coe v0)
-- Class.MonadTC._._.inferType
d_inferType_324 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_inferType_324 ~v0 ~v1 ~v2 v3 ~v4 = du_inferType_324 v3
du_inferType_324 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_inferType_324 v0 = coe d_inferType_148 (coe v0)
-- Class.MonadTC._._.isCon
d_isCon_326 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_isCon_326 ~v0 v1 ~v2 v3 ~v4 = du_isCon_326 v1 v3
du_isCon_326 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
du_isCon_326 v0 v1 = coe du_isCon_214 (coe v0) (coe v1)
-- Class.MonadTC._._.isDef
d_isDef_328 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_isDef_328 ~v0 v1 ~v2 v3 ~v4 = du_isDef_328 v1 v3
du_isDef_328 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
du_isDef_328 v0 v1 = coe du_isDef_208 (coe v0) (coe v1)
-- Class.MonadTC._._.isMacro
d_isMacro_330 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_isMacro_330 ~v0 ~v1 ~v2 v3 ~v4 = du_isMacro_330 v3
du_isMacro_330 :: T_MonadTC_88 -> AgdaAny -> AgdaAny
du_isMacro_330 v0 = coe d_isMacro_180 (coe v0)
-- Class.MonadTC._._.isSuccessful
d_isSuccessful_332 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_isSuccessful_332 ~v0 v1 v2 v3 ~v4 = du_isSuccessful_332 v1 v2 v3
du_isSuccessful_332 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_isSuccessful_332 v0 v1 v2 v3 v4 v5
  = coe du_isSuccessful_202 (coe v0) (coe v1) (coe v2) v3 v5
-- Class.MonadTC._._.mkRecord
d_mkRecord_334 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_mkRecord_334 ~v0 v1 v2 v3 ~v4 = du_mkRecord_334 v1 v2 v3
du_mkRecord_334 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_mkRecord_334 v0 v1 v2
  = coe du_mkRecord_236 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.nameConstr
d_nameConstr_336 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_nameConstr_336 ~v0 v1 v2 v3 ~v4 = du_nameConstr_336 v1 v2 v3
du_nameConstr_336 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_nameConstr_336 v0 v1 v2
  = coe du_nameConstr_220 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.newMeta
d_newMeta_338 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_newMeta_338 ~v0 ~v1 ~v2 v3 ~v4 = du_newMeta_338 v3
du_newMeta_338 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_newMeta_338 v0 = coe du_newMeta_270 (coe v0)
-- Class.MonadTC._._.normalise
d_normalise_340 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_normalise_340 ~v0 ~v1 ~v2 v3 ~v4 = du_normalise_340 v3
du_normalise_340 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_normalise_340 v0 = coe d_normalise_152 (coe v0)
-- Class.MonadTC._._.quoteTC
d_quoteTC_342 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_quoteTC_342 ~v0 ~v1 ~v2 v3 ~v4 = du_quoteTC_342 v3
du_quoteTC_342 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_quoteTC_342 v0 = coe d_quoteTC_156 (coe v0)
-- Class.MonadTC._._.quoteωTC
d_quoteωTC_344 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () -> AgdaAny -> AgdaAny
d_quoteωTC_344 ~v0 ~v1 ~v2 v3 ~v4 = du_quoteωTC_344 v3
du_quoteωTC_344 :: T_MonadTC_88 -> () -> AgdaAny -> AgdaAny
du_quoteωTC_344 v0 = coe d_quoteωTC_162 (coe v0)
-- Class.MonadTC._._.reduce
d_reduce_346 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduce_346 ~v0 ~v1 ~v2 v3 ~v4 = du_reduce_346 v3
du_reduce_346 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_reduce_346 v0 = coe d_reduce_154 (coe v0)
-- Class.MonadTC._._.runAndReset
d_runAndReset_348 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runAndReset_348 ~v0 v1 ~v2 v3 ~v4 = du_runAndReset_348 v1 v3
du_runAndReset_348 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_runAndReset_348 v0 v1 v2 v3 v4
  = coe du_runAndReset_196 (coe v0) (coe v1) v2 v4
-- Class.MonadTC._._.runSpeculative
d_runSpeculative_350 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runSpeculative_350 ~v0 ~v1 ~v2 v3 ~v4 = du_runSpeculative_350 v3
du_runSpeculative_350 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_runSpeculative_350 v0 = coe d_runSpeculative_184 (coe v0)
-- Class.MonadTC._._.termFromName
d_termFromName_352 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_termFromName_352 ~v0 v1 v2 v3 ~v4 = du_termFromName_352 v1 v2 v3
du_termFromName_352 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
du_termFromName_352 v0 v1 v2
  = coe du_termFromName_232 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.typeError
d_typeError_354 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
d_typeError_354 ~v0 ~v1 ~v2 v3 ~v4 = du_typeError_354 v3
du_typeError_354 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
du_typeError_354 v0 = coe d_typeError_146 (coe v0)
-- Class.MonadTC._._.unify
d_unify_356 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unify_356 ~v0 ~v1 ~v2 v3 ~v4 = du_unify_356 v3
du_unify_356 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_unify_356 v0 = coe d_unify_142 (coe v0)
-- Class.MonadTC._._.unquoteTC
d_unquoteTC_358 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unquoteTC_358 ~v0 ~v1 ~v2 v3 ~v4 = du_unquoteTC_358 v3
du_unquoteTC_358 ::
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_unquoteTC_358 v0 = coe d_unquoteTC_158 (coe v0)
-- Class.MonadTC._.IsMErrorPart
d_IsMErrorPart_372 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_IsMErrorPart_372
  = C_IsMErrorPart'46'constructor_28661 (AgdaAny -> AgdaAny)
-- Class.MonadTC._.IsMErrorPart.toMErrorPart
d_toMErrorPart_378 :: T_IsMErrorPart_372 -> AgdaAny -> AgdaAny
d_toMErrorPart_378 v0
  = case coe v0 of
      C_IsMErrorPart'46'constructor_28661 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._._.toMErrorPart
d_toMErrorPart_382 :: T_IsMErrorPart_372 -> AgdaAny -> AgdaAny
d_toMErrorPart_382 v0 = coe d_toMErrorPart_378 (coe v0)
-- Class.MonadTC._.MErrorPartWrap
d_MErrorPartWrap_384 a0 a1 a2 a3 a4 = ()
newtype T_MErrorPartWrap_384 = C_wrap_386 AgdaAny
-- Class.MonadTC._.IsMErrorPart-IsErrorPart
d_IsMErrorPart'45'IsErrorPart_390 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  T_IsMErrorPart_372
d_IsMErrorPart'45'IsErrorPart_390 ~v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_IsMErrorPart'45'IsErrorPart_390 v1 v6
du_IsMErrorPart'45'IsErrorPart_390 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  T_IsMErrorPart_372
du_IsMErrorPart'45'IsErrorPart_390 v0 v1
  = coe
      C_IsMErrorPart'46'constructor_28661
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
              (coe
                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                 (coe MAlonzo.Code.Reflection.Debug.d_toErrorPart_16 v1 v2))))
-- Class.MonadTC._.IsMErrorPart-String
d_IsMErrorPart'45'String_394 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_372
d_IsMErrorPart'45'String_394 ~v0 v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'String_394 v1
du_IsMErrorPart'45'String_394 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> T_IsMErrorPart_372
du_IsMErrorPart'45'String_394 v0
  = coe
      du_IsMErrorPart'45'IsErrorPart_390 (coe v0)
      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
-- Class.MonadTC._.IsMErrorPart-Term
d_IsMErrorPart'45'Term_396 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_372
d_IsMErrorPart'45'Term_396 ~v0 v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'Term_396 v1
du_IsMErrorPart'45'Term_396 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> T_IsMErrorPart_372
du_IsMErrorPart'45'Term_396 v0
  = coe
      du_IsMErrorPart'45'IsErrorPart_390 (coe v0)
      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
-- Class.MonadTC._.IsMErrorPart-Name
d_IsMErrorPart'45'Name_398 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_372
d_IsMErrorPart'45'Name_398 ~v0 v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'Name_398 v1
du_IsMErrorPart'45'Name_398 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> T_IsMErrorPart_372
du_IsMErrorPart'45'Name_398 v0
  = coe
      du_IsMErrorPart'45'IsErrorPart_390 (coe v0)
      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_26)
-- Class.MonadTC._.IsMErrorPart-MErrorPartWrap
d_IsMErrorPart'45'MErrorPartWrap_400 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_372
d_IsMErrorPart'45'MErrorPartWrap_400 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'MErrorPartWrap_400
du_IsMErrorPart'45'MErrorPartWrap_400 :: T_IsMErrorPart_372
du_IsMErrorPart'45'MErrorPartWrap_400
  = coe
      C_IsMErrorPart'46'constructor_28661
      (coe
         (\ v0 ->
            case coe v0 of
              C_wrap_386 v1 -> coe v1
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.MonadTC._.[]ᵐ
d_'91''93''7504'_404 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_'91''93''7504'_404 v0 ~v1 ~v2 ~v3 = du_'91''93''7504'_404 v0
du_'91''93''7504'_404 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny
du_'91''93''7504'_404 v0
  = coe
      MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC._._∷ᵈᵐ_
d__'8759''7496''7504'__408 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_IsMErrorPart_372 -> AgdaAny -> AgdaAny
d__'8759''7496''7504'__408 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du__'8759''7496''7504'__408 v1 v7 v8 v9
du__'8759''7496''7504'__408 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  AgdaAny -> T_IsMErrorPart_372 -> AgdaAny -> AgdaAny
du__'8759''7496''7504'__408 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe d_toMErrorPart_378 v2 v1)
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
           erased v3
           (\ v5 ->
              coe
                MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v5))))
-- Class.MonadTC._._ᵛ
d__'7515'_418 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_MErrorPartWrap_384
d__'7515'_418 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7
  = du__'7515'_418 v1 v3 v5 v7
du__'7515'_418 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> T_MErrorPartWrap_384
du__'7515'_418 v0 v1 v2 v3
  = coe
      C_wrap_386
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
         erased (coe d_quoteTC_156 v1 v2 erased v3)
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v4)
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Class.MonadTC._._ᵛⁿ
d__'7515''8319'_424 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_MErrorPartWrap_384
d__'7515''8319'_424 ~v0 v1 ~v2 v3 v4 v5 ~v6 v7
  = du__'7515''8319'_424 v1 v3 v4 v5 v7
du__'7515''8319'_424 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> T_MErrorPartWrap_384
du__'7515''8319'_424 v0 v1 v2 v3 v4
  = coe
      C_wrap_386
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
         erased
         (coe
            MAlonzo.Code.Class.MonadReader.d_local_44 v2 () erased
            (\ v5 ->
               coe
                 C_TCEnv'46'constructor_309
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                 (coe d_reconstruction_52 (coe v5))
                 (coe d_noConstraints_54 (coe v5)) (coe d_reduction_56 (coe v5))
                 (coe d_globalContext_58 (coe v5)) (coe d_localContext_60 (coe v5))
                 (coe d_goal_62 (coe v5)) (coe d_options_64 (coe v5)))
            (coe d_quoteTC_156 v1 v3 erased v4))
         (\ v5 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Class.MonadTC._._ᵗ
d__'7511'_432 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  T_MErrorPartWrap_384
d__'7511'_432 v0 ~v1 v2 ~v3 v4 = du__'7511'_432 v0 v2 v4
du__'7511'_432 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  T_MErrorPartWrap_384
du__'7511'_432 v0 v1 v2
  = coe
      C_wrap_386
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
         erased (coe d_inferType_148 v1 v2)
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                 (coe
                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                    (coe (" : " :: Data.Text.Text))
                    (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                    (coe
                       MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
                       (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Class.MonadTC._.debugLog
d_debugLog_438 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
d_debugLog_438 ~v0 v1 ~v2 v3 v4 v5 = du_debugLog_438 v1 v3 v4 v5
du_debugLog_438 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
du_debugLog_438 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (MAlonzo.Code.Class.MonadReader.d_ask_38 (coe v2))
      (\ v4 ->
         case coe v4 of
           C_TCEnv'46'constructor_309 v5 v6 v7 v8 v9 v10 v11 v12
             -> case coe v12 of
                  C_TCOptions'46'constructor_133 v13 v14
                    -> coe
                         MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                         (coe
                            MAlonzo.Code.Reflection.Debug.d_filter_250 v13
                            (MAlonzo.Code.Reflection.Debug.d_path_246 (coe v13)))
                         (coe
                            d_debugPrint_182 v1
                            (MAlonzo.Code.Reflection.Debug.d_debugOptionsPath_266 (coe v13))
                            (MAlonzo.Code.Reflection.Debug.d_level_252 (coe v13))
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Reflection.Debug.d_debugPrintPrefix_288 (coe v13))
                               (coe v3)))
                         (coe
                            MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.debugLogᵐ
d_debugLog'7504'_446 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_debugLog'7504'_446 ~v0 v1 ~v2 v3 v4 v5
  = du_debugLog'7504'_446 v1 v3 v4 v5
du_debugLog'7504'_446 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
du_debugLog'7504'_446 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased v3 (coe du_debugLog_438 (coe v0) (coe v1) (coe v2))
-- Class.MonadTC._.debugLog1ᵐ
d_debugLog1'7504'_454 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_IsMErrorPart_372 -> AgdaAny
d_debugLog1'7504'_454 ~v0 v1 ~v2 v3 v4 ~v5 ~v6 v7 v8
  = du_debugLog1'7504'_454 v1 v3 v4 v7 v8
du_debugLog1'7504'_454 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> T_IsMErrorPart_372 -> AgdaAny
du_debugLog1'7504'_454 v0 v1 v2 v3 v4
  = coe
      du_debugLog'7504'_446 (coe v0) (coe v1) (coe v2)
      (coe
         du__'8759''7496''7504'__408 (coe v0) (coe v3) (coe v4)
         (coe
            MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Class.MonadTC._.withAppendDebugPath
d_withAppendDebugPath_458 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
d_withAppendDebugPath_458 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_withAppendDebugPath_458 v4 v5 v7 v8
du_withAppendDebugPath_458 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
du_withAppendDebugPath_458 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v4 ->
         case coe v4 of
           C_TCEnv'46'constructor_309 v5 v6 v7 v8 v9 v10 v11 v12
             -> case coe v12 of
                  C_TCOptions'46'constructor_133 v13 v14
                    -> coe
                         C_TCEnv'46'constructor_309 (coe v5) (coe v6) (coe v7) (coe v8)
                         (coe v9) (coe v10) (coe v11)
                         (coe
                            C_TCOptions'46'constructor_133
                            (coe
                               MAlonzo.Code.Reflection.Debug.C_DebugOptions'46'constructor_2025
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'8759''691'__540
                                  (coe MAlonzo.Code.Reflection.Debug.d_path_246 (coe v13)) (coe v2))
                               (coe MAlonzo.Code.Reflection.Debug.d_selection_248 (coe v13))
                               (coe MAlonzo.Code.Reflection.Debug.d_filter_250 (coe v13))
                               (coe MAlonzo.Code.Reflection.Debug.d_level_252 (coe v13))
                               (coe MAlonzo.Code.Reflection.Debug.d_prefix_254 (coe v13)))
                            (coe v14))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
      v3
-- Class.MonadTC._.noConstraints
d_noConstraints_472 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_noConstraints_472 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_noConstraints_472 v4 v5
du_noConstraints_472 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_noConstraints_472 v0 v1
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v2 ->
         coe
           C_TCEnv'46'constructor_309 (coe d_normalisation_50 (coe v2))
           (coe d_reconstruction_52 (coe v2))
           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
           (coe d_reduction_56 (coe v2)) (coe d_globalContext_58 (coe v2))
           (coe d_localContext_60 (coe v2)) (coe d_goal_62 (coe v2))
           (coe d_options_64 (coe v2)))
-- Class.MonadTC._.hasType
d_hasType_476 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasType_476 ~v0 v1 v2 v3 v4 v5 v6
  = du_hasType_476 v1 v2 v3 v4 v5 v6
du_hasType_476 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_hasType_476 v0 v1 v2 v3 v4 v5
  = coe
      du_isSuccessful_202 (coe v0) (coe v1) (coe v2) (coe ())
      (coe du_noConstraints_472 v3 () (coe d_checkType_150 v2 v4 v5))
-- Class.MonadTC._.hasType'
d_hasType''_482 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasType''_482 ~v0 v1 v2 v3 v4 v5 v6
  = du_hasType''_482 v1 v2 v3 v4 v5 v6
du_hasType''_482 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_hasType''_482 v0 v1 v2 v3 v4 v5
  = coe
      du_isSuccessful_202 (coe v0) (coe v1) (coe v2) (coe ())
      (coe
         du_noConstraints_472 v3 ()
         (coe
            MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
            erased
            (coe du_termFromName_232 (coe v0) (coe v1) (coe v2) (coe v4))
            (\ v6 ->
               coe
                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
                 erased (coe d_checkType_150 v2 v6 v5)
                 (\ v7 ->
                    coe
                      MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                      (coe du_isAppliedToUnknownsAndMetas_510 (coe v7))
                      (coe
                         MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                      (coe
                         MAlonzo.Code.Class.MonadError.d_error_28 v1 () erased
                         (coe
                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                            (coe ("This makes the function return false" :: Data.Text.Text))
                            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
-- Class.MonadTC._._.isUnknownsAndMetas
d_isUnknownsAndMetas_492 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
d_isUnknownsAndMetas_492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnknownsAndMetas_492 v7
du_isUnknownsAndMetas_492 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
du_isUnknownsAndMetas_492 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> let v5 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v6 v7
                         -> coe du_isUnknownsAndMetas_492 (coe v2)
                       MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
                         -> coe du_isUnknownsAndMetas_492 (coe v2)
                       _ -> coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._._.isAppliedToUnknownsAndMetas
d_isAppliedToUnknownsAndMetas_510 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_isAppliedToUnknownsAndMetas_510 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isAppliedToUnknownsAndMetas_510 v7
du_isAppliedToUnknownsAndMetas_510 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
du_isAppliedToUnknownsAndMetas_510 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v2 v3
           -> coe du_isUnknownsAndMetas_492 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
           -> coe du_isUnknownsAndMetas_492 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe du_isUnknownsAndMetas_492 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v2 v3
           -> coe du_isUnknownsAndMetas_492 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v2 v3
           -> coe du_isUnknownsAndMetas_492 (coe v3)
         _ -> coe v1)
-- Class.MonadTC._.extendContext
d_extendContext_536 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_extendContext_536 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7
  = du_extendContext_536 v4 v5 v7
du_extendContext_536 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_extendContext_536 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         case coe v3 of
           C_TCEnv'46'constructor_309 v4 v5 v6 v7 v8 v9 v10 v11
             -> coe
                  C_TCEnv'46'constructor_309 (coe v4) (coe v5) (coe v6) (coe v7)
                  (coe v8)
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v9))
                  (coe v10) (coe v11)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.getContext
d_getContext_546 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_getContext_546 ~v0 v1 ~v2 ~v3 v4 = du_getContext_546 v1 v4
du_getContext_546 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_getContext_546 v0 v1
  = coe
      MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
      (coe v1) (coe ())
      (coe
         (\ v2 ->
            case coe v2 of
              C_TCEnv'46'constructor_309 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v8) (coe v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.MonadTC._.getLocalContext
d_getLocalContext_556 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_getLocalContext_556 ~v0 v1 ~v2 ~v3 v4
  = du_getLocalContext_556 v1 v4
du_getLocalContext_556 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_getLocalContext_556 v0 v1
  = coe
      MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
      (coe v1) (coe ())
      (coe
         (\ v2 ->
            case coe v2 of
              C_TCEnv'46'constructor_309 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.MonadTC._.inContext
d_inContext_564 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_inContext_564 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7
  = du_inContext_564 v4 v5 v7
du_inContext_564 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_inContext_564 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         coe
           C_TCEnv'46'constructor_309 (coe d_normalisation_50 (coe v3))
           (coe d_reconstruction_52 (coe v3))
           (coe d_noConstraints_54 (coe v3)) (coe d_reduction_56 (coe v3))
           (coe d_globalContext_58 (coe v3)) (coe v2) (coe d_goal_62 (coe v3))
           (coe d_options_64 (coe v3)))
-- Class.MonadTC._.extendContext'
d_extendContext''_570 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_extendContext''_570 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_extendContext''_570 v4 v5 v7 v8
du_extendContext''_570 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_extendContext''_570 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_extendContext_536 v0 v1 v4
             (coe du_extendContext''_570 (coe v0) (coe v1) (coe v5) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._.dropContext
d_dropContext_580 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny
d_dropContext_580 ~v0 v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_dropContext_580 v1 v4 v5 v7 v8
du_dropContext_580 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  Integer -> AgdaAny -> AgdaAny
du_dropContext_580 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased v2
      erased (coe du_getContext_546 (coe v0) (coe v1))
      (\ v5 ->
         coe
           du_inContext_564 v1 v2
           (coe MAlonzo.Code.Data.List.Base.du_drop_634 (coe v3) (coe v5)) v4)
-- Class.MonadTC._.logAndError
d_logAndError_588 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
d_logAndError_588 ~v0 v1 v2 v3 v4 v5 ~v6 v7
  = du_logAndError_588 v1 v2 v3 v4 v5 v7
du_logAndError_588 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_306] -> AgdaAny
du_logAndError_588 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
      (coe v4) (coe du_debugLog_438 (coe v0) (coe v2) (coe v3) (coe v5))
      (coe MAlonzo.Code.Class.MonadError.d_error_28 v1 v4 erased v5)
-- Class.MonadTC._.error1
d_error1_592 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  AgdaAny -> AgdaAny
d_error1_592 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9
  = du_error1_592 v2 v6 v8 v9
du_error1_592 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  AgdaAny -> AgdaAny
du_error1_592 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.MonadError.d_error_28 v0 v1 erased
      (coe
         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
         (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Class.MonadTC._.debugLog1
d_debugLog1_596 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  AgdaAny -> AgdaAny
d_debugLog1_596 ~v0 v1 ~v2 v3 v4 ~v5 v6 v7
  = du_debugLog1_596 v1 v3 v4 v6 v7
du_debugLog1_596 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  AgdaAny -> AgdaAny
du_debugLog1_596 v0 v1 v2 v3 v4
  = coe
      du_debugLog_438 (coe v0) (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v4)
         (coe v3) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Class.MonadTC._.logAndError1
d_logAndError1_600 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  AgdaAny -> AgdaAny
d_logAndError1_600 ~v0 v1 v2 v3 v4 ~v5 v6 ~v7 v8 v9
  = du_logAndError1_600 v1 v2 v3 v4 v6 v8 v9
du_logAndError1_600 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_10 ->
  AgdaAny -> AgdaAny
du_logAndError1_600 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
      (coe v4)
      (coe du_debugLog1_596 (coe v0) (coe v2) (coe v3) (coe v5) (coe v6))
      (coe du_error1_592 (coe v1) (coe v4) (coe v5) (coe v6))
-- Class.MonadTC._.markDontFail
d_markDontFail_604 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
d_markDontFail_604 ~v0 v1 v2 v3 v4 v5 ~v6 v7 v8
  = du_markDontFail_604 v1 v2 v3 v4 v5 v7 v8
du_markDontFail_604 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
du_markDontFail_604 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Class.MonadError.d_catch_30 v1 v4 erased v6
      (\ v7 ->
         coe
           du_logAndError_588 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
           (coe
              MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
              (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                 (coe
                    (" should never fail! This is a bug!\nError:\n" :: Data.Text.Text))
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                 (coe v7))))
-- Class.MonadTC._.goalTy
d_goalTy_612 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_goalTy_612 ~v0 v1 ~v2 v3 v4 = du_goalTy_612 v1 v3 v4
du_goalTy_612 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_goalTy_612 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
         (coe v2) (coe ()) (coe (\ v3 -> d_goal_62 (coe v3))))
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
             -> coe d_inferType_148 v1 v4
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
             -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.runSpeculativeMaybe
d_runSpeculativeMaybe_620 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_runSpeculativeMaybe_620 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 v8
  = du_runSpeculativeMaybe_620 v1 v3 v5 v7 v8
du_runSpeculativeMaybe_620 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_runSpeculativeMaybe_620 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 v2 erased v2
      erased
      (coe
         d_runSpeculative_184 v1 v2 erased
         (coe
            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
            (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) v2
            erased v2 erased
            (coe
               MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
               (coe (\ v5 -> v5))
               (coe MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20))
            v3))
      (\ v5 ->
         case coe v5 of
           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
             -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 v2 erased v6
           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.try
d_try_630 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [AgdaAny] -> AgdaAny -> AgdaAny
d_try_630 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 = du_try_630 v2 v5 v6
du_try_630 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  [AgdaAny] -> AgdaAny -> AgdaAny
du_try_630 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Class.MonadError.d_catch_30 v0 () erased v3
             (\ v5 -> coe du_try_630 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._.getConstrs
d_getConstrs_642 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getConstrs_642 ~v0 v1 v2 v3 ~v4 v5
  = du_getConstrs_642 v1 v2 v3 v5
du_getConstrs_642 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 -> AgdaAny -> AgdaAny
du_getConstrs_642 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe d_getDefinition_174 v2 v3)
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
           erased
           (let v5
                  = coe
                      MAlonzo.Code.Class.MonadError.d_error_28 v1 () erased
                      (coe
                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
                         (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_26)
                         (coe
                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                            (coe ("is not a data or record definition!" :: Data.Text.Text))
                            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v6 v7
                   -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased v7
                 MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v6 v7
                   -> coe
                        MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v6))
                 _ -> coe v5))
           (\ v5 ->
              coe
                MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
                (coe
                   MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
                (coe ()) (coe ()) (coe v0)
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                        (coe du___288 (coe v0)) () erased () erased
                        (\ v7 ->
                           coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v7))
                        (coe
                           MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28 (coe v0)
                           (coe ()) (coe ()) (coe d_normalise_152 (coe v2))
                           (coe d_getType_172 v2 v6))))
                (coe v5)))
-- Class.MonadTC._.getConstrsForType
d_getConstrsForType_664 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_getConstrsForType_664 ~v0 v1 v2 v3 ~v4 v5
  = du_getConstrsForType_664 v1 v2 v3 v5
du_getConstrsForType_664 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_getConstrsForType_664 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe d_normalise_152 v2 v3)
      (\ v4 ->
         let v5
               = coe
                   MAlonzo.Code.Class.MonadError.d_error_28 v1 () erased
                   (coe
                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                      (coe
                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                         (coe ("does not reduce to a definition!" :: Data.Text.Text))
                         (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
         coe
           (case coe v4 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v6 v7
                -> coe du_getConstrs_642 (coe v0) (coe v1) (coe v2) (coe v6)
              _ -> coe v5))
-- Class.MonadTC._.getConstrsForTerm
d_getConstrsForTerm_672 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_getConstrsForTerm_672 ~v0 v1 v2 v3 ~v4 v5
  = du_getConstrsForTerm_672 v1 v2 v3 v5
du_getConstrsForTerm_672 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_getConstrsForTerm_672 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28 (coe v0)
      (coe ()) (coe ())
      (coe du_getConstrsForType_664 (coe v0) (coe v1) (coe v2))
      (coe d_inferType_148 v2 v3)
-- Class.MonadTC._.withPattern
d_withPattern_676 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny -> AgdaAny
d_withPattern_676 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_withPattern_676 v1 v4 v5 v6 v7
du_withPattern_676 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny -> AgdaAny
du_withPattern_676 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
      erased () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 (coe v2)
         (coe v3))
      (coe du_extendContext''_570 (coe v1) (coe ()) (coe v2) (coe v4))
-- Class.MonadTC._.unifyWithGoal
d_unifyWithGoal_684 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unifyWithGoal_684 ~v0 v1 v2 v3 v4 v5
  = du_unifyWithGoal_684 v1 v2 v3 v4 v5
du_unifyWithGoal_684 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_unifyWithGoal_684 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
         (coe v3) (coe ()) (coe (\ v5 -> d_goal_62 (coe v5))))
      (\ v5 ->
         let v6
               = coe
                   du_error1_592 (coe v1) (coe ())
                   (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                   (coe ("unifyWithGoal: Goal is not a term!" :: Data.Text.Text)) in
         coe
           (case coe v5 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
                -> coe d_unify_142 v2 v7 v4
              _ -> coe v6))
-- Class.MonadTC._.runWithHole
d_runWithHole_692 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
d_runWithHole_692 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7
  = du_runWithHole_692 v4 v5 v7
du_runWithHole_692 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
du_runWithHole_692 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         coe
           C_TCEnv'46'constructor_309 (coe d_normalisation_50 (coe v3))
           (coe d_reconstruction_52 (coe v3))
           (coe d_noConstraints_54 (coe v3)) (coe d_reduction_56 (coe v3))
           (coe d_globalContext_58 (coe v3)) (coe d_localContext_60 (coe v3))
           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2))
           (coe d_options_64 (coe v3)))
-- Class.MonadTC._.runWithGoalTy
d_runWithGoalTy_698 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
d_runWithGoalTy_698 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7
  = du_runWithGoalTy_698 v4 v5 v7
du_runWithGoalTy_698 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
du_runWithGoalTy_698 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         coe
           C_TCEnv'46'constructor_309 (coe d_normalisation_50 (coe v3))
           (coe d_reconstruction_52 (coe v3))
           (coe d_noConstraints_54 (coe v3)) (coe d_reduction_56 (coe v3))
           (coe d_globalContext_58 (coe v3)) (coe d_localContext_60 (coe v3))
           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v2))
           (coe d_options_64 (coe v3)))
-- Class.MonadTC._.goalHole
d_goalHole_704 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_goalHole_704 ~v0 v1 ~v2 v3 v4 = du_goalHole_704 v1 v3 v4
du_goalHole_704 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_goalHole_704 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
         (coe v2) (coe ()) (coe (\ v3 -> d_goal_62 (coe v3))))
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
             -> coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased v4
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
             -> coe du_newMeta_270 v1 v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.withGoalHole
d_withGoalHole_712 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_withGoalHole_712 ~v0 v1 ~v2 v3 v4 v5
  = du_withGoalHole_712 v1 v3 v4 v5
du_withGoalHole_712 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
du_withGoalHole_712 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe du_goalHole_704 (coe v0) (coe v1) (coe v2))
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
           (coe ()) (coe du_runWithHole_692 v2 () v4 v3)
           (coe MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased v4))
-- Class.MonadTC._.findInstances
d_findInstances_718 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_findInstances_718 ~v0 v1 v2 v3 v4 v5
  = du_findInstances_718 v1 v2 v3 v4 v5
du_findInstances_718 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_findInstances_718 v0 v1 v2 v3 v4
  = coe
      du_runAndReset_196 (coe v0) (coe v2) (coe ())
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
         erased
         (coe
            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
            (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
            erased () erased
            (coe du_findMeta_726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe du_newMeta_270 v2 v4))
         (\ v5 ->
            let v6
                  = coe
                      du_error1_592 (coe v1) (coe ())
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                      (coe
                         ("[findInstances] newMeta did not produce meta-variable!"
                          ::
                          Data.Text.Text)) in
            coe
              (case coe v5 of
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                   -> coe d_getInstances_186 v2 v7
                 _ -> coe v6)))
-- Class.MonadTC._._.findMeta
d_findMeta_726 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_findMeta_726 ~v0 v1 v2 v3 v4 v5 = du_findMeta_726 v1 v2 v3 v4 v5
du_findMeta_726 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
du_findMeta_726 v0 v1 v2 v3 v4
  = coe
      du_'46'extendedlambda10_728 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
-- Class.MonadTC._._..extendedlambda10
d_'46'extendedlambda10_728 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_'46'extendedlambda10_728 ~v0 v1 v2 v3 v4 v5 v6
  = du_'46'extendedlambda10_728 v1 v2 v3 v4 v5 v6
du_'46'extendedlambda10_728 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  T_MonadTC_88 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
du_'46'extendedlambda10_728 v0 v1 v2 v3 v4 v5
  = let v6 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v9 v10
                  -> coe du_findMeta_726 v0 v1 v2 v3 v4 v10
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v7 v8
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v9 v10
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                         -> coe
                              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__84
                              (coe du_findMeta_726 v0 v1 v2 v3 v4 v10)
                              (coe du_findMeta_726 v0 v1 v2 v3 v4 v12)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v7 v8
           -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v7)
         _ -> coe v6)
-- Class.MonadTC.MonadTC-TC
d_MonadTC'45'TC_742 :: T_MonadTC_88
d_MonadTC'45'TC_742
  = coe
      C_MonadTC'46'constructor_5687
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_336)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_344)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_346)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_348)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_reduce_350)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_362)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unquoteTC_368)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_quoteωTC_372)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_388)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_declareDef_390)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_declarePostulate_392)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_400)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_402)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_404)
      (\ v0 v1 v2 ->
         coe MAlonzo.Code.Agda.Builtin.Reflection.du_blockOnMeta_614 v0 v2)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_commitTC_412)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_isMacro_414)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_debugPrint_458)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_runSpeculative_472)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getInstances_474)
