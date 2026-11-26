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
import qualified MAlonzo.Code.Class.Applicative.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
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
d_ReductionOptions_4 = ()
data T_ReductionOptions_4
  = C_onlyReduce_6 [AgdaAny] | C_dontReduce_8 [AgdaAny]
-- Class.MonadTC.reduceAll
d_reduceAll_10 :: T_ReductionOptions_4
d_reduceAll_10
  = coe
      C_dontReduce_8 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC.TCOptions
d_TCOptions_12 = ()
data T_TCOptions_12
  = C_constructor_22 MAlonzo.Code.Reflection.Debug.T_DebugOptions_234
                     [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Class.MonadTC.TCOptions.debug
d_debug_18 ::
  T_TCOptions_12 -> MAlonzo.Code.Reflection.Debug.T_DebugOptions_234
d_debug_18 v0
  = case coe v0 of
      C_constructor_22 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCOptions.fuel
d_fuel_20 ::
  T_TCOptions_12 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_fuel_20 v0
  = case coe v0 of
      C_constructor_22 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.defaultTCOptions
d_defaultTCOptions_24 :: T_TCOptions_12
d_defaultTCOptions_24
  = coe
      C_constructor_22
      (coe MAlonzo.Code.Reflection.Debug.d_defaultDebugOptions_258)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC.TCEnv
d_TCEnv_26 = ()
data T_TCEnv_26
  = C_constructor_66 Bool Bool Bool T_ReductionOptions_4
                     [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                     [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                     MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_TCOptions_12
-- Class.MonadTC.TCEnv.normalisation
d_normalisation_44 :: T_TCEnv_26 -> Bool
d_normalisation_44 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.reconstruction
d_reconstruction_46 :: T_TCEnv_26 -> Bool
d_reconstruction_46 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.noConstraints
d_noConstraints_48 :: T_TCEnv_26 -> Bool
d_noConstraints_48 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.reduction
d_reduction_50 :: T_TCEnv_26 -> T_ReductionOptions_4
d_reduction_50 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.globalContext
d_globalContext_52 ::
  T_TCEnv_26 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_globalContext_52 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.localContext
d_localContext_54 ::
  T_TCEnv_26 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_localContext_54 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.goal
d_goal_56 :: T_TCEnv_26 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_goal_56 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv.options
d_options_58 :: T_TCEnv_26 -> T_TCOptions_12
d_options_58 v0
  = case coe v0 of
      C_constructor_66 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.TCEnv._.debug
d_debug_62 ::
  T_TCEnv_26 -> MAlonzo.Code.Reflection.Debug.T_DebugOptions_234
d_debug_62 v0 = coe d_debug_18 (coe d_options_58 (coe v0))
-- Class.MonadTC.TCEnv._.fuel
d_fuel_64 :: T_TCEnv_26 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_fuel_64 v0 = coe d_fuel_20 (coe d_options_58 (coe v0))
-- Class.MonadTC.initTCEnvWithGoal
d_initTCEnvWithGoal_68 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_initTCEnvWithGoal_68 v0
  = coe
      MAlonzo.Code.Class.Functor.Core.du__'60''38''62'__32
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
      (coe ()) (coe ())
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getContext_376)
      (coe
         (\ v1 ->
            coe
              C_constructor_66 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) (coe d_reduceAll_10)
              (coe v1) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v0))
              (coe d_defaultTCOptions_24)))
-- Class.MonadTC.initTCEnv
d_initTCEnv_74 :: AgdaAny
d_initTCEnv_74
  = coe
      d_initTCEnvWithGoal_68
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)
-- Class.MonadTC.MonadTC
d_MonadTC_84 a0 a1 a2 = ()
data T_MonadTC_84
  = C_constructor_400 (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
                       MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny)
                      (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       () ->
                       [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny)
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
                       [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny)
                      (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       () -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny)
-- Class.MonadTC.MonadTC.unify
d_unify_136 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unify_136 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.typeError
d_typeError_138 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_typeError_138 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.inferType
d_inferType_140 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_inferType_140 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.checkType
d_checkType_142 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_checkType_142 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.normalise
d_normalise_144 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_normalise_144 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.reduce
d_reduce_146 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduce_146 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.quoteTC
d_quoteTC_148 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_quoteTC_148 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.unquoteTC
d_unquoteTC_150 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unquoteTC_150 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.quoteωTC
d_quoteωTC_154 :: T_MonadTC_84 -> () -> AgdaAny -> AgdaAny
d_quoteωTC_154 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.freshName
d_freshName_156 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_freshName_156 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.declareDef
d_declareDef_158 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declareDef_158 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.declarePostulate
d_declarePostulate_160 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declarePostulate_160 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.defineFun
d_defineFun_162 ::
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_defineFun_162 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.getType
d_getType_164 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
d_getType_164 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.getDefinition
d_getDefinition_166 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
d_getDefinition_166 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.blockOnMeta
d_blockOnMeta_168 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_blockOnMeta_168 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.commitTC
d_commitTC_170 :: T_MonadTC_84 -> AgdaAny
d_commitTC_170 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.isMacro
d_isMacro_172 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
d_isMacro_172 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.debugPrint
d_debugPrint_174 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_debugPrint_174 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.runSpeculative
d_runSpeculative_176 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runSpeculative_176 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.getInstances
d_getInstances_178 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
d_getInstances_178 v0
  = case coe v0 of
      C_constructor_400 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.runAndReset
d_runAndReset_188 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runAndReset_188 ~v0 v1 ~v2 v3 v4 ~v5 v6
  = du_runAndReset_188 v1 v3 v4 v6
du_runAndReset_188 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_runAndReset_188 v0 v1 v2 v3
  = coe
      d_runSpeculative_176 v1 v2 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
         (MAlonzo.Code.Class.Applicative.Core.d_super_20
            (coe MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v0)))
         v2 erased v2 erased
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
         v3)
-- Class.MonadTC.MonadTC.isSuccessful
d_isSuccessful_194 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_isSuccessful_194 ~v0 v1 v2 v3 v4 ~v5 v6
  = du_isSuccessful_194 v1 v2 v3 v4 v6
du_isSuccessful_194 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_isSuccessful_194 v0 v1 v2 v3 v4
  = coe
      du_runAndReset_188 (coe v0) (coe v2) (coe ())
      (coe
         MAlonzo.Code.Class.MonadError.d_catch_28 v1 () erased
         (coe
            MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe v3)
            (coe ()) (coe v4)
            (coe
               MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
         (\ v5 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Class.MonadTC.MonadTC.isDef
d_isDef_200 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
d_isDef_200 ~v0 v1 ~v2 v3 v4 = du_isDef_200 v1 v3 v4
du_isDef_200 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
du_isDef_200 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe d_getDefinition_166 v1 v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'cons_302 v5 v6
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
              _ -> coe v4))
-- Class.MonadTC.MonadTC.isCon
d_isCon_206 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
d_isCon_206 ~v0 v1 ~v2 v3 v4 = du_isCon_206 v1 v3 v4
du_isCon_206 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
du_isCon_206 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe d_getDefinition_166 v1 v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'cons_302 v5 v6
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
              _ -> coe v4))
-- Class.MonadTC.MonadTC.nameConstr
d_nameConstr_212 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_nameConstr_212 ~v0 v1 v2 v3 v4 v5
  = du_nameConstr_212 v1 v2 v3 v4 v5
du_nameConstr_212 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_nameConstr_212 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe du_isDef_200 (coe v0) (coe v2) (coe v3))
      (\ v5 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
           erased (coe du_isCon_206 (coe v0) (coe v2) (coe v3))
           (\ v6 ->
              if coe v5
                then coe
                       MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3) (coe v4))
                else (if coe v6
                        then coe
                               MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3) (coe v4))
                        else coe
                               MAlonzo.Code.Class.MonadError.d_error_26 v1 () erased
                               (coe
                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v3)
                                     (coe
                                        ("is neither a definition nor a constructor!"
                                         ::
                                         Data.Text.Text)))
                                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Class.MonadTC.MonadTC.termFromName
d_termFromName_224 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
d_termFromName_224 ~v0 v1 v2 v3 v4
  = du_termFromName_224 v1 v2 v3 v4
du_termFromName_224 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
du_termFromName_224 v0 v1 v2 v3
  = coe
      du_nameConstr_212 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC.MonadTC.mkRecord
d_mkRecord_228 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_mkRecord_228 ~v0 v1 v2 v3 v4 v5 = du_mkRecord_228 v1 v2 v3 v4 v5
du_mkRecord_228 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_mkRecord_228 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe d_getDefinition_166 v2 v3)
      (\ v5 ->
         let v6
               = coe
                   MAlonzo.Code.Class.MonadError.d_error_26 v1 () erased
                   (coe
                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                      (coe ("Not a record!" :: Data.Text.Text))
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
         coe
           (case coe v5 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v7 v8
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v7) (coe v4))
              _ -> coe v6))
-- Class.MonadTC.MonadTC.isSolvedMeta
d_isSolvedMeta_238 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_isSolvedMeta_238 ~v0 v1 v2 v3 v4
  = du_isSolvedMeta_238 v1 v2 v3 v4
du_isSolvedMeta_238 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_isSolvedMeta_238 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Class.MonadError.d_error_26 v1 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                 (coe ("Not a meta!" :: Data.Text.Text))
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v5 v6
           -> coe
                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                erased (coe d_reduce_146 v2 v3)
                (\ v7 ->
                   let v8
                         = coe
                             MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
                   coe
                     (case coe v7 of
                        MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v9 v10
                          -> coe
                               MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.du__'8800'__20
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Meta_220 v5 v9)
                        _ -> coe v8))
         _ -> coe v4)
-- Class.MonadTC.MonadTC.hasUnsolvedMetas
d_hasUnsolvedMetas_252 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasUnsolvedMetas_252 ~v0 v1 v2 v3 v4
  = du_hasUnsolvedMetas_252 v1 v2 v3 v4
du_hasUnsolvedMetas_252 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_hasUnsolvedMetas_252 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v4 v5
        -> coe
             du_hasUnsolvedMetas''_254 (coe v0) (coe v1) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v4 v5
        -> coe
             du_hasUnsolvedMetas''_254 (coe v0) (coe v1) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
        -> coe
             du_hasUnsolvedMetas''_254 (coe v0) (coe v1) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v4 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v6 v7
               -> coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v4 v5
        -> coe
             MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
             erased
             (coe du_hasUnsolvedMetasCl_256 (coe v0) (coe v1) (coe v2) (coe v4))
             (\ v6 ->
                coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                  erased
                  (coe du_hasUnsolvedMetas''_254 (coe v0) (coe v1) (coe v2) (coe v5))
                  (\ v7 ->
                     coe
                       MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                       (MAlonzo.Code.Data.Bool.Base.d__'8744'__30 (coe v6) (coe v7))))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v8 v9
                      -> coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                           erased
                           (coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v7))
                           (\ v10 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                                erased
                                (coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v9))
                                (\ v11 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                                     (MAlonzo.Code.Data.Bool.Base.d__'8744'__30
                                        (coe v10) (coe v11))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) in
           coe
             (case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v6
                  -> coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v6)
                MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228 v6
                  -> coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v6)
                MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_238
                  -> coe
                       MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                _ -> coe v5)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v4
        -> coe
             MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v4 v5
        -> coe
             MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
             (MAlonzo.Code.Class.Applicative.Core.d_super_20
                (coe MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v0)))
             () erased () erased MAlonzo.Code.Data.Bool.Base.d_not_22
             (coe du_isSolvedMeta_238 (coe v0) (coe v1) (coe v2) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
        -> coe
             MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.hasUnsolvedMetas'
d_hasUnsolvedMetas''_254 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_hasUnsolvedMetas''_254 ~v0 v1 v2 v3 v4
  = du_hasUnsolvedMetas''_254 v1 v2 v3 v4
du_hasUnsolvedMetas''_254 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_hasUnsolvedMetas''_254 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
               -> coe
                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                    erased
                    (coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v7))
                    (\ v8 ->
                       coe
                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                         erased
                         (coe du_hasUnsolvedMetas''_254 (coe v0) (coe v1) (coe v2) (coe v5))
                         (\ v9 ->
                            coe
                              MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                              (MAlonzo.Code.Data.Bool.Base.d__'8744'__30 (coe v8) (coe v9))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.hasUnsolvedMetasCl
d_hasUnsolvedMetasCl_256 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_hasUnsolvedMetasCl_256 ~v0 v1 v2 v3 v4
  = du_hasUnsolvedMetasCl_256 v1 v2 v3 v4
du_hasUnsolvedMetasCl_256 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_hasUnsolvedMetasCl_256 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v6 v7 v8
               -> coe
                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                    erased
                    (coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v8))
                    (\ v9 ->
                       coe
                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                         erased
                         (coe
                            du_hasUnsolvedMetasTel_258 (coe v0) (coe v1) (coe v2) (coe v6))
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                              erased
                              (coe du_hasUnsolvedMetasCl_256 (coe v0) (coe v1) (coe v2) (coe v5))
                              (\ v11 ->
                                 coe
                                   MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                                   (MAlonzo.Code.Data.Bool.Base.d__'8744'__30
                                      (coe v9)
                                      (coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8744'__30 (coe v10)
                                         (coe v11))))))
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v6 v7
               -> coe
                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                    erased
                    (coe
                       du_hasUnsolvedMetasTel_258 (coe v0) (coe v1) (coe v2) (coe v6))
                    (\ v8 ->
                       coe
                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                         erased
                         (coe du_hasUnsolvedMetasCl_256 (coe v0) (coe v1) (coe v2) (coe v5))
                         (\ v9 ->
                            coe
                              MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                              (MAlonzo.Code.Data.Bool.Base.d__'8744'__30 (coe v8) (coe v9))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.hasUnsolvedMetasTel
d_hasUnsolvedMetasTel_258 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hasUnsolvedMetasTel_258 ~v0 v1 v2 v3 v4
  = du_hasUnsolvedMetasTel_258 v1 v2 v3 v4
du_hasUnsolvedMetasTel_258 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_hasUnsolvedMetasTel_258 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v8 v9
                      -> coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                           erased
                           (coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2) (coe v9))
                           (\ v10 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                                erased
                                (coe
                                   du_hasUnsolvedMetasTel_258 (coe v0) (coe v1) (coe v2) (coe v5))
                                (\ v11 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                                     (MAlonzo.Code.Data.Bool.Base.d__'8744'__30
                                        (coe v10) (coe v11))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC.MonadTC.declareAndDefineFuns
d_declareAndDefineFuns_340 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFuns_340 ~v0 v1 ~v2 v3 v4
  = du_declareAndDefineFuns_340 v1 v3 v4
du_declareAndDefineFuns_340 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFuns_340 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Class.Traversable.Core.du_traverse_50
         (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
         (coe
            MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
         (coe (\ v3 -> v3)) (coe ()) (coe ()) (coe v0)
         (coe
            (\ v3 ->
               coe
                 d_declareDef_158 v1
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe v2))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
         (coe ())
         (coe
            MAlonzo.Code.Class.Traversable.Core.du_traverse_50
            (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
            (coe
               MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
            (coe (\ v3 -> v3)) (coe ()) (coe ()) (coe v0)
            (coe
               (\ v3 ->
                  case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                    -> coe d_defineFun_162 v1 v7 v9
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe v2))
         (coe
            MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Class.MonadTC.MonadTC.declareAndDefineFunsDebug
d_declareAndDefineFunsDebug_356 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFunsDebug_356 ~v0 v1 v2 v3 v4
  = du_declareAndDefineFunsDebug_356 v1 v2 v3 v4
du_declareAndDefineFunsDebug_356 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFunsDebug_356 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Class.Traversable.Core.du_traverse_50
         (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
         (coe
            MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
         (coe (\ v4 -> v4)) (coe ()) (coe ()) (coe v0)
         (coe
            (\ v4 ->
               coe
                 d_declareDef_158 v2
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe v3))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
         (coe ())
         (coe
            MAlonzo.Code.Class.Traversable.Core.du_traverse_50
            (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
            (coe
               MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
            (coe (\ v4 -> v4)) (coe ()) (coe ()) (coe v0)
            (coe
               (\ v4 ->
                  case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                             -> coe
                                  seq (coe v6)
                                  (coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased
                                     () erased
                                     (coe
                                        MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 ()
                                        erased () erased (coe d_getType_164 v2 v8)
                                        (coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2)))
                                     (\ v9 ->
                                        coe
                                          MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v9)
                                          (coe
                                             MAlonzo.Code.Class.MonadError.d_error_26 v1 () erased
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                                                   (coe
                                                      MAlonzo.Code.Class.Show.Core.d_show_16
                                                      MAlonzo.Code.Class.Show.Instances.d_Show'45'Name_68
                                                      v8))))
                                          (coe
                                             MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe v3))
         (coe
            MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
            (coe ())
            (coe
               MAlonzo.Code.Class.Traversable.Core.du_traverse_50
               (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
               (coe
                  MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
               (coe (\ v4 -> v4)) (coe ()) (coe ()) (coe v0)
               (coe
                  (\ v4 ->
                     case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                         -> case coe v5 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                                -> case coe v6 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                       -> coe d_defineFun_162 v2 v8 v10
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe v3))
            (coe
               MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
               (coe ())
               (coe
                  MAlonzo.Code.Class.Traversable.Core.du_traverse_50
                  (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
                  (coe
                     MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
                  (coe (\ v4 -> v4)) (coe ()) (coe ()) (coe v0)
                  (coe
                     (\ v4 ->
                        case coe v4 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                            -> case coe v5 of
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                                   -> coe
                                        seq (coe v6)
                                        (coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 ()
                                           erased () erased (coe d_getDefinition_166 v2 v8)
                                           (\ v9 ->
                                              let v10
                                                    = coe
                                                        MAlonzo.Code.Class.MonadError.d_error_26 v1
                                                        () erased
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                                                              (coe
                                                                 ("Weird bug"
                                                                  ::
                                                                  Data.Text.Text)))) in
                                              coe
                                                (case coe v9 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_function_284 v11
                                                     -> coe
                                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24
                                                          v0 () erased () erased
                                                          (coe
                                                             du_hasUnsolvedMetasCl_256 (coe v0)
                                                             (coe v1) (coe v2) (coe v11))
                                                          (\ v12 ->
                                                             coe
                                                               MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Class.MonadError.d_error_26
                                                                  v1 () erased
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                                                                        (coe
                                                                           MAlonzo.Code.Class.Show.Core.d_show_16
                                                                           MAlonzo.Code.Class.Show.Instances.d_Show'45'Definition_106
                                                                           v9))))
                                                               (coe
                                                                  MAlonzo.Code.Class.Monad.Core.d_return_22
                                                                  v0 () erased
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                   _ -> coe v10)))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError))
                  (coe v3))
               (coe
                  MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
-- Class.MonadTC.MonadTC.declareAndDefineFun
d_declareAndDefineFun_390 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_declareAndDefineFun_390 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_declareAndDefineFun_390 v1 v3 v4 v5 v6
du_declareAndDefineFun_390 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_declareAndDefineFun_390 v0 v1 v2 v3 v4
  = coe
      du_declareAndDefineFuns_340 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))
-- Class.MonadTC.MonadTC.newMeta
d_newMeta_398 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_newMeta_398 ~v0 ~v1 ~v2 v3 = du_newMeta_398 v3
du_newMeta_398 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_newMeta_398 v0
  = coe
      d_checkType_142 v0
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)
-- Class.MonadTC._._.blockOnMeta
d_blockOnMeta_428 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_blockOnMeta_428 ~v0 ~v1 ~v2 v3 ~v4 = du_blockOnMeta_428 v3
du_blockOnMeta_428 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_blockOnMeta_428 v0 = coe d_blockOnMeta_168 (coe v0)
-- Class.MonadTC._._.checkType
d_checkType_430 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_checkType_430 ~v0 ~v1 ~v2 v3 ~v4 = du_checkType_430 v3
du_checkType_430 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_checkType_430 v0 = coe d_checkType_142 (coe v0)
-- Class.MonadTC._._.commitTC
d_commitTC_432 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_commitTC_432 ~v0 ~v1 ~v2 v3 ~v4 = du_commitTC_432 v3
du_commitTC_432 :: T_MonadTC_84 -> AgdaAny
du_commitTC_432 v0 = coe d_commitTC_170 (coe v0)
-- Class.MonadTC._._.debugPrint
d_debugPrint_434 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_debugPrint_434 ~v0 ~v1 ~v2 v3 ~v4 = du_debugPrint_434 v3
du_debugPrint_434 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
du_debugPrint_434 v0 = coe d_debugPrint_174 (coe v0)
-- Class.MonadTC._._.declareAndDefineFun
d_declareAndDefineFun_436 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_declareAndDefineFun_436 ~v0 v1 ~v2 v3 ~v4
  = du_declareAndDefineFun_436 v1 v3
du_declareAndDefineFun_436 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_declareAndDefineFun_436 v0 v1
  = coe du_declareAndDefineFun_390 (coe v0) (coe v1)
-- Class.MonadTC._._.declareAndDefineFuns
d_declareAndDefineFuns_438 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFuns_438 ~v0 v1 ~v2 v3 ~v4
  = du_declareAndDefineFuns_438 v1 v3
du_declareAndDefineFuns_438 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFuns_438 v0 v1
  = coe du_declareAndDefineFuns_340 (coe v0) (coe v1)
-- Class.MonadTC._._.declareAndDefineFunsDebug
d_declareAndDefineFunsDebug_440 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFunsDebug_440 ~v0 v1 v2 v3 ~v4
  = du_declareAndDefineFunsDebug_440 v1 v2 v3
du_declareAndDefineFunsDebug_440 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFunsDebug_440 v0 v1 v2
  = coe du_declareAndDefineFunsDebug_356 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.declareDef
d_declareDef_442 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declareDef_442 ~v0 ~v1 ~v2 v3 ~v4 = du_declareDef_442 v3
du_declareDef_442 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_declareDef_442 v0 = coe d_declareDef_158 (coe v0)
-- Class.MonadTC._._.declarePostulate
d_declarePostulate_444 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declarePostulate_444 ~v0 ~v1 ~v2 v3 ~v4
  = du_declarePostulate_444 v3
du_declarePostulate_444 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_declarePostulate_444 v0 = coe d_declarePostulate_160 (coe v0)
-- Class.MonadTC._._.defineFun
d_defineFun_446 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_defineFun_446 ~v0 ~v1 ~v2 v3 ~v4 = du_defineFun_446 v3
du_defineFun_446 ::
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_defineFun_446 v0 = coe d_defineFun_162 (coe v0)
-- Class.MonadTC._._.freshName
d_freshName_448 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_freshName_448 ~v0 ~v1 ~v2 v3 ~v4 = du_freshName_448 v3
du_freshName_448 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
du_freshName_448 v0 = coe d_freshName_156 (coe v0)
-- Class.MonadTC._._.getDefinition
d_getDefinition_450 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getDefinition_450 ~v0 ~v1 ~v2 v3 ~v4 = du_getDefinition_450 v3
du_getDefinition_450 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
du_getDefinition_450 v0 = coe d_getDefinition_166 (coe v0)
-- Class.MonadTC._._.getInstances
d_getInstances_452 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getInstances_452 ~v0 ~v1 ~v2 v3 ~v4 = du_getInstances_452 v3
du_getInstances_452 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
du_getInstances_452 v0 = coe d_getInstances_178 (coe v0)
-- Class.MonadTC._._.getType
d_getType_454 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getType_454 ~v0 ~v1 ~v2 v3 ~v4 = du_getType_454 v3
du_getType_454 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
du_getType_454 v0 = coe d_getType_164 (coe v0)
-- Class.MonadTC._._.hasUnsolvedMetas
d_hasUnsolvedMetas_456 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasUnsolvedMetas_456 ~v0 v1 v2 v3 ~v4
  = du_hasUnsolvedMetas_456 v1 v2 v3
du_hasUnsolvedMetas_456 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_hasUnsolvedMetas_456 v0 v1 v2
  = coe du_hasUnsolvedMetas_252 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.hasUnsolvedMetas'
d_hasUnsolvedMetas''_458 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_hasUnsolvedMetas''_458 ~v0 v1 v2 v3 ~v4
  = du_hasUnsolvedMetas''_458 v1 v2 v3
du_hasUnsolvedMetas''_458 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_hasUnsolvedMetas''_458 v0 v1 v2
  = coe du_hasUnsolvedMetas''_254 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.hasUnsolvedMetasCl
d_hasUnsolvedMetasCl_460 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_hasUnsolvedMetasCl_460 ~v0 v1 v2 v3 ~v4
  = du_hasUnsolvedMetasCl_460 v1 v2 v3
du_hasUnsolvedMetasCl_460 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_hasUnsolvedMetasCl_460 v0 v1 v2
  = coe du_hasUnsolvedMetasCl_256 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.hasUnsolvedMetasTel
d_hasUnsolvedMetasTel_462 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hasUnsolvedMetasTel_462 ~v0 v1 v2 v3 ~v4
  = du_hasUnsolvedMetasTel_462 v1 v2 v3
du_hasUnsolvedMetasTel_462 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_hasUnsolvedMetasTel_462 v0 v1 v2
  = coe du_hasUnsolvedMetasTel_258 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.inferType
d_inferType_464 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_inferType_464 ~v0 ~v1 ~v2 v3 ~v4 = du_inferType_464 v3
du_inferType_464 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_inferType_464 v0 = coe d_inferType_140 (coe v0)
-- Class.MonadTC._._.isCon
d_isCon_466 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_isCon_466 ~v0 v1 ~v2 v3 ~v4 = du_isCon_466 v1 v3
du_isCon_466 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
du_isCon_466 v0 v1 = coe du_isCon_206 (coe v0) (coe v1)
-- Class.MonadTC._._.isDef
d_isDef_468 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_isDef_468 ~v0 v1 ~v2 v3 ~v4 = du_isDef_468 v1 v3
du_isDef_468 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
du_isDef_468 v0 v1 = coe du_isDef_200 (coe v0) (coe v1)
-- Class.MonadTC._._.isMacro
d_isMacro_470 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_isMacro_470 ~v0 ~v1 ~v2 v3 ~v4 = du_isMacro_470 v3
du_isMacro_470 :: T_MonadTC_84 -> AgdaAny -> AgdaAny
du_isMacro_470 v0 = coe d_isMacro_172 (coe v0)
-- Class.MonadTC._._.isSolvedMeta
d_isSolvedMeta_472 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_isSolvedMeta_472 ~v0 v1 v2 v3 ~v4 = du_isSolvedMeta_472 v1 v2 v3
du_isSolvedMeta_472 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_isSolvedMeta_472 v0 v1 v2
  = coe du_isSolvedMeta_238 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.isSuccessful
d_isSuccessful_474 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_isSuccessful_474 ~v0 v1 v2 v3 ~v4 = du_isSuccessful_474 v1 v2 v3
du_isSuccessful_474 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_isSuccessful_474 v0 v1 v2 v3 v4 v5
  = coe du_isSuccessful_194 (coe v0) (coe v1) (coe v2) v3 v5
-- Class.MonadTC._._.mkRecord
d_mkRecord_476 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_mkRecord_476 ~v0 v1 v2 v3 ~v4 = du_mkRecord_476 v1 v2 v3
du_mkRecord_476 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_mkRecord_476 v0 v1 v2
  = coe du_mkRecord_228 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.nameConstr
d_nameConstr_478 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_nameConstr_478 ~v0 v1 v2 v3 ~v4 = du_nameConstr_478 v1 v2 v3
du_nameConstr_478 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_nameConstr_478 v0 v1 v2
  = coe du_nameConstr_212 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.newMeta
d_newMeta_480 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_newMeta_480 ~v0 ~v1 ~v2 v3 ~v4 = du_newMeta_480 v3
du_newMeta_480 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_newMeta_480 v0 = coe du_newMeta_398 (coe v0)
-- Class.MonadTC._._.normalise
d_normalise_482 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_normalise_482 ~v0 ~v1 ~v2 v3 ~v4 = du_normalise_482 v3
du_normalise_482 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_normalise_482 v0 = coe d_normalise_144 (coe v0)
-- Class.MonadTC._._.quoteTC
d_quoteTC_484 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_quoteTC_484 ~v0 ~v1 ~v2 v3 ~v4 = du_quoteTC_484 v3
du_quoteTC_484 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_quoteTC_484 v0 = coe d_quoteTC_148 (coe v0)
-- Class.MonadTC._._.quoteωTC
d_quoteωTC_486 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () -> AgdaAny -> AgdaAny
d_quoteωTC_486 ~v0 ~v1 ~v2 v3 ~v4 = du_quoteωTC_486 v3
du_quoteωTC_486 :: T_MonadTC_84 -> () -> AgdaAny -> AgdaAny
du_quoteωTC_486 v0 = coe d_quoteωTC_154 (coe v0)
-- Class.MonadTC._._.reduce
d_reduce_488 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduce_488 ~v0 ~v1 ~v2 v3 ~v4 = du_reduce_488 v3
du_reduce_488 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_reduce_488 v0 = coe d_reduce_146 (coe v0)
-- Class.MonadTC._._.runAndReset
d_runAndReset_490 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runAndReset_490 ~v0 v1 ~v2 v3 ~v4 = du_runAndReset_490 v1 v3
du_runAndReset_490 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_runAndReset_490 v0 v1 v2 v3 v4
  = coe du_runAndReset_188 (coe v0) (coe v1) v2 v4
-- Class.MonadTC._._.runSpeculative
d_runSpeculative_492 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runSpeculative_492 ~v0 ~v1 ~v2 v3 ~v4 = du_runSpeculative_492 v3
du_runSpeculative_492 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_runSpeculative_492 v0 = coe d_runSpeculative_176 (coe v0)
-- Class.MonadTC._._.termFromName
d_termFromName_494 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_termFromName_494 ~v0 v1 v2 v3 ~v4 = du_termFromName_494 v1 v2 v3
du_termFromName_494 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
du_termFromName_494 v0 v1 v2
  = coe du_termFromName_224 (coe v0) (coe v1) (coe v2)
-- Class.MonadTC._._.typeError
d_typeError_496 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_typeError_496 ~v0 ~v1 ~v2 v3 ~v4 = du_typeError_496 v3
du_typeError_496 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
du_typeError_496 v0 = coe d_typeError_138 (coe v0)
-- Class.MonadTC._._.unify
d_unify_498 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unify_498 ~v0 ~v1 ~v2 v3 ~v4 = du_unify_498 v3
du_unify_498 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_unify_498 v0 = coe d_unify_136 (coe v0)
-- Class.MonadTC._._.unquoteTC
d_unquoteTC_500 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unquoteTC_500 ~v0 ~v1 ~v2 v3 ~v4 = du_unquoteTC_500 v3
du_unquoteTC_500 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_unquoteTC_500 v0 = coe d_unquoteTC_150 (coe v0)
-- Class.MonadTC._.IsMErrorPart
d_IsMErrorPart_514 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_IsMErrorPart_514 = C_constructor_522 (AgdaAny -> AgdaAny)
-- Class.MonadTC._.IsMErrorPart.toMErrorPart
d_toMErrorPart_520 :: T_IsMErrorPart_514 -> AgdaAny -> AgdaAny
d_toMErrorPart_520 v0
  = case coe v0 of
      C_constructor_522 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._._.toMErrorPart
d_toMErrorPart_526 :: T_IsMErrorPart_514 -> AgdaAny -> AgdaAny
d_toMErrorPart_526 v0 = coe d_toMErrorPart_520 (coe v0)
-- Class.MonadTC._.MErrorPartWrap
d_MErrorPartWrap_528 a0 a1 a2 a3 a4 = ()
newtype T_MErrorPartWrap_528 = C_wrap_530 AgdaAny
-- Class.MonadTC._.IsMErrorPart-IsErrorPart
d_IsMErrorPart'45'IsErrorPart_534 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> T_IsMErrorPart_514
d_IsMErrorPart'45'IsErrorPart_534 ~v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_IsMErrorPart'45'IsErrorPart_534 v1 v6
du_IsMErrorPart'45'IsErrorPart_534 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> T_IsMErrorPart_514
du_IsMErrorPart'45'IsErrorPart_534 v0 v1
  = coe
      C_constructor_522
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
              (coe
                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                 (coe MAlonzo.Code.Reflection.Debug.d_toErrorPart_12 v1 v2))))
-- Class.MonadTC._.IsMErrorPart-String
d_IsMErrorPart'45'String_538 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_514
d_IsMErrorPart'45'String_538 ~v0 v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'String_538 v1
du_IsMErrorPart'45'String_538 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> T_IsMErrorPart_514
du_IsMErrorPart'45'String_538 v0
  = coe
      du_IsMErrorPart'45'IsErrorPart_534 (coe v0)
      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
-- Class.MonadTC._.IsMErrorPart-Term
d_IsMErrorPart'45'Term_540 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_514
d_IsMErrorPart'45'Term_540 ~v0 v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'Term_540 v1
du_IsMErrorPart'45'Term_540 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> T_IsMErrorPart_514
du_IsMErrorPart'45'Term_540 v0
  = coe
      du_IsMErrorPart'45'IsErrorPart_534 (coe v0)
      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
-- Class.MonadTC._.IsMErrorPart-Name
d_IsMErrorPart'45'Name_542 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_514
d_IsMErrorPart'45'Name_542 ~v0 v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'Name_542 v1
du_IsMErrorPart'45'Name_542 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> T_IsMErrorPart_514
du_IsMErrorPart'45'Name_542 v0
  = coe
      du_IsMErrorPart'45'IsErrorPart_534 (coe v0)
      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_24)
-- Class.MonadTC._.IsMErrorPart-MErrorPartWrap
d_IsMErrorPart'45'MErrorPartWrap_544 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  T_IsMErrorPart_514
d_IsMErrorPart'45'MErrorPartWrap_544 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_IsMErrorPart'45'MErrorPartWrap_544
du_IsMErrorPart'45'MErrorPartWrap_544 :: T_IsMErrorPart_514
du_IsMErrorPart'45'MErrorPartWrap_544
  = coe
      C_constructor_522
      (coe
         (\ v0 ->
            case coe v0 of
              C_wrap_530 v1 -> coe v1
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.MonadTC._.[]ᵐ
d_'91''93''7504'_548 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_'91''93''7504'_548 ~v0 v1 ~v2 ~v3 ~v4 = du_'91''93''7504'_548 v1
du_'91''93''7504'_548 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 -> AgdaAny
du_'91''93''7504'_548 v0
  = coe
      MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Class.MonadTC._._∷ᵈᵐ_
d__'8759''7496''7504'__552 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_IsMErrorPart_514 -> AgdaAny -> AgdaAny
d__'8759''7496''7504'__552 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du__'8759''7496''7504'__552 v1 v7 v8 v9
du__'8759''7496''7504'__552 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  AgdaAny -> T_IsMErrorPart_514 -> AgdaAny -> AgdaAny
du__'8759''7496''7504'__552 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe d_toMErrorPart_520 v2 v1)
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
           erased v3
           (\ v5 ->
              coe
                MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                (coe
                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v5))))
-- Class.MonadTC._._ᵛ
d__'7515'_562 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_MErrorPartWrap_528
d__'7515'_562 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7
  = du__'7515'_562 v1 v3 v5 v7
du__'7515'_562 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> T_MErrorPartWrap_528
du__'7515'_562 v0 v1 v2 v3
  = coe
      C_wrap_530
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
         erased (coe d_quoteTC_148 v1 v2 erased v3)
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v4)
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Class.MonadTC._._ᵛⁿ
d__'7515''8319'_568 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_MErrorPartWrap_528
d__'7515''8319'_568 ~v0 v1 ~v2 v3 v4 v5 ~v6 v7
  = du__'7515''8319'_568 v1 v3 v4 v5 v7
du__'7515''8319'_568 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> T_MErrorPartWrap_528
du__'7515''8319'_568 v0 v1 v2 v3 v4
  = coe
      C_wrap_530
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
         erased
         (coe
            MAlonzo.Code.Class.MonadReader.d_local_44 v2 () erased
            (\ v5 ->
               coe
                 C_constructor_66 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                 (coe d_reconstruction_46 (coe v5))
                 (coe d_noConstraints_48 (coe v5)) (coe d_reduction_50 (coe v5))
                 (coe d_globalContext_52 (coe v5)) (coe d_localContext_54 (coe v5))
                 (coe d_goal_56 (coe v5)) (coe d_options_58 (coe v5)))
            (coe d_quoteTC_148 v1 v3 erased v4))
         (\ v5 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Class.MonadTC._._ᵗ
d__'7511'_576 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  T_MErrorPartWrap_528
d__'7511'_576 ~v0 v1 ~v2 v3 ~v4 v5 = du__'7511'_576 v1 v3 v5
du__'7511'_576 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  T_MErrorPartWrap_528
du__'7511'_576 v0 v1 v2
  = coe
      C_wrap_530
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
         erased (coe d_inferType_140 v1 v2)
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v2)
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                 (coe
                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                    (coe (" : " :: Data.Text.Text))
                    (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                    (coe
                       MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
                       (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Class.MonadTC._.debugLog
d_debugLog_582 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_debugLog_582 ~v0 v1 ~v2 v3 v4 v5 = du_debugLog_582 v1 v3 v4 v5
du_debugLog_582 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
du_debugLog_582 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (MAlonzo.Code.Class.MonadReader.d_ask_38 (coe v2))
      (\ v4 ->
         case coe v4 of
           C_constructor_66 v5 v6 v7 v8 v9 v10 v11 v12
             -> case coe v12 of
                  C_constructor_22 v13 v14
                    -> coe
                         MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                         (coe
                            MAlonzo.Code.Reflection.Debug.d_filter_250 v13
                            (MAlonzo.Code.Reflection.Debug.d_path_246 (coe v13)))
                         (coe
                            d_debugPrint_174 v1
                            (MAlonzo.Code.Reflection.Debug.d_debugOptionsPath_268 (coe v13))
                            (MAlonzo.Code.Reflection.Debug.d_level_252 (coe v13))
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Reflection.Debug.d_debugPrintPrefix_290 (coe v13))
                               (coe v3)))
                         (coe
                            MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.debugLogᵐ
d_debugLog'7504'_590 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_debugLog'7504'_590 ~v0 v1 ~v2 v3 v4 v5
  = du_debugLog'7504'_590 v1 v3 v4 v5
du_debugLog'7504'_590 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
du_debugLog'7504'_590 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased v3 (coe du_debugLog_582 (coe v0) (coe v1) (coe v2))
-- Class.MonadTC._.debugLog1ᵐ
d_debugLog1'7504'_598 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_IsMErrorPart_514 -> AgdaAny
d_debugLog1'7504'_598 ~v0 v1 ~v2 v3 v4 ~v5 ~v6 v7 v8
  = du_debugLog1'7504'_598 v1 v3 v4 v7 v8
du_debugLog1'7504'_598 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> T_IsMErrorPart_514 -> AgdaAny
du_debugLog1'7504'_598 v0 v1 v2 v3 v4
  = coe
      du_debugLog'7504'_590 (coe v0) (coe v1) (coe v2)
      (coe
         du__'8759''7496''7504'__552 (coe v0) (coe v3) (coe v4)
         (coe du_'91''93''7504'_548 (coe v0)))
-- Class.MonadTC._.withAppendDebugPath
d_withAppendDebugPath_602 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
d_withAppendDebugPath_602 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_withAppendDebugPath_602 v4 v5 v7 v8
du_withAppendDebugPath_602 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
du_withAppendDebugPath_602 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v4 ->
         case coe v4 of
           C_constructor_66 v5 v6 v7 v8 v9 v10 v11 v12
             -> case coe v12 of
                  C_constructor_22 v13 v14
                    -> coe
                         C_constructor_66 (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                         (coe v10) (coe v11)
                         (coe
                            C_constructor_22
                            (coe
                               MAlonzo.Code.Reflection.Debug.C_constructor_256
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'8759''691'__448
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
d_noConstraints_616 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_noConstraints_616 ~v0 v1 v2 ~v3 = du_noConstraints_616 v1 v2
du_noConstraints_616 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_noConstraints_616 v0 v1
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v2 ->
         coe
           C_constructor_66 (coe d_normalisation_44 (coe v2))
           (coe d_reconstruction_46 (coe v2))
           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
           (coe d_reduction_50 (coe v2)) (coe d_globalContext_52 (coe v2))
           (coe d_localContext_54 (coe v2)) (coe d_goal_56 (coe v2))
           (coe d_options_58 (coe v2)))
-- Class.MonadTC._.hasType
d_hasType_620 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasType_620 ~v0 v1 v2 v3 v4 v5 v6
  = du_hasType_620 v1 v2 v3 v4 v5 v6
du_hasType_620 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_hasType_620 v0 v1 v2 v3 v4 v5
  = coe
      du_isSuccessful_194 (coe v0) (coe v1) (coe v2) (coe ())
      (coe
         MAlonzo.Code.Class.MonadReader.d_local_44 v3 () erased
         (\ v6 ->
            coe
              C_constructor_66 (coe d_normalisation_44 (coe v6))
              (coe d_reconstruction_46 (coe v6))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
              (coe d_reduction_50 (coe v6)) (coe d_globalContext_52 (coe v6))
              (coe d_localContext_54 (coe v6)) (coe d_goal_56 (coe v6))
              (coe d_options_58 (coe v6)))
         (coe d_checkType_142 v2 v4 v5))
-- Class.MonadTC._.hasType'
d_hasType''_626 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasType''_626 ~v0 v1 v2 v3 v4 v5 v6
  = du_hasType''_626 v1 v2 v3 v4 v5 v6
du_hasType''_626 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_hasType''_626 v0 v1 v2 v3 v4 v5
  = coe
      du_isSuccessful_194 (coe v0) (coe v1) (coe v2) (coe ())
      (coe
         MAlonzo.Code.Class.MonadReader.d_local_44 v3 () erased
         (\ v6 ->
            coe
              C_constructor_66 (coe d_normalisation_44 (coe v6))
              (coe d_reconstruction_46 (coe v6))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
              (coe d_reduction_50 (coe v6)) (coe d_globalContext_52 (coe v6))
              (coe d_localContext_54 (coe v6)) (coe d_goal_56 (coe v6))
              (coe d_options_58 (coe v6)))
         (coe
            MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
            erased
            (coe du_termFromName_224 (coe v0) (coe v1) (coe v2) (coe v4))
            (\ v6 ->
               coe
                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
                 erased (coe d_checkType_142 v2 v6 v5)
                 (\ v7 ->
                    coe
                      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                      (coe du_isAppliedToUnknownsAndMetas_654 (coe v7))
                      (coe
                         MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                      (coe
                         MAlonzo.Code.Class.MonadError.d_error_26 v1 () erased
                         (coe
                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                            (coe ("This makes the function return false" :: Data.Text.Text))
                            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
-- Class.MonadTC._._.isUnknownsAndMetas
d_isUnknownsAndMetas_636 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
d_isUnknownsAndMetas_636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnknownsAndMetas_636 v7
du_isUnknownsAndMetas_636 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
du_isUnknownsAndMetas_636 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> let v5 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v6 v7
                         -> coe du_isUnknownsAndMetas_636 (coe v2)
                       MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
                         -> coe du_isUnknownsAndMetas_636 (coe v2)
                       _ -> coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._._.isAppliedToUnknownsAndMetas
d_isAppliedToUnknownsAndMetas_654 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_isAppliedToUnknownsAndMetas_654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isAppliedToUnknownsAndMetas_654 v7
du_isAppliedToUnknownsAndMetas_654 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
du_isAppliedToUnknownsAndMetas_654 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v2 v3
           -> coe du_isUnknownsAndMetas_636 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
           -> coe du_isUnknownsAndMetas_636 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe du_isUnknownsAndMetas_636 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v2 v3
           -> coe du_isUnknownsAndMetas_636 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v2 v3
           -> coe du_isUnknownsAndMetas_636 (coe v3)
         _ -> coe v1)
-- Class.MonadTC._.extendContext
d_extendContext_680 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_extendContext_680 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7
  = du_extendContext_680 v4 v5 v7
du_extendContext_680 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_extendContext_680 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         case coe v3 of
           C_constructor_66 v4 v5 v6 v7 v8 v9 v10 v11
             -> coe
                  C_constructor_66 (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v9))
                  (coe v10) (coe v11)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.getContext
d_getContext_690 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_getContext_690 ~v0 v1 ~v2 ~v3 v4 = du_getContext_690 v1 v4
du_getContext_690 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_getContext_690 v0 v1
  = coe
      MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
      (coe v1) (coe ())
      (coe
         (\ v2 ->
            case coe v2 of
              C_constructor_66 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8) (coe v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.MonadTC._.getLocalContext
d_getLocalContext_700 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_getLocalContext_700 ~v0 v1 ~v2 ~v3 v4
  = du_getLocalContext_700 v1 v4
du_getLocalContext_700 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_getLocalContext_700 v0 v1
  = coe
      MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
      (coe v1) (coe ())
      (coe
         (\ v2 ->
            case coe v2 of
              C_constructor_66 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.MonadTC._.inContext
d_inContext_708 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_inContext_708 ~v0 v1 v2 ~v3 v4 = du_inContext_708 v1 v2 v4
du_inContext_708 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_inContext_708 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         coe
           C_constructor_66 (coe d_normalisation_44 (coe v3))
           (coe d_reconstruction_46 (coe v3))
           (coe d_noConstraints_48 (coe v3)) (coe d_reduction_50 (coe v3))
           (coe d_globalContext_52 (coe v3)) (coe v2) (coe d_goal_56 (coe v3))
           (coe d_options_58 (coe v3)))
-- Class.MonadTC._.extendContext'
d_extendContext''_714 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_extendContext''_714 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_extendContext''_714 v4 v5 v7 v8
du_extendContext''_714 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_extendContext''_714 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_extendContext_680 v0 v1 v4
             (coe du_extendContext''_714 (coe v0) (coe v1) (coe v5) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._.dropContext
d_dropContext_724 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny
d_dropContext_724 ~v0 v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_dropContext_724 v1 v4 v5 v7 v8
du_dropContext_724 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  Integer -> AgdaAny -> AgdaAny
du_dropContext_724 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased v2
      erased (coe du_getContext_690 (coe v0) (coe v1))
      (\ v5 ->
         coe
           MAlonzo.Code.Class.MonadReader.d_local_44 v1 v2 erased
           (\ v6 ->
              coe
                C_constructor_66 (coe d_normalisation_44 (coe v6))
                (coe d_reconstruction_46 (coe v6))
                (coe d_noConstraints_48 (coe v6)) (coe d_reduction_50 (coe v6))
                (coe d_globalContext_52 (coe v6))
                (coe MAlonzo.Code.Data.List.Base.du_drop_542 (coe v3) (coe v5))
                (coe d_goal_56 (coe v6)) (coe d_options_58 (coe v6)))
           v4)
-- Class.MonadTC._.logAndError
d_logAndError_732 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_logAndError_732 ~v0 v1 v2 v3 v4 v5 ~v6 v7
  = du_logAndError_732 v1 v2 v3 v4 v5 v7
du_logAndError_732 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
du_logAndError_732 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
      (coe v4) (coe du_debugLog_582 (coe v0) (coe v2) (coe v3) (coe v5))
      (coe MAlonzo.Code.Class.MonadError.d_error_26 v1 v4 erased v5)
-- Class.MonadTC._.error1
d_error1_736 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> AgdaAny -> AgdaAny
d_error1_736 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9
  = du_error1_736 v2 v6 v8 v9
du_error1_736 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> AgdaAny -> AgdaAny
du_error1_736 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.MonadError.d_error_26 v0 v1 erased
      (coe
         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
         (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Class.MonadTC._.debugLog1
d_debugLog1_740 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> AgdaAny -> AgdaAny
d_debugLog1_740 ~v0 v1 ~v2 v3 v4 ~v5 v6 v7
  = du_debugLog1_740 v1 v3 v4 v6 v7
du_debugLog1_740 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> AgdaAny -> AgdaAny
du_debugLog1_740 v0 v1 v2 v3 v4
  = coe
      du_debugLog_582 (coe v0) (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v4)
         (coe v3) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Class.MonadTC._.logAndError1
d_logAndError1_744 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> AgdaAny -> AgdaAny
d_logAndError1_744 ~v0 v1 v2 v3 v4 ~v5 v6 ~v7 v8 v9
  = du_logAndError1_744 v1 v2 v3 v4 v6 v8 v9
du_logAndError1_744 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Reflection.Debug.T_IsErrorPart_6 -> AgdaAny -> AgdaAny
du_logAndError1_744 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
      (coe v4)
      (coe du_debugLog1_740 (coe v0) (coe v2) (coe v3) (coe v5) (coe v6))
      (coe du_error1_736 (coe v1) (coe v4) (coe v5) (coe v6))
-- Class.MonadTC._.markDontFail
d_markDontFail_748 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
d_markDontFail_748 ~v0 v1 v2 v3 v4 v5 ~v6 v7 v8
  = du_markDontFail_748 v1 v2 v3 v4 v5 v7 v8
du_markDontFail_748 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny -> AgdaAny
du_markDontFail_748 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Class.MonadError.d_catch_28 v1 v4 erased v6
      (\ v7 ->
         coe
           du_logAndError_732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
           (coe
              MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
              (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                 (coe
                    (" should never fail! This is a bug!\nError:\n" :: Data.Text.Text))
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                 (coe v7))))
-- Class.MonadTC._.goalTy
d_goalTy_756 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_goalTy_756 ~v0 v1 ~v2 v3 v4 = du_goalTy_756 v1 v3 v4
du_goalTy_756 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_goalTy_756 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
         (coe v2) (coe ()) (coe (\ v3 -> d_goal_56 (coe v3))))
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
             -> coe d_inferType_140 v1 v4
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
             -> coe MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.runSpeculativeMaybe
d_runSpeculativeMaybe_764 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_runSpeculativeMaybe_764 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 v8
  = du_runSpeculativeMaybe_764 v1 v3 v5 v7 v8
du_runSpeculativeMaybe_764 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_runSpeculativeMaybe_764 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 v2 erased v2
      erased
      (coe
         d_runSpeculative_176 v1 v2 erased
         (coe
            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
            (MAlonzo.Code.Class.Applicative.Core.d_super_20
               (coe MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v0)))
            v2 erased v2 erased
            (coe
               MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
               (coe (\ v5 -> v5))
               (coe MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20))
            v3))
      (\ v5 ->
         case coe v5 of
           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
             -> coe MAlonzo.Code.Class.Monad.Core.d_return_22 v0 v2 erased v6
           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.try
d_try_774 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [AgdaAny] -> AgdaAny -> AgdaAny
d_try_774 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 = du_try_774 v2 v5 v6
du_try_774 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  [AgdaAny] -> AgdaAny -> AgdaAny
du_try_774 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Class.MonadError.d_catch_28 v0 () erased v3
             (\ v5 -> coe du_try_774 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.MonadTC._.getConstrs
d_getConstrs_786 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_getConstrs_786 ~v0 v1 v2 v3 ~v4 v5
  = du_getConstrs_786 v1 v2 v3 v5
du_getConstrs_786 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 -> AgdaAny -> AgdaAny
du_getConstrs_786 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe d_getDefinition_166 v2 v3)
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
           erased
           (let v5
                  = coe
                      MAlonzo.Code.Class.MonadError.d_error_26 v1 () erased
                      (coe
                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
                         (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_24)
                         (coe
                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                            (coe ("is not a data or record definition!" :: Data.Text.Text))
                            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v6 v7
                   -> coe MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased v7
                 MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v6 v7
                   -> coe
                        MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased
                        (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v6))
                 _ -> coe v5))
           (\ v5 ->
              coe
                MAlonzo.Code.Class.Traversable.Core.du_traverse_50
                (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
                (coe
                   MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
                (coe (\ v6 -> v6)) (coe ()) (coe ()) (coe v0)
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
                        (MAlonzo.Code.Class.Applicative.Core.d_super_20
                           (coe MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v0)))
                        () erased () erased
                        (\ v7 ->
                           coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v7))
                        (coe
                           MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__34 (coe v0)
                           (coe ()) (coe ()) (coe d_normalise_144 (coe v2))
                           (coe d_getType_164 v2 v6))))
                (coe v5)))
-- Class.MonadTC._.getConstrsForType
d_getConstrsForType_808 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_getConstrsForType_808 ~v0 v1 v2 v3 ~v4 v5
  = du_getConstrsForType_808 v1 v2 v3 v5
du_getConstrsForType_808 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_getConstrsForType_808 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe d_normalise_144 v2 v3)
      (\ v4 ->
         let v5
               = coe
                   MAlonzo.Code.Class.MonadError.d_error_26 v1 () erased
                   (coe
                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                      (coe
                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                         (coe ("does not reduce to a definition!" :: Data.Text.Text))
                         (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
         coe
           (case coe v4 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v6 v7
                -> coe du_getConstrs_786 (coe v0) (coe v1) (coe v2) (coe v6)
              _ -> coe v5))
-- Class.MonadTC._.getConstrsForTerm
d_getConstrsForTerm_816 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_getConstrsForTerm_816 ~v0 v1 v2 v3 ~v4 v5
  = du_getConstrsForTerm_816 v1 v2 v3 v5
du_getConstrsForTerm_816 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_getConstrsForTerm_816 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__34 (coe v0)
      (coe ()) (coe ())
      (coe du_getConstrsForType_808 (coe v0) (coe v1) (coe v2))
      (coe d_inferType_140 v2 v3)
-- Class.MonadTC._.withPattern
d_withPattern_820 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny -> AgdaAny
d_withPattern_820 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_withPattern_820 v1 v4 v5 v6 v7
du_withPattern_820 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny -> AgdaAny
du_withPattern_820 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
      (MAlonzo.Code.Class.Applicative.Core.d_super_20
         (coe MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v0)))
      () erased () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 (coe v2)
         (coe v3))
      (coe du_extendContext''_714 (coe v1) (coe ()) (coe v2) (coe v4))
-- Class.MonadTC._.unifyWithGoal
d_unifyWithGoal_828 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unifyWithGoal_828 ~v0 v1 v2 v3 v4 v5
  = du_unifyWithGoal_828 v1 v2 v3 v4 v5
du_unifyWithGoal_828 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_unifyWithGoal_828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
         (coe v3) (coe ()) (coe (\ v5 -> d_goal_56 (coe v5))))
      (\ v5 ->
         let v6
               = coe
                   du_error1_736 (coe v1) (coe ())
                   (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                   (coe ("unifyWithGoal: Goal is not a term!" :: Data.Text.Text)) in
         coe
           (case coe v5 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
                -> coe d_unify_136 v2 v7 v4
              _ -> coe v6))
-- Class.MonadTC._.runWithHole
d_runWithHole_836 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
d_runWithHole_836 ~v0 v1 v2 ~v3 v4 = du_runWithHole_836 v1 v2 v4
du_runWithHole_836 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
du_runWithHole_836 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         coe
           C_constructor_66 (coe d_normalisation_44 (coe v3))
           (coe d_reconstruction_46 (coe v3))
           (coe d_noConstraints_48 (coe v3)) (coe d_reduction_50 (coe v3))
           (coe d_globalContext_52 (coe v3)) (coe d_localContext_54 (coe v3))
           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2))
           (coe d_options_58 (coe v3)))
-- Class.MonadTC._.runWithGoalTy
d_runWithGoalTy_842 ::
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
d_runWithGoalTy_842 ~v0 v1 v2 ~v3 v4
  = du_runWithGoalTy_842 v1 v2 v4
du_runWithGoalTy_842 ::
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
du_runWithGoalTy_842 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadReader.d_local_44 v0 v1 erased
      (\ v3 ->
         coe
           C_constructor_66 (coe d_normalisation_44 (coe v3))
           (coe d_reconstruction_46 (coe v3))
           (coe d_noConstraints_48 (coe v3)) (coe d_reduction_50 (coe v3))
           (coe d_globalContext_52 (coe v3)) (coe d_localContext_54 (coe v3))
           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v2))
           (coe d_options_58 (coe v3)))
-- Class.MonadTC._.goalHole
d_goalHole_848 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
d_goalHole_848 ~v0 v1 ~v2 v3 v4 = du_goalHole_848 v1 v3 v4
du_goalHole_848 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_goalHole_848 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadReader.du_reader_50 (coe ()) (coe v0)
         (coe v2) (coe ()) (coe (\ v3 -> d_goal_56 (coe v3))))
      (\ v3 ->
         case coe v3 of
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
             -> coe MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased v4
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
             -> coe du_newMeta_398 v1 v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Class.MonadTC._.withGoalHole
d_withGoalHole_856 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
d_withGoalHole_856 ~v0 v1 ~v2 v3 v4 v5
  = du_withGoalHole_856 v1 v3 v4 v5
du_withGoalHole_856 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
du_withGoalHole_856 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
      erased (coe du_goalHole_848 (coe v0) (coe v1) (coe v2))
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'62''62'__26 (coe v0) (coe ())
           (coe ())
           (coe
              MAlonzo.Code.Class.MonadReader.d_local_44 v2 () erased
              (\ v5 ->
                 coe
                   C_constructor_66 (coe d_normalisation_44 (coe v5))
                   (coe d_reconstruction_46 (coe v5))
                   (coe d_noConstraints_48 (coe v5)) (coe d_reduction_50 (coe v5))
                   (coe d_globalContext_52 (coe v5)) (coe d_localContext_54 (coe v5))
                   (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v4))
                   (coe d_options_58 (coe v5)))
              v3)
           (coe MAlonzo.Code.Class.Monad.Core.d_return_22 v0 () erased v4))
-- Class.MonadTC._.findInstances
d_findInstances_862 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_findInstances_862 ~v0 v1 v2 v3 v4 v5
  = du_findInstances_862 v1 v2 v3 v4 v5
du_findInstances_862 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_findInstances_862 v0 v1 v2 v3 v4
  = coe
      du_runAndReset_188 (coe v0) (coe v2) (coe ())
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24 v0 () erased ()
         erased
         (coe
            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
            (MAlonzo.Code.Class.Applicative.Core.d_super_20
               (coe MAlonzo.Code.Class.Monad.Core.d_super_20 (coe v0)))
            () erased () erased
            (coe du_findMeta_870 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe du_newMeta_398 v2 v4))
         (\ v5 ->
            let v6
                  = coe
                      du_error1_736 (coe v1) (coe ())
                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                      (coe
                         ("[findInstances] newMeta did not produce meta-variable!"
                          ::
                          Data.Text.Text)) in
            coe
              (case coe v5 of
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                   -> coe d_getInstances_178 v2 v7
                 _ -> coe v6)))
-- Class.MonadTC._._.findMeta
d_findMeta_870 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_findMeta_870 ~v0 v1 v2 v3 v4 v5 = du_findMeta_870 v1 v2 v3 v4 v5
du_findMeta_870 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
du_findMeta_870 v0 v1 v2 v3 v4
  = coe
      du_'46'extendedlambda10_872 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
-- Class.MonadTC._._..extendedlambda10
d_'46'extendedlambda10_872 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_'46'extendedlambda10_872 ~v0 v1 v2 v3 v4 v5 v6
  = du_'46'extendedlambda10_872 v1 v2 v3 v4 v5 v6
du_'46'extendedlambda10_872 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  T_MonadTC_84 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
du_'46'extendedlambda10_872 v0 v1 v2 v3 v4 v5
  = let v6 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v9 v10
                  -> coe du_findMeta_870 v0 v1 v2 v3 v4 v10
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v7 v8
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v9 v10
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                         -> coe
                              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
                              (coe du_findMeta_870 v0 v1 v2 v3 v4 v10)
                              (coe du_findMeta_870 v0 v1 v2 v3 v4 v12)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v7 v8
           -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v7)
         _ -> coe v6)
-- Class.MonadTC.MonadTC-TC
d_MonadTC'45'TC_886 :: T_MonadTC_84
d_MonadTC'45'TC_886
  = coe
      C_constructor_400
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_346)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_350)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_reduce_352)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unquoteTC_370)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_quoteωTC_374)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_390)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_declareDef_392)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_declarePostulate_394)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_404)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_406)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_408)
      (\ v0 v1 v2 ->
         coe MAlonzo.Code.Agda.Builtin.Reflection.du_blockOnMeta_628 v0 v2)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_commitTC_416)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_isMacro_418)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_debugPrint_462)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_runSpeculative_482)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getInstances_484)
