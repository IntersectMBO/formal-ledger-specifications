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
d_Cxt_20 = ()
-- Reflection.AST.DeBruijn._._.defaultActions
d_defaultActions_22 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_defaultActions_22
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_defaultActions_94
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseArgs
d_traverseArgs_28 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_traverseArgs_28
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_118
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseClauses
d_traverseClauses_32 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_traverseClauses_32
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_126
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.traverseTerm
d_traverseTerm_42 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_traverseTerm_42
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_112
      (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
-- Reflection.AST.DeBruijn._._.Actions.onCon
d_onCon_46 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> AgdaAny
d_onCon_46 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onCon_90 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onDef
d_onDef_48 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> AgdaAny
d_onDef_48 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onDef_92 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onMeta
d_onMeta_50 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> AgdaAny
d_onMeta_50 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onMeta_88 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onVar
d_onVar_52 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Integer
d_onVar_52 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onVar_86 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.context
d_context_56 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_56 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_context_52 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.len
d_len_58 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer
d_len_58 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_len_50 (coe v0)
-- Reflection.AST.DeBruijn._.wkVar
d_wkVar_60 ::
  Integer ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Integer
d_wkVar_60 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 v3 v4
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
             (coe ltInt (coe v2) (coe v3)) (coe v2)
             (coe addInt (coe v0) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.DeBruijn._.actions
d_actions_68 ::
  Integer -> MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_actions_68 v0
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.C_Actions'46'constructor_1133
      (coe d_wkVar_60 (coe v0))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
              erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
              erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16)
              erased))
-- Reflection.AST.DeBruijn._.weakenFrom′
d_weakenFrom'8242'_76 ::
  () ->
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> AgdaAny) ->
  Integer -> Integer -> AgdaAny -> AgdaAny
d_weakenFrom'8242'_76 ~v0 v1 v2 v3
  = du_weakenFrom'8242'_76 v1 v2 v3
du_weakenFrom'8242'_76 ::
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> AgdaAny) ->
  Integer -> Integer -> AgdaAny -> AgdaAny
du_weakenFrom'8242'_76 v0 v1 v2
  = coe
      v0 (d_actions_68 (coe v2))
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Reflection.AST.DeBruijn._.weakenFrom
d_weakenFrom_88 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_weakenFrom_88
  = coe
      du_weakenFrom'8242'_76
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_112
         (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16))
-- Reflection.AST.DeBruijn._.weaken
d_weaken_92 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_weaken_92 = coe d_weakenFrom_88 (0 :: Integer)
-- Reflection.AST.DeBruijn._.weakenArgs
d_weakenArgs_96 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_weakenArgs_96
  = coe
      du_weakenFrom'8242'_76
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_118
         (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16))
      (coe (0 :: Integer))
-- Reflection.AST.DeBruijn._.weakenClauses
d_weakenClauses_100 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_weakenClauses_100
  = coe
      du_weakenFrom'8242'_76
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_126
         (coe MAlonzo.Code.Function.Identity.Effectful.du_applicative_16))
      (coe (0 :: Integer))
-- Reflection.AST.DeBruijn.η
d_η_102 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  ([MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_η_102 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
         (coe ("x" :: Data.Text.Text))
         (coe
            v1
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__62
               (coe d_weakenArgs_96 (1 :: Integer) v2)
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
d_η'45'expand_110 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_η'45'expand_110 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v2 v3
        -> coe
             d_η_102 (coe v0)
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                (coe addInt (coe (1 :: Integer)) (coe v2)))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v2 v3
        -> coe
             d_η_102 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
        -> coe
             d_η_102 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v2 v3 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v2 v3
        -> coe
             d_η_102 (coe v0)
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                (coe d_weakenClauses_100 (1 :: Integer) v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v2
        -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v2 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v2 v3
        -> coe
             d_η_102 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v2))
             (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.DeBruijn._._.Action
d_Action_170 :: () -> ()
d_Action_170 = erased
-- Reflection.AST.DeBruijn._._.Actions
d_Actions_172 = ()
-- Reflection.AST.DeBruijn._._.Cxt
d_Cxt_174 = ()
-- Reflection.AST.DeBruijn._._.defaultActions
d_defaultActions_176 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_defaultActions_176
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_defaultActions_94
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseArgs
d_traverseArgs_182 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_traverseArgs_182
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_118
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseClauses
d_traverseClauses_186 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_traverseClauses_186
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_126
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.traverseTerm
d_traverseTerm_196 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_traverseTerm_196
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_112
      (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24)
-- Reflection.AST.DeBruijn._._.Actions.onCon
d_onCon_200 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> Maybe AgdaAny
d_onCon_200 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onCon_90 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onDef
d_onDef_202 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> Maybe AgdaAny
d_onDef_202 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onDef_92 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onMeta
d_onMeta_204 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  AgdaAny -> Maybe AgdaAny
d_onMeta_204 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onMeta_88 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onVar
d_onVar_206 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Maybe Integer
d_onVar_206 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onVar_86 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.context
d_context_210 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_210 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_context_52 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.len
d_len_212 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer
d_len_212 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_len_50 (coe v0)
-- Reflection.AST.DeBruijn._.strVar
d_strVar_214 ::
  Integer ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  Integer -> Maybe Integer
d_strVar_214 v0 v1 v2
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
d_actions_252 ::
  Integer -> MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_actions_252 v0
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.C_Actions'46'constructor_1133
      (coe d_strVar_214 (coe v0))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24) erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24) erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32
              (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24) erased))
-- Reflection.AST.DeBruijn._.strengthenFromBy′
d_strengthenFromBy'8242'_260 ::
  () ->
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> Maybe AgdaAny) ->
  Integer -> Integer -> AgdaAny -> Maybe AgdaAny
d_strengthenFromBy'8242'_260 ~v0 v1 v2 v3
  = du_strengthenFromBy'8242'_260 v1 v2 v3
du_strengthenFromBy'8242'_260 ::
  (MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
   MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
   AgdaAny -> Maybe AgdaAny) ->
  Integer -> Integer -> AgdaAny -> Maybe AgdaAny
du_strengthenFromBy'8242'_260 v0 v1 v2
  = coe
      v0 (d_actions_252 (coe v2))
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Reflection.AST.DeBruijn._.strengthenFromBy
d_strengthenFromBy_272 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthenFromBy_272
  = coe
      du_strengthenFromBy'8242'_260
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_112
         (coe MAlonzo.Code.Data.Maybe.Effectful.du_applicative_24))
-- Reflection.AST.DeBruijn._.strengthenBy
d_strengthenBy_276 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthenBy_276 = coe d_strengthenFromBy_272 (0 :: Integer)
-- Reflection.AST.DeBruijn._.strengthenFrom
d_strengthenFrom_280 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthenFrom_280 v0
  = coe d_strengthenFromBy_272 v0 (1 :: Integer)
-- Reflection.AST.DeBruijn._.strengthen
d_strengthen_284 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_strengthen_284
  = coe d_strengthenFromBy_272 (0 :: Integer) (1 :: Integer)
-- Reflection.AST.DeBruijn._.anyApplicative
d_anyApplicative_292 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
d_anyApplicative_292
  = coe
      MAlonzo.Code.Effect.Applicative.du_mkRawApplicative_94
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe (\ v0 v1 -> MAlonzo.Code.Data.Bool.Base.d__'8744'__30))
-- Reflection.AST.DeBruijn._._.Action
d_Action_300 :: () -> ()
d_Action_300 = erased
-- Reflection.AST.DeBruijn._._.Actions
d_Actions_302 = ()
-- Reflection.AST.DeBruijn._._.Cxt
d_Cxt_304 = ()
-- Reflection.AST.DeBruijn._._.defaultActions
d_defaultActions_306 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_defaultActions_306
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_defaultActions_94
      (coe d_anyApplicative_292)
-- Reflection.AST.DeBruijn._._.traverseArgs
d_traverseArgs_312 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
d_traverseArgs_312
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseArgs_118
      (coe d_anyApplicative_292)
-- Reflection.AST.DeBruijn._._.traverseClauses
d_traverseClauses_316 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> Bool
d_traverseClauses_316
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseClauses_126
      (coe d_anyApplicative_292)
-- Reflection.AST.DeBruijn._._.traverseTerm
d_traverseTerm_326 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_traverseTerm_326
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_112
      (coe d_anyApplicative_292)
-- Reflection.AST.DeBruijn._._.Actions.onCon
d_onCon_330 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> AgdaAny -> Bool
d_onCon_330 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onCon_90 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onDef
d_onDef_332 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> AgdaAny -> Bool
d_onDef_332 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onDef_92 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onMeta
d_onMeta_334 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> AgdaAny -> Bool
d_onMeta_334 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onMeta_88 (coe v0)
-- Reflection.AST.DeBruijn._._.Actions.onVar
d_onVar_336 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76 ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer -> Bool
d_onVar_336 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_onVar_86 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.context
d_context_340 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_context_340 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_context_52 (coe v0)
-- Reflection.AST.DeBruijn._._.Cxt.len
d_len_342 ::
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer
d_len_342 v0
  = coe MAlonzo.Code.Reflection.AST.Traversal.d_len_50 (coe v0)
-- Reflection.AST.DeBruijn._.fvVar
d_fvVar_344 ::
  Integer ->
  MAlonzo.Code.Reflection.AST.Traversal.T_Cxt_44 -> Integer -> Bool
d_fvVar_344 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54 v3 v4
        -> coe eqInt (coe addInt (coe v0) (coe v3)) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.AST.DeBruijn._.actions
d_actions_352 ::
  Integer -> MAlonzo.Code.Reflection.AST.Traversal.T_Actions_76
d_actions_352 v0
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.C_Actions'46'constructor_1133
      (coe d_fvVar_344 (coe v0))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32 d_anyApplicative_292
              erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32 d_anyApplicative_292
              erased))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Effect.Applicative.d_pure_32 d_anyApplicative_292
              erased))
-- Reflection.AST.DeBruijn._._∈FV_
d__'8712'FV__356 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d__'8712'FV__356 v0 v1
  = coe
      MAlonzo.Code.Reflection.AST.Traversal.du_traverseTerm_112
      (coe d_anyApplicative_292) (coe d_actions_352 (coe v0))
      (coe
         MAlonzo.Code.Reflection.AST.Traversal.C__'44'__54
         (coe (0 :: Integer))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe v1)
