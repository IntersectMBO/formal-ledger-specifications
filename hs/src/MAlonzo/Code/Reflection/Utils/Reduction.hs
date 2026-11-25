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

module MAlonzo.Code.Reflection.Utils.Reduction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Reflection.AST.AlphaEquality

-- Reflection.Utils.Reduction.whnfBlocking
d_whnfBlocking_6 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_whnfBlocking_6 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withReduceDefs_454 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_reduce_352 v1)
-- Reflection.Utils.Reduction.whnfOnlyUnfolding
d_whnfOnlyUnfolding_12 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_whnfOnlyUnfolding_12 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withReduceDefs_454 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_reduce_352 v1)
-- Reflection.Utils.Reduction.go
d_go_22 ::
  Bool ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_go_22 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v3
      _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (let v5
                    = coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v3 in
              coe
                (case coe v3 of
                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v6 v7
                     -> let v8
                              = coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                  erased (d_goArgs_24 (coe v4) (coe v7))
                                  (\ v8 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () ()
                                       erased erased
                                       (d_whnfOnlyUnfolding_12
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v6)
                                             (coe v8)))
                                       (\ v9 ->
                                          coe
                                            MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                                            (coe
                                               MAlonzo.Code.Reflection.AST.AlphaEquality.d__'61'α'61''45'Term__54
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe v6) (coe v8)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                               () erased v9)
                                            (coe d_go_22 (coe v0) (coe v1) (coe v4) (coe v9)))) in
                        coe
                          (case coe v7 of
                             []
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                    erased
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_408 v6)
                                    (\ v9 ->
                                       coe
                                         du_'46'extendedlambda0_44 (coe v0) (coe v1) (coe v4)
                                         (coe v6)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                                            (coe v9)))
                             _ -> coe v8)
                   _ -> coe v5))
-- Reflection.Utils.Reduction.goArgs
d_goArgs_24 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_goArgs_24 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v1
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                    erased
                    (d_go_22
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0)
                       (coe v5))
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                         erased (d_goArgs_24 (coe v0) (coe v3))
                         (\ v7 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4) (coe v6))
                                 (coe v7))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Reduction..extendedlambda0
d_'46'extendedlambda0_44 ::
  Bool ->
  [AgdaAny] ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Definition_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'46'extendedlambda0_44 v0 v1 v2 v3 ~v4 v5
  = du_'46'extendedlambda0_44 v0 v1 v2 v3 v5
du_'46'extendedlambda0_44 ::
  Bool ->
  [AgdaAny] ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'46'extendedlambda0_44 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
           coe
             (if coe v5
                then case coe v6 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_function_284 v8
                         -> case coe v8 of
                              (:) v9 v10
                                -> case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v11 v12 v13
                                       -> case coe v11 of
                                            []
                                              -> case coe v12 of
                                                   []
                                                     -> case coe v13 of
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v14 v15
                                                            -> case coe v15 of
                                                                 []
                                                                   -> coe
                                                                        d_go_22 (coe v0) (coe v1)
                                                                        (coe v2) (coe v13)
                                                                 _ -> coe v7
                                                          _ -> coe v7
                                                   _ -> coe v7
                                            _ -> coe v7
                                     _ -> coe v7
                              _ -> coe v7
                       _ -> coe v7
                else (case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Reflection.C_function_284 v8
                          -> case coe v8 of
                               (:) v9 v10
                                 -> case coe v9 of
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v11 v12 v13
                                        -> case coe v11 of
                                             []
                                               -> case coe v12 of
                                                    []
                                                      -> coe
                                                           d_go_22 (coe v0) (coe v1) (coe v2)
                                                           (coe v13)
                                                    _ -> coe v7
                                             _ -> coe v7
                                      _ -> coe v7
                               _ -> coe v7
                        _ -> coe v7))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Reflection.Utils.Reduction.headReduce
d_headReduce_82 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_headReduce_82
  = coe
      d_go_22 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Reflection.Utils.Reduction.resolveToName
d_resolveToName_84 ::
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_resolveToName_84
  = coe d_go_22 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
