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

module MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Kleene.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters
import qualified MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics

-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables._.PowInd
d_PowInd_316 a0 a1 a2 a3 a4 a5 a6 = ()
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables._.ι
d_ι_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
d_ι_354 ~v0 ~v1 ~v2 ~v3 v4 = du_ι_354 v4
du_ι_354 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_Poly_176
du_ι_354 v0
  = let v1
          = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
              (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            let v4
                  = coe
                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                      (coe v2) (coe v3) in
            coe
              (let v5
                     = let v5 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
                       coe
                         (let v6
                                = coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                    (coe (0 :: Integer))
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                          (coe
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                                          (coe v2) (coe v3))) in
                          coe
                            (let v7 = 1 :: Integer in
                             coe
                               (coe
                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'46'extendedlambda1_286
                                  (coe v6) (coe v7) (coe v5)
                                  (let v8
                                         = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                             (coe
                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                (coe v1)) in
                                   coe
                                     (let v9
                                            = coe
                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                v1 v8 in
                                      coe
                                        (if coe v9
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))))) in
               coe
                 (let v6
                        = coe
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                            (coe v3) in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                         -> coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                              (coe (0 :: Integer))
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148 (coe v2))
                       MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v7
                         -> case coe v7 of
                              MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v8 v9
                                -> case coe v8 of
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v10 v11
                                       -> case coe v10 of
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v12
                                              -> case coe v11 of
                                                   0 -> case coe v9 of
                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                            -> case coe v12 of
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v14 v15 v16
                                                                   -> coe
                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                                                        (coe v14) (coe v15)
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                                                                              v16)
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6140)
                                                                           (coe v6))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v14
                                                            -> coe
                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                                                 (coe
                                                                    addInt (coe (1 :: Integer))
                                                                    (coe v4))
                                                                 (coe
                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                       (coe
                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172
                                                                          (coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232
                                                                             v12)
                                                                          (coe (0 :: Integer)))
                                                                       (coe v9))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                 (coe v6)
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> coe
                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                                          (coe addInt (coe (1 :: Integer)) (coe v4))
                                                          (coe
                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218
                                                             (coe
                                                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42
                                                                (coe
                                                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172
                                                                   (coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232
                                                                      v12)
                                                                   (coe v11))
                                                                (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                          (coe v6)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)))))
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables._.PowInd.coeff
d_coeff_424 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_PowInd_158 ->
  AgdaAny
d_coeff_424 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_coeff_168
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables._.PowInd.pow
d_pow_426 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.T_PowInd_158 ->
  Integer
d_pow_426 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.d_pow_170
      (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables._.⟦_⟧
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
-- Tactic.RingSolver.Core.Polynomial.Homomorphism.Variables.ι-hom
d_ι'45'hom_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_ι'45'hom_498 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_ι'45'hom_498 v4 v5 v6 v7
du_ι'45'hom_498 ::
  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.T_Homomorphism_68 ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_ι'45'hom_498 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (let v4
             = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                 (coe v0) in
       coe
         (let v5
                = let v5
                        = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                            (coe v0) in
                  coe
                    (let v6 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
                     coe
                       (let v7
                              = coe
                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                  (coe (0 :: Integer))
                                  (coe
                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                              (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                                        (coe v1) (coe v2))) in
                        coe
                          (let v8 = 1 :: Integer in
                           coe
                             (coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'46'extendedlambda1_286
                                (coe v7) (coe v8) (coe v6)
                                (let v9
                                       = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                 (coe v0))) in
                                 coe
                                   (let v10
                                          = coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                              v5 v9 in
                                    coe
                                      (if coe v10
                                         then coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                (coe v10)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                         else coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                (coe v10)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))) in
          coe
            (let v6
                   = coe
                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                       (coe v2) in
             coe
               (case coe v5 of
                  MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                    -> let v7
                             = MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                    (coe v4)) in
                       coe
                         (coe
                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                               (coe v0))
                            v7)
                  MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v7
                    -> case coe v7 of
                         MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v8 v9
                           -> case coe v8 of
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v10 v11
                                  -> case coe v10 of
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v12
                                         -> case coe v11 of
                                              0 -> case coe v9 of
                                                     MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                       -> case coe v12 of
                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v14 v15 v16
                                                              -> let v17
                                                                       = coe
                                                                           MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                                                                              v16)
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6140)
                                                                           (coe v6) in
                                                                 coe
                                                                   (case coe v15 of
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v18
                                                                        -> coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                                                             (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                                                                (coe v0))
                                                                             v18
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v19 v20
                                                                        -> let v21
                                                                                 = coe
                                                                                     MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                     (coe
                                                                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                                        (coe v17)
                                                                                        (coe v3)) in
                                                                           coe
                                                                             (case coe v19 of
                                                                                MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v22 v23
                                                                                  -> case coe v22 of
                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v24 v25
                                                                                         -> case coe
                                                                                                   v24 of
                                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v26
                                                                                                -> case coe
                                                                                                          v21 of
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                       -> let v30
                                                                                                                = coe
                                                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                                                    (coe
                                                                                                                       v0)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          v26)
                                                                                                                       (coe
                                                                                                                          v23))
                                                                                                                    (coe
                                                                                                                       v21) in
                                                                                                          coe
                                                                                                            (case coe
                                                                                                                    v25 of
                                                                                                               0 -> coe
                                                                                                                      v30
                                                                                                               _ -> coe
                                                                                                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                                                      (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                         (coe
                                                                                                                            v0))
                                                                                                                      (let v31
                                                                                                                             = coe
                                                                                                                                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                                                    (let v31
                                                                                                                                           = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                                               (coe
                                                                                                                                                  v0) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                                             (coe
                                                                                                                                                v31))))) in
                                                                                                                       coe
                                                                                                                         (let v32
                                                                                                                                = coe
                                                                                                                                    MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                                                    (coe
                                                                                                                                       v31) in
                                                                                                                          coe
                                                                                                                            (let v33
                                                                                                                                   = subInt
                                                                                                                                       (coe
                                                                                                                                          v25)
                                                                                                                                       (coe
                                                                                                                                          (1 ::
                                                                                                                                             Integer)) in
                                                                                                                             coe
                                                                                                                               (let v34
                                                                                                                                      = coe
                                                                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                                                          v32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                                             (coe
                                                                                                                                                v32)
                                                                                                                                             (coe
                                                                                                                                                v33)
                                                                                                                                             (coe
                                                                                                                                                v28))
                                                                                                                                          v28 in
                                                                                                                                coe
                                                                                                                                  (case coe
                                                                                                                                          v25 of
                                                                                                                                     0 -> coe
                                                                                                                                            MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                                            (coe
                                                                                                                                               v32)
                                                                                                                                     1 -> coe
                                                                                                                                            v28
                                                                                                                                     _ -> coe
                                                                                                                                            v34)))))
                                                                                                                      v30)
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v14
                                                       -> let v15
                                                                = coe
                                                                    MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                    (coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                       (coe v6) (coe v3)) in
                                                          coe
                                                            (let v16 = 0 :: Integer in
                                                             coe
                                                               (case coe v15 of
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                    -> let v19
                                                                             = coe
                                                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v12)
                                                                                    (coe v9))
                                                                                 (coe v15) in
                                                                       coe
                                                                         (case coe v16 of
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
                                                                                                 (coe
                                                                                                    v20) in
                                                                                       coe
                                                                                         (let v22
                                                                                                = -1 ::
                                                                                                    Integer in
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
                                                                                               (case coe
                                                                                                       v16 of
                                                                                                  0 -> coe
                                                                                                         MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                         (coe
                                                                                                            v21)
                                                                                                  1 -> coe
                                                                                                         v17
                                                                                                  _ -> coe
                                                                                                         v23)))))
                                                                                   v19)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> let v14
                                                         = coe
                                                             MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                             (coe
                                                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                (coe v6) (coe v3)) in
                                                   coe
                                                     (case coe v14 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                          -> let v17
                                                                   = coe
                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v12) (coe v9))
                                                                       (coe v14) in
                                                             coe
                                                               (case coe v11 of
                                                                  0 -> coe v17
                                                                  _ -> coe
                                                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                            (coe v0))
                                                                         (let v18
                                                                                = coe
                                                                                    MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                    (coe
                                                                                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                       (let v18
                                                                                              = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                  (coe
                                                                                                     v0) in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                             (coe
                                                                                                MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                (coe
                                                                                                   v18))))) in
                                                                          coe
                                                                            (let v19
                                                                                   = coe
                                                                                       MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                       (coe v18) in
                                                                             coe
                                                                               (let v20
                                                                                      = subInt
                                                                                          (coe v11)
                                                                                          (coe
                                                                                             (1 ::
                                                                                                Integer)) in
                                                                                coe
                                                                                  (let v21
                                                                                         = coe
                                                                                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                             v19
                                                                                             (coe
                                                                                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                (coe
                                                                                                   v19)
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   v15))
                                                                                             v15 in
                                                                                   coe
                                                                                     (case coe
                                                                                             v11 of
                                                                                        0 -> coe
                                                                                               MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                               (coe
                                                                                                  v19)
                                                                                        1 -> coe v15
                                                                                        _ -> coe
                                                                                               v21)))))
                                                                         v17)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError))))
      (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v2))
      (let v4
             = let v4
                     = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                         (coe
                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                            (coe v0)) in
               coe
                 (let v5
                        = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                            (coe v4) in
                  coe
                    (let v6
                           = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v5) in
                     coe
                       (let v7
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                  (coe v6) in
                        coe
                          (let v8
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                     (coe v7) in
                           coe
                             (let v9
                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v8) in
                              coe
                                (let v10
                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                           (coe v9) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_200
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                         (coe v10))))))))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
            (let v5
                   = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                       (coe v0) in
             coe
               (let v6
                      = let v6
                              = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                  (coe v0) in
                        coe
                          (let v7 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
                           coe
                             (let v8
                                    = coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                        (coe (0 :: Integer))
                                        (coe
                                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                              (coe
                                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                    (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                                              (coe v1) (coe v2))) in
                              coe
                                (let v9 = 1 :: Integer in
                                 coe
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'46'extendedlambda1_286
                                      (coe v8) (coe v9) (coe v7)
                                      (let v10
                                             = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                                 (coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                       (coe v0))) in
                                       coe
                                         (let v11
                                                = coe
                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                    v6 v10 in
                                          coe
                                            (if coe v11
                                               then coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                               else coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))) in
                coe
                  (let v7
                         = coe
                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                             (coe v2) in
                   coe
                     (case coe v6 of
                        MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                          -> let v8
                                   = MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                          (coe v5)) in
                             coe
                               (coe
                                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                  (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                     (coe v0))
                                  v8)
                        MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v8
                          -> case coe v8 of
                               MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v9 v10
                                 -> case coe v9 of
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v11 v12
                                        -> case coe v11 of
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v13
                                               -> case coe v12 of
                                                    0 -> case coe v10 of
                                                           MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46
                                                             -> case coe v13 of
                                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208 v15 v16 v17
                                                                    -> let v18
                                                                             = coe
                                                                                 MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                                                                                    v17)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Properties.du_'8804''8242''45'trans_6140)
                                                                                 (coe v7) in
                                                                       coe
                                                                         (case coe v16 of
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210 v19
                                                                              -> coe
                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                                                                   (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                                                                      (coe v0))
                                                                                   v19
                                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_'8512'_218 v20 v21
                                                                              -> let v22
                                                                                       = coe
                                                                                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                                           (coe
                                                                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 v3)) in
                                                                                 coe
                                                                                   (case coe v20 of
                                                                                      MAlonzo.Code.Data.List.Kleene.Base.C__'38'__42 v23 v24
                                                                                        -> case coe
                                                                                                  v23 of
                                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__Δ__172 v25 v26
                                                                                               -> case coe
                                                                                                         v25 of
                                                                                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8800'0_232 v27
                                                                                                      -> case coe
                                                                                                                v22 of
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                             -> let v31
                                                                                                                      = coe
                                                                                                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                                                          (coe
                                                                                                                             v0)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                v27)
                                                                                                                             (coe
                                                                                                                                v24))
                                                                                                                          (coe
                                                                                                                             v22) in
                                                                                                                coe
                                                                                                                  (case coe
                                                                                                                          v26 of
                                                                                                                     0 -> coe
                                                                                                                            v31
                                                                                                                     _ -> coe
                                                                                                                            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                                                            (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            (let v32
                                                                                                                                   = coe
                                                                                                                                       MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                                                                                                                                          (let v32
                                                                                                                                                 = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                                                                                     (coe
                                                                                                                                                        v0) in
                                                                                                                                           coe
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                                                                   (coe
                                                                                                                                                      v32))))) in
                                                                                                                             coe
                                                                                                                               (let v33
                                                                                                                                      = coe
                                                                                                                                          MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                                                                          (coe
                                                                                                                                             v32) in
                                                                                                                                coe
                                                                                                                                  (let v34
                                                                                                                                         = subInt
                                                                                                                                             (coe
                                                                                                                                                v26)
                                                                                                                                             (coe
                                                                                                                                                (1 ::
                                                                                                                                                   Integer)) in
                                                                                                                                   coe
                                                                                                                                     (let v35
                                                                                                                                            = coe
                                                                                                                                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                                                                v33
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                                                                   (coe
                                                                                                                                                      v33)
                                                                                                                                                   (coe
                                                                                                                                                      v34)
                                                                                                                                                   (coe
                                                                                                                                                      v29))
                                                                                                                                                v29 in
                                                                                                                                      coe
                                                                                                                                        (case coe
                                                                                                                                                v26 of
                                                                                                                                           0 -> coe
                                                                                                                                                  MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                                                                  (coe
                                                                                                                                                     v33)
                                                                                                                                           1 -> coe
                                                                                                                                                  v29
                                                                                                                                           _ -> coe
                                                                                                                                                  v35)))))
                                                                                                                            v31)
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           MAlonzo.Code.Data.List.Kleene.Base.C_'8761'__48 v15
                                                             -> let v16
                                                                      = coe
                                                                          MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                          (coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                             (coe v7) (coe v3)) in
                                                                coe
                                                                  (let v17 = 0 :: Integer in
                                                                   coe
                                                                     (case coe v16 of
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                          -> let v20
                                                                                   = coe
                                                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe v13)
                                                                                          (coe v10))
                                                                                       (coe v16) in
                                                                             coe
                                                                               (case coe v17 of
                                                                                  0 -> coe v20
                                                                                  _ -> coe
                                                                                         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                                                                         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                                                            (coe
                                                                                               v0))
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
                                                                                                      = -1 ::
                                                                                                          Integer in
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
                                                                                                             v17 of
                                                                                                        0 -> coe
                                                                                                               MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                               (coe
                                                                                                                  v22)
                                                                                                        1 -> coe
                                                                                                               v18
                                                                                                        _ -> coe
                                                                                                               v24)))))
                                                                                         v20)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> let v15
                                                               = coe
                                                                   MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                                   (coe
                                                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                                      (coe v7) (coe v3)) in
                                                         coe
                                                           (case coe v15 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                -> let v18
                                                                         = coe
                                                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du__'10214''8759''10215'__422
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v13) (coe v10))
                                                                             (coe v15) in
                                                                   coe
                                                                     (case coe v12 of
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
                                                                                                        (coe
                                                                                                           v0) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                                                                                                      (coe
                                                                                                         v19))))) in
                                                                                coe
                                                                                  (let v20
                                                                                         = coe
                                                                                             MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
                                                                                             (coe
                                                                                                v19) in
                                                                                   coe
                                                                                     (let v21
                                                                                            = subInt
                                                                                                (coe
                                                                                                   v12)
                                                                                                (coe
                                                                                                   (1 ::
                                                                                                      Integer)) in
                                                                                      coe
                                                                                        (let v22
                                                                                               = coe
                                                                                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88
                                                                                                   v20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         v16))
                                                                                                   v16 in
                                                                                         coe
                                                                                           (case coe
                                                                                                   v12 of
                                                                                              0 -> coe
                                                                                                     MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90
                                                                                                     (coe
                                                                                                        v20)
                                                                                              1 -> coe
                                                                                                     v16
                                                                                              _ -> coe
                                                                                                     v22)))))
                                                                               v18)
                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))))
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8512''63''10214'_'10215'_624
               v0
               (let v5
                      = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                          (coe v0) in
                coe
                  (let v6 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
                   coe
                     (let v7
                            = coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                (coe (0 :: Integer))
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                                      (coe v1) (coe v2))) in
                      coe
                        (let v8 = 1 :: Integer in
                         coe
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'46'extendedlambda1_286
                              (coe v7) (coe v8) (coe v6)
                              (let v9
                                     = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                               (coe v0))) in
                               coe
                                 (let v10
                                        = coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                            v5 v9 in
                                  coe
                                    (if coe v10
                                       then coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       else coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))))
               (coe
                  MAlonzo.Code.Data.Vec.Base.du_uncons_556
                  (coe
                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                     (coe
                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                        (coe v2))
                     (coe v3))))
            (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v2))
            (let v5
                   = let v5
                           = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                               (coe
                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                  (coe v0)) in
                     coe
                       (let v6
                              = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v5) in
                        coe
                          (let v7
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v6) in
                           coe
                             (let v8
                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                        (coe v7) in
                              coe
                                (let v9
                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                           (coe v8) in
                                 coe
                                   (let v10
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                              (coe v9) in
                                    coe
                                      (let v11
                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                 (coe v10) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.du_setoid_200
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                               (coe v11))))))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))))
                  (coe
                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8512''63''10214'_'10215'_624
                     v0
                     (let v6
                            = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                (coe v0) in
                      coe
                        (let v7 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
                         coe
                           (let v8
                                  = coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                      (coe (0 :: Integer))
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                  (coe v0)))))
                                      (coe
                                         MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                                            (coe v1) (coe v2))) in
                            coe
                              (let v9 = 1 :: Integer in
                               coe
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'46'extendedlambda1_286
                                    (coe v8) (coe v9) (coe v7)
                                    (let v10
                                           = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                               (coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                                  (coe
                                                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                     (coe v0))) in
                                     coe
                                       (let v11
                                              = coe
                                                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                                  v6 v10 in
                                        coe
                                          (if coe v11
                                             then coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                    (coe v11)
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             else coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                    (coe v11)
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))))
                     (coe
                        MAlonzo.Code.Data.Vec.Base.du_uncons_556
                        (coe
                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                              (coe v2))
                           (coe v3))))
                  (coe
                     MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                     (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                        (coe v0))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                 (coe v2))
                              (coe v3))))
                     (let v6
                            = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                              (coe v0))
                           v6)))
                  (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v2))
                  (let v6
                         = let v6
                                 = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                     (coe
                                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                        (coe v0)) in
                           coe
                             (let v7
                                    = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe v6) in
                              coe
                                (let v8
                                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                           (coe v7) in
                                 coe
                                   (let v9
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                              (coe v8) in
                                    coe
                                      (let v10
                                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                 (coe v9) in
                                       coe
                                         (let v11
                                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                    (coe v10) in
                                          coe
                                            (let v12
                                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                       (coe v11) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                     (coe v12))))))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v6))))
                        (coe
                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                              (coe v0))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                       (coe v2))
                                    (coe v3))))
                           (let v7
                                  = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                    (coe v0))
                                 v7)))
                        (coe
                           MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                           (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                              (coe v0))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                       (coe v2))
                                    (coe v3))))
                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'35'_220
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                 (coe v0))))
                        (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v2))
                        (let v7
                               = let v7
                                       = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                           (coe
                                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                              (coe v0)) in
                                 coe
                                   (let v8
                                          = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v7) in
                                    coe
                                      (let v9
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                 (coe v8) in
                                       coe
                                         (let v10
                                                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                    (coe v9) in
                                          coe
                                            (let v11
                                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                       (coe v10) in
                                             coe
                                               (let v12
                                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                          (coe v11) in
                                                coe
                                                  (let v13
                                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                             (coe v12) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                           (coe v13))))))))) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (coe v7))))
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
                                 (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                    (coe v0))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                          (coe
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                             (coe v2))
                                          (coe v3))))
                                 (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'35'_220
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                       (coe v0))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                          (coe v2))
                                       (coe v3))))
                              (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v2))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                 (\ v8 v9 v10 v11 v12 -> v12)
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                          (coe
                                             MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                             (coe v2))
                                          (coe v3))))
                                 (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v2))
                                 (coe MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3) (coe v2))
                                 (let v8
                                        = let v8
                                                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                                    (coe
                                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                                       (coe v0)) in
                                          coe
                                            (let v9
                                                   = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                       (coe v8) in
                                             coe
                                               (let v10
                                                      = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                          (coe v9) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                             (coe v10) in
                                                   coe
                                                     (let v12
                                                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                                                (coe v11) in
                                                      coe
                                                        (let v13
                                                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                   (coe v12) in
                                                         coe
                                                           (let v14
                                                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                      (coe v13) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                    (coe v14))))))))) in
                                  coe
                                    (let v9
                                           = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                  (coe v8)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                             (coe v9))
                                          (coe
                                             MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v3)
                                             (coe v2)))))
                                 erased)
                              (let v8
                                     = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                         (coe v0) in
                               coe
                                 (let v9
                                        = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                            (coe v8) in
                                  coe
                                    (let v10
                                           = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                               (coe v9) in
                                     coe
                                       (let v11
                                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                                  (coe v10) in
                                        coe
                                          (let v12
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                                     (coe v11) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                                                   (coe v12))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                                      (coe
                                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                                         (coe
                                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                                            (coe v2))
                                                         (coe v3))))))))))))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
                           (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                          (coe v0))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                       (coe v2))
                                    (coe v3))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                       (coe v2))
                                    (coe v3))))
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
                              (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                 (coe v0))
                              (let v7
                                     = let v7
                                             = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                                 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                            (coe v7)) in
                               coe (MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308 (coe v7))))
                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'35'_220
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_358
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_to_286
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Data.Vec.Base.du_uncons_556
                                    (coe
                                       MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                                       (coe
                                          MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                          (coe v2))
                                       (coe v3)))))
                           (MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'45'homo_784
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_morphism_470
                                 (coe v0))))))
                  (coe
                     MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8759''8595''45'hom'45's_770
                     (coe v0)
                     (coe
                        MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                        (coe (0 :: Integer))
                        (coe
                           MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                 (coe
                                    MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                              (coe v1) (coe v2))))
                     (coe (0 :: Integer))
                     (coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                 (coe v2))
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.Data.Vec.Base.du_uncons_556
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Semantics.du_drop_390
                              (coe
                                 MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                                 (coe v2))
                              (coe v3)))))))
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Homomorphism.Lemmas.du_'8848''8595''45'hom_992
               (coe v0)
               (let v5
                      = MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                          (coe v0) in
                coe
                  (let v6 = coe MAlonzo.Code.Data.List.Kleene.Base.C_'91''93'_46 in
                   coe
                     (let v7
                            = coe
                                MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C__'8848'__208
                                (coe (0 :: Integer))
                                (coe
                                   MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.C_Κ_210
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                      (coe
                                         MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.d_z'8804''8242'n_6148
                                   (coe
                                      MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_go_140
                                      (coe v1) (coe v2))) in
                      coe
                        (let v8 = 1 :: Integer in
                         coe
                           (coe
                              MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_'46'extendedlambda1_286
                              (coe v7) (coe v8) (coe v6)
                              (let v9
                                     = MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
                                         (coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_rawRing_24
                                            (coe
                                               MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_from_284
                                               (coe v0))) in
                               coe
                                 (let v10
                                        = coe
                                            MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters.d_isZero_26
                                            v5 v9 in
                                  coe
                                    (if coe v10
                                       then coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       else coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))))
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Base.du_space'8804''8242'n_150
                  (coe v2))
               (coe v3))))
