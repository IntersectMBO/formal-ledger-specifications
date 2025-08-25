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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics

-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly
d_Poly_362 a0 a1 a2 a3 a4 a5 = ()
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.⊟_
d_'8863'__420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
d_'8863'__420 ~v0 ~v1 ~v2 ~v3 v4 = du_'8863'__420 v4
du_'8863'__420 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
du_'8863'__420 v0
  = let v1
          = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
              (coe v0) in
    coe
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
              (coe v1) (coe v2)))
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.⊟-step
d_'8863''45'step_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
d_'8863''45'step_422 ~v0 ~v1 ~v2 ~v3 v4 = du_'8863''45'step_422 v4
du_'8863''45'step_422 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
du_'8863''45'step_422 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
         (coe v0))
      v1 v3
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly.flat
d_flat_466 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_FlatPoly_178
d_flat_466 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_flat_204
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly.i
d_i_468 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  Integer
d_i_468 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i_202
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.Poly.i≤n
d_i'8804'n_470 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_i'8804'n_470 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_i'8804'n_206
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation._.⟦_⟧
d_'10214'_'10215'_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'10214'_'10215'_490 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_'10214'_'10215'_490 v4 v6 v7
du_'10214'_'10215'_490 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'10214'_'10215'_490 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v3 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v6
               -> coe
                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                       (coe v0))
                    v6
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v7 v8
               -> let v9
                        = coe
                            MAlonzo.Code.Data.Vec.Base.du_uncons_556
                            (coe
                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
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
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v14) (coe v11))
                                                           (coe v9) in
                                                 coe
                                                   (case coe v13 of
                                                      0 -> coe v18
                                                      _ -> coe
                                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                (coe v0))
                                                             (let v19
                                                                    = coe
                                                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                           (let v19
                                                                                  = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                      (coe v0) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                 (coe
                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                    (coe v19))))) in
                                                              coe
                                                                (let v20
                                                                       = coe
                                                                           MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                           (coe v19) in
                                                                 coe
                                                                   (let v21
                                                                          = subInt
                                                                              (coe v13)
                                                                              (coe
                                                                                 (1 :: Integer)) in
                                                                    coe
                                                                      (let v22
                                                                             = coe
                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                 v20
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                    (coe v20)
                                                                                    (coe v21)
                                                                                    (coe v16))
                                                                                 v16 in
                                                                       coe
                                                                         (case coe v13 of
                                                                            0 -> coe
                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                   (coe v20)
                                                                            1 -> coe v16
                                                                            _ -> coe v22)))))
                                                             v18)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation.⊟-step-hom
d_'8863''45'step'45'hom_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'8863''45'step'45'hom_500 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8
  = du_'8863''45'step'45'hom_500 v4 v7 v8
du_'8863''45'step'45'hom_500 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'8863''45'step'45'hom_500 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v3 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v6
               -> coe
                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'homo_780
                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
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
                              = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                  (coe v0) in
                        coe
                          (let v11
                                 = coe
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                        (coe v0))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                              (coe v0))
                                           (coe v9)))
                                     (coe v7) in
                           coe
                             (case coe v11 of
                                MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                  -> let v12
                                           = MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                  (coe v10)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
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
                                                                                            MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                                                                                            v21)
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6140)
                                                                                         (coe v5) in
                                                                               coe
                                                                                 (case coe v20 of
                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v23
                                                                                      -> coe
                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                                                                              (coe
                                                                                                 v0))
                                                                                           v23
                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v24 v25
                                                                                      -> let v26
                                                                                               = coe
                                                                                                   MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
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
                                                                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
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
                                                                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                                       (coe
                                                                                                                                          v0))
                                                                                                                                    (let v36
                                                                                                                                           = coe
                                                                                                                                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                                                                  (let v36
                                                                                                                                                         = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                                                             (coe
                                                                                                                                                                v0) in
                                                                                                                                                   coe
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                                                           (coe
                                                                                                                                                              v36))))) in
                                                                                                                                     coe
                                                                                                                                       (let v37
                                                                                                                                              = coe
                                                                                                                                                  MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                                                                  (coe
                                                                                                                                                     v36) in
                                                                                                                                        coe
                                                                                                                                          (let v38
                                                                                                                                                 = subInt
                                                                                                                                                     (coe
                                                                                                                                                        v30)
                                                                                                                                                     (coe
                                                                                                                                                        (1 ::
                                                                                                                                                           Integer)) in
                                                                                                                                           coe
                                                                                                                                             (let v39
                                                                                                                                                    = coe
                                                                                                                                                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                                                                        v37
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                                                           (coe
                                                                                                                                                              v37)
                                                                                                                                                           (coe
                                                                                                                                                              v38)
                                                                                                                                                           (coe
                                                                                                                                                              v33))
                                                                                                                                                        v33 in
                                                                                                                                              coe
                                                                                                                                                (case coe
                                                                                                                                                        v30 of
                                                                                                                                                   0 -> coe
                                                                                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                                                          (coe
                                                                                                                                                             v37)
                                                                                                                                                   1 -> coe
                                                                                                                                                          v33
                                                                                                                                                   _ -> coe
                                                                                                                                                          v39)))))
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
                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                                     (coe v5)
                                                                                     (coe v2)) in
                                                                        coe
                                                                          (let v21 = 0 :: Integer in
                                                                           coe
                                                                             (case coe v20 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                  -> let v24
                                                                                           = coe
                                                                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
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
                                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                    (coe
                                                                                                       v0))
                                                                                                 (let v25
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                               (let v25
                                                                                                                      = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                          (coe
                                                                                                                             v0) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                        (coe
                                                                                                                           v25))))) in
                                                                                                  coe
                                                                                                    (let v26
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                               (coe
                                                                                                                  v25) in
                                                                                                     coe
                                                                                                       (let v27
                                                                                                              = -1 ::
                                                                                                                  Integer in
                                                                                                        coe
                                                                                                          (let v28
                                                                                                                 = coe
                                                                                                                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                                     v26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                        (coe
                                                                                                                           v26)
                                                                                                                        (coe
                                                                                                                           v27)
                                                                                                                        (coe
                                                                                                                           v22))
                                                                                                                     v22 in
                                                                                                           coe
                                                                                                             (case coe
                                                                                                                     v21 of
                                                                                                                0 -> coe
                                                                                                                       MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                       (coe
                                                                                                                          v26)
                                                                                                                1 -> coe
                                                                                                                       v22
                                                                                                                _ -> coe
                                                                                                                       v28)))))
                                                                                                 v24)
                                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            _ -> let v19
                                                                       = coe
                                                                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                           (coe
                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                              (coe v5) (coe v2)) in
                                                                 coe
                                                                   (case coe v19 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                        -> let v22
                                                                                 = coe
                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
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
                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                          (coe v0))
                                                                                       (let v23
                                                                                              = coe
                                                                                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                     (let v23
                                                                                                            = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                (coe
                                                                                                                   v0) in
                                                                                                      coe
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                              (coe
                                                                                                                 v23))))) in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = coe
                                                                                                     MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (let v25
                                                                                                    = subInt
                                                                                                        (coe
                                                                                                           v16)
                                                                                                        (coe
                                                                                                           (1 ::
                                                                                                              Integer)) in
                                                                                              coe
                                                                                                (let v26
                                                                                                       = coe
                                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                           v24
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                              (coe
                                                                                                                 v24)
                                                                                                              (coe
                                                                                                                 v25)
                                                                                                              (coe
                                                                                                                 v20))
                                                                                                           v20 in
                                                                                                 coe
                                                                                                   (case coe
                                                                                                           v16 of
                                                                                                      0 -> coe
                                                                                                             MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                             (coe
                                                                                                                v24)
                                                                                                      1 -> coe
                                                                                                             v20
                                                                                                      _ -> coe
                                                                                                             v26)))))
                                                                                       v22)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError)))
                       (coe
                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                             (coe v0))
                          (let v10
                                 = coe
                                     MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
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
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v15) (coe v12))
                                                                    (coe v10) in
                                                          coe
                                                            (case coe v14 of
                                                               0 -> coe v19
                                                               _ -> coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                      (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                         (coe v0))
                                                                      (let v20
                                                                             = coe
                                                                                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                    (let v20
                                                                                           = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                               (coe
                                                                                                  v0) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                          (coe
                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                             (coe
                                                                                                v20))))) in
                                                                       coe
                                                                         (let v21
                                                                                = coe
                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                    (coe v20) in
                                                                          coe
                                                                            (let v22
                                                                                   = subInt
                                                                                       (coe v14)
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer)) in
                                                                             coe
                                                                               (let v23
                                                                                      = coe
                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                          v21
                                                                                          (coe
                                                                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                             (coe
                                                                                                v21)
                                                                                             (coe
                                                                                                v22)
                                                                                             (coe
                                                                                                v17))
                                                                                          v17 in
                                                                                coe
                                                                                  (case coe v14 of
                                                                                     0 -> coe
                                                                                            MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                            (coe
                                                                                               v21)
                                                                                     1 -> coe v17
                                                                                     _ -> coe
                                                                                            v23)))))
                                                                      v19)
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError)))
                       (let v10
                              = let v10
                                      = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                          (coe
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                             (coe v0)) in
                                coe
                                  (let v11
                                         = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                             (coe v10) in
                                   coe
                                     (let v12
                                            = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                (coe v11) in
                                      coe
                                        (let v13
                                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                   (coe v12) in
                                         coe
                                           (let v14
                                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                      (coe v13) in
                                            coe
                                              (let v15
                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                         (coe v14) in
                                               coe
                                                 (let v16
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                            (coe v15) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                          (coe v16))))))))) in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (coe v10))))
                             (let v11
                                    = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                        (coe v0) in
                              coe
                                (let v12
                                       = coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                    (coe v0))
                                                 (coe v9)))
                                           (coe v7) in
                                 coe
                                   (case coe v12 of
                                      MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                        -> let v13
                                                 = MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                        (coe v11)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                                   (coe v0))
                                                v13)
                                      MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v13
                                        -> case coe v13 of
                                             MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v14 v15
                                               -> case coe v14 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v16 v17
                                                      -> case coe v16 of
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v18
                                                             -> case coe v17 of
                                                                  0 -> case coe v15 of
                                                                         MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                                           -> case coe v18 of
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v20 v21 v22
                                                                                  -> let v23
                                                                                           = coe
                                                                                               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                                                                                                  v22)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6140)
                                                                                               (coe
                                                                                                  v5) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v21 of
                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v24
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                                                                                    (coe
                                                                                                       v0))
                                                                                                 v24
                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v25 v26
                                                                                            -> let v27
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                                                            (coe
                                                                                                               v23)
                                                                                                            (coe
                                                                                                               v2)) in
                                                                                               coe
                                                                                                 (case coe
                                                                                                         v25 of
                                                                                                    MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v28 v29
                                                                                                      -> case coe
                                                                                                                v28 of
                                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v30 v31
                                                                                                             -> case coe
                                                                                                                       v30 of
                                                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v32
                                                                                                                    -> case coe
                                                                                                                              v27 of
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                                           -> let v36
                                                                                                                                    = coe
                                                                                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                           (coe
                                                                                                                                              v32)
                                                                                                                                           (coe
                                                                                                                                              v29))
                                                                                                                                        (coe
                                                                                                                                           v27) in
                                                                                                                              coe
                                                                                                                                (case coe
                                                                                                                                        v31 of
                                                                                                                                   0 -> coe
                                                                                                                                          v36
                                                                                                                                   _ -> coe
                                                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                                                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                                             (coe
                                                                                                                                                v0))
                                                                                                                                          (let v37
                                                                                                                                                 = coe
                                                                                                                                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                                                                        (let v37
                                                                                                                                                               = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                                                                   (coe
                                                                                                                                                                      v0) in
                                                                                                                                                         coe
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                                                                 (coe
                                                                                                                                                                    v37))))) in
                                                                                                                                           coe
                                                                                                                                             (let v38
                                                                                                                                                    = coe
                                                                                                                                                        MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                                                                        (coe
                                                                                                                                                           v37) in
                                                                                                                                              coe
                                                                                                                                                (let v39
                                                                                                                                                       = subInt
                                                                                                                                                           (coe
                                                                                                                                                              v31)
                                                                                                                                                           (coe
                                                                                                                                                              (1 ::
                                                                                                                                                                 Integer)) in
                                                                                                                                                 coe
                                                                                                                                                   (let v40
                                                                                                                                                          = coe
                                                                                                                                                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                                                                              v38
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                                                                 (coe
                                                                                                                                                                    v38)
                                                                                                                                                                 (coe
                                                                                                                                                                    v39)
                                                                                                                                                                 (coe
                                                                                                                                                                    v34))
                                                                                                                                                              v34 in
                                                                                                                                                    coe
                                                                                                                                                      (case coe
                                                                                                                                                              v31 of
                                                                                                                                                         0 -> coe
                                                                                                                                                                MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                                                                (coe
                                                                                                                                                                   v38)
                                                                                                                                                         1 -> coe
                                                                                                                                                                v34
                                                                                                                                                         _ -> coe
                                                                                                                                                                v40)))))
                                                                                                                                          v36)
                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v20
                                                                           -> let v21
                                                                                    = coe
                                                                                        MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                        (coe
                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                                           (coe v5)
                                                                                           (coe
                                                                                              v2)) in
                                                                              coe
                                                                                (let v22
                                                                                       = 0 ::
                                                                                           Integer in
                                                                                 coe
                                                                                   (case coe v21 of
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                        -> let v25
                                                                                                 = coe
                                                                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           v18)
                                                                                                        (coe
                                                                                                           v15))
                                                                                                     (coe
                                                                                                        v21) in
                                                                                           coe
                                                                                             (case coe
                                                                                                     v22 of
                                                                                                0 -> coe
                                                                                                       v25
                                                                                                _ -> coe
                                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (let v26
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                                     (let v26
                                                                                                                            = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                                (coe
                                                                                                                                   v0) in
                                                                                                                      coe
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                              (coe
                                                                                                                                 v26))))) in
                                                                                                        coe
                                                                                                          (let v27
                                                                                                                 = coe
                                                                                                                     MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                                     (coe
                                                                                                                        v26) in
                                                                                                           coe
                                                                                                             (let v28
                                                                                                                    = -1 ::
                                                                                                                        Integer in
                                                                                                              coe
                                                                                                                (let v29
                                                                                                                       = coe
                                                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                                           v27
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                              (coe
                                                                                                                                 v27)
                                                                                                                              (coe
                                                                                                                                 v28)
                                                                                                                              (coe
                                                                                                                                 v23))
                                                                                                                           v23 in
                                                                                                                 coe
                                                                                                                   (case coe
                                                                                                                           v22 of
                                                                                                                      0 -> coe
                                                                                                                             MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                             (coe
                                                                                                                                v27)
                                                                                                                      1 -> coe
                                                                                                                             v23
                                                                                                                      _ -> coe
                                                                                                                             v29)))))
                                                                                                       v25)
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                  _ -> let v20
                                                                             = coe
                                                                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                 (coe
                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                                    (coe v5)
                                                                                    (coe v2)) in
                                                                       coe
                                                                         (case coe v20 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                              -> let v23
                                                                                       = coe
                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                           (coe v0)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 v15))
                                                                                           (coe
                                                                                              v20) in
                                                                                 coe
                                                                                   (case coe v17 of
                                                                                      0 -> coe v23
                                                                                      _ -> coe
                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                (coe
                                                                                                   v0))
                                                                                             (let v24
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                           (let v24
                                                                                                                  = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                      (coe
                                                                                                                         v0) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                    (coe
                                                                                                                       v24))))) in
                                                                                              coe
                                                                                                (let v25
                                                                                                       = coe
                                                                                                           MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                           (coe
                                                                                                              v24) in
                                                                                                 coe
                                                                                                   (let v26
                                                                                                          = subInt
                                                                                                              (coe
                                                                                                                 v17)
                                                                                                              (coe
                                                                                                                 (1 ::
                                                                                                                    Integer)) in
                                                                                                    coe
                                                                                                      (let v27
                                                                                                             = coe
                                                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                                 v25
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                    (coe
                                                                                                                       v25)
                                                                                                                    (coe
                                                                                                                       v26)
                                                                                                                    (coe
                                                                                                                       v21))
                                                                                                                 v21 in
                                                                                                       coe
                                                                                                         (case coe
                                                                                                                 v17 of
                                                                                                            0 -> coe
                                                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                   (coe
                                                                                                                      v25)
                                                                                                            1 -> coe
                                                                                                                   v21
                                                                                                            _ -> coe
                                                                                                                   v27)))))
                                                                                             v23)
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8512''63''10214'_'10215'_624
                                v0
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                            (coe v0))
                                         (coe v9)))
                                   (coe v7))
                                (coe
                                   MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                      (coe v5) (coe v2))))
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                   (coe v0))
                                (let v11
                                       = coe
                                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                              (coe v5) (coe v2)) in
                                 coe
                                   (case coe v7 of
                                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v12 v13
                                        -> case coe v12 of
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v14 v15
                                               -> case coe v14 of
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v16
                                                      -> case coe v11 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                             -> let v20
                                                                      = coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe v16) (coe v13))
                                                                          (coe v11) in
                                                                coe
                                                                  (case coe v15 of
                                                                     0 -> coe v20
                                                                     _ -> coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                               (coe v0))
                                                                            (let v21
                                                                                   = coe
                                                                                       MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                       (coe
                                                                                          MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                          (let v21
                                                                                                 = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                     (coe
                                                                                                        v0) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                (coe
                                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                   (coe
                                                                                                      v21))))) in
                                                                             coe
                                                                               (let v22
                                                                                      = coe
                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                          (coe
                                                                                             v21) in
                                                                                coe
                                                                                  (let v23
                                                                                         = subInt
                                                                                             (coe
                                                                                                v15)
                                                                                             (coe
                                                                                                (1 ::
                                                                                                   Integer)) in
                                                                                   coe
                                                                                     (let v24
                                                                                            = coe
                                                                                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                v22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                   (coe
                                                                                                      v22)
                                                                                                   (coe
                                                                                                      v23)
                                                                                                   (coe
                                                                                                      v18))
                                                                                                v18 in
                                                                                      coe
                                                                                        (case coe
                                                                                                v15 of
                                                                                           0 -> coe
                                                                                                  MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                  (coe
                                                                                                     v22)
                                                                                           1 -> coe
                                                                                                  v18
                                                                                           _ -> coe
                                                                                                  v24)))))
                                                                            v20)
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                             (let v11
                                    = let v11
                                            = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                (coe
                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                   (coe v0)) in
                                      coe
                                        (let v12
                                               = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                   (coe v11) in
                                         coe
                                           (let v13
                                                  = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                      (coe v12) in
                                            coe
                                              (let v14
                                                     = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                         (coe v13) in
                                               coe
                                                 (let v15
                                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                            (coe v14) in
                                                  coe
                                                    (let v16
                                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                               (coe v15) in
                                                     coe
                                                       (let v17
                                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                  (coe v16) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                (coe v17))))))))) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                            (coe v11))))
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8512''63''10214'_'10215'_624
                                      v0
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                  (coe v0))
                                               (coe v9)))
                                         (coe v7))
                                      (coe
                                         MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                            (coe v5) (coe v2))))
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                      (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                         (coe v0))
                                      (let v12
                                             = coe
                                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                    (coe v5) (coe v2)) in
                                       coe
                                         (case coe v7 of
                                            MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v13 v14
                                              -> case coe v13 of
                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v15 v16
                                                     -> case coe v15 of
                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v17
                                                            -> case coe v12 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                   -> let v21
                                                                            = coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v17)
                                                                                   (coe v14))
                                                                                (coe v12) in
                                                                      coe
                                                                        (case coe v16 of
                                                                           0 -> coe v21
                                                                           _ -> coe
                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                     (coe v0))
                                                                                  (let v22
                                                                                         = coe
                                                                                             MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                             (coe
                                                                                                MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                (let v22
                                                                                                       = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                           (coe
                                                                                                              v0) in
                                                                                                 coe
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                         (coe
                                                                                                            v22))))) in
                                                                                   coe
                                                                                     (let v23
                                                                                            = coe
                                                                                                MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                (coe
                                                                                                   v22) in
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
                                                                                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                      v23
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                         (coe
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            v24)
                                                                                                         (coe
                                                                                                            v19))
                                                                                                      v19 in
                                                                                            coe
                                                                                              (case coe
                                                                                                      v16 of
                                                                                                 0 -> coe
                                                                                                        MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                        (coe
                                                                                                           v23)
                                                                                                 1 -> coe
                                                                                                        v19
                                                                                                 _ -> coe
                                                                                                        v25)))))
                                                                                  v21)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                      (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                         (coe v0))
                                      (let v12
                                             = coe
                                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                    (coe v5) (coe v2)) in
                                       coe
                                         (case coe v7 of
                                            MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v13 v14
                                              -> case coe v13 of
                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v15 v16
                                                     -> case coe v15 of
                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v17
                                                            -> case coe v12 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                   -> let v21
                                                                            = coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v17)
                                                                                   (coe v14))
                                                                                (coe v12) in
                                                                      coe
                                                                        (case coe v16 of
                                                                           0 -> coe v21
                                                                           _ -> coe
                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                     (coe v0))
                                                                                  (let v22
                                                                                         = coe
                                                                                             MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                             (coe
                                                                                                MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                (let v22
                                                                                                       = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                           (coe
                                                                                                              v0) in
                                                                                                 coe
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                         (coe
                                                                                                            v22))))) in
                                                                                   coe
                                                                                     (let v23
                                                                                            = coe
                                                                                                MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                (coe
                                                                                                   v22) in
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
                                                                                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                      v23
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                         (coe
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            v24)
                                                                                                         (coe
                                                                                                            v19))
                                                                                                      v19 in
                                                                                            coe
                                                                                              (case coe
                                                                                                      v16 of
                                                                                                 0 -> coe
                                                                                                        MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                        (coe
                                                                                                           v23)
                                                                                                 1 -> coe
                                                                                                        v19
                                                                                                 _ -> coe
                                                                                                        v25)))))
                                                                                  v21)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                   (let v12
                                          = let v12
                                                  = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                      (coe
                                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                         (coe v0)) in
                                            coe
                                              (let v13
                                                     = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                         (coe v12) in
                                               coe
                                                 (let v14
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                            (coe v13) in
                                                  coe
                                                    (let v15
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                               (coe v14) in
                                                     coe
                                                       (let v16
                                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                  (coe v15) in
                                                        coe
                                                          (let v17
                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                     (coe v16) in
                                                           coe
                                                             (let v18
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                        (coe v17) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                      (coe v18))))))))) in
                                    coe
                                      (let v13
                                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                    (coe v12)) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                               (coe v13))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                  (coe v0))
                                               (let v14
                                                      = coe
                                                          MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                          (coe
                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                             (coe v5) (coe v2)) in
                                                coe
                                                  (case coe v7 of
                                                     MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v15 v16
                                                       -> case coe v15 of
                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v17 v18
                                                              -> case coe v17 of
                                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v19
                                                                     -> case coe v14 of
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                            -> let v23
                                                                                     = coe
                                                                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               v19)
                                                                                            (coe
                                                                                               v16))
                                                                                         (coe
                                                                                            v14) in
                                                                               coe
                                                                                 (case coe v18 of
                                                                                    0 -> coe v23
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                              (coe
                                                                                                 v0))
                                                                                           (let v24
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                         (let v24
                                                                                                                = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                    (coe
                                                                                                                       v0) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                  (coe
                                                                                                                     v24))))) in
                                                                                            coe
                                                                                              (let v25
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                         (coe
                                                                                                            v24) in
                                                                                               coe
                                                                                                 (let v26
                                                                                                        = subInt
                                                                                                            (coe
                                                                                                               v18)
                                                                                                            (coe
                                                                                                               (1 ::
                                                                                                                  Integer)) in
                                                                                                  coe
                                                                                                    (let v27
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                               v25
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                  (coe
                                                                                                                     v25)
                                                                                                                  (coe
                                                                                                                     v26)
                                                                                                                  (coe
                                                                                                                     v21))
                                                                                                               v21 in
                                                                                                     coe
                                                                                                       (case coe
                                                                                                               v18 of
                                                                                                          0 -> coe
                                                                                                                 MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                 (coe
                                                                                                                    v25)
                                                                                                          1 -> coe
                                                                                                                 v21
                                                                                                          _ -> coe
                                                                                                                 v27)))))
                                                                                           v23)
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> MAlonzo.RTE.mazUnreachableError))))))
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_poly'45'mapR_1202
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                               (coe v5) (coe v2))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                               (coe v5) (coe v2))))
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                            (coe v0))
                                         (coe v9))
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                               (coe v0))))
                                      (coe
                                         (\ v12 v13 ->
                                            coe
                                              MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                       (coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                          (coe
                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                             (coe v0))))
                                                    v12
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       v13))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                    (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                      (coe
                                                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                         (coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                            (coe
                                                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                               (coe
                                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                  (coe v0)))))))))))
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       v12
                                                       (coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                             (coe v0))
                                                          v13))
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                             (coe v0))
                                                          v13)
                                                       v12)
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                             (coe v0))
                                                          v13 v12)))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''42''45'distrib'737'_70
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                       (coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0)))
                                                    v13 v12))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                      (coe
                                                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                         (coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                            (coe
                                                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                               (coe v0)))))))))))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0))
                                                    v12
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       v13))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       v13 v12))
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                    (\ v14 v15 -> v15)
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                       (coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       v13 v12)
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                          (coe v0))
                                                       v12 v13)))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0))
                                                    v13 v12)
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0))
                                                    v12 v13)
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                       (coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                          (coe
                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                             (coe v0))))
                                                    v13 v12))))
                                      (coe
                                         (\ v12 v13 ->
                                            coe
                                              MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                   (coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                      (coe
                                                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                         (coe
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                            (coe v0)))))))))))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__208
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0))
                                                    v12)
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0))
                                                    v13))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__208
                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0))
                                                    v12 v13))
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''43''45'comm_76
                                                 (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0)))
                                                 v12 v13)))
                                      (coe
                                         (\ v12 ->
                                            coe
                                              du_'8863''45'step'45'hom_500 (coe v0) (coe v12)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                       (coe v5) (coe v2))))))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                    (coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                       (coe v0)))))))))))
                                         (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                               (coe v0))
                                            (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                            (\ v12 v13 v14 ->
                                               coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                                 v14)
                                            (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                               (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                  (coe v0))
                                               (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                     (coe v0))))
                                            (let v12
                                                   = let v12
                                                           = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                               (coe
                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                  (coe v0)) in
                                                     coe
                                                       (let v13
                                                              = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe v12) in
                                                        coe
                                                          (let v14
                                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                     (coe v13) in
                                                           coe
                                                             (let v15
                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                        (coe v14) in
                                                              coe
                                                                (let v16
                                                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                           (coe v15) in
                                                                 coe
                                                                   (let v17
                                                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                              (coe v16) in
                                                                    coe
                                                                      (let v18
                                                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                                 (coe v17) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                            (coe
                                                                               MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                               (coe v18))))))))) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                           (coe v12))))
                                                  (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                        (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                           (coe v0))
                                                        (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                           (coe
                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                              (coe v0))))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                        (coe v0))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                           (coe v0))))
                                                  (let v13
                                                         = let v13
                                                                 = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                        (coe v0)) in
                                                           coe
                                                             (let v14
                                                                    = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                        (coe v13) in
                                                              coe
                                                                (let v15
                                                                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                           (coe v14) in
                                                                 coe
                                                                   (let v16
                                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                              (coe v15) in
                                                                    coe
                                                                      (let v17
                                                                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                                 (coe v16) in
                                                                       coe
                                                                         (let v18
                                                                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                                    (coe v17) in
                                                                          coe
                                                                            (let v19
                                                                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                                       (coe v18) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                                     (coe
                                                                                        v19))))))))) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                 (coe v13))))
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0))
                                                              (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                    (coe v0))))
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0))
                                                              (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                    (coe v0)))
                                                              (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                    (coe v0)))))
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                              (coe v0))
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0))))
                                                        (let v14
                                                               = let v14
                                                                       = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                           (coe
                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                              (coe v0)) in
                                                                 coe
                                                                   (let v15
                                                                          = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                              (coe v14) in
                                                                    coe
                                                                      (let v16
                                                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                                 (coe v15) in
                                                                       coe
                                                                         (let v17
                                                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                                    (coe v16) in
                                                                          coe
                                                                            (let v18
                                                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                                       (coe v17) in
                                                                             coe
                                                                               (let v19
                                                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                                          (coe
                                                                                             v18) in
                                                                                coe
                                                                                  (let v20
                                                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                                             (coe
                                                                                                v19) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                                        (coe
                                                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                                           (coe
                                                                                              v20))))))))) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                       (coe v14))))
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                       (coe v0))
                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                       (coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                          (coe v0)))
                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                       (coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                          (coe v0)))))
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                    (coe v0))
                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                    (coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                    (coe v0))
                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                    (coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                       (coe v0))))
                                                              (let v15
                                                                     = let v15
                                                                             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                                 (coe
                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                    (coe v0)) in
                                                                       coe
                                                                         (let v16
                                                                                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                                    (coe v15) in
                                                                          coe
                                                                            (let v17
                                                                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                                       (coe v16) in
                                                                             coe
                                                                               (let v18
                                                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                                          (coe
                                                                                             v17) in
                                                                                coe
                                                                                  (let v19
                                                                                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                                             (coe
                                                                                                v18) in
                                                                                   coe
                                                                                     (let v20
                                                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                                                (coe
                                                                                                   v19) in
                                                                                      coe
                                                                                        (let v21
                                                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                                                   (coe
                                                                                                      v20) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                                                 (coe
                                                                                                    v21))))))))) in
                                                               coe
                                                                 (let v16
                                                                        = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                               (coe v15)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                                          (coe v16))
                                                                       (coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                                          (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                             (coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                (coe v0)))))))
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                    (coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                       (coe v0))
                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                       (coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                          (coe v0)))
                                                                    (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                       (coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                          (coe v0))))
                                                                 (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                    (coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                       (coe v0)))
                                                                 (let v15
                                                                        = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                            (coe v0) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                               (coe v15) in
                                                                     coe
                                                                       (let v17
                                                                              = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                                  (coe v16) in
                                                                        coe
                                                                          (let v18
                                                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                                     (coe v17) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
                                                                                (coe
                                                                                   MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                                                                                   (coe v18))
                                                                                (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                                   (coe
                                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                      (coe
                                                                                         v0)))))))))))
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''42''45'distrib'737'_70
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0)))
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0)))
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0))))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                          (coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                             (coe
                                                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                                (coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                   (coe
                                                                                      v0)))))))))))
                                                     (coe
                                                        MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                        (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                              (coe v0))
                                                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                              (coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                 (coe v0))))
                                                        (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                           (coe
                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                              (coe v0))))
                                                     (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                        (coe
                                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                           (coe v0)))
                                                     (let v13
                                                            = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                (coe v0) in
                                                      coe
                                                        (let v14
                                                               = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                                   (coe v13) in
                                                         coe
                                                           (let v15
                                                                  = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                      (coe v14) in
                                                            coe
                                                              (let v16
                                                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                                         (coe v15) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                                                                       (coe v16))
                                                                    (coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
                                                                       (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                          (coe v0))
                                                                       (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
                                                                          (coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                             (coe v0))))))))))))))
                                      (coe v7))))
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8848''8595''45'hom_992
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_para_340
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'8863''45'step_540
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                            (coe v0))
                                         (coe v9)))
                                   (coe v7))
                                (coe v5) (coe v2)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Negation.⊟-hom
d_'8863''45'hom_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_'8863''45'hom_536 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8863''45'hom_536 v4
du_'8863''45'hom_536 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_'8863''45'hom_536 v0 = coe du_'8863''45'step'45'hom_500 (coe v0)
