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

module MAlonzo.Code.Data.Integer.Tactic.RingSolver where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Tactic.RingSolver
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing

-- Data.Integer.Tactic.RingSolver.ring
d_ring_8 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180
d_ring_8
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_fromCommutativeRing_1356
      (coe
         MAlonzo.Code.Data.Integer.Properties.d_'43''45''42''45'commutativeRing_5712)
      (coe
         (\ v0 ->
            let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
            coe
              (case coe v0 of
                 0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 erased
                 _ | coe geqInt (coe v0) (coe (0 :: Integer)) -> coe v1
                 _ -> coe v1)))
-- Data.Integer.Tactic.RingSolver.solve-∀
d_solve'45''8704'_12 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solve'45''8704'_12
  = coe
      MAlonzo.Code.Tactic.RingSolver.d_solve'45''8704''45'macro_322
      (coe
         (MAlonzo.RTE.QName
            (8 :: Integer) (1156037584345647614 :: Integer)
            "Data.Integer.Tactic.RingSolver.ring"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
-- Data.Integer.Tactic.RingSolver.solve
d_solve_14 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solve_14 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.d_solve'45'macro_424 (coe v0)
      (coe
         (MAlonzo.RTE.QName
            (8 :: Integer) (1156037584345647614 :: Integer)
            "Data.Integer.Tactic.RingSolver.ring"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
