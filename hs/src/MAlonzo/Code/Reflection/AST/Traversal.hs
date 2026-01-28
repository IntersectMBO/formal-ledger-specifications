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

module MAlonzo.Code.Reflection.AST.Traversal where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Functor

-- Reflection.AST.Traversal.Cxt
d_Cxt_44 a0 a1 = ()
data T_Cxt_44
  = C__'44'__54 Integer [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Reflection.AST.Traversal.Cxt.len
d_len_50 :: T_Cxt_44 -> Integer
d_len_50 v0
  = case coe v0 of
      C__'44'__54 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal.Cxt.context
d_context_52 ::
  T_Cxt_44 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_52 v0
  = case coe v0 of
      C__'44'__54 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._∷cxt_
d__'8759'cxt__56 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Cxt_44 -> T_Cxt_44
d__'8759'cxt__56 ~v0 ~v1 v2 v3 = du__'8759'cxt__56 v2 v3
du__'8759'cxt__56 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Cxt_44 -> T_Cxt_44
du__'8759'cxt__56 v0 v1
  = case coe v1 of
      C__'44'__54 v2 v3
        -> coe
             C__'44'__54 (coe addInt (coe (1 :: Integer)) (coe v2))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._++cxt_
d__'43''43'cxt__64 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> T_Cxt_44 -> T_Cxt_44
d__'43''43'cxt__64 ~v0 ~v1 v2 v3 = du__'43''43'cxt__64 v2 v3
du__'43''43'cxt__64 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> T_Cxt_44 -> T_Cxt_44
du__'43''43'cxt__64 v0 v1
  = case coe v1 of
      C__'44'__54 v2 v3
        -> coe
             C__'44'__54
             (coe
                addInt (coe MAlonzo.Code.Data.List.Base.du_length_268 v0) (coe v2))
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal.Action
d_Action_72 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 -> () -> ()
d_Action_72 = erased
-- Reflection.AST.Traversal.Actions
d_Actions_76 a0 a1 = ()
data T_Actions_76
  = C_constructor_94 (T_Cxt_44 -> Integer -> AgdaAny)
                     (T_Cxt_44 -> AgdaAny -> AgdaAny) (T_Cxt_44 -> AgdaAny -> AgdaAny)
                     (T_Cxt_44 -> AgdaAny -> AgdaAny)
-- Reflection.AST.Traversal.Actions.onVar
d_onVar_86 :: T_Actions_76 -> T_Cxt_44 -> Integer -> AgdaAny
d_onVar_86 v0
  = case coe v0 of
      C_constructor_94 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal.Actions.onMeta
d_onMeta_88 :: T_Actions_76 -> T_Cxt_44 -> AgdaAny -> AgdaAny
d_onMeta_88 v0
  = case coe v0 of
      C_constructor_94 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal.Actions.onCon
d_onCon_90 :: T_Actions_76 -> T_Cxt_44 -> AgdaAny -> AgdaAny
d_onCon_90 v0
  = case coe v0 of
      C_constructor_94 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal.Actions.onDef
d_onDef_92 :: T_Actions_76 -> T_Cxt_44 -> AgdaAny -> AgdaAny
d_onDef_92 v0
  = case coe v0 of
      C_constructor_94 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal.defaultActions
d_defaultActions_96 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 -> T_Actions_76
d_defaultActions_96 ~v0 v1 = du_defaultActions_96 v1
du_defaultActions_96 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 -> T_Actions_76
du_defaultActions_96 v0
  = coe
      C_constructor_94
      (coe
         (\ v1 -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased))
      (coe
         (\ v1 -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased))
      (coe
         (\ v1 -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased))
      (coe
         (\ v1 -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased))
-- Reflection.AST.Traversal._._.onCon
d_onCon_106 :: T_Actions_76 -> T_Cxt_44 -> AgdaAny -> AgdaAny
d_onCon_106 v0 = coe d_onCon_90 (coe v0)
-- Reflection.AST.Traversal._._.onDef
d_onDef_108 :: T_Actions_76 -> T_Cxt_44 -> AgdaAny -> AgdaAny
d_onDef_108 v0 = coe d_onDef_92 (coe v0)
-- Reflection.AST.Traversal._._.onMeta
d_onMeta_110 :: T_Actions_76 -> T_Cxt_44 -> AgdaAny -> AgdaAny
d_onMeta_110 v0 = coe d_onMeta_88 (coe v0)
-- Reflection.AST.Traversal._._.onVar
d_onVar_112 :: T_Actions_76 -> T_Cxt_44 -> Integer -> AgdaAny
d_onVar_112 v0 = coe d_onVar_86 (coe v0)
-- Reflection.AST.Traversal._.traverseTerm
d_traverseTerm_114 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_traverseTerm_114 ~v0 v1 v2 v3 v4
  = du_traverseTerm_114 v1 v2 v3 v4
du_traverseTerm_114 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_traverseTerm_114 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_172)
                (coe d_onVar_86 v1 v2 v4))
             (coe du_traverseArgs_120 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_178)
                (coe d_onCon_90 v1 v2 v4))
             (coe du_traverseArgs_120 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_def_184)
                (coe d_onDef_92 v1 v2 v4))
             (coe du_traverseArgs_120 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v4 v5
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v4))
             (coe
                du_traverseAbs_126 (coe v0) (coe v1)
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 (coe v4)
                      (coe du_m_192))
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196)
                (coe du_traverseClauses_128 (coe v0) (coe v1) (coe v2) (coe v4)))
             (coe du_traverseArgs_120 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202)
                (coe du_traverseArg_122 (coe v0) (coe v1) (coe v2) (coe v4)))
             (coe
                du_traverseAbs_126 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v4
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206)
             (coe du_traverseSort_116 (coe v0) (coe v1) (coe v2) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v4
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214)
                (coe d_onMeta_88 v1 v2 v4))
             (coe du_traverseArgs_120 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traverseSort
d_traverseSort_116 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 -> AgdaAny
d_traverseSort_116 ~v0 v1 v2 v3 v4
  = du_traverseSort_116 v1 v2 v3 v4
du_traverseSort_116 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 -> AgdaAny
du_traverseSort_116 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v4
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_set_220)
             (coe du_traverseTerm_114 (coe v0) (coe v1) (coe v2) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_224 v4
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228 v4
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228)
             (coe du_traverseTerm_114 (coe v0) (coe v1) (coe v2) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_232 v4
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_236 v4
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_238
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traversePattern
d_traversePattern_118 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> AgdaAny
d_traversePattern_118 ~v0 v1 v2 v3 v4
  = du_traversePattern_118 v1 v2 v3 v4
du_traversePattern_118 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> AgdaAny
du_traversePattern_118 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_244)
                (coe d_onCon_90 v1 v2 v4))
             (coe du_traversePats_124 (coe v0) (coe v1) (coe v2) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248 v4
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248)
             (coe du_traverseTerm_114 (coe v0) (coe v1) (coe v2) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 v4
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_252)
             (coe d_onVar_86 v1 v2 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_256 v4
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 v4
        -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264 v4
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264)
             (coe d_onVar_86 v1 v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traverseArgs
d_traverseArgs_120 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_traverseArgs_120 ~v0 v1 v2 v3 v4
  = du_traverseArgs_120 v1 v2 v3 v4
du_traverseArgs_120 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_traverseArgs_120 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
                (coe du_traverseArg_122 (coe v0) (coe v1) (coe v2) (coe v4)))
             (coe du_traverseArgs_120 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traverseArg
d_traverseArg_122 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny
d_traverseArg_122 ~v0 v1 v2 v3 v4 = du_traverseArg_122 v1 v2 v3 v4
du_traverseArg_122 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny
du_traverseArg_122 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4))
             (coe du_traverseTerm_114 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traversePats
d_traversePats_124 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_traversePats_124 ~v0 v1 v2 v3 v4
  = du_traversePats_124 v1 v2 v3 v4
du_traversePats_124 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
du_traversePats_124 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
               -> coe
                    MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
                    (coe
                       MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                       (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                       erased
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v6) (coe v8)))
                       (coe du_traversePattern_118 (coe v0) (coe v1) (coe v2) (coe v7)))
                    (coe du_traversePats_124 (coe v0) (coe v1) (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traverseAbs
d_traverseAbs_126 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 -> AgdaAny
d_traverseAbs_126 ~v0 v1 v2 v3 v4 v5
  = du_traverseAbs_126 v1 v2 v3 v4 v5
du_traverseAbs_126 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 -> AgdaAny
du_traverseAbs_126 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
        -> coe
             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
             erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v5))
             (coe
                du_traverseTerm_114 (coe v0) (coe v1)
                (coe
                   du__'8759'cxt__56
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v2))
                   (coe v3))
                (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traverseClauses
d_traverseClauses_128 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
d_traverseClauses_128 ~v0 v1 v2 v3 v4
  = du_traverseClauses_128 v1 v2 v3 v4
du_traverseClauses_128 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> AgdaAny
du_traverseClauses_128 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
                (coe du_traverseClause_130 (coe v0) (coe v1) (coe v2) (coe v4)))
             (coe du_traverseClauses_128 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traverseClause
d_traverseClause_130 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> AgdaAny
d_traverseClause_130 ~v0 v1 v2 v3 v4
  = du_traverseClause_130 v1 v2 v3 v4
du_traverseClause_130 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> AgdaAny
du_traverseClause_130 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v4 v5 v6
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
                (coe
                   MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                   (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                   erased (coe MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272)
                   (coe du_traverseTel_132 (coe v0) (coe v1) (coe v2) (coe v4)))
                (coe
                   du_traversePats_124 (coe v0) (coe v1)
                   (coe du_Γ'8242'_236 (coe v2) (coe v4)) (coe v5)))
             (coe
                du_traverseTerm_114 (coe v0) (coe v1)
                (coe du_Γ'8242'_236 (coe v2) (coe v4)) (coe v6))
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v4 v5
        -> coe
             MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
             (coe
                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                erased
                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278)
                (coe du_traverseTel_132 (coe v0) (coe v1) (coe v2) (coe v4)))
             (coe
                du_traversePats_124 (coe v0) (coe v1)
                (coe du_Γ'8242'_248 (coe v2) (coe v4)) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._.traverseTel
d_traverseTel_132 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_traverseTel_132 ~v0 v1 v2 v3 v4 = du_traverseTel_132 v1 v2 v3 v4
du_traverseTel_132 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_traverseTel_132 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Effect.Applicative.d_pure_32 v0 erased v3
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Effect.Applicative.du__'8859'__70 v0
                    (coe
                       MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                       (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30 (coe v0)) erased
                       erased
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v8)))
                       (coe du_traverseArg_122 (coe v0) (coe v1) (coe v2) (coe v7)))
                    (coe
                       du_traverseTel_132 (coe v0) (coe v1)
                       (coe du__'8759'cxt__56 (coe v4) (coe v2)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.Traversal._._.m
d_m_192 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68
d_m_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_m_192
du_m_192 :: MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68
du_m_192
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)
-- Reflection.AST.Traversal._._.Γ′
d_Γ'8242'_236 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> T_Cxt_44
d_Γ'8242'_236 ~v0 ~v1 ~v2 v3 v4 ~v5 ~v6 = du_Γ'8242'_236 v3 v4
du_Γ'8242'_236 ::
  T_Cxt_44 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> T_Cxt_44
du_Γ'8242'_236 v0 v1
  = coe
      du__'43''43'cxt__64
      (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v1) (coe v0)
-- Reflection.AST.Traversal._._.Γ′
d_Γ'8242'_248 ::
  (() -> ()) ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20 ->
  T_Actions_76 ->
  T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> T_Cxt_44
d_Γ'8242'_248 ~v0 ~v1 ~v2 v3 v4 ~v5 = du_Γ'8242'_248 v3 v4
du_Γ'8242'_248 ::
  T_Cxt_44 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> T_Cxt_44
du_Γ'8242'_248 v0 v1
  = coe
      du__'43''43'cxt__64
      (coe MAlonzo.Code.Data.List.Base.du_reverse_444 v1) (coe v0)
