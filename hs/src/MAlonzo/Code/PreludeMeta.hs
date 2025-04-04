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

module MAlonzo.Code.PreludeMeta where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadTC

-- PreludeMeta._.blockOnMeta
d_blockOnMeta_4 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_blockOnMeta_4 v0
  = coe MAlonzo.Code.Class.MonadTC.d_blockOnMeta_164 (coe v0)
-- PreludeMeta._.checkType
d_checkType_6 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_checkType_6 v0
  = coe MAlonzo.Code.Class.MonadTC.d_checkType_138 (coe v0)
-- PreludeMeta._.commitTC
d_commitTC_8 :: MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny
d_commitTC_8 v0
  = coe MAlonzo.Code.Class.MonadTC.d_commitTC_166 (coe v0)
-- PreludeMeta._.debugPrint
d_debugPrint_10 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_debugPrint_10 v0
  = coe MAlonzo.Code.Class.MonadTC.d_debugPrint_170 (coe v0)
-- PreludeMeta._.declareAndDefineFun
d_declareAndDefineFun_12 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_declareAndDefineFun_12 ~v0 v1 ~v2 v3
  = du_declareAndDefineFun_12 v1 v3
du_declareAndDefineFun_12 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_declareAndDefineFun_12 v0 v1
  = coe
      MAlonzo.Code.Class.MonadTC.du_declareAndDefineFun_386 (coe v0)
      (coe v1)
-- PreludeMeta._.declareAndDefineFuns
d_declareAndDefineFuns_14 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFuns_14 ~v0 v1 ~v2 v3
  = du_declareAndDefineFuns_14 v1 v3
du_declareAndDefineFuns_14 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFuns_14 v0 v1
  = coe
      MAlonzo.Code.Class.MonadTC.du_declareAndDefineFuns_336 (coe v0)
      (coe v1)
-- PreludeMeta._.declareAndDefineFunsDebug
d_declareAndDefineFunsDebug_16 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_declareAndDefineFunsDebug_16 ~v0 v1 v2 v3
  = du_declareAndDefineFunsDebug_16 v1 v2 v3
du_declareAndDefineFunsDebug_16 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_declareAndDefineFunsDebug_16 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_declareAndDefineFunsDebug_352
      (coe v0) (coe v1) (coe v2)
-- PreludeMeta._.declareDef
d_declareDef_18 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declareDef_18 v0
  = coe MAlonzo.Code.Class.MonadTC.d_declareDef_154 (coe v0)
-- PreludeMeta._.declarePostulate
d_declarePostulate_20 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_declarePostulate_20 v0
  = coe MAlonzo.Code.Class.MonadTC.d_declarePostulate_156 (coe v0)
-- PreludeMeta._.defineFun
d_defineFun_22 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_defineFun_22 v0
  = coe MAlonzo.Code.Class.MonadTC.d_defineFun_158 (coe v0)
-- PreludeMeta._.freshName
d_freshName_24 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_freshName_24 v0
  = coe MAlonzo.Code.Class.MonadTC.d_freshName_152 (coe v0)
-- PreludeMeta._.getDefinition
d_getDefinition_26 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
d_getDefinition_26 v0
  = coe MAlonzo.Code.Class.MonadTC.d_getDefinition_162 (coe v0)
-- PreludeMeta._.getInstances
d_getInstances_28 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
d_getInstances_28 v0
  = coe MAlonzo.Code.Class.MonadTC.d_getInstances_174 (coe v0)
-- PreludeMeta._.getType
d_getType_30 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
d_getType_30 v0
  = coe MAlonzo.Code.Class.MonadTC.d_getType_160 (coe v0)
-- PreludeMeta._.hasUnsolvedMetas
d_hasUnsolvedMetas_32 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasUnsolvedMetas_32 ~v0 v1 v2 v3
  = du_hasUnsolvedMetas_32 v1 v2 v3
du_hasUnsolvedMetas_32 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_hasUnsolvedMetas_32 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_hasUnsolvedMetas_248 (coe v0)
      (coe v1) (coe v2)
-- PreludeMeta._.hasUnsolvedMetas'
d_hasUnsolvedMetas''_34 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_hasUnsolvedMetas''_34 ~v0 v1 v2 v3
  = du_hasUnsolvedMetas''_34 v1 v2 v3
du_hasUnsolvedMetas''_34 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_hasUnsolvedMetas''_34 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_hasUnsolvedMetas''_250 (coe v0)
      (coe v1) (coe v2)
-- PreludeMeta._.hasUnsolvedMetasCl
d_hasUnsolvedMetasCl_36 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_hasUnsolvedMetasCl_36 ~v0 v1 v2 v3
  = du_hasUnsolvedMetasCl_36 v1 v2 v3
du_hasUnsolvedMetasCl_36 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_hasUnsolvedMetasCl_36 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_hasUnsolvedMetasCl_252 (coe v0)
      (coe v1) (coe v2)
-- PreludeMeta._.hasUnsolvedMetasTel
d_hasUnsolvedMetasTel_38 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hasUnsolvedMetasTel_38 ~v0 v1 v2 v3
  = du_hasUnsolvedMetasTel_38 v1 v2 v3
du_hasUnsolvedMetasTel_38 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_hasUnsolvedMetasTel_38 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_hasUnsolvedMetasTel_254 (coe v0)
      (coe v1) (coe v2)
-- PreludeMeta._.inferType
d_inferType_40 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_inferType_40 v0
  = coe MAlonzo.Code.Class.MonadTC.d_inferType_136 (coe v0)
-- PreludeMeta._.isCon
d_isCon_42 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
d_isCon_42 ~v0 v1 ~v2 v3 = du_isCon_42 v1 v3
du_isCon_42 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
du_isCon_42 v0 v1
  = coe MAlonzo.Code.Class.MonadTC.du_isCon_202 (coe v0) (coe v1)
-- PreludeMeta._.isDef
d_isDef_44 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
d_isDef_44 ~v0 v1 ~v2 v3 = du_isDef_44 v1 v3
du_isDef_44 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
du_isDef_44 v0 v1
  = coe MAlonzo.Code.Class.MonadTC.du_isDef_196 (coe v0) (coe v1)
-- PreludeMeta._.isMacro
d_isMacro_46 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
d_isMacro_46 v0
  = coe MAlonzo.Code.Class.MonadTC.d_isMacro_168 (coe v0)
-- PreludeMeta._.isSolvedMeta
d_isSolvedMeta_48 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_isSolvedMeta_48 ~v0 v1 v2 v3 = du_isSolvedMeta_48 v1 v2 v3
du_isSolvedMeta_48 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_isSolvedMeta_48 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSolvedMeta_234 (coe v0) (coe v1)
      (coe v2)
-- PreludeMeta._.isSuccessful
d_isSuccessful_50 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_isSuccessful_50 ~v0 v1 v2 v3 = du_isSuccessful_50 v1 v2 v3
du_isSuccessful_50 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_isSuccessful_50 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSuccessful_190 (coe v0) (coe v1)
      (coe v2) v3 v5
-- PreludeMeta._.mkRecord
d_mkRecord_52 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_mkRecord_52 ~v0 v1 v2 v3 = du_mkRecord_52 v1 v2 v3
du_mkRecord_52 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_mkRecord_52 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_mkRecord_224 (coe v0) (coe v1)
      (coe v2)
-- PreludeMeta._.nameConstr
d_nameConstr_54 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_nameConstr_54 ~v0 v1 v2 v3 = du_nameConstr_54 v1 v2 v3
du_nameConstr_54 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_nameConstr_54 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_nameConstr_208 (coe v0) (coe v1)
      (coe v2)
-- PreludeMeta._.newMeta
d_newMeta_56 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_newMeta_56 ~v0 ~v1 ~v2 v3 = du_newMeta_56 v3
du_newMeta_56 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_newMeta_56 v0
  = coe MAlonzo.Code.Class.MonadTC.du_newMeta_394 (coe v0)
-- PreludeMeta._.normalise
d_normalise_58 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_normalise_58 v0
  = coe MAlonzo.Code.Class.MonadTC.d_normalise_140 (coe v0)
-- PreludeMeta._.quoteTC
d_quoteTC_60 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_quoteTC_60 v0
  = coe MAlonzo.Code.Class.MonadTC.d_quoteTC_144 (coe v0)
-- PreludeMeta._.quoteωTC
d_quoteωTC_62 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> () -> AgdaAny -> AgdaAny
d_quoteωTC_62 v0
  = coe MAlonzo.Code.Class.MonadTC.d_quoteωTC_150 (coe v0)
-- PreludeMeta._.reduce
d_reduce_64 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduce_64 v0
  = coe MAlonzo.Code.Class.MonadTC.d_reduce_142 (coe v0)
-- PreludeMeta._.runAndReset
d_runAndReset_66 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runAndReset_66 ~v0 v1 ~v2 v3 = du_runAndReset_66 v1 v3
du_runAndReset_66 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
du_runAndReset_66 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.MonadTC.du_runAndReset_184 (coe v0) (coe v1) v2
      v4
-- PreludeMeta._.runSpeculative
d_runSpeculative_68 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_runSpeculative_68 v0
  = coe MAlonzo.Code.Class.MonadTC.d_runSpeculative_172 (coe v0)
-- PreludeMeta._.termFromName
d_termFromName_70 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
d_termFromName_70 ~v0 v1 v2 v3 = du_termFromName_70 v1 v2 v3
du_termFromName_70 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 -> AgdaAny -> AgdaAny
du_termFromName_70 v0 v1 v2
  = coe
      MAlonzo.Code.Class.MonadTC.du_termFromName_220 (coe v0) (coe v1)
      (coe v2)
-- PreludeMeta._.typeError
d_typeError_72 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] -> AgdaAny
d_typeError_72 v0
  = coe MAlonzo.Code.Class.MonadTC.d_typeError_134 (coe v0)
-- PreludeMeta._.unify
d_unify_74 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unify_74 v0 = coe MAlonzo.Code.Class.MonadTC.d_unify_132 (coe v0)
-- PreludeMeta._.unquoteTC
d_unquoteTC_76 ::
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_unquoteTC_76 v0
  = coe MAlonzo.Code.Class.MonadTC.d_unquoteTC_146 (coe v0)
-- PreludeMeta._.catch
d_catch_80 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_catch_80 v0
  = coe MAlonzo.Code.Class.MonadError.d_catch_28 (coe v0)
-- PreludeMeta._.error
d_error_82 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_error_82 v0
  = coe MAlonzo.Code.Class.MonadError.d_error_26 (coe v0)
-- PreludeMeta.iTC
d_iTC_84 :: MAlonzo.Code.Class.MonadTC.T_MonadTC_80
d_iTC_84 = coe MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_878
-- PreludeMeta.iTCE
d_iTCE_86 :: MAlonzo.Code.Class.MonadError.T_MonadError_16
d_iTCE_86 = coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30
