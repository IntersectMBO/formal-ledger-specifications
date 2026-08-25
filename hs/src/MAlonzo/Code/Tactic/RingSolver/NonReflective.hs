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

module MAlonzo.Code.Tactic.RingSolver.NonReflective where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.List.Kleene.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Expression
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Addition
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Constants
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Exponentiation
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Multiplication
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics

-- Tactic.RingSolver.NonReflective.Ops.zero-homo
d_zero'45'homo_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_zero'45'homo_174 ~v0 ~v1 v2 v3 ~v4 = du_zero'45'homo_174 v2 v3
du_zero'45'homo_174 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny
du_zero'45'homo_174 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'8799'__220
              v0 v1 in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3 -> coe v3
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.RingSolver.NonReflective.Ops.homo
d_homo_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70
d_homo_184 ~v0 ~v1 v2 = du_homo_184 v2
du_homo_184 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70
du_homo_184 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.C_constructor_492
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.C_constructor_60
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
            (coe v0))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                 (coe
                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'8799'__220
                    v0 v1))))
      (coe v0)
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_798
         (coe v0))
      (\ v1 v2 -> coe du_zero'45'homo_174 (coe v0) v1)
-- Tactic.RingSolver.NonReflective.Ops._.⟦_⟧
d_'10214'_'10215'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'_190 ~v0 ~v1 v2 = du_'10214'_'10215'_190 v2
du_'10214'_'10215'_190 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'10214'_'10215'_190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
         (coe v0))
      (coe (\ v4 -> v4)) v2 v3
-- Tactic.RingSolver.NonReflective.Ops._.Poly
d_Poly_232 a0 a1 a2 a3 = ()
-- Tactic.RingSolver.NonReflective.Ops._.Poly.flat
d_flat_340 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_FlatPoly_178
d_flat_340 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_flat_204
      (coe v0)
-- Tactic.RingSolver.NonReflective.Ops._.Poly.i
d_i_342 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  Integer
d_i_342 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i_202
      (coe v0)
-- Tactic.RingSolver.NonReflective.Ops._.Poly.i≤n
d_i'8804'n_344 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_i'8804'n_344 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i'8804'n_206
      (coe v0)
-- Tactic.RingSolver.NonReflective.Ops.norm
d_norm_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
d_norm_354 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Κ_22 v5
        -> coe
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
             (coe (0 :: Integer))
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                (coe v5))
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v3))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Ι_24 v5
        -> let v6
                 = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                     (coe du_homo_184 (coe v2)) in
           coe
             (let v7
                    = coe
                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                        (coe v3) (coe v5) in
              coe
                (let v8
                       = let v8
                               = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                   (coe du_homo_184 (coe v2)) in
                         coe
                           (let v9 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
                            coe
                              (let v10
                                     = coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                         (coe (0 :: Integer))
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'35'_222
                                               (coe v2)))
                                         (coe
                                            MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                                               (coe v3) (coe v5))) in
                               coe
                                 (let v11 = 1 :: Integer in
                                  coe
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'46'extendedlambda1_286
                                       (coe v10) (coe v11) (coe v9)
                                       (let v12
                                              = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'35'_222
                                                  (coe v2) in
                                        coe
                                          (let v13
                                                 = coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                     v8 v12 in
                                           coe
                                             (if coe v13
                                                then coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe v13)
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                else coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe v13)
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))) in
                 coe
                   (let v9
                          = coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                              (coe v5) in
                    coe
                      (case coe v8 of
                         MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                           -> coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                (coe (0 :: Integer))
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                         (coe v6))))
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v3))
                         MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v10
                           -> case coe v10 of
                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v11 v12
                                  -> case coe v11 of
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v13 v14
                                         -> case coe v13 of
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v15
                                                -> case coe v14 of
                                                     0 -> case coe v12 of
                                                            MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                              -> case coe v15 of
                                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v17 v18 v19
                                                                     -> coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                                                          (coe v17) (coe v18)
                                                                          (coe
                                                                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                             (coe
                                                                                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                v19)
                                                                             (coe
                                                                                MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                             (coe v9))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v17
                                                              -> coe
                                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                                                   (coe
                                                                      addInt (coe (1 :: Integer))
                                                                      (coe v7))
                                                                   (coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                         (coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172
                                                                            (coe
                                                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232
                                                                               v15)
                                                                            (coe (0 :: Integer)))
                                                                         (coe v12))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                   (coe v9)
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> coe
                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                                            (coe
                                                               addInt (coe (1 :: Integer)) (coe v7))
                                                            (coe
                                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232
                                                                        v15)
                                                                     (coe v14))
                                                                  (coe v12))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                            (coe v9)
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError))))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C__'8853'__26 v5 v6
        -> coe
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d__'8862'__376
             (coe v0) (coe v1)
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                (coe du_homo_184 (coe v2)))
             (coe v3)
             (coe d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))
             (coe d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C__'8855'__28 v5 v6
        -> coe
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8864''45'step'8242'_560
             v0 v1
             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                (coe du_homo_184 (coe v2)))
             v3 (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))
             (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C__'8859'__30 v5 v6
        -> let v7
                 = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                     (coe du_homo_184 (coe v2)) in
           coe
             (let v8
                    = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
              coe
                (case coe v6 of
                   0 -> coe
                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                          (coe (0 :: Integer))
                          (coe
                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                             (coe
                                MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                   (coe v7))))
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v3))
                   _ -> let v9 = subInt (coe v6) (coe (1 :: Integer)) in
                        coe
                          (coe
                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d__'8865'_'43'1_766
                             (coe v0) (coe v1) (coe v7) (coe v3) (coe v8) (coe v9))))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_'8861'__32 v5
        -> coe
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                (coe du_homo_184 (coe v2)))
             (coe v3)
             (coe d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.NonReflective.Ops.⟦_⇓⟧
d_'10214'_'8659''10215'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v4
  = let v5 = coe du_homo_184 (coe v2) in
    coe
      (let v6
             = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
       coe
         (coe
            (\ v7 ->
               case coe v6 of
                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v8 v9 v10
                   -> case coe v9 of
                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v11
                          -> coe
                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                  (coe v5))
                               v11
                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v12 v13
                          -> let v14
                                   = coe
                                       MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                          (coe v10) (coe v7)) in
                             coe
                               (case coe v12 of
                                  MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v15 v16
                                    -> case coe v15 of
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v17 v18
                                           -> case coe v17 of
                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v19
                                                  -> case coe v14 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                         -> let v23
                                                                  = coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                      (coe v5)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v19) (coe v16))
                                                                      (coe v14) in
                                                            coe
                                                              (case coe v18 of
                                                                 0 -> coe v23
                                                                 _ -> coe
                                                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                        (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                           (coe v5))
                                                                        (let v24
                                                                               = coe
                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                   (coe
                                                                                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                      (coe
                                                                                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                         (coe
                                                                                            MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                            (coe
                                                                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                               (coe
                                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                  (coe
                                                                                                     v5)))))) in
                                                                         coe
                                                                           (let v25
                                                                                  = subInt
                                                                                      (coe v18)
                                                                                      (coe
                                                                                         (1 ::
                                                                                            Integer)) in
                                                                            coe
                                                                              (let v26
                                                                                     = coe
                                                                                         MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                         v24
                                                                                         (coe
                                                                                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                            (coe
                                                                                               v24)
                                                                                            (coe
                                                                                               v25)
                                                                                            (coe
                                                                                               v21))
                                                                                         v21 in
                                                                               coe
                                                                                 (case coe v18 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                           (coe v24)
                                                                                    1 -> coe v21
                                                                                    _ -> coe v26))))
                                                                        v23)
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError)
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Tactic.RingSolver.NonReflective.Ops.correct
d_correct_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_correct_404 v0 v1 v2 v3
  = coe d_go_430 (coe v0) (coe v1) (coe v2) (coe v3)
-- Tactic.RingSolver.NonReflective.Ops._.go
d_go_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_go_430 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Κ_22 v6
        -> coe
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Constants.du_κ'45'hom_404
             (coe du_homo_184 (coe v2)) (coe v6)
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Ι_24 v6
        -> coe
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables.du_ι'45'hom_504
             (coe du_homo_184 (coe v2)) (coe v3) (coe v6) (coe v5)
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C__'8853'__26 v6 v7
        -> coe
             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Addition.du_'8862''45'hom_516
                v0 v1 v0 v1 (coe du_homo_184 (coe v2))
                (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
                (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)) v5)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_496
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                           (coe v2))))))))))
                (let v8 = coe du_homo_184 (coe v2) in
                 coe
                   (let v9
                          = let v9 = coe du_homo_184 (coe v2) in
                            coe
                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d__'8862'__376
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                    (coe v9))
                                 (coe v3)
                                 (coe d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
                                 (coe d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7))) in
                    coe
                      (case coe v9 of
                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v10 v11 v12
                           -> case coe v11 of
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v13
                                  -> coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                          (coe v8))
                                       v13
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v14 v15
                                  -> let v16
                                           = coe
                                               MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                  (coe v12) (coe v5)) in
                                     coe
                                       (case coe v14 of
                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                                            -> case coe v17 of
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v19 v20
                                                   -> case coe v19 of
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v21
                                                          -> case coe v16 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                 -> let v25
                                                                          = coe
                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                              (coe v8)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v21)
                                                                                 (coe v18))
                                                                              (coe v16) in
                                                                    coe
                                                                      (case coe v20 of
                                                                         0 -> coe v25
                                                                         _ -> coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                   (coe v8))
                                                                                (let v26
                                                                                       = coe
                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                           (coe
                                                                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                          (coe
                                                                                                             v8)))))) in
                                                                                 coe
                                                                                   (let v27
                                                                                          = subInt
                                                                                              (coe
                                                                                                 v20)
                                                                                              (coe
                                                                                                 (1 ::
                                                                                                    Integer)) in
                                                                                    coe
                                                                                      (let v28
                                                                                             = coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                 v26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v27)
                                                                                                    (coe
                                                                                                       v23))
                                                                                                 v23 in
                                                                                       coe
                                                                                         (case coe
                                                                                                 v20 of
                                                                                            0 -> coe
                                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                   (coe
                                                                                                      v26)
                                                                                            1 -> coe
                                                                                                   v23
                                                                                            _ -> coe
                                                                                                   v28))))
                                                                                v25)
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError)))
                (coe
                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__210
                   v2
                   (let v8 = coe du_homo_184 (coe v2) in
                    coe
                      (let v9
                             = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) in
                       coe
                         (case coe v9 of
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v10 v11 v12
                              -> case coe v11 of
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v13
                                     -> coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                             (coe v8))
                                          v13
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v14 v15
                                     -> let v16
                                              = coe
                                                  MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                     (coe v12) (coe v5)) in
                                        coe
                                          (case coe v14 of
                                             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                                               -> case coe v17 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v19 v20
                                                      -> case coe v19 of
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v21
                                                             -> case coe v16 of
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                    -> let v25
                                                                             = coe
                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                 (coe v8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v21)
                                                                                    (coe v18))
                                                                                 (coe v16) in
                                                                       coe
                                                                         (case coe v20 of
                                                                            0 -> coe v25
                                                                            _ -> coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                   (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                      (coe v8))
                                                                                   (let v26
                                                                                          = coe
                                                                                              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                             (coe
                                                                                                                v8)))))) in
                                                                                    coe
                                                                                      (let v27
                                                                                             = subInt
                                                                                                 (coe
                                                                                                    v20)
                                                                                                 (coe
                                                                                                    (1 ::
                                                                                                       Integer)) in
                                                                                       coe
                                                                                         (let v28
                                                                                                = coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                    v26
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                       (coe
                                                                                                          v26)
                                                                                                       (coe
                                                                                                          v27)
                                                                                                       (coe
                                                                                                          v23))
                                                                                                    v23 in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v20 of
                                                                                               0 -> coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                      (coe
                                                                                                         v26)
                                                                                               1 -> coe
                                                                                                      v23
                                                                                               _ -> coe
                                                                                                      v28))))
                                                                                   v25)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                   (let v8 = coe du_homo_184 (coe v2) in
                    coe
                      (let v9
                             = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7) in
                       coe
                         (case coe v9 of
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v10 v11 v12
                              -> case coe v11 of
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v13
                                     -> coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                             (coe v8))
                                          v13
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v14 v15
                                     -> let v16
                                              = coe
                                                  MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                     (coe v12) (coe v5)) in
                                        coe
                                          (case coe v14 of
                                             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                                               -> case coe v17 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v19 v20
                                                      -> case coe v19 of
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v21
                                                             -> case coe v16 of
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                    -> let v25
                                                                             = coe
                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                 (coe v8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v21)
                                                                                    (coe v18))
                                                                                 (coe v16) in
                                                                       coe
                                                                         (case coe v20 of
                                                                            0 -> coe v25
                                                                            _ -> coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                   (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                      (coe v8))
                                                                                   (let v26
                                                                                          = coe
                                                                                              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                             (coe
                                                                                                                v8)))))) in
                                                                                    coe
                                                                                      (let v27
                                                                                             = subInt
                                                                                                 (coe
                                                                                                    v20)
                                                                                                 (coe
                                                                                                    (1 ::
                                                                                                       Integer)) in
                                                                                       coe
                                                                                         (let v28
                                                                                                = coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                    v26
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                       (coe
                                                                                                          v26)
                                                                                                       (coe
                                                                                                          v27)
                                                                                                       (coe
                                                                                                          v23))
                                                                                                    v23 in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v20 of
                                                                                               0 -> coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                      (coe
                                                                                                         v26)
                                                                                               1 -> coe
                                                                                                      v23
                                                                                               _ -> coe
                                                                                                      v28))))
                                                                                   v25)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError))))
                (coe
                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__210
                   v2
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v6) (coe v5))
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v7) (coe v5))))
             (coe
                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                (coe
                   d_go_430 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) (coe v5))
                (coe
                   MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                   (MAlonzo.Code.Algebra.Structures.d_isMagma_496
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                           (coe v2)))))))))
                   (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v6 v5)
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v6) (coe v5))
                   (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v7 v5)
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v7) (coe v5)))
                (coe
                   d_go_430 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7) (coe v5)))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C__'8855'__28 v6 v7
        -> coe
             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Multiplication.du_'8864''45'hom_906
                v0 v1 v0 v1 (coe du_homo_184 (coe v2))
                (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
                (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)) v5)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_496
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                           (coe v2))))))))))
                (let v8 = coe du_homo_184 (coe v2) in
                 coe
                   (let v9
                          = let v9 = coe du_homo_184 (coe v2) in
                            coe
                              (let v10
                                     = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                         (coe v9) in
                               coe
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8864''45'step'8242'_560
                                    v0 v1 v10 v3
                                    (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
                                    (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)))) in
                    coe
                      (case coe v9 of
                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v10 v11 v12
                           -> case coe v11 of
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v13
                                  -> coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                          (coe v8))
                                       v13
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v14 v15
                                  -> let v16
                                           = coe
                                               MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                  (coe v12) (coe v5)) in
                                     coe
                                       (case coe v14 of
                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                                            -> case coe v17 of
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v19 v20
                                                   -> case coe v19 of
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v21
                                                          -> case coe v16 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                 -> let v25
                                                                          = coe
                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                              (coe v8)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v21)
                                                                                 (coe v18))
                                                                              (coe v16) in
                                                                    coe
                                                                      (case coe v20 of
                                                                         0 -> coe v25
                                                                         _ -> coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                   (coe v8))
                                                                                (let v26
                                                                                       = coe
                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                           (coe
                                                                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                          (coe
                                                                                                             v8)))))) in
                                                                                 coe
                                                                                   (let v27
                                                                                          = subInt
                                                                                              (coe
                                                                                                 v20)
                                                                                              (coe
                                                                                                 (1 ::
                                                                                                    Integer)) in
                                                                                    coe
                                                                                      (let v28
                                                                                             = coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                 v26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v27)
                                                                                                    (coe
                                                                                                       v23))
                                                                                                 v23 in
                                                                                       coe
                                                                                         (case coe
                                                                                                 v20 of
                                                                                            0 -> coe
                                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                   (coe
                                                                                                      v26)
                                                                                            1 -> coe
                                                                                                   v23
                                                                                            _ -> coe
                                                                                                   v28))))
                                                                                v25)
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError)))
                (coe
                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                   v2
                   (let v8 = coe du_homo_184 (coe v2) in
                    coe
                      (let v9
                             = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) in
                       coe
                         (case coe v9 of
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v10 v11 v12
                              -> case coe v11 of
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v13
                                     -> coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                             (coe v8))
                                          v13
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v14 v15
                                     -> let v16
                                              = coe
                                                  MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                     (coe v12) (coe v5)) in
                                        coe
                                          (case coe v14 of
                                             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                                               -> case coe v17 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v19 v20
                                                      -> case coe v19 of
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v21
                                                             -> case coe v16 of
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                    -> let v25
                                                                             = coe
                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                 (coe v8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v21)
                                                                                    (coe v18))
                                                                                 (coe v16) in
                                                                       coe
                                                                         (case coe v20 of
                                                                            0 -> coe v25
                                                                            _ -> coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                   (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                      (coe v8))
                                                                                   (let v26
                                                                                          = coe
                                                                                              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                             (coe
                                                                                                                v8)))))) in
                                                                                    coe
                                                                                      (let v27
                                                                                             = subInt
                                                                                                 (coe
                                                                                                    v20)
                                                                                                 (coe
                                                                                                    (1 ::
                                                                                                       Integer)) in
                                                                                       coe
                                                                                         (let v28
                                                                                                = coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                    v26
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                       (coe
                                                                                                          v26)
                                                                                                       (coe
                                                                                                          v27)
                                                                                                       (coe
                                                                                                          v23))
                                                                                                    v23 in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v20 of
                                                                                               0 -> coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                      (coe
                                                                                                         v26)
                                                                                               1 -> coe
                                                                                                      v23
                                                                                               _ -> coe
                                                                                                      v28))))
                                                                                   v25)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                   (let v8 = coe du_homo_184 (coe v2) in
                    coe
                      (let v9
                             = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7) in
                       coe
                         (case coe v9 of
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v10 v11 v12
                              -> case coe v11 of
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v13
                                     -> coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                             (coe v8))
                                          v13
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v14 v15
                                     -> let v16
                                              = coe
                                                  MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                     (coe v12) (coe v5)) in
                                        coe
                                          (case coe v14 of
                                             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v17 v18
                                               -> case coe v17 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v19 v20
                                                      -> case coe v19 of
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v21
                                                             -> case coe v16 of
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                    -> let v25
                                                                             = coe
                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                 (coe v8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v21)
                                                                                    (coe v18))
                                                                                 (coe v16) in
                                                                       coe
                                                                         (case coe v20 of
                                                                            0 -> coe v25
                                                                            _ -> coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                   (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                      (coe v8))
                                                                                   (let v26
                                                                                          = coe
                                                                                              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                             (coe
                                                                                                                v8)))))) in
                                                                                    coe
                                                                                      (let v27
                                                                                             = subInt
                                                                                                 (coe
                                                                                                    v20)
                                                                                                 (coe
                                                                                                    (1 ::
                                                                                                       Integer)) in
                                                                                       coe
                                                                                         (let v28
                                                                                                = coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                    v26
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                       (coe
                                                                                                          v26)
                                                                                                       (coe
                                                                                                          v27)
                                                                                                       (coe
                                                                                                          v23))
                                                                                                    v23 in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v20 of
                                                                                               0 -> coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                      (coe
                                                                                                         v26)
                                                                                               1 -> coe
                                                                                                      v23
                                                                                               _ -> coe
                                                                                                      v28))))
                                                                                   v25)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError))))
                (coe
                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                   v2
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v6) (coe v5))
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v7) (coe v5))))
             (coe
                MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                (coe
                   d_go_430 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) (coe v5))
                (coe
                   MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
                   (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                         (coe
                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                            (coe
                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                               (coe v2)))))
                   (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v6 v5)
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v6) (coe v5))
                   (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v7 v5)
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v7) (coe v5)))
                (coe
                   d_go_430 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7) (coe v5)))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C__'8859'__30 v6 v7
        -> coe
             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Exponentiation.d_'8865''45'hom_684
                (coe v0) (coe v1) (coe v0) (coe v1) (coe du_homo_184 (coe v2))
                (coe v3)
                (coe d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
                (coe v7) (coe v5))
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_496
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                           (coe v2))))))))))
                (let v8 = coe du_homo_184 (coe v2) in
                 coe
                   (let v9 = coe du_homo_184 (coe v2) in
                    coe
                      (let v10
                             = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                 (coe v9) in
                       coe
                         (let v11
                                = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) in
                          coe
                            (case coe v7 of
                               0 -> let v12
                                          = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                 (coe v10)) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                            (coe v8))
                                         v12)
                               _ -> let v12
                                          = let v12 = subInt (coe v7) (coe (1 :: Integer)) in
                                            coe
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d__'8865'_'43'1_766
                                                 (coe v0) (coe v1) (coe v10) (coe v3) (coe v11)
                                                 (coe v12)) in
                                    coe
                                      (case coe v12 of
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v13 v14 v15
                                           -> case coe v14 of
                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v16
                                                  -> coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                                          (coe v8))
                                                       v16
                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v17 v18
                                                  -> let v19
                                                           = coe
                                                               MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                               (coe
                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                  (coe v15) (coe v5)) in
                                                     coe
                                                       (case coe v17 of
                                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v20 v21
                                                            -> case coe v20 of
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v22 v23
                                                                   -> case coe v22 of
                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v24
                                                                          -> case coe v19 of
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                 -> let v28
                                                                                          = coe
                                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                              (coe
                                                                                                 v8)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v24)
                                                                                                 (coe
                                                                                                    v21))
                                                                                              (coe
                                                                                                 v19) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v23 of
                                                                                         0 -> coe
                                                                                                v28
                                                                                         _ -> coe
                                                                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                   (coe
                                                                                                      v8))
                                                                                                (let v29
                                                                                                       = coe
                                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                                          (coe
                                                                                                                             v8)))))) in
                                                                                                 coe
                                                                                                   (let v30
                                                                                                          = subInt
                                                                                                              (coe
                                                                                                                 v23)
                                                                                                              (coe
                                                                                                                 (1 ::
                                                                                                                    Integer)) in
                                                                                                    coe
                                                                                                      (let v31
                                                                                                             = coe
                                                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                                 v29
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                                    (coe
                                                                                                                       v29)
                                                                                                                    (coe
                                                                                                                       v30)
                                                                                                                    (coe
                                                                                                                       v26))
                                                                                                                 v26 in
                                                                                                       coe
                                                                                                         (case coe
                                                                                                                 v23 of
                                                                                                            0 -> coe
                                                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                                   (coe
                                                                                                                      v29)
                                                                                                            1 -> coe
                                                                                                                   v26
                                                                                                            _ -> coe
                                                                                                                   v31))))
                                                                                                v28)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError))))))
                (let v8 = coe du_homo_184 (coe v2) in
                 coe
                   (let v9
                          = coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                 (coe v8)) in
                    coe
                      (let v10
                             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v9) in
                       coe
                         (let v11
                                = coe
                                    MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                       (coe v10)) in
                          coe
                            (let v12
                                   = let v12 = coe du_homo_184 (coe v2) in
                                     coe
                                       (let v13
                                              = d_norm_354
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) in
                                        coe
                                          (case coe v13 of
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v14 v15 v16
                                               -> case coe v15 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v17
                                                      -> coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                                              (coe v12))
                                                           v17
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v18 v19
                                                      -> let v20
                                                               = coe
                                                                   MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                   (coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                      (coe v16) (coe v5)) in
                                                         coe
                                                           (case coe v18 of
                                                              MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v21 v22
                                                                -> case coe v21 of
                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v23 v24
                                                                       -> case coe v23 of
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v25
                                                                              -> case coe v20 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                     -> let v29
                                                                                              = coe
                                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                                  (coe
                                                                                                     v12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        v25)
                                                                                                     (coe
                                                                                                        v22))
                                                                                                  (coe
                                                                                                     v20) in
                                                                                        coe
                                                                                          (case coe
                                                                                                  v24 of
                                                                                             0 -> coe
                                                                                                    v29
                                                                                             _ -> coe
                                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                       (coe
                                                                                                          v12))
                                                                                                    (let v30
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                                              (coe
                                                                                                                                 v12)))))) in
                                                                                                     coe
                                                                                                       (let v31
                                                                                                              = subInt
                                                                                                                  (coe
                                                                                                                     v24)
                                                                                                                  (coe
                                                                                                                     (1 ::
                                                                                                                        Integer)) in
                                                                                                        coe
                                                                                                          (let v32
                                                                                                                 = coe
                                                                                                                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                                     v30
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                                        (coe
                                                                                                                           v30)
                                                                                                                        (coe
                                                                                                                           v31)
                                                                                                                        (coe
                                                                                                                           v27))
                                                                                                                     v27 in
                                                                                                           coe
                                                                                                             (case coe
                                                                                                                     v24 of
                                                                                                                0 -> coe
                                                                                                                       MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                                       (coe
                                                                                                                          v30)
                                                                                                                1 -> coe
                                                                                                                       v27
                                                                                                                _ -> coe
                                                                                                                       v32))))
                                                                                                    v29)
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError)) in
                             coe
                               (let v13
                                      = coe
                                          MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                          (coe v11) in
                                coe
                                  (let v14 = subInt (coe v7) (coe (1 :: Integer)) in
                                   coe
                                     (let v15
                                            = coe
                                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v13
                                                (coe
                                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                   (coe v13) (coe v14) (coe v12))
                                                v12 in
                                      coe
                                        (case coe v7 of
                                           0 -> coe
                                                  MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v13)
                                           1 -> coe v12
                                           _ -> coe v15)))))))))
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v8 v9 -> v9)
                   (\ v8 ->
                      let v9
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                   (coe v2)) in
                      coe
                        (let v10
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                      (coe v9)) in
                         coe
                           (let v11
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                      (coe v10) in
                            coe
                              (let v12 = subInt (coe v7) (coe (1 :: Integer)) in
                               coe
                                 (let v13
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v11
                                            (coe
                                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                               (coe v11) (coe v12) (coe v8))
                                            v8 in
                                  coe
                                    (case coe v7 of
                                       0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v11)
                                       1 -> coe v8
                                       _ -> coe v13))))))
                   (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v6 v5)
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v8 -> v8)) (coe v6) (coe v5))))
             (coe
                MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised.du_'94''45'cong'737'_234
                (coe
                   MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                      (coe v2)))
                v7 (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v6 v5)
                (coe
                   MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                      (coe v2))
                   (coe (\ v8 -> v8)) (coe v6) (coe v5))
                (d_go_430 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) (coe v5)))
      MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_'8861'__32 v6
        -> coe
             MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation.du_'8863''45'hom_542
                (coe du_homo_184 (coe v2))
                (d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6)) v5)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_496
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                           (coe v2))))))))))
                (let v7 = coe du_homo_184 (coe v2) in
                 coe
                   (let v8
                          = let v8 = coe du_homo_184 (coe v2) in
                            coe
                              (let v9
                                     = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                    (coe v9) (coe v3)
                                    (coe
                                       d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6)))) in
                    coe
                      (case coe v8 of
                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v9 v10 v11
                           -> case coe v10 of
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v12
                                  -> coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                          (coe v7))
                                       v12
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v13 v14
                                  -> let v15
                                           = coe
                                               MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                  (coe v11) (coe v5)) in
                                     coe
                                       (case coe v13 of
                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v16 v17
                                            -> case coe v16 of
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v18 v19
                                                   -> case coe v18 of
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v20
                                                          -> case coe v15 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                 -> let v24
                                                                          = coe
                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                              (coe v7)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v20)
                                                                                 (coe v17))
                                                                              (coe v15) in
                                                                    coe
                                                                      (case coe v19 of
                                                                         0 -> coe v24
                                                                         _ -> coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                   (coe v7))
                                                                                (let v25
                                                                                       = coe
                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                           (coe
                                                                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                          (coe
                                                                                                             v7)))))) in
                                                                                 coe
                                                                                   (let v26
                                                                                          = subInt
                                                                                              (coe
                                                                                                 v19)
                                                                                              (coe
                                                                                                 (1 ::
                                                                                                    Integer)) in
                                                                                    coe
                                                                                      (let v27
                                                                                             = coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                 v25
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                    (coe
                                                                                                       v25)
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v22))
                                                                                                 v22 in
                                                                                       coe
                                                                                         (case coe
                                                                                                 v19 of
                                                                                            0 -> coe
                                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                   (coe
                                                                                                      v25)
                                                                                            1 -> coe
                                                                                                   v22
                                                                                            _ -> coe
                                                                                                   v27))))
                                                                                v24)
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError)))
                (coe
                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                   v2
                   (let v7 = coe du_homo_184 (coe v2) in
                    coe
                      (let v8
                             = d_norm_354 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v9 v10 v11
                              -> case coe v10 of
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v12
                                     -> coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                             (coe v7))
                                          v12
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v13 v14
                                     -> let v15
                                              = coe
                                                  MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                     (coe v11) (coe v5)) in
                                        coe
                                          (case coe v13 of
                                             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v16 v17
                                               -> case coe v16 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v18 v19
                                                      -> case coe v18 of
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v20
                                                             -> case coe v15 of
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                    -> let v24
                                                                             = coe
                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                 (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v20)
                                                                                    (coe v17))
                                                                                 (coe v15) in
                                                                       coe
                                                                         (case coe v19 of
                                                                            0 -> coe v24
                                                                            _ -> coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                   (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                      (coe v7))
                                                                                   (let v25
                                                                                          = coe
                                                                                              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                             (coe
                                                                                                                v7)))))) in
                                                                                    coe
                                                                                      (let v26
                                                                                             = subInt
                                                                                                 (coe
                                                                                                    v19)
                                                                                                 (coe
                                                                                                    (1 ::
                                                                                                       Integer)) in
                                                                                       coe
                                                                                         (let v27
                                                                                                = coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                    v25
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                       (coe
                                                                                                          v25)
                                                                                                       (coe
                                                                                                          v26)
                                                                                                       (coe
                                                                                                          v22))
                                                                                                    v22 in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v19 of
                                                                                               0 -> coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                      (coe
                                                                                                         v25)
                                                                                               1 -> coe
                                                                                                      v22
                                                                                               _ -> coe
                                                                                                      v27))))
                                                                                   v24)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError))))
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v7 v8 -> v8)
                   (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                      (coe v2))
                   (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v6 v5)
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                      (coe
                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                         (coe v2))
                      (coe (\ v7 -> v7)) (coe v6) (coe v5))))
             (coe
                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
                (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                   (coe v2))
                (coe d_'10214'_'8659''10215'_376 v0 v1 v2 v3 v6 v5)
                (coe
                   MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
                   (coe
                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
                      (coe v2))
                   (coe (\ v7 -> v7)) (coe v6) (coe v5))
                (d_go_430 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.NonReflective.Ops._._⊜_
d__'8860'__464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8860'__464 ~v0 ~v1 ~v2 = du__'8860'__464
du__'8860'__464 ::
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8860'__464 v0
  = coe MAlonzo.Code.Relation.Binary.Reflection.du__'8860'__142
-- Tactic.RingSolver.NonReflective.Ops._.close
d_close_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  () -> Integer -> AgdaAny -> AgdaAny
d_close_466 ~v0 ~v1 ~v2 = du_close_466
du_close_466 :: () -> Integer -> AgdaAny -> AgdaAny
du_close_466 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_close_104
      (coe
         (\ v3 ->
            coe MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Ι_24))
      v1 v2
-- Tactic.RingSolver.NonReflective.Ops._.prove
d_prove_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  AgdaAny -> AgdaAny
d_prove_468 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_prove_90
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                 (coe v2))))))))))
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
           (coe
              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
              (coe v2))
           (coe (\ v6 -> v6)) v4 v5)
      (coe d_'10214'_'8659''10215'_376 (coe v0) (coe v1) (coe v2))
      (coe d_correct_404 (coe v0) (coe v1) (coe v2))
-- Tactic.RingSolver.NonReflective.Ops._.solve
d_solve_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_solve_470 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_solve_114
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                 (coe v2))))))))))
      (coe
         (\ v3 ->
            coe MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Ι_24))
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
           (coe
              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
              (coe v2))
           (coe (\ v6 -> v6)) v4 v5)
      (coe d_'10214'_'8659''10215'_376 (coe v0) (coe v1) (coe v2))
      (coe d_correct_404 (coe v0) (coe v1) (coe v2))
-- Tactic.RingSolver.NonReflective.Ops._.solve₁
d_solve'8321'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer -> AgdaAny -> AgdaAny
d_solve'8321'_472 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_solve'8321'_130
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                 (coe v2))))))))))
      (coe
         (\ v3 ->
            coe MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Ι_24))
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
           (coe
              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
              (coe v2))
           (coe (\ v6 -> v6)) v4 v5)
      (coe d_'10214'_'8659''10215'_376 (coe v0) (coe v1) (coe v2))
      (coe d_correct_404 (coe v0) (coe v1) (coe v2))
-- Tactic.RingSolver.NonReflective.solve
d_solve_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_solve_478 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_solve_114
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                 (coe v2))))))))))
      (coe
         (\ v3 ->
            coe MAlonzo.Code.Tactic.RingSolver.Core.Expression.C_Ι_24))
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Tactic.RingSolver.Core.Expression.du_'10214'_'10215'_90
           (coe
              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
              (coe v2))
           (coe (\ v6 -> v6)) v4 v5)
      (coe d_'10214'_'8659''10215'_376 (coe v0) (coe v1) (coe v2))
      (coe d_correct_404 (coe v0) (coe v1) (coe v2))
-- Tactic.RingSolver.NonReflective._⊜_
d__'8860'__482 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8860'__482 ~v0 ~v1 = du__'8860'__482
du__'8860'__482 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Expression.T_Expr_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8860'__482 = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
