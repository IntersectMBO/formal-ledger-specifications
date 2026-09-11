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

module MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.List.Kleene.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics

-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly
d_Poly_364 a0 a1 a2 a3 a4 a5 = ()
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.⊟_
d_'8863'__426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
d_'8863'__426 ~v0 ~v1 ~v2 ~v3 v4 = du_'8863'__426 v4
du_'8863'__426 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
du_'8863'__426 v0
  = let v1
          = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
              (coe v0) in
    coe
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
              (coe v1) (coe v2)))
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.⊟-step
d_'8863''45'step_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
d_'8863''45'step_428 ~v0 ~v1 ~v2 ~v3 v4 = du_'8863''45'step_428 v4
du_'8863''45'step_428 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
du_'8863''45'step_428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
         (coe v0))
      v1 v3
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly.flat
d_flat_472 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_FlatPoly_178
d_flat_472 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_flat_204
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly.i
d_i_474 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  Integer
d_i_474 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i_202
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly.i≤n
d_i'8804'n_476 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_i'8804'n_476 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i'8804'n_206
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.⟦_⟧
d_'10214'_'10215'_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'_496 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_'10214'_'10215'_496 v4 v6 v7
du_'10214'_'10215'_496 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'10214'_'10215'_496 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v3 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v6
               -> coe
                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                       (coe v0))
                    v6
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v7 v8
               -> let v9
                        = coe
                            MAlonzo.Code.Data.Vec.Base.du_uncons_556
                            (coe
                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                               (coe v5) (coe v2)) in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v10 v11
                         -> case coe v10 of
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v12 v13
                                -> case coe v12 of
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v14
                                       -> case coe v9 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                              -> let v18
                                                       = coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v14) (coe v11))
                                                           (coe v9) in
                                                 coe
                                                   (case coe v13 of
                                                      0 -> coe v18
                                                      _ -> coe
                                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                (coe v0))
                                                             (let v19
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
                                                                                          v0)))))) in
                                                              coe
                                                                (let v20
                                                                       = subInt
                                                                           (coe v13)
                                                                           (coe (1 :: Integer)) in
                                                                 coe
                                                                   (let v21
                                                                          = coe
                                                                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                              v19
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                 (coe v19) (coe v20)
                                                                                 (coe v16))
                                                                              v16 in
                                                                    coe
                                                                      (case coe v13 of
                                                                         0 -> coe
                                                                                MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                (coe v19)
                                                                         1 -> coe v16
                                                                         _ -> coe v21))))
                                                             v18)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation.⊟-step-hom
d_'8863''45'step'45'hom_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'8863''45'step'45'hom_506 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8
  = du_'8863''45'step'45'hom_506 v4 v7 v8
du_'8863''45'step'45'hom_506 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'8863''45'step'45'hom_506 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v3 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v6
               -> coe
                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'homo_784
                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                       (coe v0))
                    v6
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v7 v8
               -> let v9 = subInt (coe v3) (coe (1 :: Integer)) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (\ v10 v11 v12 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v12)
                       (let v10
                              = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                  (coe v0) in
                        coe
                          (let v11
                                 = coe
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                        (coe v0))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                              (coe v0))
                                           (coe v9)))
                                     (coe v7) in
                           coe
                             (case coe v11 of
                                MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                  -> let v12
                                           = MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                  (coe v10)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                             (coe v0))
                                          v12)
                                MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v12
                                  -> case coe v12 of
                                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v13 v14
                                         -> case coe v13 of
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v15 v16
                                                -> case coe v15 of
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v17
                                                       -> case coe v16 of
                                                            0 -> case coe v14 of
                                                                   MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                     -> case coe v17 of
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v19 v20 v21
                                                                            -> let v22
                                                                                     = coe
                                                                                         MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                            v21)
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                         (coe v5) in
                                                                               coe
                                                                                 (case coe v20 of
                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v23
                                                                                      -> coe
                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                                                                              (coe
                                                                                                 v0))
                                                                                           v23
                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v24 v25
                                                                                      -> let v26
                                                                                               = coe
                                                                                                   MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                                                      (coe
                                                                                                         v22)
                                                                                                      (coe
                                                                                                         v2)) in
                                                                                         coe
                                                                                           (case coe
                                                                                                   v24 of
                                                                                              MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v27 v28
                                                                                                -> case coe
                                                                                                          v27 of
                                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v29 v30
                                                                                                       -> case coe
                                                                                                                 v29 of
                                                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v31
                                                                                                              -> case coe
                                                                                                                        v26 of
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                     -> let v35
                                                                                                                              = coe
                                                                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                     (coe
                                                                                                                                        v31)
                                                                                                                                     (coe
                                                                                                                                        v28))
                                                                                                                                  (coe
                                                                                                                                     v26) in
                                                                                                                        coe
                                                                                                                          (case coe
                                                                                                                                  v30 of
                                                                                                                             0 -> coe
                                                                                                                                    v35
                                                                                                                             _ -> coe
                                                                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                                                       (coe
                                                                                                                                          v0))
                                                                                                                                    (let v36
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
                                                                                                                                                                 v0)))))) in
                                                                                                                                     coe
                                                                                                                                       (let v37
                                                                                                                                              = subInt
                                                                                                                                                  (coe
                                                                                                                                                     v30)
                                                                                                                                                  (coe
                                                                                                                                                     (1 ::
                                                                                                                                                        Integer)) in
                                                                                                                                        coe
                                                                                                                                          (let v38
                                                                                                                                                 = coe
                                                                                                                                                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                                                                     v36
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                                                                        (coe
                                                                                                                                                           v36)
                                                                                                                                                        (coe
                                                                                                                                                           v37)
                                                                                                                                                        (coe
                                                                                                                                                           v33))
                                                                                                                                                     v33 in
                                                                                                                                           coe
                                                                                                                                             (case coe
                                                                                                                                                     v30 of
                                                                                                                                                0 -> coe
                                                                                                                                                       MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                                                                       (coe
                                                                                                                                                          v36)
                                                                                                                                                1 -> coe
                                                                                                                                                       v33
                                                                                                                                                _ -> coe
                                                                                                                                                       v38))))
                                                                                                                                    v35)
                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v19
                                                                     -> let v20
                                                                              = coe
                                                                                  MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                  (coe
                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                                     (coe v5)
                                                                                     (coe v2)) in
                                                                        coe
                                                                          (let v21 = 0 :: Integer in
                                                                           coe
                                                                             (case coe v20 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                  -> let v24
                                                                                           = coe
                                                                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                               (coe
                                                                                                  v0)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     v17)
                                                                                                  (coe
                                                                                                     v14))
                                                                                               (coe
                                                                                                  v20) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v21 of
                                                                                          0 -> coe
                                                                                                 v24
                                                                                          _ -> coe
                                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                    (coe
                                                                                                       v0))
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
                                                                                                                              v0)))))) in
                                                                                                  coe
                                                                                                    (let v26
                                                                                                           = -1 ::
                                                                                                               Integer in
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
                                                                                                                  v21 of
                                                                                                             0 -> coe
                                                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                                    (coe
                                                                                                                       v25)
                                                                                                             1 -> coe
                                                                                                                    v22
                                                                                                             _ -> coe
                                                                                                                    v27))))
                                                                                                 v24)
                                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            _ -> let v19
                                                                       = coe
                                                                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                           (coe
                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                              (coe v5) (coe v2)) in
                                                                 coe
                                                                   (case coe v19 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                        -> let v22
                                                                                 = coe
                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe v17)
                                                                                        (coe v14))
                                                                                     (coe v19) in
                                                                           coe
                                                                             (case coe v16 of
                                                                                0 -> coe v22
                                                                                _ -> coe
                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                          (coe v0))
                                                                                       (let v23
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
                                                                                                                    v0)))))) in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = subInt
                                                                                                     (coe
                                                                                                        v16)
                                                                                                     (coe
                                                                                                        (1 ::
                                                                                                           Integer)) in
                                                                                           coe
                                                                                             (let v25
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                        v23
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                           (coe
                                                                                                              v23)
                                                                                                           (coe
                                                                                                              v24)
                                                                                                           (coe
                                                                                                              v20))
                                                                                                        v20 in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v16 of
                                                                                                   0 -> coe
                                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                          (coe
                                                                                                             v23)
                                                                                                   1 -> coe
                                                                                                          v20
                                                                                                   _ -> coe
                                                                                                          v25))))
                                                                                       v22)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError)))
                       (coe
                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                             (coe v0))
                          (let v10
                                 = coe
                                     MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                        (coe v5) (coe v2)) in
                           coe
                             (case coe v7 of
                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v11 v12
                                  -> case coe v11 of
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v13 v14
                                         -> case coe v13 of
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v15
                                                -> case coe v10 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                       -> let v19
                                                                = coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v15) (coe v12))
                                                                    (coe v10) in
                                                          coe
                                                            (case coe v14 of
                                                               0 -> coe v19
                                                               _ -> coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                      (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                         (coe v0))
                                                                      (let v20
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
                                                                                                   v0)))))) in
                                                                       coe
                                                                         (let v21
                                                                                = subInt
                                                                                    (coe v14)
                                                                                    (coe
                                                                                       (1 ::
                                                                                          Integer)) in
                                                                          coe
                                                                            (let v22
                                                                                   = coe
                                                                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                       v20
                                                                                       (coe
                                                                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                          (coe v20)
                                                                                          (coe v21)
                                                                                          (coe v17))
                                                                                       v17 in
                                                                             coe
                                                                               (case coe v14 of
                                                                                  0 -> coe
                                                                                         MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                         (coe v20)
                                                                                  1 -> coe v17
                                                                                  _ -> coe v22))))
                                                                      v19)
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                                           (coe
                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                              (coe v0)))))))))))))
                          (let v10
                                 = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                     (coe v0) in
                           coe
                             (let v11
                                    = coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                                 (coe v0))
                                              (coe v9)))
                                        (coe v7) in
                              coe
                                (case coe v11 of
                                   MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                     -> let v12
                                              = MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                     (coe v10)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                                (coe v0))
                                             v12)
                                   MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v12
                                     -> case coe v12 of
                                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v13 v14
                                            -> case coe v13 of
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v15 v16
                                                   -> case coe v15 of
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v17
                                                          -> case coe v16 of
                                                               0 -> case coe v14 of
                                                                      MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                        -> case coe v17 of
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v19 v20 v21
                                                                               -> let v22
                                                                                        = coe
                                                                                            MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                                                                                               v21)
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6214)
                                                                                            (coe
                                                                                               v5) in
                                                                                  coe
                                                                                    (case coe v20 of
                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v23
                                                                                         -> coe
                                                                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                                                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                                                                                 (coe
                                                                                                    v0))
                                                                                              v23
                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v24 v25
                                                                                         -> let v26
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                                                         (coe
                                                                                                            v22)
                                                                                                         (coe
                                                                                                            v2)) in
                                                                                            coe
                                                                                              (case coe
                                                                                                      v24 of
                                                                                                 MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v27 v28
                                                                                                   -> case coe
                                                                                                             v27 of
                                                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v29 v30
                                                                                                          -> case coe
                                                                                                                    v29 of
                                                                                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v31
                                                                                                                 -> case coe
                                                                                                                           v26 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                        -> let v35
                                                                                                                                 = coe
                                                                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                        (coe
                                                                                                                                           v31)
                                                                                                                                        (coe
                                                                                                                                           v28))
                                                                                                                                     (coe
                                                                                                                                        v26) in
                                                                                                                           coe
                                                                                                                             (case coe
                                                                                                                                     v30 of
                                                                                                                                0 -> coe
                                                                                                                                       v35
                                                                                                                                _ -> coe
                                                                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                                                          (coe
                                                                                                                                             v0))
                                                                                                                                       (let v36
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
                                                                                                                                                                    v0)))))) in
                                                                                                                                        coe
                                                                                                                                          (let v37
                                                                                                                                                 = subInt
                                                                                                                                                     (coe
                                                                                                                                                        v30)
                                                                                                                                                     (coe
                                                                                                                                                        (1 ::
                                                                                                                                                           Integer)) in
                                                                                                                                           coe
                                                                                                                                             (let v38
                                                                                                                                                    = coe
                                                                                                                                                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                                                                        v36
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                                                                           (coe
                                                                                                                                                              v36)
                                                                                                                                                           (coe
                                                                                                                                                              v37)
                                                                                                                                                           (coe
                                                                                                                                                              v33))
                                                                                                                                                        v33 in
                                                                                                                                              coe
                                                                                                                                                (case coe
                                                                                                                                                        v30 of
                                                                                                                                                   0 -> coe
                                                                                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                                                                          (coe
                                                                                                                                                             v36)
                                                                                                                                                   1 -> coe
                                                                                                                                                          v33
                                                                                                                                                   _ -> coe
                                                                                                                                                          v38))))
                                                                                                                                       v35)
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v19
                                                                        -> let v20
                                                                                 = coe
                                                                                     MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                     (coe
                                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                                        (coe v5)
                                                                                        (coe v2)) in
                                                                           coe
                                                                             (let v21
                                                                                    = 0 ::
                                                                                        Integer in
                                                                              coe
                                                                                (case coe v20 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                     -> let v24
                                                                                              = coe
                                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                                  (coe
                                                                                                     v0)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        v17)
                                                                                                     (coe
                                                                                                        v14))
                                                                                                  (coe
                                                                                                     v20) in
                                                                                        coe
                                                                                          (case coe
                                                                                                  v21 of
                                                                                             0 -> coe
                                                                                                    v24
                                                                                             _ -> coe
                                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                                       (coe
                                                                                                          v0))
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
                                                                                                                                 v0)))))) in
                                                                                                     coe
                                                                                                       (let v26
                                                                                                              = -1 ::
                                                                                                                  Integer in
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
                                                                                                                     v21 of
                                                                                                                0 -> coe
                                                                                                                       MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                                       (coe
                                                                                                                          v25)
                                                                                                                1 -> coe
                                                                                                                       v22
                                                                                                                _ -> coe
                                                                                                                       v27))))
                                                                                                    v24)
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> let v19
                                                                          = coe
                                                                              MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                              (coe
                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                                                 (coe v5)
                                                                                 (coe v2)) in
                                                                    coe
                                                                      (case coe v19 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                           -> let v22
                                                                                    = coe
                                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                                        (coe v0)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              v14))
                                                                                        (coe v19) in
                                                                              coe
                                                                                (case coe v16 of
                                                                                   0 -> coe v22
                                                                                   _ -> coe
                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                             (coe
                                                                                                v0))
                                                                                          (let v23
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
                                                                                                                       v0)))))) in
                                                                                           coe
                                                                                             (let v24
                                                                                                    = subInt
                                                                                                        (coe
                                                                                                           v16)
                                                                                                        (coe
                                                                                                           (1 ::
                                                                                                              Integer)) in
                                                                                              coe
                                                                                                (let v25
                                                                                                       = coe
                                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                           v23
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                              (coe
                                                                                                                 v23)
                                                                                                              (coe
                                                                                                                 v24)
                                                                                                              (coe
                                                                                                                 v20))
                                                                                                           v20 in
                                                                                                 coe
                                                                                                   (case coe
                                                                                                           v16 of
                                                                                                      0 -> coe
                                                                                                             MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                             (coe
                                                                                                                v23)
                                                                                                      1 -> coe
                                                                                                             v20
                                                                                                      _ -> coe
                                                                                                             v25))))
                                                                                          v22)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                          (coe
                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8512''63''10214'_'10215'_630
                             v0
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                         (coe v0))
                                      (coe v9)))
                                (coe v7))
                             (coe
                                MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                   (coe v5) (coe v2))))
                          (coe
                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                (coe v0))
                             (let v10
                                    = coe
                                        MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                           (coe v5) (coe v2)) in
                              coe
                                (case coe v7 of
                                   MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v11 v12
                                     -> case coe v11 of
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v13 v14
                                            -> case coe v13 of
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v15
                                                   -> case coe v10 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                          -> let v19
                                                                   = coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15) (coe v12))
                                                                       (coe v10) in
                                                             coe
                                                               (case coe v14 of
                                                                  0 -> coe v19
                                                                  _ -> coe
                                                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                            (coe v0))
                                                                         (let v20
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
                                                                                                      v0)))))) in
                                                                          coe
                                                                            (let v21
                                                                                   = subInt
                                                                                       (coe v14)
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer)) in
                                                                             coe
                                                                               (let v22
                                                                                      = coe
                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                          v20
                                                                                          (coe
                                                                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                             (coe
                                                                                                v20)
                                                                                             (coe
                                                                                                v21)
                                                                                             (coe
                                                                                                v17))
                                                                                          v17 in
                                                                                coe
                                                                                  (case coe v14 of
                                                                                     0 -> coe
                                                                                            MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                            (coe
                                                                                               v20)
                                                                                     1 -> coe v17
                                                                                     _ -> coe
                                                                                            v22))))
                                                                         v19)
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                 (coe v0)))))))))))))
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8512''63''10214'_'10215'_630
                                v0
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                            (coe v0))
                                         (coe v9)))
                                   (coe v7))
                                (coe
                                   MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                      (coe v5) (coe v2))))
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                   (coe v0))
                                (let v10
                                       = coe
                                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                              (coe v5) (coe v2)) in
                                 coe
                                   (case coe v7 of
                                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v11 v12
                                        -> case coe v11 of
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v13 v14
                                               -> case coe v13 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v15
                                                      -> case coe v10 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                             -> let v19
                                                                      = coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe v15) (coe v12))
                                                                          (coe v10) in
                                                                coe
                                                                  (case coe v14 of
                                                                     0 -> coe v19
                                                                     _ -> coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                               (coe v0))
                                                                            (let v20
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
                                                                                                         v0)))))) in
                                                                             coe
                                                                               (let v21
                                                                                      = subInt
                                                                                          (coe v14)
                                                                                          (coe
                                                                                             (1 ::
                                                                                                Integer)) in
                                                                                coe
                                                                                  (let v22
                                                                                         = coe
                                                                                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                             v20
                                                                                             (coe
                                                                                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   v21)
                                                                                                (coe
                                                                                                   v17))
                                                                                             v17 in
                                                                                   coe
                                                                                     (case coe
                                                                                             v14 of
                                                                                        0 -> coe
                                                                                               MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                               (coe
                                                                                                  v20)
                                                                                        1 -> coe v17
                                                                                        _ -> coe
                                                                                               v22))))
                                                                            v19)
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                   (coe v0))
                                (let v10
                                       = coe
                                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                              (coe v5) (coe v2)) in
                                 coe
                                   (case coe v7 of
                                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v11 v12
                                        -> case coe v11 of
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v13 v14
                                               -> case coe v13 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v15
                                                      -> case coe v10 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                             -> let v19
                                                                      = coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe v15) (coe v12))
                                                                          (coe v10) in
                                                                coe
                                                                  (case coe v14 of
                                                                     0 -> coe v19
                                                                     _ -> coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                               (coe v0))
                                                                            (let v20
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
                                                                                                         v0)))))) in
                                                                             coe
                                                                               (let v21
                                                                                      = subInt
                                                                                          (coe v14)
                                                                                          (coe
                                                                                             (1 ::
                                                                                                Integer)) in
                                                                                coe
                                                                                  (let v22
                                                                                         = coe
                                                                                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                             v20
                                                                                             (coe
                                                                                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   v21)
                                                                                                (coe
                                                                                                   v17))
                                                                                             v17 in
                                                                                   coe
                                                                                     (case coe
                                                                                             v14 of
                                                                                        0 -> coe
                                                                                               MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                               (coe
                                                                                                  v20)
                                                                                        1 -> coe v17
                                                                                        _ -> coe
                                                                                               v22))))
                                                                            v19)
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                    (coe v0)))))))))))))
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                   (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                      (coe v0))
                                   (let v10
                                          = coe
                                              MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                 (coe v5) (coe v2)) in
                                    coe
                                      (case coe v7 of
                                         MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v11 v12
                                           -> case coe v11 of
                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v13 v14
                                                  -> case coe v13 of
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v15
                                                         -> case coe v10 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                -> let v19
                                                                         = coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__428
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v15) (coe v12))
                                                                             (coe v10) in
                                                                   coe
                                                                     (case coe v14 of
                                                                        0 -> coe v19
                                                                        _ -> coe
                                                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                  (coe v0))
                                                                               (let v20
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
                                                                                                            v0)))))) in
                                                                                coe
                                                                                  (let v21
                                                                                         = subInt
                                                                                             (coe
                                                                                                v14)
                                                                                             (coe
                                                                                                (1 ::
                                                                                                   Integer)) in
                                                                                   coe
                                                                                     (let v22
                                                                                            = coe
                                                                                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                                v20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                                   (coe
                                                                                                      v20)
                                                                                                   (coe
                                                                                                      v21)
                                                                                                   (coe
                                                                                                      v17))
                                                                                                v17 in
                                                                                      coe
                                                                                        (case coe
                                                                                                v14 of
                                                                                           0 -> coe
                                                                                                  MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                  (coe
                                                                                                     v20)
                                                                                           1 -> coe
                                                                                                  v17
                                                                                           _ -> coe
                                                                                                  v22))))
                                                                               v19)
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError))))
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_poly'45'mapR_1208
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                         (coe v5) (coe v2))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                         (coe v5) (coe v2))))
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                      (coe v0))
                                   (coe v9))
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                      (coe v0)))
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                         (coe v0))))
                                (coe
                                   (\ v10 v11 ->
                                      coe
                                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                        (coe
                                           MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
                                              (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                       (coe v0))))
                                              v10
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 v11))
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
                                                                         (coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                            (coe v0)))))))))))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 v10
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                       (coe v0))
                                                    v11))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                       (coe v0))
                                                    v11)
                                                 v10)
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                       (coe v0))
                                                    v11 v10)))
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''42''45'distrib'737'_70
                                              (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0)))
                                              v11 v10))
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
                                                                      (coe
                                                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                         (coe v0)))))))))))
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0))
                                              v10
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 v11))
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 v11 v10))
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                              (\ v12 v13 -> v13)
                                              (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 v11 v10)
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                    (coe v0))
                                                 v10 v11)))
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0)))
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0))
                                              v11 v10)
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0))
                                              v10 v11)
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
                                              (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                       (coe v0))))
                                              v11 v10))))
                                (coe
                                   (\ v10 v11 ->
                                      coe
                                        MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                                                   (coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                      (coe v0)))))))))))
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__210
                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0))
                                              v10)
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0))
                                              v11))
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__210
                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0))
                                              v10 v11))
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''43''45'comm_76
                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                 (coe v0)))
                                           v10 v11)))
                                (coe
                                   (\ v10 ->
                                      coe
                                        du_'8863''45'step'45'hom_506 (coe v0) (coe v10)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_396
                                                 (coe v5) (coe v2))))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                 (coe v0)))))))))))
                                   (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                      (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                         (coe v0))
                                      (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                      (\ v10 v11 v12 ->
                                         coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                           v12)
                                      (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                            (coe v0))
                                         (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                                                          (coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                             (coe v0)))))))))))))
                                         (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0))
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))))
                                            (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                               (coe v0))
                                            (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                                                             (coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                (coe v0)))))))))))))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0))))
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0)))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0)))))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0))
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                                                                (coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                   (coe
                                                                                      v0)))))))))))))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                           (coe v0)))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                           (coe v0)))))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                                                                   (coe
                                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                      (coe
                                                                                         v0)))))))))))))
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                           (coe v0)))))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                           (coe v0)))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                           (coe v0))))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                                           (coe
                                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                    (coe v0))))))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                           (coe v0))))))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''42''45'distrib'737'_70
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0)))
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0)))
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0)))))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                                                       (coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                          (coe v0)))))))))))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0))))
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))))
                                            (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                                                           (coe
                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                              (coe v0))))))
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                     (coe v0))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                        (coe v0)))))))))
                                (coe v7)))
                          (coe
                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8848''8595''45'hom_998
                             (coe v0)
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_286
                                         (coe v0))
                                      (coe v9)))
                                (coe v7))
                             (coe v5) (coe v2))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation.⊟-hom
d_'8863''45'hom_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'8863''45'hom_542 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8863''45'hom_542 v4
du_'8863''45'hom_542 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'8863''45'hom_542 v0 = coe du_'8863''45'step'45'hom_506 (coe v0)
