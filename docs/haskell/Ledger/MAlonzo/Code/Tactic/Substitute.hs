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

module MAlonzo.Code.Tactic.Substitute where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Data.Nat.Base

-- Tactic.Substitute.Subst
d_Subst_4 :: () -> ()
d_Subst_4 = erased
-- Tactic.Substitute.substTerm
d_substTerm_8 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_substTerm_8 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
        -> coe
             d_'46'extendedlambda0_26 (coe v0) (coe v1) (coe v3) (coe v4)
             (coe MAlonzo.Code.Data.Nat.Base.d_compare_460 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3)
             (coe d_substArgs_10 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
             (coe d_substArgs_10 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v3)
             (coe d_substAbs_14 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
        -> coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
             (coe d_substArg_12 (coe v0) (coe v1) (coe v3))
             (coe d_substAbs_14 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
             (coe d_substSort_16 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v3)
             (coe d_substArgs_10 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Substitute.substArgs
d_substArgs_10 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_substArgs_10 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_substArg_12 (coe v0) (coe v1) (coe v3))
             (coe d_substArgs_10 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Substitute.substArg
d_substArg_12 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_substArg_12 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3)
             (coe d_substTerm_8 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Substitute.substAbs
d_substAbs_14 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112
d_substAbs_14 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v3)
             (coe
                d_substTerm_8 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Substitute.substSort
d_substSort_16 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_substSort_16 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
             (coe d_substTerm_8 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_224 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228
             (coe d_substTerm_8 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_232 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_236 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_238 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Substitute..extendedlambda0
d_'46'extendedlambda0_26 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Data.Nat.Base.T_Ordering_438 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'46'extendedlambda0_26 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C_less_444 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
             (coe
                MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                (addInt (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v6))
                (1 :: Integer))
             (coe d_substArgs_10 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Data.Nat.Base.C_equal_448 -> coe v1
      MAlonzo.Code.Data.Nat.Base.C_greater_454 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v2)
             (coe
                d_substArgs_10
                (coe addInt (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v6))
                (coe v1) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
