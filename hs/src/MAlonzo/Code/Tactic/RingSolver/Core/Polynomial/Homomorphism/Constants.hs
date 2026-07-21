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

module MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Constants where

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
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics

-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Constants._.κ
d_κ_312 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
d_κ_312 ~v0 v1 v2 = du_κ_312 v1 v2
du_κ_312 ::
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
du_κ_312 v0 v1
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
      (coe (0 :: Integer))
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
         (coe v1))
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6222 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Constants._.⟦_⟧
d_'10214'_'10215'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'_396 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_'10214'_'10215'_396 v4 v6 v7
du_'10214'_'10215'_396 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'10214'_'10215'_396 v0 v1 v2
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
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Constants.κ-hom
d_κ'45'hom_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_κ'45'hom_404 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du_κ'45'hom_404 v4 v6
du_κ'45'hom_404 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_70 ->
  AgdaAny -> AgdaAny
du_κ'45'hom_404 v0 v1
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_360
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_288
         (coe v0))
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_472
            (coe v0))
         v1)
