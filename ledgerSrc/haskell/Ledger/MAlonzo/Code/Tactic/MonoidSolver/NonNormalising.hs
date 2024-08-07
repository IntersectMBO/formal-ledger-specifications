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

module MAlonzo.Code.Tactic.MonoidSolver.NonNormalising where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Tactic.MonoidSolver

-- Tactic.MonoidSolver.NonNormalising.solve-macro
d_solve'45'macro_6 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solve'45'macro_6 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_356 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
         erased
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_344 v1)
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
              erased
              (MAlonzo.Code.Tactic.MonoidSolver.d_findMonoidNames_222 (coe v0))
              (\ v3 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_334 () () erased
                   erased
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_324 () erased
                      (MAlonzo.Code.Tactic.MonoidSolver.d_getArgs_182 (coe v2)))
                   (\ v4 ->
                      case coe v4 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                          -> case coe v5 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                 -> coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.d_unify_336 v1
                                      (MAlonzo.Code.Tactic.MonoidSolver.d_constructSoln_274
                                         (coe v0) (coe v3) (coe v6) (coe v7))
                               _ -> MAlonzo.RTE.mazUnreachableError
                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342 () erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_310 (coe v2))
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        _ -> MAlonzo.RTE.mazUnreachableError))))
      (MAlonzo.Code.Tactic.MonoidSolver.d_solve'45'macro_284
         (coe v0) (coe v1))
-- Tactic.MonoidSolver.NonNormalising.solve
d_solve_24 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solve_24 = coe d_solve'45'macro_6
