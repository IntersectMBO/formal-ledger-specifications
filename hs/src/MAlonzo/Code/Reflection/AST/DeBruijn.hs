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

module MAlonzo.Code.Reflection.AST.DeBruijn where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Effectful
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Function.Identity.Effectful
import qualified MAlonzo.Code.Reflection.AST.Traversal

-- Reflection.AST.DeBruijn._._.Action
d_Action_16 :: () -> ()
d_Action_16 = erased
-- Reflection.AST.DeBruijn._._.Actions
d_Actions_18 = ()
-- Reflection.AST.DeBruijn._._.Cxt
d_Cxt_22 = ()
-- Reflection.AST.DeBruijn._._.defaultActions
d_defaultActions_26 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_defaultActions_26
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_defaultActions_96
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseAbs
d_traverseAbs_28 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
d_traverseAbs_28
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseAbs_126
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseArg
d_traverseArg_30 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_traverseArg_30
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArg_122
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseArgs
d_traverseArgs_32 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_traverseArgs_32
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_120
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseClause
d_traverseClause_34 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_traverseClause_34
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClause_130
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseClauses
d_traverseClauses_36 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_traverseClauses_36
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_128
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traversePats
d_traversePats_38 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_traversePats_38
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traversePats_124
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traversePattern
d_traversePattern_40 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_traversePattern_40
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traversePattern_118
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseSort
d_traverseSort_42 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_traverseSort_42
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseSort_116
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseTel
d_traverseTel_44 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_traverseTel_44
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTel_132
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseTerm
d_traverseTerm_46 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_traverseTerm_46
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_114
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.Actions.onCon
d_onCon_50 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> AgdaAny
d_onCon_50 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onCon_90 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onDef
d_onDef_52 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> AgdaAny
d_onDef_52 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onDef_92 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onMeta
d_onMeta_54 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> AgdaAny
d_onMeta_54 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onMeta_88 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onVar
d_onVar_56 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Integer
d_onVar_56 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onVar_86 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.context
d_context_60 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_60 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_context_52 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.len
d_len_62 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer
d_len_62 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_len_50 (coe v0)
-- Reflection.AST.DeBruijn._.wkVar
d_wkVar_64 ::
  Integer ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Integer
d_wkVar_64 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 v3 v4
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
             (coe ltInt (coe v2) (coe v3)) (coe v2)
             (coe addInt (coe v0) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.DeBruijn._.actions
d_actions_72 ::
  Integer -> MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_actions_72 v0
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.C_constructor_94
      (coe d_wkVar_64 (coe v0)) (coe (\ v1 v2 -> v2))
      (coe (\ v1 v2 -> v2)) (coe (\ v1 v2 -> v2))
-- Reflection.AST.DeBruijn._.weakenFrom′
d_weakenFrom'8242'_80 ::
  () ->
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> AgdaAny) ->
  Integer -> Integer -> AgdaAny -> AgdaAny
d_weakenFrom'8242'_80 ~v0 v1 v2 v3
  = du_weakenFrom'8242'_80 v1 v2 v3
du_weakenFrom'8242'_80 ::
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> AgdaAny) ->
  Integer -> Integer -> AgdaAny -> AgdaAny
du_weakenFrom'8242'_80 v0 v1 v2
  = coe
      v0 (d_actions_72 (coe v2))
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Reflection.AST.DeBruijn._.weakenFrom
d_weakenFrom_92 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_weakenFrom_92
  = coe
      du_weakenFrom'8242'_80
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_114
         (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16))
-- Reflection.AST.DeBruijn._.weaken
d_weaken_96 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_weaken_96 = coe d_weakenFrom_92 (0 :: Integer)
-- Reflection.AST.DeBruijn._.weakenArgs
d_weakenArgs_100 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_weakenArgs_100
  = coe
      du_weakenFrom'8242'_80
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_120
         (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16))
      (coe (0 :: Integer))
-- Reflection.AST.DeBruijn._.weakenClauses
d_weakenClauses_104 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_weakenClauses_104
  = coe
      du_weakenFrom'8242'_80
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_128
         (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16))
      (coe (0 :: Integer))
-- Reflection.AST.DeBruijn.η
d_η_106 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  ([MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_η_106 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
         (coe ("x" :: Data.Text.Text))
         (coe
            v1
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe d_weakenArgs_100 (1 :: Integer) v2)
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 (coe v0)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Reflection.AST.DeBruijn.η-expand
d_η'45'expand_114 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_η'45'expand_114 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v2 v3
        -> coe
             d_η_106 (coe v0)
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                (coe addInt (coe (1 :: Integer)) (coe v2)))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
        -> coe
             d_η_106 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
        -> coe
             d_η_106 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v2 v3 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v2 v3
        -> coe
             d_η_106 (coe v0)
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                (coe d_weakenClauses_104 (1 :: Integer) v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v2
        -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v2 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v2 v3
        -> coe
             d_η_106 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.DeBruijn._._.Action
d_Action_174 :: () -> ()
d_Action_174 = erased
-- Reflection.AST.DeBruijn._._.Actions
d_Actions_176 = ()
-- Reflection.AST.DeBruijn._._.Cxt
d_Cxt_180 = ()
-- Reflection.AST.DeBruijn._._.defaultActions
d_defaultActions_184 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_defaultActions_184
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_defaultActions_96
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseAbs
d_traverseAbs_186 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
d_traverseAbs_186
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseAbs_126
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseArg
d_traverseArg_188 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_traverseArg_188
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArg_122
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseArgs
d_traverseArgs_190 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_traverseArgs_190
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_120
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseClause
d_traverseClause_192 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_traverseClause_192
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClause_130
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseClauses
d_traverseClauses_194 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_traverseClauses_194
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_128
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traversePats
d_traversePats_196 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_traversePats_196
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traversePats_124
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traversePattern
d_traversePattern_198 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_traversePattern_198
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traversePattern_118
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseSort
d_traverseSort_200 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_traverseSort_200
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseSort_116
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseTel
d_traverseTel_202 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_traverseTel_202
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTel_132
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseTerm
d_traverseTerm_204 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_traverseTerm_204
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_114
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.Actions.onCon
d_onCon_208 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> Maybe AgdaAny
d_onCon_208 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onCon_90 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onDef
d_onDef_210 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> Maybe AgdaAny
d_onDef_210 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onDef_92 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onMeta
d_onMeta_212 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> Maybe AgdaAny
d_onMeta_212 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onMeta_88 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onVar
d_onVar_214 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Maybe Integer
d_onVar_214 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onVar_86 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.context
d_context_218 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_218 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_context_52 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.len
d_len_220 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer
d_len_220 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_len_50 (coe v0)
-- Reflection.AST.DeBruijn._.strVar
d_strVar_222 ::
  Integer ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Maybe Integer
d_strVar_222 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 v3 v4
        -> let v5 = ltInt (coe v2) (coe v3) in
           coe
             (let v6 = ltInt (coe v2) (coe addInt (coe v0) (coe v3)) in
              coe
                (let v7
                       = let v7
                               = coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v0) in
                         coe
                           (case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              _ -> coe v7) in
                 coe
                   (case coe v5 of
                      MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                      _ -> coe v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.DeBruijn._.actions
d_actions_260 ::
  Integer -> MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_actions_260 v0
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.C_constructor_94
      (coe d_strVar_222 (coe v0))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
-- Reflection.AST.DeBruijn._.strengthenFromBy′
d_strengthenFromBy'8242'_268 ::
  () ->
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> Maybe AgdaAny) ->
  Integer -> Integer -> AgdaAny -> Maybe AgdaAny
d_strengthenFromBy'8242'_268 ~v0 v1 v2 v3
  = du_strengthenFromBy'8242'_268 v1 v2 v3
du_strengthenFromBy'8242'_268 ::
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> Maybe AgdaAny) ->
  Integer -> Integer -> AgdaAny -> Maybe AgdaAny
du_strengthenFromBy'8242'_268 v0 v1 v2
  = coe
      v0 (d_actions_260 (coe v2))
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Reflection.AST.DeBruijn._.strengthenFromBy
d_strengthenFromBy_280 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthenFromBy_280
  = coe
      du_strengthenFromBy'8242'_268
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_114
         (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24))
-- Reflection.AST.DeBruijn._.strengthenBy
d_strengthenBy_284 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthenBy_284 = coe d_strengthenFromBy_280 (0 :: Integer)
-- Reflection.AST.DeBruijn._.strengthenFrom
d_strengthenFrom_288 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthenFrom_288 v0
  = coe d_strengthenFromBy_280 v0 (1 :: Integer)
-- Reflection.AST.DeBruijn._.strengthen
d_strengthen_292 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthen_292
  = coe d_strengthenFromBy_280 (0 :: Integer) (1 :: Integer)
-- Reflection.AST.DeBruijn._.anyApplicative
d_anyApplicative_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
d_anyApplicative_302 ~v0 = du_anyApplicative_302
du_anyApplicative_302 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
du_anyApplicative_302
  = coe
      MAlonzo.Code.Effect.Applicative.du_mkRawApplicative_96
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe (\ v0 v1 -> MAlonzo.Code.Data.Bool.Base.d__'8744'__30))
-- Reflection.AST.DeBruijn._._.Action
d_Action_310 :: () -> ()
d_Action_310 = erased
-- Reflection.AST.DeBruijn._._.Actions
d_Actions_312 = ()
-- Reflection.AST.DeBruijn._._.Cxt
d_Cxt_316 = ()
-- Reflection.AST.DeBruijn._._.defaultActions
d_defaultActions_320 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_defaultActions_320
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_defaultActions_96
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseAbs
d_traverseAbs_322 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 -> Bool
d_traverseAbs_322
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseAbs_126
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseArg
d_traverseArg_324 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> Bool
d_traverseArg_324
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArg_122
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseArgs
d_traverseArgs_326 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
d_traverseArgs_326
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_120
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseClause
d_traverseClause_328 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> Bool
d_traverseClause_328
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClause_130
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseClauses
d_traverseClauses_330 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> Bool
d_traverseClauses_330
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_128
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traversePats
d_traversePats_332 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
d_traversePats_332
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traversePats_124
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traversePattern
d_traversePattern_334 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> Bool
d_traversePattern_334
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traversePattern_118
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseSort
d_traverseSort_336 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 -> Bool
d_traverseSort_336
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseSort_116
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseTel
d_traverseTel_338 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_traverseTel_338
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTel_132
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.traverseTerm
d_traverseTerm_340 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_traverseTerm_340
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_114
      (coe du_anyApplicative_302)
-- Reflection.AST.DeBruijn._._.Actions.onCon
d_onCon_344 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> AgdaAny -> Bool
d_onCon_344 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onCon_90 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onDef
d_onDef_346 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> AgdaAny -> Bool
d_onDef_346 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onDef_92 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onMeta
d_onMeta_348 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> AgdaAny -> Bool
d_onMeta_348 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onMeta_88 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onVar
d_onVar_350 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer -> Bool
d_onVar_350 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onVar_86 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.context
d_context_354 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_354 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_context_52 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.len
d_len_356 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer
d_len_356 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_len_50 (coe v0)
-- Reflection.AST.DeBruijn._.fvVar
d_fvVar_358 ::
  Integer ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer -> Bool
d_fvVar_358 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 v3 v4
        -> coe eqInt (coe addInt (coe v0) (coe v3)) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.DeBruijn._.actions
d_actions_366 ::
  Integer -> MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_actions_366 v0
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.C_constructor_94
      (coe d_fvVar_358 (coe v0))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe du_anyApplicative_302) erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe du_anyApplicative_302) erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe du_anyApplicative_302) erased))
-- Reflection.AST.DeBruijn._._∈FV_
d__'8712'FV__370 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d__'8712'FV__370 v0 v1
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_114
      (coe du_anyApplicative_302) (coe d_actions_366 (coe v0))
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54
         (coe (0 :: Integer))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe v1)
