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

module MAlonzo.Code.Algebra.Solver.Ring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawSemiring
import qualified MAlonzo.Code.Algebra.Properties.Semiring.Exp
import qualified MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Solver.Ring.Lemmas
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Solver.Ring.C.Carrier
d_Carrier_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> ()
d_Carrier_66 = erased
-- Algebra.Solver.Ring._._*_
d__'42'__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__74 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'42'__74 v5
du__'42'__74 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__74 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
      (coe v0)
-- Algebra.Solver.Ring._._+_
d__'43'__76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__76 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'43'__76 v5
du__'43'__76 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__76 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
      (coe v0)
-- Algebra.Solver.Ring._._≈_
d__'8776'__78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny -> ()
d__'8776'__78 = erased
-- Algebra.Solver.Ring._.-_
d_'45'__162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_'45'__162 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_'45'__162 v5
du_'45'__162 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny
du_'45'__162 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
      (coe v0)
-- Algebra.Solver.Ring._.0#
d_0'35'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny
d_0'35'_170 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_0'35'_170 v5
du_0'35'_170 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny
du_0'35'_170 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
      (coe v0)
-- Algebra.Solver.Ring._.1#
d_1'35'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny
d_1'35'_172 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_1'35'_172 v5
du_1'35'_172 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny
du_1'35'_172 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
      (coe v0)
-- Algebra.Solver.Ring._.Carrier
d_Carrier_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> ()
d_Carrier_174 = erased
-- Algebra.Solver.Ring._.⟦_⟧
d_'10214'_'10215'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_'10214'_'10215'_358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'10214'_'10215'_358 v6
du_'10214'_'10215'_358 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  AgdaAny -> AgdaAny
du_'10214'_'10215'_358 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
      (coe v0)
-- Algebra.Solver.Ring._._^_
d__'94'__362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> Integer -> AgdaAny
d__'94'__362 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'94'__362 v5
du__'94'__362 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> Integer -> AgdaAny
du__'94'__362 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiring_2318
              (coe
                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
               (coe v1))))
-- Algebra.Solver.Ring.Op
d_Op_416 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_Op_416 = C_'91''43''93'_418 | C_'91''42''93'_420
-- Algebra.Solver.Ring.Polynomial
d_Polynomial_424 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_Polynomial_424
  = C_op_434 T_Op_416 T_Polynomial_424 T_Polynomial_424 |
    C_con_438 AgdaAny | C_var_442 MAlonzo.Code.Data.Fin.Base.T_Fin_10 |
    C__'58''94'__448 T_Polynomial_424 Integer |
    C_'58''45'__452 T_Polynomial_424
-- Algebra.Solver.Ring._:+_
d__'58''43'__456 ::
  T_Polynomial_424 -> T_Polynomial_424 -> T_Polynomial_424
d__'58''43'__456 = coe C_op_434 (coe C_'91''43''93'_418)
-- Algebra.Solver.Ring._:*_
d__'58''42'__460 ::
  T_Polynomial_424 -> T_Polynomial_424 -> T_Polynomial_424
d__'58''42'__460 = coe C_op_434 (coe C_'91''42''93'_420)
-- Algebra.Solver.Ring._:-_
d__'58''45'__464 ::
  T_Polynomial_424 -> T_Polynomial_424 -> T_Polynomial_424
d__'58''45'__464 v0 v1
  = coe
      C_op_434 (coe C_'91''43''93'_418) (coe v0)
      (coe C_'58''45'__452 (coe v1))
-- Algebra.Solver.Ring._:×_
d__'58''215'__472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> Integer -> T_Polynomial_424 -> T_Polynomial_424
d__'58''215'__472 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du__'58''215'__472 v4 v9 v10
du__'58''215'__472 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  Integer -> T_Polynomial_424 -> T_Polynomial_424
du__'58''215'__472 v0 v1 v2
  = case coe v1 of
      0 -> coe
             C_con_438
             (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                C_op_434 (coe C_'91''43''93'_418) (coe v2)
                (coe du__'58''215'__472 (coe v0) (coe v3) (coe v2)))
-- Algebra.Solver.Ring.sem
d_sem_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  T_Op_416 -> AgdaAny -> AgdaAny -> AgdaAny
d_sem_480 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 = du_sem_480 v5 v8
du_sem_480 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  T_Op_416 -> AgdaAny -> AgdaAny -> AgdaAny
du_sem_480 v0 v1
  = case coe v1 of
      C_'91''43''93'_418
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
             (coe v0)
      C_'91''42''93'_420
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
             (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧
d_'10214'_'10215'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_424 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 ~v8 v9 v10
  = du_'10214'_'10215'_484 v5 v6 v9 v10
du_'10214'_'10215'_484 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  T_Polynomial_424 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'10214'_'10215'_484 v0 v1 v2 v3
  = case coe v2 of
      C_op_434 v4 v5 v6
        -> coe
             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
             (coe du_'10214'_'10215'_484 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_sem_480 (coe v0) (coe v4))
             (coe du_'10214'_'10215'_484 (coe v0) (coe v1) (coe v6) (coe v3))
      C_con_438 v4
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
             v1 v4
      C_var_442 v4
        -> coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v4)
      C__'58''94'__448 v4 v5
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
             (coe
                MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                (coe
                   MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                         (coe v0)))))
             (coe du_'10214'_'10215'_484 (coe v0) (coe v1) (coe v4) (coe v3))
             (coe v5)
      C_'58''45'__452 v4
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
             v0 (coe du_'10214'_'10215'_484 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.HNF
d_HNF_512 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_HNF_512
  = C_'8709'_518 | C__'42'x'43'__522 T_HNF_512 T_Normal_514
-- Algebra.Solver.Ring.Normal
d_Normal_514 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_Normal_514 = C_con_524 AgdaAny | C_poly_528 T_HNF_512
-- Algebra.Solver.Ring.⟦_⟧H
d_'10214'_'10215'H_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'H_532 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_518
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
             (coe v5)
      C__'42'x'43'__522 v12 v13
        -> case coe v10 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                    v5
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                       v5
                       (d_'10214'_'10215'H_532
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe v12)
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16))
                       v15)
                    (d_'10214'_'10215'N_536
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v13) (coe v16))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧N
d_'10214'_'10215'N_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'N_536 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_524 v11
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
             v6 v11
      C_poly_528 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v5) (coe v6) (coe v7) (coe v13) (coe v12) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._≈H_
d__'8776'H__554 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T__'8776'H__554
  = C_'8709'_562 | C__'42'x'43'__574 T__'8776'H__554 T__'8776'N__558
-- Algebra.Solver.Ring._≈N_
d__'8776'N__558 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T__'8776'N__558
  = C_con_580 AgdaAny | C_poly_588 T__'8776'H__554
-- Algebra.Solver.Ring._≟H_
d__'8799'H__592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_512 -> T_HNF_512 -> Maybe T__'8776'H__554
d__'8799'H__592 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_518
        -> case coe v10 of
             C_'8709'_518
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe C_'8709'_562)
             C__'42'x'43'__522 v13 v14
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__522 v12 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                C_'8709'_518 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                C__'42'x'43'__522 v16 v17
                  -> let v18
                           = d__'8799'H__592
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8) (coe v12) (coe v16) in
                     coe
                       (let v19
                              = d__'8799'N__596
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v14) (coe v13) (coe v17) in
                        coe
                          (case coe v18 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                               -> case coe v19 of
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v21
                                      -> coe
                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                           (coe C__'42'x'43'__574 v20 v21)
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v19
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                               -> case coe v19 of
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v19
                                    _ -> coe v18
                             _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._≟N_
d__'8799'N__596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_514 -> T_Normal_514 -> Maybe T__'8776'N__558
d__'8799'N__596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_524 v11
        -> case coe v10 of
             C_con_524 v12
               -> let v13 = coe v7 v11 v12 in
                  coe
                    (case coe v13 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v14
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe C_con_580 v14)
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v13
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_528 v12
        -> case coe v10 of
             C_poly_528 v14
               -> let v15
                        = d__'8799'H__592
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v12) (coe v14) in
                  coe
                    (case coe v15 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe C_poly_588 v16)
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v15
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧H-cong
d_'10214'_'10215'H'45'cong_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 ->
  T_HNF_512 ->
  T__'8776'H__554 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'H'45'cong_682 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                               v11 v12
  = case coe v11 of
      C_'8709'_562
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (d_'10214'_'10215'H_532
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8) (coe C_'8709'_518) (coe v12))
      C__'42'x'43'__574 v18 v19
        -> case coe v9 of
             C__'42'x'43'__522 v21 v22
               -> case coe v10 of
                    C__'42'x'43'__522 v24 v25
                      -> case coe v12 of
                           MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v27 v28
                             -> coe
                                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                     (coe
                                        d_'10214'_'10215'H'45'cong_682 (coe v0) (coe v1) (coe v2)
                                        (coe v3) (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                        (coe v21) (coe v24) (coe v18)
                                        (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v27 v28))
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                        (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                    (coe v5)))))
                                        (d_'10214'_'10215'H_532
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v21)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v27 v28))
                                        (d_'10214'_'10215'H_532
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v24)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v27 v28))
                                        v27 v27)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                             (coe
                                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                   (coe v5))))))))))
                                        v27))
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                     (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe
                                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                          (coe
                                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                             (coe v5)))))))))
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                        v5
                                        (d_'10214'_'10215'H_532
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v21)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v27 v28))
                                        v27)
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                        v5
                                        (d_'10214'_'10215'H_532
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v24)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v27 v28))
                                        v27)
                                     (d_'10214'_'10215'N_536
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v22) (coe v28))
                                     (d_'10214'_'10215'N_536
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v25) (coe v28)))
                                  (coe
                                     d_'10214'_'10215'N'45'cong_692 (coe v0) (coe v1) (coe v2)
                                     (coe v3) (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v22)
                                     (coe v25) (coe v19) (coe v28))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧N-cong
d_'10214'_'10215'N'45'cong_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 ->
  T_Normal_514 ->
  T__'8776'N__558 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'N'45'cong_692 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                               v11 v12
  = case coe v11 of
      C_con_580 v15 -> coe v15
      C_poly_588 v16
        -> let v17 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v9 of
                C_poly_528 v19
                  -> case coe v10 of
                       C_poly_528 v21
                         -> coe
                              d_'10214'_'10215'H'45'cong_682 (coe v0) (coe v1) (coe v2) (coe v3)
                              (coe v4) (coe v5) (coe v6) (coe v7) (coe v17) (coe v19) (coe v21)
                              (coe v16) (coe v12)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.0H
d_0H_710 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_HNF_512
d_0H_710 ~v0 ~v1 ~v2 = du_0H_710
du_0H_710 :: T_HNF_512
du_0H_710 = coe C_'8709'_518
-- Algebra.Solver.Ring.0N
d_0N_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_Normal_514
d_0N_714 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 v8 = du_0N_714 v4 v8
du_0N_714 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  Integer -> T_Normal_514
du_0N_714 v0 v1
  = case coe v1 of
      0 -> coe
             C_con_524
             (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))
      _ -> coe C_poly_528 (coe C_'8709'_518)
-- Algebra.Solver.Ring.1H
d_1H_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_HNF_512
d_1H_720 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      C__'42'x'43'__522 (coe C_'8709'_518)
      (d_1N_724
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7) (coe v8))
-- Algebra.Solver.Ring.1N
d_1N_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_Normal_514
d_1N_724 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      0 -> coe
             C_con_524
             (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_274 (coe v4))
      _ -> let v9 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                C_poly_528
                (d_1H_720
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v9)))
-- Algebra.Solver.Ring._*x+HN_
d__'42'x'43'HN__732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_512 -> T_Normal_514 -> T_HNF_512
d__'42'x'43'HN__732 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_518
        -> let v12
                 = d__'8799'N__596
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v10) (coe du_0N_714 (coe v4) (coe v8)) in
           coe
             (case coe v12 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13 -> coe C_'8709'_518
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe C__'42'x'43'__522 (coe C_'8709'_518) v10
                _ -> MAlonzo.RTE.mazUnreachableError)
      C__'42'x'43'__522 v12 v13
        -> coe C__'42'x'43'__522 (coe C__'42'x'43'__522 v12 v13) v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._+H_
d__'43'H__754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_512 -> T_HNF_512 -> T_HNF_512
d__'43'H__754 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_518 -> coe v10
      C__'42'x'43'__522 v12 v13
        -> case coe v10 of
             C_'8709'_518 -> coe C__'42'x'43'__522 v12 v13
             C__'42'x'43'__522 v15 v16
               -> coe
                    d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                    (coe v5) (coe v6) (coe v7) (coe v8)
                    (coe
                       d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6) (coe v7) (coe v8) (coe v12) (coe v15))
                    (coe
                       d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._+N_
d__'43'N__758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_514 -> T_Normal_514 -> T_Normal_514
d__'43'N__758 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_524 v11
        -> case coe v10 of
             C_con_524 v12
               -> coe
                    C_con_524
                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v4 v11 v12)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_528 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                C_poly_528 v15
                  -> coe
                       C_poly_528
                       (d__'43'H__754
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v13) (coe v12) (coe v15))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*x+H_
d__'42'x'43'H__782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_512 -> T_HNF_512 -> T_HNF_512
d__'42'x'43'H__782 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      C_'8709'_518
        -> case coe v9 of
             C_'8709'_518 -> coe C_'8709'_518
             C__'42'x'43'__522 v13 v14
               -> coe
                    C__'42'x'43'__522 (coe C__'42'x'43'__522 v13 v14)
                    (coe du_0N_714 (coe v4) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__522 v12 v13
        -> coe
             d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8)
             (coe
                d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
             (coe v13)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*NH_
d__'42'NH__796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_514 -> T_HNF_512 -> T_HNF_512
d__'42'NH__796 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      C_'8709'_518 -> coe C_'8709'_518
      C__'42'x'43'__522 v12 v13
        -> let v14
                 = d__'8799'N__596
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v9) (coe du_0N_714 (coe v4) (coe v8)) in
           coe
             (case coe v14 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15 -> coe C_'8709'_518
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       C__'42'x'43'__522
                       (d__'42'NH__796
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe v9) (coe v12))
                       (d__'42'N__808
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe v9) (coe v13))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*HN_
d__'42'HN__800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_512 -> T_Normal_514 -> T_HNF_512
d__'42'HN__800 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_518 -> coe C_'8709'_518
      C__'42'x'43'__522 v12 v13
        -> let v14
                 = d__'8799'N__596
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v10) (coe du_0N_714 (coe v4) (coe v8)) in
           coe
             (case coe v14 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15 -> coe C_'8709'_518
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       C__'42'x'43'__522
                       (d__'42'HN__800
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe v12) (coe v10))
                       (d__'42'N__808
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe v13) (coe v10))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*H_
d__'42'H__804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_512 -> T_HNF_512 -> T_HNF_512
d__'42'H__804 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_518 -> coe C_'8709'_518
      C__'42'x'43'__522 v12 v13
        -> case coe v10 of
             C_'8709'_518 -> coe C_'8709'_518
             C__'42'x'43'__522 v15 v16
               -> coe
                    d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                    (coe v5) (coe v6) (coe v7) (coe v8)
                    (coe
                       d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8)
                       (coe
                          d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8) (coe v12) (coe v15))
                       (coe
                          d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8)
                          (coe
                             d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12) (coe v16))
                          (coe
                             d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v15))))
                    (coe
                       d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*N_
d__'42'N__808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_514 -> T_Normal_514 -> T_Normal_514
d__'42'N__808 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_524 v11
        -> case coe v10 of
             C_con_524 v12
               -> coe
                    C_con_524
                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v4 v11 v12)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_528 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                C_poly_528 v15
                  -> coe
                       C_poly_528
                       (d__'42'H__804
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v13) (coe v12) (coe v15))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._^N_
d__'94'N__880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_514 -> Integer -> T_Normal_514
d__'94'N__880 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      0 -> coe
             d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
             (coe v6) (coe v7) (coe v8)
      _ -> let v11 = subInt (coe v10) (coe (1 :: Integer)) in
           coe
             (coe
                d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe v6) (coe v7) (coe v8) (coe v9)
                (coe
                   d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                   (coe v6) (coe v7) (coe v8) (coe v9) (coe v11)))
-- Algebra.Solver.Ring.-H_
d_'45'H__890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_512 -> T_HNF_512
d_'45'H__890 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe v5) (coe v6) (coe v7) (coe v8)
      (coe
         d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6) (coe v7) (coe v8)
         (coe
            d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
            (coe v6) (coe v7) (coe v8)))
      (coe v9)
-- Algebra.Solver.Ring.-N_
d_'45'N__894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_514 -> T_Normal_514
d_'45'N__894 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C_con_524 v10
        -> coe
             C_con_524 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v4 v10)
      C_poly_528 v11
        -> let v12 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                C_poly_528
                (d_'45'H__890
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v12) (coe v11)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.normalise-con
d_normalise'45'con_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> AgdaAny -> T_Normal_514
d_normalise'45'con_904 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      0 -> coe C_con_524 (coe v9)
      _ -> let v10 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                C_poly_528
                (d__'42'x'43'HN__732
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v10) (coe C_'8709'_518)
                   (coe
                      d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v10) (coe v9))))
-- Algebra.Solver.Ring.normalise-var
d_normalise'45'var_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> T_Normal_514
d_normalise'45'var_914 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> let v11 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                C_poly_528
                (coe
                   C__'42'x'43'__522
                   (coe
                      C__'42'x'43'__522 (coe C_'8709'_518)
                      (d_1N_724
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v11)))
                   (coe du_0N_714 (coe v4) (coe v11))))
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v11
        -> let v12 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                C_poly_528
                (d__'42'x'43'HN__732
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v12) (coe C_'8709'_518)
                   (coe
                      d_normalise'45'var_914 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v12) (coe v11))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.normalise
d_normalise_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Polynomial_424 -> T_Normal_514
d_normalise_920 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C_op_434 v10 v11 v12
        -> case coe v10 of
             C_'91''43''93'_418
               -> coe
                    d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                    (coe v6) (coe v7) (coe v8)
                    (coe
                       d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                    (coe
                       d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
             C_'91''42''93'_420
               -> coe
                    d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                    (coe v6) (coe v7) (coe v8)
                    (coe
                       d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                    (coe
                       d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      C_con_438 v10
        -> coe
             d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v10)
      C_var_442 v10
        -> coe
             d_normalise'45'var_914 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v10)
      C__'58''94'__448 v10 v11
        -> coe
             d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
             (coe v6) (coe v7) (coe v8)
             (coe
                d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v5) (coe v6) (coe v7) (coe v8) (coe v10))
             (coe v11)
      C_'58''45'__452 v10
        -> coe
             d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
             (coe v6) (coe v7) (coe v8)
             (coe
                d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v5) (coe v6) (coe v7) (coe v8) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧↓
d_'10214'_'10215''8595'_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_424 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215''8595'_942 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe v5) (coe v6) (coe v7) (coe v8)
      (coe
         d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
      (coe v10)
-- Algebra.Solver.Ring.0N-homo
d_0N'45'homo_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_0N'45'homo_952 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'45'homo_764
             (coe v6)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (d_'10214'_'10215'N_536
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8) (coe du_0N_714 (coe v4) (coe v8))
                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.0≈⟦0⟧
d_0'8776''10214'0'10215'_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 ->
  T__'8776'N__558 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_0'8776''10214'0'10215'_964 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                           (coe
                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                 (coe v5))))))))))
      (d_'10214'_'10215'N_536
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7) (coe v8) (coe v9) (coe v11))
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
         (coe v5))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v12 v13 v14 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v14)
         (d_'10214'_'10215'N_536
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
            (coe v7) (coe v8) (coe v9) (coe v11))
         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
            (coe v5))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v12
                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                (coe v5) in
                      coe
                        (let v13
                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                   (coe v12) in
                         coe
                           (let v14
                                  = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v13) in
                            coe
                              (let v15
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                         (coe v14) in
                               coe
                                 (let v16
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe v15) in
                                  coe
                                    (let v17
                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe v16) in
                                     coe
                                       (let v18
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                  (coe v17) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_setoid_168
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                (coe v18)))))))))))))
            (d_'10214'_'10215'N_536
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7) (coe v8) (coe v9) (coe v11))
            (d_'10214'_'10215'N_536
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7) (coe v8) (coe du_0N_714 (coe v4) (coe v8)) (coe v11))
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
               (coe v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v12
                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                   (coe v5) in
                         coe
                           (let v13
                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                      (coe v12) in
                            coe
                              (let v14
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe v13) in
                               coe
                                 (let v15
                                        = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                            (coe v14) in
                                  coe
                                    (let v16
                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                               (coe v15) in
                                     coe
                                       (let v17
                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                  (coe v16) in
                                        coe
                                          (let v18
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                     (coe v17) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                   (coe v18)))))))))))))
               (d_'10214'_'10215'N_536
                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                  (coe v7) (coe v8) (coe du_0N_714 (coe v4) (coe v8)) (coe v11))
               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                  (coe v5))
               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                  (coe v5))
               (let v12
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v12
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5) in
                              coe
                                (let v13
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                           (coe v12) in
                                 coe
                                   (let v14
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                              (coe v13) in
                                    coe
                                      (let v15
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                 (coe v14) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                    (coe v15) in
                                          coe
                                            (let v17
                                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                       (coe v16) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                          (coe v17) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                        (coe v18))))))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v12))
                     (coe
                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                        (coe v5))))
               (d_0N'45'homo_952
                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                  (coe v7) (coe v8) (coe v11)))
            (d_'10214'_'10215'N'45'cong_692
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7) (coe v8) (coe v9) (coe du_0N_714 (coe v4) (coe v8))
               (coe v10) (coe v11))))
-- Algebra.Solver.Ring.1N-homo
d_1N'45'homo_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_1N'45'homo_976 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'45'homo_766
             (coe v6)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v14 v15 v16 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v16)
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                   v5
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                      v5
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                         (coe v5))
                      v11)
                   (d_'10214'_'10215'N_536
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v13)
                      (coe
                         d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v13))
                      (coe v12)))
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                   (coe v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v14
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                       (coe v5) in
                             coe
                               (let v15
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                          (coe v14) in
                                coe
                                  (let v16
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                             (coe v15) in
                                   coe
                                     (let v17
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe v16) in
                                      coe
                                        (let v18
                                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe v17) in
                                         coe
                                           (let v19
                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe v18) in
                                            coe
                                              (let v20
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe v19) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                       (coe v20)))))))))))))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                      v5
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                            (coe v5))
                         v11)
                      (d_'10214'_'10215'N_536
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v13)
                         (coe
                            d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v13))
                         (coe v12)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                      v5
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                            (coe v5))
                         v11)
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                         (coe v5)))
                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                      (coe v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                               (let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                          (coe v5) in
                                coe
                                  (let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                             (coe v14) in
                                   coe
                                     (let v16
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                (coe v15) in
                                      coe
                                        (let v17
                                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                   (coe v16) in
                                         coe
                                           (let v18
                                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                      (coe v17) in
                                            coe
                                              (let v19
                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe v18) in
                                               coe
                                                 (let v20
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe v19) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                          (coe v20)))))))))))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                         v5
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                            v5
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                               (coe v5))
                            v11)
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                            (coe v5)))
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                         (coe v5))
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                         (coe v5))
                      (let v14
                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v14
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5) in
                                     coe
                                       (let v15
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe v14) in
                                        coe
                                          (let v16
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                     (coe v15) in
                                           coe
                                             (let v17
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                        (coe v16) in
                                              coe
                                                (let v18
                                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                           (coe v17) in
                                                 coe
                                                   (let v19
                                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                              (coe v18) in
                                                    coe
                                                      (let v20
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                 (coe v19) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                               (coe v20))))))))))) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v14))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                               (coe v5))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_376 (coe v5)
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                            (coe v5))
                         (coe v11)))
                   (coe
                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_448
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                    (coe v5))))))))))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                            v5
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                               (coe v5))
                            v11))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                         (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                           (coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5)))))))))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                            v5
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                               (coe v5))
                            v11)
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                            v5
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                               (coe v5))
                            v11)
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v13)
                            (coe
                               d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v13))
                            (coe v12))
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                            (coe v5)))
                      (coe
                         d_1N'45'homo_976 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v13) (coe v12)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*x+HN≈*x+
d_'42'x'43'HN'8776''42'x'43'_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 ->
  T_Normal_514 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'x'43'HN'8776''42'x'43'_990 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                 v11
  = case coe v9 of
      C_'8709'_518
        -> case coe v11 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v14 v15
               -> let v16
                        = d__'8799'N__596
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v10) (coe du_0N_714 (coe v4) (coe v8)) in
                  coe
                    (case coe v16 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                         -> coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                              (\ v18 v19 v20 ->
                                 coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                   v20)
                              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                 (coe v5))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                       (coe v5))
                                    v14)
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v10) (coe v15)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v18
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                     (coe v5) in
                                           coe
                                             (let v19
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe v18) in
                                              coe
                                                (let v20
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                           (coe v19) in
                                                 coe
                                                   (let v21
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                              (coe v20) in
                                                    coe
                                                      (let v22
                                                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                 (coe v21) in
                                                       coe
                                                         (let v23
                                                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                    (coe v22) in
                                                          coe
                                                            (let v24
                                                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                       (coe v23) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                     (coe v24)))))))))))))
                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                    (coe v5))
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v10) (coe v15))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                          (coe v5))
                                       v14)
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v10) (coe v15)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v18
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5) in
                                              coe
                                                (let v19
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe v18) in
                                                 coe
                                                   (let v20
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                              (coe v19) in
                                                    coe
                                                      (let v21
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                 (coe v20) in
                                                       coe
                                                         (let v22
                                                                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                    (coe v21) in
                                                          coe
                                                            (let v23
                                                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                       (coe v22) in
                                                             coe
                                                               (let v24
                                                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                          (coe v23) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                        (coe v24)))))))))))))
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v10) (coe v15))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                             (coe v5))
                                          v14)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v10) (coe v15)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                             (coe v5))
                                          v14)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v10) (coe v15)))
                                    (let v18
                                           = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                  (let v18
                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                             (coe v5) in
                                                   coe
                                                     (let v19
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                (coe v18) in
                                                      coe
                                                        (let v20
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                   (coe v19) in
                                                         coe
                                                           (let v21
                                                                  = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                      (coe v20) in
                                                            coe
                                                              (let v22
                                                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                         (coe v21) in
                                                               coe
                                                                 (let v23
                                                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                            (coe v22) in
                                                                  coe
                                                                    (let v24
                                                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                               (coe v23) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                          (coe
                                                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                             (coe v24))))))))))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                             (coe v18))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                                   (coe v5))
                                                v14)
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v10)
                                                (coe v15)))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                       (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                  (coe v5))))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                                (coe v5))
                                             v14)
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v10) (coe v15)))
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v10) (coe v15))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_376
                                          (coe v5)
                                          (coe
                                             d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2)
                                             (coe v3) (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                             (coe v10) (coe v15))
                                          (coe v14))))
                                 (d_0'8776''10214'0'10215'_964
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v10) (coe v17) (coe v15)))
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                         (coe v5))))))))))
                              (d_'10214'_'10215'H_532
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8) (coe C__'42'x'43'__522 (coe C_'8709'_518) v10)
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v14 v15))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__522 v13 v14
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (d_'10214'_'10215'H_532
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v13 v14)
                   (coe v10))
                (coe v11))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.∅*x+HN-homo
d_'8709''42'x'43'HN'45'homo_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'8709''42'x'43'HN'45'homo_1032 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                 v11
  = let v12
          = d__'8799'N__596
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
              (coe v7) (coe v8) (coe v9) (coe du_0N_714 (coe v4) (coe v8)) in
    coe
      (case coe v12 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
           -> coe
                d_0'8776''10214'0'10215'_964 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v13)
                (coe v11)
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_376 (coe v5)
                (coe
                   d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                (coe v10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Solver.Ring.+H-homo
d_'43'H'45'homo_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 ->
  T_HNF_512 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'43'H'45'homo_1066 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_'8709'_518
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                v5
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                   (coe v5))
                (d_'10214'_'10215'H_532
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8) (coe C_'8709'_518) (coe v10))
                   (coe v11)))
             (d_'10214'_'10215'H_532
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                   (coe v6) (coe v7) (coe v8) (coe C_'8709'_518) (coe v10))
                (coe v11))
             (let v13
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                        (coe v5) in
              coe
                (let v14
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v13) in
                 coe
                   (let v15
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v14) in
                    coe
                      (let v16
                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                 (coe v15) in
                       coe
                         (let v17
                                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                    (coe v16) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                               (MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v17))
                               (d_'10214'_'10215'H_532
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8)
                                  (coe
                                     d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                     (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                     (coe v10))
                                  (coe v11))))))))
      C__'42'x'43'__522 v13 v14
        -> case coe v10 of
             C_'8709'_518
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                    (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5))))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                       v5
                       (d_'10214'_'10215'H_532
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v13 v14)
                             (coe C_'8709'_518))
                          (coe v11))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                          (coe v5)))
                    (d_'10214'_'10215'H_532
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v13 v14)
                          (coe C_'8709'_518))
                       (coe v11))
                    (let v16
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                               (coe v5) in
                     coe
                       (let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v16) in
                        coe
                          (let v18
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v17) in
                           coe
                             (let v19
                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                        (coe v18) in
                              coe
                                (let v20
                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                           (coe v19) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                                      (MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v20))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8)
                                         (coe
                                            d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                            (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                            (coe C__'42'x'43'__522 v13 v14) (coe C_'8709'_518))
                                         (coe v11))))))))
             C__'42'x'43'__522 v16 v17
               -> case coe v11 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20
                      -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                           (\ v21 v22 v23 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v23)
                           (d_'10214'_'10215'H_532
                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                              (coe v7) (coe v8)
                              (coe
                                 d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                 (coe v5) (coe v6) (coe v7) (coe v8)
                                 (coe
                                    d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                 (coe
                                    d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17)))
                              (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                           (coe
                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                              v5
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (d_'10214'_'10215'H_532
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v13)
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v14) (coe v20)))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (d_'10214'_'10215'H_532
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v16)
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v17) (coe v20))))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v21
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                  (coe v5) in
                                        coe
                                          (let v22
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe v21) in
                                           coe
                                             (let v23
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe v22) in
                                              coe
                                                (let v24
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                           (coe v23) in
                                                 coe
                                                   (let v25
                                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                              (coe v24) in
                                                    coe
                                                      (let v26
                                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                 (coe v25) in
                                                       coe
                                                         (let v27
                                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                    (coe v26) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                  (coe v27)))))))))))))
                              (d_'10214'_'10215'H_532
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8)
                                    (coe
                                       d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                    (coe
                                       d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17)))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (d_'10214'_'10215'H_532
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8)
                                    (coe
                                       d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                    (coe v20)))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (d_'10214'_'10215'H_532
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (d_'10214'_'10215'H_532
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v21
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                     (coe v5) in
                                           coe
                                             (let v22
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe v21) in
                                              coe
                                                (let v23
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                           (coe v22) in
                                                 coe
                                                   (let v24
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                              (coe v23) in
                                                    coe
                                                      (let v25
                                                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                 (coe v24) in
                                                       coe
                                                         (let v26
                                                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                    (coe v25) in
                                                          coe
                                                            (let v27
                                                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                       (coe v26) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                     (coe v27)))))))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (d_'10214'_'10215'H_532
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v16))
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                       (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v16)
                                             (coe
                                                MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20)))
                                       v19)
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v16)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v21
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5) in
                                              coe
                                                (let v22
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe v21) in
                                                 coe
                                                   (let v23
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                              (coe v22) in
                                                    coe
                                                      (let v24
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                 (coe v23) in
                                                       coe
                                                         (let v25
                                                                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                    (coe v24) in
                                                          coe
                                                            (let v26
                                                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                       (coe v25) in
                                                             coe
                                                               (let v27
                                                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                          (coe v26) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                        (coe v27)))))))))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20)))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (let v21
                                           = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                  (let v21
                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                             (coe v5) in
                                                   coe
                                                     (let v22
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                (coe v21) in
                                                      coe
                                                        (let v23
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                   (coe v22) in
                                                         coe
                                                           (let v24
                                                                  = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                      (coe v23) in
                                                            coe
                                                              (let v25
                                                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                         (coe v24) in
                                                               coe
                                                                 (let v26
                                                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                            (coe v25) in
                                                                  coe
                                                                    (let v27
                                                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                               (coe v26) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                          (coe
                                                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                             (coe v27))))))))))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                             (coe v21))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8321'_280
                                       (coe v5)
                                       (coe
                                          d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       (coe
                                          d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       (coe
                                          d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                          (coe v20))
                                       (coe
                                          d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                          (coe v20))
                                       (coe v19)))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                       (coe
                                          d_'43'H'45'homo_1066 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                          (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5)))))
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v16))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20)))
                                          v19 v19)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                     (coe v5))))))))))
                                          v19))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                       (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                               (coe v5)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v16))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20)))
                                          v19)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                             (coe v17))
                                          (coe v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       d_'43'N'45'homo_1076 (coe v0) (coe v1) (coe v2) (coe v3)
                                       (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                       (coe v17) (coe v20))))
                              (d_'42'x'43'HN'8776''42'x'43'_990
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                 (coe
                                    d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.+N-homo
d_'43'N'45'homo_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 ->
  T_Normal_514 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'43'N'45'homo_1076 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_con_524 v12
        -> case coe v10 of
             C_con_524 v13
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'43''45'homo_758
                    v6 v12 v13
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_528 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                C_poly_528 v16
                  -> coe
                       d_'43'H'45'homo_1066 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v14) (coe v13) (coe v16) (coe v11)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*x+H-homo
d_'42'x'43'H'45'homo_1120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 ->
  T_HNF_512 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'x'43'H'45'homo_1120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = case coe v9 of
      C_'8709'_518
        -> case coe v10 of
             C_'8709'_518
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                    (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5))))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                       v5
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                             (coe v5))
                          v11)
                       (d_'10214'_'10215'H_532
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                             (coe C_'8709'_518))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                    (d_'10214'_'10215'H_532
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                          (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                          (coe C_'8709'_518))
                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_376 (coe v5)
                       (coe
                          d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                          (coe v5) (coe v6) (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                             (coe C_'8709'_518))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                       (coe v11))
             C__'42'x'43'__522 v15 v16
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v17 v18 v19 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v19)
                    (d_'10214'_'10215'H_532
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                          (coe v5) (coe v6) (coe v7) (coe v8)
                          (coe
                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C_'8709'_518) (coe v15))
                          (coe v16))
                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                       v5
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (d_'10214'_'10215'H_532
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe C_'8709'_518)
                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                          v11)
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v16) (coe v12))))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v17
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                           (coe v5) in
                                 coe
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v17) in
                                    coe
                                      (let v19
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                 (coe v18) in
                                       coe
                                         (let v20
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                    (coe v19) in
                                          coe
                                            (let v21
                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                       (coe v20) in
                                             coe
                                               (let v22
                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                          (coe v21) in
                                                coe
                                                  (let v23
                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                             (coe v22) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                           (coe v23)))))))))))))
                       (d_'10214'_'10215'H_532
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8)
                             (coe
                                d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe C_'8709'_518) (coe v15))
                             (coe v16))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518) (coe v15))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v16) (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C_'8709'_518)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v16) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v17) in
                                       coe
                                         (let v19
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v18) in
                                          coe
                                            (let v20
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v19) in
                                             coe
                                               (let v21
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v20) in
                                                coe
                                                  (let v22
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v21) in
                                                   coe
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v22) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v23)))))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                      (coe v15))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v16) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C_'8709'_518)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v16) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C_'8709'_518)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v17) in
                                          coe
                                            (let v19
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v18) in
                                             coe
                                               (let v20
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v19) in
                                                coe
                                                  (let v21
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v20) in
                                                   coe
                                                     (let v22
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v21) in
                                                      coe
                                                        (let v23
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v22) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v23)))))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C_'8709'_518)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v16) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C_'8709'_518)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v16) (coe v12))))
                             (let v17
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v17
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v18
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v17) in
                                               coe
                                                 (let v19
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v18) in
                                                  coe
                                                    (let v20
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v19) in
                                                     coe
                                                       (let v21
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v20) in
                                                        coe
                                                          (let v22
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v21) in
                                                           coe
                                                             (let v23
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v22) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v23))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v17))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                         v5
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                            v5
                                            (d_'10214'_'10215'H_532
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v15)
                                               (coe
                                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                            v11)
                                         (d_'10214'_'10215'N_536
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v16) (coe v12))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8320'_260 (coe v5)
                                (coe
                                   d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v16) (coe v12))
                                (coe v11)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   d_'43'H'45'homo_1066 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518) (coe v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5)))))
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                         (coe v15))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11 v11)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5))))))))))
                                   v11))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5)))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                         (coe v15))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C_'8709'_518)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                           (coe v5))))))))))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12)))))
                       (d_'42'x'43'HN'8776''42'x'43'_990
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C_'8709'_518) (coe v15))
                          (coe v16) (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__522 v14 v15
        -> case coe v10 of
             C_'8709'_518
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v17 v18 v19 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v19)
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                       v5
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (d_'10214'_'10215'H_532
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                          v11)
                       (d_'10214'_'10215'N_536
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe du_0N_714 (coe v4) (coe v8)) (coe v12)))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                       v5
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (d_'10214'_'10215'H_532
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                          v11)
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                          (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v17
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                           (coe v5) in
                                 coe
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v17) in
                                    coe
                                      (let v19
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                 (coe v18) in
                                       coe
                                         (let v20
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                    (coe v19) in
                                          coe
                                            (let v21
                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                       (coe v20) in
                                             coe
                                               (let v22
                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                          (coe v21) in
                                                coe
                                                  (let v23
                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                             (coe v22) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                           (coe v23)))))))))))))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe du_0N_714 (coe v4) (coe v8)) (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                             (coe v5)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                             (coe v5)))
                       (let v17
                              = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                     (let v17
                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                (coe v5) in
                                      coe
                                        (let v18
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                   (coe v17) in
                                         coe
                                           (let v19
                                                  = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                      (coe v18) in
                                            coe
                                              (let v20
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                         (coe v19) in
                                               coe
                                                 (let v21
                                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                            (coe v20) in
                                                  coe
                                                    (let v22
                                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                               (coe v21) in
                                                     coe
                                                       (let v23
                                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                  (coe v22) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                (coe v23))))))))))) in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                (coe v17))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                   (coe v5)))))
                       (coe
                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                             (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                     (coe v5)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe du_0N_714 (coe v4) (coe v8)) (coe v12))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                (coe v5)))
                          (coe
                             d_0N'45'homo_952 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))))
             C__'42'x'43'__522 v17 v18
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v19 v20 v21 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v21)
                    (d_'10214'_'10215'H_532
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                          (coe v5) (coe v6) (coe v7) (coe v8)
                          (coe
                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                             (coe v17))
                          (coe v18))
                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                       v5
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (d_'10214'_'10215'H_532
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                          v11)
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v17)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v18) (coe v12))))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v19
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                           (coe v5) in
                                 coe
                                   (let v20
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v19) in
                                    coe
                                      (let v21
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                 (coe v20) in
                                       coe
                                         (let v22
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                    (coe v21) in
                                          coe
                                            (let v23
                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                       (coe v22) in
                                             coe
                                               (let v24
                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                          (coe v23) in
                                                coe
                                                  (let v25
                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                             (coe v24) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                           (coe v25)))))))))))))
                       (d_'10214'_'10215'H_532
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8)
                             (coe
                                d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                (coe v17))
                             (coe v18))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                   (coe C__'42'x'43'__522 v14 v15) (coe v17))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v18) (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v17)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v18) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v19
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v20
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v19) in
                                       coe
                                         (let v21
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v20) in
                                          coe
                                            (let v22
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v21) in
                                             coe
                                               (let v23
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v22) in
                                                coe
                                                  (let v24
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v23) in
                                                   coe
                                                     (let v25
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v24) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v25)))))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                      (coe C__'42'x'43'__522 v14 v15) (coe v17))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v18) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v17)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v18) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v17)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v19) in
                                          coe
                                            (let v21
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v20) in
                                             coe
                                               (let v22
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v21) in
                                                coe
                                                  (let v23
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v22) in
                                                   coe
                                                     (let v24
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v23) in
                                                      coe
                                                        (let v25
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v24) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v25)))))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v18) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v18) (coe v12))))
                             (let v19
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v19
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v20
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v19) in
                                               coe
                                                 (let v21
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v20) in
                                                  coe
                                                    (let v22
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v21) in
                                                     coe
                                                       (let v23
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v22) in
                                                        coe
                                                          (let v24
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v23) in
                                                           coe
                                                             (let v25
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v24) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v25))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v19))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8)
                                            (coe C__'42'x'43'__522 v14 v15)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                         v5
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                            v5
                                            (d_'10214'_'10215'H_532
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v17)
                                               (coe
                                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                            v11)
                                         (d_'10214'_'10215'N_536
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v18) (coe v12))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8320'_260 (coe v5)
                                (coe
                                   d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                   (coe C__'42'x'43'__522 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v18) (coe v12))
                                (coe v11)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   d_'43'H'45'homo_1066 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                   (coe C__'42'x'43'__522 v14 v15) (coe v17)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5)))))
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8)
                                         (coe C__'42'x'43'__522 v14 v15) (coe v17))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11 v11)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5))))))))))
                                   v11))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5)))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8)
                                         (coe C__'42'x'43'__522 v14 v15) (coe v17))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                           (coe v5))))))))))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12)))))
                       (d_'42'x'43'HN'8776''42'x'43'_990
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__522 v14 v15)
                             (coe v17))
                          (coe v18) (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*NH-homo
d_'42'NH'45'homo_1150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 ->
  T_HNF_512 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'NH'45'homo_1150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = case coe v10 of
      C_'8709'_518
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                v5
                (d_'10214'_'10215'N_536
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v9) (coe v12))
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                   (coe v5)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                (coe v5))
             (let v14
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                        (coe v5) in
              coe
                (let v15
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v14) in
                 coe
                   (let v16
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v15) in
                    coe
                      (coe
                         MAlonzo.Code.Algebra.Structures.du_zero'691'_1220
                         (coe
                            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                            (coe v16))
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v12))))))
      C__'42'x'43'__522 v14 v15
        -> let v16
                 = d__'8799'N__596
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v9) (coe du_0N_714 (coe v4) (coe v8)) in
           coe
             (case coe v16 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                  -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (\ v18 v19 v20 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v20)
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                          (coe v5))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v9) (coe v12))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v18) in
                                       coe
                                         (let v20
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v19) in
                                          coe
                                            (let v21
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v20) in
                                             coe
                                               (let v22
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v21) in
                                                coe
                                                  (let v23
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v22) in
                                                   coe
                                                     (let v24
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v23) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v24)))))))))))))
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                             (coe v5))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                (coe v5))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v9) (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v18) in
                                          coe
                                            (let v20
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v19) in
                                             coe
                                               (let v21
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v20) in
                                                coe
                                                  (let v22
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v21) in
                                                   coe
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v22) in
                                                      coe
                                                        (let v24
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v23) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v24)))))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                   (coe v5))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (let v18
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v18
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v19
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v18) in
                                               coe
                                                 (let v20
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v19) in
                                                  coe
                                                    (let v21
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v20) in
                                                     coe
                                                       (let v22
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v21) in
                                                        coe
                                                          (let v23
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v22) in
                                                           coe
                                                             (let v24
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v23) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v24))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v18))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                         v5
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                            v5
                                            (d_'10214'_'10215'H_532
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v14)
                                               (coe
                                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                            v11)
                                         (d_'10214'_'10215'N_536
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))))))
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   d_0'8776''10214'0'10215'_964 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v17)
                                   (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5)))))
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                      (coe v5))
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v9) (coe v12))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15) (coe v12)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5))))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                   (coe v5))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                (coe v5))
                             (let v18
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5) in
                              coe
                                (let v19
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                           (coe v18) in
                                 coe
                                   (let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                              (coe v19) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_zero'737'_1218
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                                            (coe v20))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                            v5
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                               v5
                                               (d_'10214'_'10215'H_532
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                  (coe
                                                     MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11
                                                     v12))
                                               v11)
                                            (d_'10214'_'10215'N_536
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v15)
                                               (coe v12)))))))))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (\ v17 v18 v19 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v19)
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8)
                             (coe
                                d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe v9) (coe v15))
                             (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v9) (coe v12))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v17) in
                                       coe
                                         (let v19
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v18) in
                                          coe
                                            (let v20
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v19) in
                                             coe
                                               (let v21
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v20) in
                                                coe
                                                  (let v22
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v21) in
                                                   coe
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v22) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v23)))))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v15))
                                (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v9) (coe v12))
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v9) (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v17) in
                                          coe
                                            (let v19
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v18) in
                                             coe
                                               (let v20
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v19) in
                                                coe
                                                  (let v21
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v20) in
                                                   coe
                                                     (let v22
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v21) in
                                                      coe
                                                        (let v23
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v22) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v23)))))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v9) (coe v12))
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (let v17
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v17
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v18
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v17) in
                                               coe
                                                 (let v19
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v18) in
                                                  coe
                                                    (let v20
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v19) in
                                                     coe
                                                       (let v21
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v20) in
                                                        coe
                                                          (let v22
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v21) in
                                                           coe
                                                             (let v23
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v22) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v23))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v17))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                         v5
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                            v5
                                            (d_'10214'_'10215'H_532
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v14)
                                               (coe
                                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                            v11)
                                         (d_'10214'_'10215'N_536
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8323'_324 (coe v5)
                                (coe
                                   d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))
                                (coe v11)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   d_'42'NH'45'homo_1150 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14)
                                   (coe v11) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5)))))
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11 v11)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5))))))))))
                                   v11))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5)))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v15))
                                   (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v9) (coe v12))
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (coe
                                d_'42'N'45'homo_1182 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v15) (coe v12))))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*HN-homo
d_'42'HN'45'homo_1162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 ->
  T_Normal_514 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'HN'45'homo_1162 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = case coe v9 of
      C_'8709'_518
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                v5
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                   (coe v5))
                (d_'10214'_'10215'N_536
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v10) (coe v12)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                (coe v5))
             (let v14
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                        (coe v5) in
              coe
                (let v15
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v14) in
                 coe
                   (let v16
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v15) in
                    coe
                      (coe
                         MAlonzo.Code.Algebra.Structures.du_zero'737'_1218
                         (coe
                            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                            (coe v16))
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v10) (coe v12))))))
      C__'42'x'43'__522 v14 v15
        -> let v16
                 = d__'8799'N__596
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v10) (coe du_0N_714 (coe v4) (coe v8)) in
           coe
             (case coe v16 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                  -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (\ v18 v19 v20 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v20)
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                          (coe v5))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12)))
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v10) (coe v12)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v18) in
                                       coe
                                         (let v20
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v19) in
                                          coe
                                            (let v21
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v20) in
                                             coe
                                               (let v22
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v21) in
                                                coe
                                                  (let v23
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v22) in
                                                   coe
                                                     (let v24
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v23) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v24)))))))))))))
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                             (coe v5))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                (coe v5)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v10) (coe v12)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v18) in
                                          coe
                                            (let v20
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v19) in
                                             coe
                                               (let v21
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v20) in
                                                coe
                                                  (let v22
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v21) in
                                                   coe
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v22) in
                                                      coe
                                                        (let v24
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v23) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v24)))))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                   (coe v5)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12)))
                             (let v18
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v18
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v19
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v18) in
                                               coe
                                                 (let v20
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v19) in
                                                  coe
                                                    (let v21
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v20) in
                                                     coe
                                                       (let v22
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v21) in
                                                        coe
                                                          (let v23
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v22) in
                                                           coe
                                                             (let v24
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v23) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v24))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v18))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                         v5
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                            v5
                                            (d_'10214'_'10215'H_532
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v14)
                                               (coe
                                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                            v11)
                                         (d_'10214'_'10215'N_536
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v15) (coe v12)))
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v10) (coe v12)))))
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5))))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5)))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15) (coe v12)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (d_'10214'_'10215'H_532
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15) (coe v12)))
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                      (coe v5))
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v10) (coe v12)))
                                (coe
                                   d_0'8776''10214'0'10215'_964 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v10) (coe v17)
                                   (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                   (coe v5)))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                (coe v5))
                             (let v18
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5) in
                              coe
                                (let v19
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                           (coe v18) in
                                 coe
                                   (let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                              (coe v19) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_zero'691'_1220
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                                            (coe v20))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                            v5
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                               v5
                                               (d_'10214'_'10215'H_532
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                  (coe
                                                     MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11
                                                     v12))
                                               v11)
                                            (d_'10214'_'10215'N_536
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v15)
                                               (coe v12)))))))))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (\ v17 v18 v19 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v19)
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215'H_532
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8)
                             (coe
                                d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe v15) (coe v10))
                             (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12)))
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v10) (coe v12)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v17) in
                                       coe
                                         (let v19
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v18) in
                                          coe
                                            (let v20
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v19) in
                                             coe
                                               (let v21
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v20) in
                                                coe
                                                  (let v22
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v21) in
                                                   coe
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v22) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v23)))))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v10))
                                (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v10) (coe v12)))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v10) (coe v12)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v17) in
                                          coe
                                            (let v19
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v18) in
                                             coe
                                               (let v20
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v19) in
                                                coe
                                                  (let v21
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v20) in
                                                   coe
                                                     (let v22
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v21) in
                                                      coe
                                                        (let v23
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v22) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v23)))))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v10) (coe v12)))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v10) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12)))
                             (let v17
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v17
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v18
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v17) in
                                               coe
                                                 (let v19
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v18) in
                                                  coe
                                                    (let v20
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v19) in
                                                     coe
                                                       (let v21
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v20) in
                                                        coe
                                                          (let v22
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v21) in
                                                           coe
                                                             (let v23
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v22) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v23))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v17))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                         v5
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                            v5
                                            (d_'10214'_'10215'H_532
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v14)
                                               (coe
                                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                            v11)
                                         (d_'10214'_'10215'N_536
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v15) (coe v12)))
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v10) (coe v12)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8322'_300 (coe v5)
                                (coe
                                   d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                (coe
                                   d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))
                                (coe
                                   d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v10) (coe v12))
                                (coe v11)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   d_'42'HN'45'homo_1162 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10)
                                   (coe v11) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5)))))
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v10) (coe v12)))
                                   v11 v11)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5))))))))))
                                   v11))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5)))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'H_532
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (d_'10214'_'10215'H_532
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12))
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v10) (coe v12)))
                                   v11)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v10))
                                   (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v10) (coe v12))))
                             (coe
                                d_'42'N'45'homo_1182 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v10)
                                (coe v12))))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*H-homo
d_'42'H'45'homo_1172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 ->
  T_HNF_512 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'H'45'homo_1172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_'8709'_518
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                v5
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                   (coe v5))
                (d_'10214'_'10215'H_532
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v10) (coe v11)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                (coe v5))
             (let v13
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                        (coe v5) in
              coe
                (let v14
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v13) in
                 coe
                   (let v15
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v14) in
                    coe
                      (coe
                         MAlonzo.Code.Algebra.Structures.du_zero'737'_1218
                         (coe
                            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                            (coe v15))
                         (d_'10214'_'10215'H_532
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v10) (coe v11))))))
      C__'42'x'43'__522 v13 v14
        -> case coe v10 of
             C_'8709'_518
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                    (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5))))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                       v5
                       (d_'10214'_'10215'H_532
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe C__'42'x'43'__522 v13 v14) (coe v11))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                          (coe v5)))
                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                       (coe v5))
                    (let v16
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                               (coe v5) in
                     coe
                       (let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v16) in
                        coe
                          (let v18
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v17) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_zero'691'_1220
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                                   (coe v18))
                                (d_'10214'_'10215'H_532
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__522 v13 v14) (coe v11))))))
             C__'42'x'43'__522 v16 v17
               -> case coe v11 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20
                      -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                           (\ v21 v22 v23 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v23)
                           (d_'10214'_'10215'H_532
                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                              (coe v7) (coe v8)
                              (coe
                                 d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                 (coe v5) (coe v6) (coe v7) (coe v8)
                                 (coe
                                    d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8)
                                    (coe
                                       d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                    (coe
                                       d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe v17))
                                       (coe
                                          d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                          (coe v16))))
                                 (coe
                                    d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17)))
                              (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                           (coe
                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                              v5
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (d_'10214'_'10215'H_532
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v13)
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v14) (coe v20)))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (d_'10214'_'10215'H_532
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v16)
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v17) (coe v20))))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v21
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                  (coe v5) in
                                        coe
                                          (let v22
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe v21) in
                                           coe
                                             (let v23
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe v22) in
                                              coe
                                                (let v24
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                           (coe v23) in
                                                 coe
                                                   (let v25
                                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                              (coe v24) in
                                                    coe
                                                      (let v26
                                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                 (coe v25) in
                                                       coe
                                                         (let v27
                                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                    (coe v26) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                  (coe v27)))))))))))))
                              (d_'10214'_'10215'H_532
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8)
                                    (coe
                                       d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3)
                                       (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                       (coe
                                          d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v17))
                                          (coe
                                             d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                             (coe v16))))
                                    (coe
                                       d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17)))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (d_'10214'_'10215'H_532
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v16))
                                          (coe
                                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v17))
                                             (coe
                                                d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v14) (coe v16))))
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_536
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8)
                                    (coe
                                       d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                    (coe v20)))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (d_'10214'_'10215'H_532
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (d_'10214'_'10215'H_532
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v21
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                     (coe v5) in
                                           coe
                                             (let v22
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe v21) in
                                              coe
                                                (let v23
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                           (coe v22) in
                                                 coe
                                                   (let v24
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                              (coe v23) in
                                                    coe
                                                      (let v25
                                                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                 (coe v24) in
                                                       coe
                                                         (let v26
                                                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                    (coe v25) in
                                                          coe
                                                            (let v27
                                                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                       (coe v26) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                     (coe v27)))))))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (d_'10214'_'10215'H_532
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v16))
                                             (coe
                                                d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v17))
                                                (coe
                                                   d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v14) (coe v16))))
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_536
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                       (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe v13) (coe v16))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v17))
                                                (coe
                                                   d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v14) (coe v16)))
                                             (coe
                                                MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20)))
                                       v19)
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v16)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v21
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5) in
                                              coe
                                                (let v22
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe v21) in
                                                 coe
                                                   (let v23
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                              (coe v22) in
                                                    coe
                                                      (let v24
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                 (coe v23) in
                                                       coe
                                                         (let v25
                                                                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                    (coe v24) in
                                                          coe
                                                            (let v26
                                                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                       (coe v25) in
                                                             coe
                                                               (let v27
                                                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                          (coe v26) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                        (coe v27)))))))))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'H__804 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16)))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20)))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20)))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                (let v21
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                           (coe v5) in
                                                 coe
                                                   (let v22
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                              (coe v21) in
                                                    coe
                                                      (let v23
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                 (coe v22) in
                                                       coe
                                                         (let v24
                                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                    (coe v23) in
                                                          coe
                                                            (let v25
                                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                       (coe v24) in
                                                             coe
                                                               (let v26
                                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                          (coe v25) in
                                                                coe
                                                                  (let v27
                                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                             (coe v26) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                           (coe v27)))))))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'N_536
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v17) (coe v20)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'N_536
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v14) (coe v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                   (let v21
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5) in
                                                    coe
                                                      (let v22
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                 (coe v21) in
                                                       coe
                                                         (let v23
                                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                    (coe v22) in
                                                          coe
                                                            (let v24
                                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                       (coe v23) in
                                                             coe
                                                               (let v25
                                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                          (coe v24) in
                                                                coe
                                                                  (let v26
                                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                             (coe v25) in
                                                                   coe
                                                                     (let v27
                                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                                (coe v26) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                              (coe v27)))))))))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
                                          (let v21
                                                 = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                        (let v21
                                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                   (coe v5) in
                                                         coe
                                                           (let v22
                                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                      (coe v21) in
                                                            coe
                                                              (let v23
                                                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                         (coe v22) in
                                                               coe
                                                                 (let v24
                                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                            (coe v23) in
                                                                  coe
                                                                    (let v25
                                                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                               (coe v24) in
                                                                     coe
                                                                       (let v26
                                                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                                  (coe v25) in
                                                                        coe
                                                                          (let v27
                                                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                                     (coe v26) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                                (coe
                                                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                                   (coe
                                                                                      v27))))))))))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                   (coe v21))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         v19)
                                                      (d_'10214'_'10215'N_536
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v14) (coe v20)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         v19)
                                                      (d_'10214'_'10215'N_536
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v17) (coe v20))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8324'_344
                                             (coe v5)
                                             (coe
                                                d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             (coe
                                                d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v14) (coe v20))
                                             (coe
                                                d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20))
                                             (coe
                                                d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v17) (coe v20))
                                             (coe v19)))
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                          (coe
                                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                             (coe
                                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                              (coe v5))))))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19))
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                                   (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                           (coe v5)))))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__800 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__796 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))))
                                                (coe
                                                   MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                   (coe
                                                      d_'42'HN'45'homo_1162 (coe v0) (coe v1)
                                                      (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                                      (coe v7) (coe v8) (coe v13) (coe v17)
                                                      (coe v19) (coe v20))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                                      (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                              (coe v5)))))))))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__800 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__796 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))))
                                                   (coe
                                                      d_'42'NH'45'homo_1150 (coe v0) (coe v1)
                                                      (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                                      (coe v7) (coe v8) (coe v14) (coe v16)
                                                      (coe v19) (coe v20))))
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                                (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                            (coe v5)))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__800 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__796 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))))
                                                v19 v19)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                           (coe v5))))))))))
                                                v19))
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                             (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                     (coe v5)))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__800 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__796 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                         v5
                                                         (d_'10214'_'10215'N_536
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_532
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                               v19 v20)))))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                        (coe v5))))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_536
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                          (coe
                                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                             (coe
                                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                (coe
                                                   d_'42'H'45'homo_1172 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v16)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                               (coe v5)))))
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__804 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))
                                                   v19 v19)
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                              (coe v5))))))))))
                                                   v19))
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                                (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                        (coe v5)))))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__804 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))
                                                   v19)
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'43'H__754 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8)
                                                      (coe
                                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))))
                                             (coe
                                                d_'43'H'45'homo_1066 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8)
                                                (coe
                                                   d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v17))
                                                (coe
                                                   d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v14) (coe v16))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20)))
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                             (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                         (coe v5)))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__804 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'43'H__754 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8)
                                                      (coe
                                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))))
                                             v19 v19)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                        (coe v5))))))))))
                                             v19))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                          (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                  (coe v5)))))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__804 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'43'H__754 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8)
                                                      (coe
                                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20)))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                      v5
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_532
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                                   v5
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_532
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                                                         v19 v20))))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                     (coe v5))))))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                             v5
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_536
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                       (coe
                                          d_'42'x'43'H'45'homo_1120 (coe v0) (coe v1) (coe v2)
                                          (coe v3) (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v16))
                                          (coe
                                             d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v17))
                                             (coe
                                                d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v14) (coe v16)))
                                          (coe v19) (coe v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                          (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5)))))
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8)
                                                (coe
                                                   d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe v13) (coe v16))
                                                (coe
                                                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16))))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'H__804 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16)))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20)))
                                          v19 v19)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                     (coe v5))))))))))
                                          v19))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                       (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                               (coe v5)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'H_532
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8)
                                                (coe
                                                   d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe v13) (coe v16))
                                                (coe
                                                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16))))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                                v5
                                                (d_'10214'_'10215'H_532
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'H__804 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'H_532
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__800 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__796 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16)))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19
                                                   v20)))
                                          v19)
                                       (d_'10214'_'10215'N_536
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                             (coe v17))
                                          (coe v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                          v5
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_536
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       d_'42'N'45'homo_1182 (coe v0) (coe v1) (coe v2) (coe v3)
                                       (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                       (coe v17) (coe v20))))
                              (d_'42'x'43'HN'8776''42'x'43'_990
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'42'x'43'H__782 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8)
                                    (coe
                                       d__'42'H__804 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                    (coe
                                       d__'43'H__754 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'HN__800 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe v17))
                                       (coe
                                          d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                          (coe v16))))
                                 (coe
                                    d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*N-homo
d_'42'N'45'homo_1182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 ->
  T_Normal_514 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'42'N'45'homo_1182 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_con_524 v12
        -> case coe v10 of
             C_con_524 v13
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'42''45'homo_760
                    v6 v12 v13
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_528 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                C_poly_528 v16
                  -> coe
                       d_'42'H'45'homo_1172 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v14) (coe v13) (coe v16) (coe v11)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.^N-homo
d_'94'N'45'homo_1308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'94'N'45'homo_1308 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v10 of
      0 -> coe
             d_1N'45'homo_976 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v11)
      _ -> let v12 = subInt (coe v10) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v13 v14 v15 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v15)
                (d_'10214'_'10215'N_536
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8) (coe v9)
                      (coe
                         d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12)))
                   (coe v11))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                   v5
                   (d_'10214'_'10215'N_536
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9) (coe v11))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                  (coe v5)))))
                      (coe
                         d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                      (coe v12)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v13
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                       (coe v5) in
                             coe
                               (let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                          (coe v13) in
                                coe
                                  (let v15
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                             (coe v14) in
                                   coe
                                     (let v16
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe v15) in
                                      coe
                                        (let v17
                                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe v16) in
                                         coe
                                           (let v18
                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe v17) in
                                            coe
                                              (let v19
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe v18) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                       (coe v19)))))))))))))
                   (d_'10214'_'10215'N_536
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8)
                      (coe
                         d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8) (coe v9)
                         (coe
                            d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8) (coe v9) (coe v12)))
                      (coe v11))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                      v5
                      (d_'10214'_'10215'N_536
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9) (coe v11))
                      (d_'10214'_'10215'N_536
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8)
                         (coe
                            d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                         (coe v11)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                      v5
                      (d_'10214'_'10215'N_536
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9) (coe v11))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                     (coe v5)))))
                         (coe
                            d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                         (coe v12)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                               (let v13
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                          (coe v5) in
                                coe
                                  (let v14
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                             (coe v13) in
                                   coe
                                     (let v15
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                (coe v14) in
                                      coe
                                        (let v16
                                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                   (coe v15) in
                                         coe
                                           (let v17
                                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                      (coe v16) in
                                            coe
                                              (let v18
                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe v17) in
                                               coe
                                                 (let v19
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe v18) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                          (coe v19)))))))))))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                         v5
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v11))
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                            (coe v11)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                         v5
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v11))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                        (coe v5)))))
                            (coe
                               d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                               (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                            (coe v12)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                         v5
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v11))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                        (coe v5)))))
                            (coe
                               d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                               (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                            (coe v12)))
                      (let v13
                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v13
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5) in
                                     coe
                                       (let v14
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe v13) in
                                        coe
                                          (let v15
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                     (coe v14) in
                                           coe
                                             (let v16
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                        (coe v15) in
                                              coe
                                                (let v17
                                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                           (coe v16) in
                                                 coe
                                                   (let v18
                                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                              (coe v17) in
                                                    coe
                                                      (let v19
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                 (coe v18) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                               (coe v19))))))))))) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v13))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                               v5
                               (d_'10214'_'10215'N_536
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v9) (coe v11))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                                           (coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                              (coe v5)))))
                                  (coe
                                     d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                     (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                                     (coe v11))
                                  (coe v12)))))
                      (coe
                         MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe
                                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                       (coe v5))))))))))
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8) (coe v9) (coe v11)))
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                            (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5)))))
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8) (coe v9) (coe v11))
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8) (coe v9) (coe v11))
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                  (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                               (coe v11))
                            (let v13
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                          (coe v5)) in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                                        (coe v13)))
                                  (coe
                                     d_'10214'_'10215'N_536 (coe v0) (coe v1) (coe v2) (coe v3)
                                     (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                                     (coe v11))
                                  (coe v12))))
                         (coe
                            d_'94'N'45'homo_1308 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v12) (coe v11))))
                   (d_'42'N'45'homo_1182
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9)
                      (coe
                         d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                      (coe v11))))
-- Algebra.Solver.Ring.-H‿-homo
d_'45'H'8255''45'homo_1326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_512 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'45'H'8255''45'homo_1326 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v14 v15 v16 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v16)
             (d_'10214'_'10215'H_532
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe v8)
                   (coe
                      d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8)
                      (coe
                         d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8)))
                   (coe v9))
                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                v5
                (d_'10214'_'10215'H_532
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v9)
                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v14
                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                    (coe v5) in
                          coe
                            (let v15
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v14) in
                             coe
                               (let v16
                                      = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                          (coe v15) in
                                coe
                                  (let v17
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                             (coe v16) in
                                   coe
                                     (let v18
                                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                (coe v17) in
                                      coe
                                        (let v19
                                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                   (coe v18) in
                                         coe
                                           (let v20
                                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                      (coe v19) in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                    (coe v20)))))))))))))
                (d_'10214'_'10215'H_532
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'42'NH__796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8)
                      (coe
                         d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8)
                         (coe
                            d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8)))
                      (coe v9))
                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                   v5
                   (d_'10214'_'10215'N_536
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8)
                      (coe
                         d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8)
                         (coe
                            d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8)))
                      (coe v13))
                   (d_'10214'_'10215'H_532
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9)
                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                   v5
                   (d_'10214'_'10215'H_532
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9)
                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v14
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                       (coe v5) in
                             coe
                               (let v15
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                          (coe v14) in
                                coe
                                  (let v16
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                             (coe v15) in
                                   coe
                                     (let v17
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe v16) in
                                      coe
                                        (let v18
                                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe v17) in
                                         coe
                                           (let v19
                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe v18) in
                                            coe
                                              (let v20
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe v19) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                       (coe v20)))))))))))))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                      v5
                      (d_'10214'_'10215'N_536
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8)
                         (coe
                            d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8)
                            (coe
                               d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8)))
                         (coe v13))
                      (d_'10214'_'10215'H_532
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9)
                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                      v5
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                            (coe v5)))
                      (d_'10214'_'10215'H_532
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9)
                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                      v5
                      (d_'10214'_'10215'H_532
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9)
                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                               (let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                          (coe v5) in
                                coe
                                  (let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                             (coe v14) in
                                   coe
                                     (let v16
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                (coe v15) in
                                      coe
                                        (let v17
                                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                   (coe v16) in
                                         coe
                                           (let v18
                                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                      (coe v17) in
                                            coe
                                              (let v19
                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe v18) in
                                               coe
                                                 (let v20
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe v19) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                          (coe v20)))))))))))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                         v5
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                            v5
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                               (coe v5)))
                         (d_'10214'_'10215'H_532
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                         v5
                         (d_'10214'_'10215'H_532
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                         v5
                         (d_'10214'_'10215'H_532
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                      (let v14
                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v14
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5) in
                                     coe
                                       (let v15
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe v14) in
                                        coe
                                          (let v16
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                     (coe v15) in
                                           coe
                                             (let v17
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                        (coe v16) in
                                              coe
                                                (let v18
                                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                           (coe v17) in
                                                 coe
                                                   (let v19
                                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                              (coe v18) in
                                                    coe
                                                      (let v20
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                 (coe v19) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                               (coe v20))))))))))) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v14))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                               v5
                               (d_'10214'_'10215'H_532
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v9)
                                  (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8327'_384 (coe v5)
                         (coe
                            d_'10214'_'10215'H_532 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13))))
                   (coe
                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_448
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                    (coe v5))))))))))
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8)
                               (coe
                                  d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8)))
                            (coe v13))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                            v5
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13)))
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                            (\ v14 v15 -> v15)
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                               (coe v5))
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13))
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                               (coe v5)))
                         (d_'45'N'8255''45'homo_1334
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8))
                            (coe v13))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45''8255'cong_64
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                               (coe v5))
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13))
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                               (coe v5))
                            (d_1N'45'homo_976
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8) (coe v13))))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                         (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                     (coe v5)))))
                         (d_'10214'_'10215'N_536
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8)
                               (coe
                                  d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8)))
                            (coe v13))
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                            (\ v14 v15 -> v15)
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                               (coe v5))
                            (d_'10214'_'10215'N_536
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13))
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                               (coe v5)))
                         (d_'10214'_'10215'H_532
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13))
                         (d_'10214'_'10215'H_532
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_448
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                    (coe v5))))))))))
                         (d_'10214'_'10215'H_532
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13)))))
                (d_'42'NH'45'homo_1150
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8)
                      (coe
                         d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8)))
                   (coe v9) (coe v12) (coe v13)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.-N‿-homo
d_'45'N'8255''45'homo_1334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_514 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'45'N'8255''45'homo_1334 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_524 v11
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45''8255'homo_762
             v6 v11
      C_poly_528 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                d_'45'H'8255''45'homo_1326 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v4) (coe v5) (coe v6) (coe v7) (coe v13) (coe v12) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.correct-con
d_correct'45'con_1354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_correct'45'con_1354 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                        (coe v5))))))))))
             (d_'10214'_'10215'N_536
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe (0 :: Integer))
                (coe
                   d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe (0 :: Integer)) (coe v9))
                (coe v10))
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v15 v16 v17 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v17)
                (d_'10214'_'10215'H_532
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v14)
                   (coe
                      d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v14) (coe C_'8709'_518)
                      (coe
                         d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v14) (coe v9)))
                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
                   v6 v9)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v15
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                       (coe v5) in
                             coe
                               (let v16
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                          (coe v15) in
                                coe
                                  (let v17
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                             (coe v16) in
                                   coe
                                     (let v18
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe v17) in
                                      coe
                                        (let v19
                                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe v18) in
                                         coe
                                           (let v20
                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe v19) in
                                            coe
                                              (let v21
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe v20) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                       (coe v21)))))))))))))
                   (d_'10214'_'10215'H_532
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v14)
                      (coe
                         d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v14) (coe C_'8709'_518)
                         (coe
                            d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v14) (coe v9)))
                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13))
                   (d_'10214'_'10215'N_536
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v14)
                      (coe
                         d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v14) (coe v9))
                      (coe v13))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
                      v6 v9)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                               (let v15
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                          (coe v5) in
                                coe
                                  (let v16
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                             (coe v15) in
                                   coe
                                     (let v17
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                (coe v16) in
                                      coe
                                        (let v18
                                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                   (coe v17) in
                                         coe
                                           (let v19
                                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                      (coe v18) in
                                            coe
                                              (let v20
                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe v19) in
                                               coe
                                                 (let v21
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe v20) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                          (coe v21)))))))))))))
                      (d_'10214'_'10215'N_536
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v14)
                         (coe
                            d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v14) (coe v9))
                         (coe v13))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
                         v6 v9)
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
                         v6 v9)
                      (let v15
                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v15
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5) in
                                     coe
                                       (let v16
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe v15) in
                                        coe
                                          (let v17
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                     (coe v16) in
                                           coe
                                             (let v18
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                        (coe v17) in
                                              coe
                                                (let v19
                                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                           (coe v18) in
                                                 coe
                                                   (let v20
                                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                              (coe v19) in
                                                    coe
                                                      (let v21
                                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                 (coe v20) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                               (coe v21))))))))))) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v15))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_756
                               v6 v9)))
                      (d_correct'45'con_1354
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v14) (coe v9) (coe v13)))
                   (d_'8709''42'x'43'HN'45'homo_1032
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v14)
                      (coe
                         d_normalise'45'con_904 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v14) (coe v9))
                      (coe v12) (coe v13))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.correct-var
d_correct'45'var_1370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_correct'45'var_1370 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> let v12 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v14 v15
                  -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (\ v16 v17 v18 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v18)
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                      (coe v5))
                                   v14)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v12)
                                   (coe
                                      d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                      (coe v6) (coe v7) (coe v12))
                                   (coe v15)))
                             v14)
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v12) (coe du_0N_714 (coe v4) (coe v12)) (coe v15)))
                       v14
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v16
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v16) in
                                       coe
                                         (let v18
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v17) in
                                          coe
                                            (let v19
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v18) in
                                             coe
                                               (let v20
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v19) in
                                                coe
                                                  (let v21
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v20) in
                                                   coe
                                                     (let v22
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v21) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v22)))))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                         (coe v5))
                                      v14)
                                   (d_'10214'_'10215'N_536
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v12)
                                      (coe
                                         d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v12))
                                      (coe v15)))
                                v14)
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v12) (coe du_0N_714 (coe v4) (coe v12)) (coe v15)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                         (coe v5))
                                      v14)
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                                      (coe v5)))
                                v14)
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                (coe v5)))
                          v14
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v16
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v16) in
                                          coe
                                            (let v18
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v17) in
                                             coe
                                               (let v19
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v18) in
                                                coe
                                                  (let v20
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v19) in
                                                   coe
                                                     (let v21
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v20) in
                                                      coe
                                                        (let v22
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v21) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v22)))))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14)
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                                         (coe v5)))
                                   v14)
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                   (coe v5)))
                             v14 v14
                             (let v16
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v16
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v17
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v16) in
                                               coe
                                                 (let v18
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v17) in
                                                  coe
                                                    (let v19
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v18) in
                                                     coe
                                                       (let v20
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v19) in
                                                        coe
                                                          (let v21
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v20) in
                                                           coe
                                                             (let v22
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v21) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v22))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v16))
                                   (coe v14)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8325'_368 (coe v5)
                                (coe v14)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                (coe
                                   MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                                 (coe v5))))))))))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14))
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                      (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5)))))))))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12)
                                         (coe
                                            d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                            (coe v5) (coe v6) (coe v7) (coe v12))
                                         (coe v15))
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                                         (coe v5)))
                                   (coe
                                      d_1N'45'homo_976 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v12) (coe v15)))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                               (coe v5)))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12)
                                         (coe
                                            d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                            (coe v5) (coe v6) (coe v7) (coe v12))
                                         (coe v15)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14)
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                                         (coe v5)))
                                   v14 v14)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                              (coe v5))))))))))
                                   v14))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5)))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14)
                                      (d_'10214'_'10215'N_536
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12)
                                         (coe
                                            d_1N_724 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                            (coe v5) (coe v6) (coe v7) (coe v12))
                                         (coe v15)))
                                   v14)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                         v5
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                            (coe v5))
                                         v14)
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_212
                                         (coe v5)))
                                   v14)
                                (d_'10214'_'10215'N_536
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v12) (coe du_0N_714 (coe v4) (coe v12)) (coe v15))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_210
                                   (coe v5)))
                             (coe
                                d_0N'45'homo_952 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v12) (coe v15))))
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             (case coe v10 of
                MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
                  -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (\ v17 v18 v19 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v19)
                       (d_'10214'_'10215'H_532
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v13)
                          (coe
                             d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v13) (coe C_'8709'_518)
                             (coe
                                d_normalise'45'var_914 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v12)))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16))
                       (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v16) (coe v12))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v17) in
                                       coe
                                         (let v19
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v18) in
                                          coe
                                            (let v20
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v19) in
                                             coe
                                               (let v21
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v20) in
                                                coe
                                                  (let v22
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v21) in
                                                   coe
                                                     (let v23
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v22) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v23)))))))))))))
                          (d_'10214'_'10215'H_532
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v13)
                             (coe
                                d__'42'x'43'HN__732 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v13) (coe C_'8709'_518)
                                (coe
                                   d_normalise'45'var_914 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v13) (coe v12)))
                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16))
                          (d_'10214'_'10215'N_536
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v13)
                             (coe
                                d_normalise'45'var_914 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v12))
                             (coe v16))
                          (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v16) (coe v12))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                 (coe v5) in
                                       coe
                                         (let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                    (coe v17) in
                                          coe
                                            (let v19
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                       (coe v18) in
                                             coe
                                               (let v20
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                          (coe v19) in
                                                coe
                                                  (let v21
                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                             (coe v20) in
                                                   coe
                                                     (let v22
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe v21) in
                                                      coe
                                                        (let v23
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v22) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v23)))))))))))))
                             (d_'10214'_'10215'N_536
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v13)
                                (coe
                                   d_normalise'45'var_914 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v13) (coe v12))
                                (coe v16))
                             (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v16) (coe v12))
                             (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v16) (coe v12))
                             (let v17
                                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                           (let v17
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                      (coe v5) in
                                            coe
                                              (let v18
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v17) in
                                               coe
                                                 (let v19
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                            (coe v18) in
                                                  coe
                                                    (let v20
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                               (coe v19) in
                                                     coe
                                                       (let v21
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                                  (coe v20) in
                                                        coe
                                                          (let v22
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                     (coe v21) in
                                                           coe
                                                             (let v23
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                        (coe v22) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                      (coe v23))))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                      (coe v17))
                                   (coe
                                      MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v16) (coe v12))))
                             (d_correct'45'var_1370
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v13) (coe v12) (coe v16)))
                          (d_'8709''42'x'43'HN'45'homo_1032
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v13)
                             (coe
                                d_normalise'45'var_914 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v12))
                             (coe v15) (coe v16)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.correct
d_correct_1388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_424 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_correct_1388 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_op_434 v11 v12 v13
        -> case coe v11 of
             C_'91''43''93'_418
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v14 v15 v16 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v16)
                    (d_'10214'_'10215'N_536
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8)
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)))
                       (coe v10))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                       v5
                       (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                       (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v14
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                           (coe v5) in
                                 coe
                                   (let v15
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v14) in
                                    coe
                                      (let v16
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                 (coe v15) in
                                       coe
                                         (let v17
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                    (coe v16) in
                                          coe
                                            (let v18
                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                       (coe v17) in
                                             coe
                                               (let v19
                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                          (coe v18) in
                                                coe
                                                  (let v20
                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                             (coe v19) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                           (coe v20)))))))))))))
                       (d_'10214'_'10215'N_536
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'N__758 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8)
                             (coe
                                d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                             (coe
                                d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)))
                          (coe v10))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (d_'10214'_'10215''8595'_942
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v12) (coe v10))
                          (d_'10214'_'10215''8595'_942
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                          v5
                          (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                          (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v14
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v15
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v14) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v15) in
                                          coe
                                            (let v17
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v16) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v17) in
                                                coe
                                                  (let v19
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v18) in
                                                   coe
                                                     (let v20
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v19) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v20)))))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (d_'10214'_'10215''8595'_942
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v12) (coe v10))
                             (d_'10214'_'10215''8595'_942
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                             v5
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (let v14
                                 = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                        (let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                   (coe v5) in
                                         coe
                                           (let v15
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                      (coe v14) in
                                            coe
                                              (let v16
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                         (coe v15) in
                                               coe
                                                 (let v17
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                            (coe v16) in
                                                  coe
                                                    (let v18
                                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                               (coe v17) in
                                                     coe
                                                       (let v19
                                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                  (coe v18) in
                                                        coe
                                                          (let v20
                                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                     (coe v19) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                   (coe v20))))))))))) in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                   (coe v14))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__204
                                   v5
                                   (coe
                                      du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                                   (coe
                                      du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13)
                                      (coe v10)))))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                d_correct_1388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12) (coe v10))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                        (coe v5)))))))))
                                (d_'10214'_'10215''8595'_942
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v12) (coe v10))
                                (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                                (d_'10214'_'10215''8595'_942
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v13) (coe v10))
                                (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                             (coe
                                d_correct_1388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v10))))
                       (d_'43'N'45'homo_1076
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13))
                          (coe v10)))
             C_'91''42''93'_420
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v14 v15 v16 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v16)
                    (d_'10214'_'10215'N_536
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8)
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)))
                       (coe v10))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                       v5
                       (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                       (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v14
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                           (coe v5) in
                                 coe
                                   (let v15
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v14) in
                                    coe
                                      (let v16
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                 (coe v15) in
                                       coe
                                         (let v17
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                    (coe v16) in
                                          coe
                                            (let v18
                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                       (coe v17) in
                                             coe
                                               (let v19
                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                          (coe v18) in
                                                coe
                                                  (let v20
                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                             (coe v19) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                           (coe v20)))))))))))))
                       (d_'10214'_'10215'N_536
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'N__808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8)
                             (coe
                                d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                             (coe
                                d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)))
                          (coe v10))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (d_'10214'_'10215''8595'_942
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v12) (coe v10))
                          (d_'10214'_'10215''8595'_942
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                          v5
                          (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                          (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v14
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                              (coe v5) in
                                    coe
                                      (let v15
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v14) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                    (coe v15) in
                                          coe
                                            (let v17
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                       (coe v16) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                          (coe v17) in
                                                coe
                                                  (let v19
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v18) in
                                                   coe
                                                     (let v20
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v19) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v20)))))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (d_'10214'_'10215''8595'_942
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v12) (coe v10))
                             (d_'10214'_'10215''8595'_942
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                             v5
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (let v14
                                 = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                        (let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                                   (coe v5) in
                                         coe
                                           (let v15
                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                      (coe v14) in
                                            coe
                                              (let v16
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                         (coe v15) in
                                               coe
                                                 (let v17
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                            (coe v16) in
                                                  coe
                                                    (let v18
                                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                               (coe v17) in
                                                     coe
                                                       (let v19
                                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                  (coe v18) in
                                                        coe
                                                          (let v20
                                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                     (coe v19) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                   (coe v20))))))))))) in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                   (coe v14))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__206
                                   v5
                                   (coe
                                      du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                                   (coe
                                      du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13)
                                      (coe v10)))))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                             (coe
                                d_correct_1388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12) (coe v10))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1338
                                (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                            (coe v5)))))
                                (d_'10214'_'10215''8595'_942
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v12) (coe v10))
                                (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v12) (coe v10))
                                (d_'10214'_'10215''8595'_942
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v13) (coe v10))
                                (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v13) (coe v10)))
                             (coe
                                d_correct_1388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v10))))
                       (d_'42'N'45'homo_1182
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                          (coe
                             d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13))
                          (coe v10)))
             _ -> MAlonzo.RTE.mazUnreachableError
      C_con_438 v11
        -> coe
             d_correct'45'con_1354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10)
      C_var_442 v11
        -> coe
             d_correct'45'var_1370 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10)
      C__'58''94'__448 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v13 v14 v15 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v15)
             (d_'10214'_'10215'N_536
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                   (coe v6) (coe v7) (coe v8)
                   (coe
                      d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                   (coe v12))
                (coe v10))
             (coe
                MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                (coe
                   MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                            (coe v5)))))
                (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10))
                (coe v12))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v13
                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                    (coe v5) in
                          coe
                            (let v14
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v13) in
                             coe
                               (let v15
                                      = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                          (coe v14) in
                                coe
                                  (let v16
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                             (coe v15) in
                                   coe
                                     (let v17
                                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                (coe v16) in
                                      coe
                                        (let v18
                                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                   (coe v17) in
                                         coe
                                           (let v19
                                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                      (coe v18) in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                    (coe v19)))))))))))))
                (d_'10214'_'10215'N_536
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'94'N__880 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8)
                      (coe
                         d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                      (coe v12))
                   (coe v10))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                               (coe v5)))))
                   (coe
                      d_'10214'_'10215''8595'_942 (coe v0) (coe v1) (coe v2) (coe v3)
                      (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                   (coe v12))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                               (coe v5)))))
                   (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10))
                   (coe v12))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v13
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                       (coe v5) in
                             coe
                               (let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                          (coe v13) in
                                coe
                                  (let v15
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                             (coe v14) in
                                   coe
                                     (let v16
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe v15) in
                                      coe
                                        (let v17
                                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe v16) in
                                         coe
                                           (let v18
                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe v17) in
                                            coe
                                              (let v19
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe v18) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                       (coe v19)))))))))))))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                  (coe v5)))))
                      (coe
                         d_'10214'_'10215''8595'_942 (coe v0) (coe v1) (coe v2) (coe v3)
                         (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                      (coe v12))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                  (coe v5)))))
                      (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10))
                      (coe v12))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                  (coe v5)))))
                      (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10))
                      (coe v12))
                   (let v13
                          = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v13
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                            (coe v5) in
                                  coe
                                    (let v14
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                               (coe v13) in
                                     coe
                                       (let v15
                                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe v14) in
                                        coe
                                          (let v16
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe v15) in
                                           coe
                                             (let v17
                                                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                        (coe v16) in
                                              coe
                                                (let v18
                                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                           (coe v17) in
                                                 coe
                                                   (let v19
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                              (coe v18) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                            (coe v19))))))))))) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe v13))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1978
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2140
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                        (coe v5)))))
                            (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10))
                            (coe v12))))
                   (coe
                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                      (coe
                         d_correct_1388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                      (\ v13 v14 ->
                         coe
                           MAlonzo.Code.Algebra.Properties.Semiring.Exp.du_'94''45'cong_218
                           (coe
                              MAlonzo.Code.Algebra.Bundles.du_semiring_2318
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_320
                                 (coe v5)))
                           (coe
                              d_'10214'_'10215''8595'_942 (coe v0) (coe v1) (coe v2) (coe v3)
                              (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                           (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10))
                           (coe v12) v13)
                      erased))
                (d_'94'N'45'homo_1308
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                   (coe v12) (coe v10)))
      C_'58''45'__452 v11
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v12 v13 v14 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v14)
             (d_'10214'_'10215'N_536
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                   (coe v6) (coe v7) (coe v8)
                   (coe
                      d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v11)))
                (coe v10))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                v5
                (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10)))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v12
                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                    (coe v5) in
                          coe
                            (let v13
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v12) in
                             coe
                               (let v14
                                      = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                          (coe v13) in
                                coe
                                  (let v15
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                             (coe v14) in
                                   coe
                                     (let v16
                                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                (coe v15) in
                                      coe
                                        (let v17
                                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                   (coe v16) in
                                         coe
                                           (let v18
                                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                      (coe v17) in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                    (coe v18)))))))))))))
                (d_'10214'_'10215'N_536
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_'45'N__894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8)
                      (coe
                         d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v11)))
                   (coe v10))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                   v5
                   (d_'10214'_'10215''8595'_942
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v11) (coe v10)))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                   v5
                   (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v12
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                       (coe v5) in
                             coe
                               (let v13
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                          (coe v12) in
                                coe
                                  (let v14
                                         = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                             (coe v13) in
                                   coe
                                     (let v15
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                (coe v14) in
                                      coe
                                        (let v16
                                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                   (coe v15) in
                                         coe
                                           (let v17
                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                      (coe v16) in
                                            coe
                                              (let v18
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                         (coe v17) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                       (coe v18)))))))))))))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                      v5
                      (d_'10214'_'10215''8595'_942
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v11) (coe v10)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                      v5
                      (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                      v5
                      (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10)))
                   (let v12
                          = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v12
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                                            (coe v5) in
                                  coe
                                    (let v13
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                               (coe v12) in
                                     coe
                                       (let v14
                                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                                                  (coe v13) in
                                        coe
                                          (let v15
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                                                     (coe v14) in
                                           coe
                                             (let v16
                                                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                                                        (coe v15) in
                                              coe
                                                (let v17
                                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                           (coe v16) in
                                                 coe
                                                   (let v18
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                              (coe v17) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                            (coe v18))))))))))) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe v12))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__208
                            v5
                            (coe
                               du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10)))))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45''8255'cong_64
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                         (coe v5))
                      (d_'10214'_'10215''8595'_942
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v11) (coe v10))
                      (coe du_'10214'_'10215'_484 (coe v5) (coe v6) (coe v11) (coe v10))
                      (d_correct_1388
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v11) (coe v10))))
                (d_'45'N'8255''45'homo_1334
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_normalise_920 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                   (coe v10)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._._⊜_
d__'8860'__1422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_424 ->
  T_Polynomial_424 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8860'__1422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du__'8860'__1422
du__'8860'__1422 ::
  Integer ->
  T_Polynomial_424 ->
  T_Polynomial_424 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8860'__1422 v0
  = coe MAlonzo.Code.Relation.Binary.Reflection.du__'8860'__158
-- Algebra.Solver.Ring._.prove
d_prove_1424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Polynomial_424 -> T_Polynomial_424 -> AgdaAny -> AgdaAny
d_prove_1424 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_prove_106
      (let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                 (coe v5) in
       coe
         (let v9
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v8) in
          coe
            (let v10
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v9) in
             coe
               (let v11
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                          (coe v10) in
                coe
                  (let v12
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                             (coe v11) in
                   coe
                     (let v13
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v12) in
                      coe
                        (let v14
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v13) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v14))))))))))
      (\ v8 v9 v10 ->
         coe du_'10214'_'10215'_484 (coe v5) (coe v6) v9 v10)
      (coe
         d_'10214'_'10215''8595'_942 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4) (coe v5) (coe v6) (coe v7))
      (coe
         d_correct_1388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
-- Algebra.Solver.Ring._.solve
d_solve_1426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__358 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_solve_1426 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_solve_130
      (let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_214
                 (coe v5) in
       coe
         (let v9
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v8) in
          coe
            (let v10
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v9) in
             coe
               (let v11
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                          (coe v10) in
                coe
                  (let v12
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                             (coe v11) in
                   coe
                     (let v13
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v12) in
                      coe
                        (let v14
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v13) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v14))))))))))
      (coe (\ v8 -> coe C_var_442))
      (\ v8 v9 v10 ->
         coe du_'10214'_'10215'_484 (coe v5) (coe v6) v9 v10)
      (coe
         d_'10214'_'10215''8595'_942 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4) (coe v5) (coe v6) (coe v7))
      (coe
         d_correct_1388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
