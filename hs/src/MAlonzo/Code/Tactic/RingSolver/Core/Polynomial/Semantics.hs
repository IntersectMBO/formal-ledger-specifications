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

module MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics where

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
import qualified MAlonzo.Code.Data.List.Kleene.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters

-- Tactic.RingSolver.Core.Polynomial.Semantics._.Coeff
d_Coeff_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer -> ()
d_Coeff_246 = erased
-- Tactic.RingSolver.Core.Polynomial.Semantics._.Poly
d_Poly_260 a0 a1 a2 a3 a4 a5 = ()
-- Tactic.RingSolver.Core.Polynomial.Semantics._.Poly.flat
d_flat_368 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_FlatPoly_178
d_flat_368 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_flat_204
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Semantics._.Poly.i
d_i_370 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  Integer
d_i_370 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i_202
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Semantics._.Poly.i≤n
d_i'8804'n_372 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_i'8804'n_372 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i'8804'n_206
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Semantics.drop
d_drop_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
d_drop_396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_drop_396 v7 v8
du_drop_396 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
du_drop_396 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
        -> coe v1
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v5 v6
               -> coe du_drop_396 (coe v3) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Semantics.drop-1
d_drop'45'1_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_drop'45'1_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_drop'45'1_408 v7 v8
du_drop'45'1_408 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_drop'45'1_408 v0 v1
  = coe
      MAlonzo.Code.Data.Vec.Base.du_uncons_556
      (coe du_drop_396 (coe v0) (coe v1))
-- Tactic.RingSolver.Core.Polynomial.Semantics._*⟨_⟩^_
d__'42''10216'_'10217''94'__414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
d__'42''10216'_'10217''94'__414 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du__'42''10216'_'10217''94'__414 v4 v5 v6 v7
du__'42''10216'_'10217''94'__414 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
du__'42''10216'_'10217''94'__414 v0 v1 v2 v3
  = case coe v3 of
      0 -> coe v1
      _ -> coe
             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                (coe v0))
             (let v4
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
                                       (coe v0)))))) in
              coe
                (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
                 coe
                   (let v6
                          = coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                              (coe
                                 MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                 (coe v4) (coe v5) (coe v2))
                              v2 in
                    coe
                      (case coe v3 of
                         0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                         1 -> coe v2
                         _ -> coe v6))))
             v1
-- Tactic.RingSolver.Core.Polynomial.Semantics._⟦∷⟧_
d__'10214''8759''10215'__428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d__'10214''8759''10215'__428 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du__'10214''8759''10215'__428 v4 v6 v7
du__'10214''8759''10215'__428 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du__'10214''8759''10215'__428 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> case coe v3 of
                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v7 v8 v9
                             -> case coe v8 of
                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v10
                                    -> coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                            (coe v0))
                                         v10
                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v11 v12
                                    -> let v13
                                             = coe
                                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                 (coe du_drop_396 (coe v9) (coe v6)) in
                                       coe
                                         (case coe v11 of
                                            MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v14 v15
                                              -> case coe v14 of
                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v16 v17
                                                     -> case coe v16 of
                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v18
                                                            -> case coe v13 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                   -> let v22
                                                                            = coe
                                                                                du__'10214''8759''10215'__428
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v18)
                                                                                   (coe v15))
                                                                                (coe v13) in
                                                                      coe
                                                                        (case coe v17 of
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
                                                                                                   v17)
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
                                                                                                   v17 of
                                                                                              0 -> coe
                                                                                                     MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                     (coe
                                                                                                        v23)
                                                                                              1 -> coe
                                                                                                     v20
                                                                                              _ -> coe
                                                                                                     v25))))
                                                                                  v22)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v5
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__210
                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                              (coe v0))
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                 (coe v0))
                              v6
                              (case coe v5 of
                                 MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v8 v9
                                   -> case coe v8 of
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v10 v11
                                          -> case coe v10 of
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v12
                                                 -> let v14
                                                          = coe
                                                              du__'10214''8759''10215'__428 (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe v12) (coe v9))
                                                              (coe v2) in
                                                    coe
                                                      (case coe v11 of
                                                         0 -> coe v14
                                                         _ -> coe
                                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                   (coe v0))
                                                                (let v15
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
                                                                   (let v16
                                                                          = subInt
                                                                              (coe v11)
                                                                              (coe
                                                                                 (1 :: Integer)) in
                                                                    coe
                                                                      (let v17
                                                                             = coe
                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                 v15
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                    (coe v15)
                                                                                    (coe v16)
                                                                                    (coe v6))
                                                                                 v6 in
                                                                       coe
                                                                         (case coe v11 of
                                                                            0 -> coe
                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                   (coe v15)
                                                                            1 -> coe v6
                                                                            _ -> coe v17))))
                                                                v14)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError))
                           (case coe v3 of
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v8 v9 v10
                                -> case coe v9 of
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v11
                                       -> coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                                               (coe v0))
                                            v11
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v12 v13
                                       -> let v14
                                                = coe
                                                    MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                    (coe du_drop_396 (coe v10) (coe v7)) in
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
                                                                                   du__'10214''8759''10215'__428
                                                                                   (coe v0)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe v19)
                                                                                      (coe v16))
                                                                                   (coe v14) in
                                                                         coe
                                                                           (case coe v18 of
                                                                              0 -> coe v23
                                                                              _ -> coe
                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                                                                     (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                                                                        (coe v0))
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
                                                                                                                  v0)))))) in
                                                                                      coe
                                                                                        (let v25
                                                                                               = subInt
                                                                                                   (coe
                                                                                                      v18)
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
                                                                                              (case coe
                                                                                                      v18 of
                                                                                                 0 -> coe
                                                                                                        MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                                                                        (coe
                                                                                                           v24)
                                                                                                 1 -> coe
                                                                                                        v21
                                                                                                 _ -> coe
                                                                                                        v26))))
                                                                                     v23)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Semantics.⅀⟦_⟧
d_'8512''10214'_'10215'_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Data.List.Kleene.Base.T__'43'_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8512''10214'_'10215'_432 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v6 of
      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v8 v9
        -> case coe v8 of
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v12
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                             -> let v16
                                      = coe
                                          du__'10214''8759''10215'__428 (coe v4)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                             (coe v9))
                                          (coe v7) in
                                coe
                                  (case coe v11 of
                                     0 -> coe v16
                                     _ -> coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
                                               (coe v4))
                                            (let v17
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
                                                                      (coe v4)))))) in
                                             coe
                                               (let v18 = subInt (coe v11) (coe (1 :: Integer)) in
                                                coe
                                                  (let v19
                                                         = coe
                                                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                             v17
                                                             (coe
                                                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                (coe v17) (coe v18) (coe v14))
                                                             v14 in
                                                   coe
                                                     (case coe v11 of
                                                        0 -> coe
                                                               MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94
                                                               (coe v17)
                                                        1 -> coe v14
                                                        _ -> coe v19))))
                                            v16)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Semantics.⟦_⟧
d_'10214'_'10215'_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'_436 v0 v1 v2 v3 v4 ~v5 v6 v7
  = du_'10214'_'10215'_436 v0 v1 v2 v3 v4 v6 v7
du_'10214'_'10215'_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'10214'_'10215'_436 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v7 v8 v9
        -> case coe v8 of
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v10
               -> coe
                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
                       (coe v4))
                    v10
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v11 v12
               -> let v13 = subInt (coe v7) (coe (1 :: Integer)) in
                  coe
                    (let v14
                           = coe
                               MAlonzo.Code.Data.Vec.Base.du_uncons_556
                               (coe du_drop_396 (coe v9) (coe v6)) in
                     coe
                       (case coe v11 of
                          MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v15 v16
                            -> case coe v15 of
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v17 v18
                                   -> case coe v17 of
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v19
                                          -> case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                 -> let v23
                                                          = coe
                                                              du__'10214''8759''10215'__428 (coe v4)
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
                                                                   (coe v4))
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
                                                                                             v4)))))) in
                                                                 coe
                                                                   (let v25
                                                                          = subInt
                                                                              (coe v18)
                                                                              (coe
                                                                                 (1 :: Integer)) in
                                                                    coe
                                                                      (let v26
                                                                             = coe
                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92
                                                                                 v24
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                                                    (coe v24)
                                                                                    (coe v25)
                                                                                    (coe v21))
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
                          _ -> MAlonzo.RTE.mazUnreachableError))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
