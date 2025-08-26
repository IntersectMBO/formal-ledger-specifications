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

module MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Parameters where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing

-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff
d_RawCoeff_14 a0 a1 = ()
data T_RawCoeff_14
  = C_RawCoeff'46'constructor_75 MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
                                 (AgdaAny -> Bool)
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff.rawRing
d_rawRing_24 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_24 v0
  = case coe v0 of
      C_RawCoeff'46'constructor_75 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff.isZero
d_isZero_26 :: T_RawCoeff_14 -> AgdaAny -> Bool
d_isZero_26 v0
  = case coe v0 of
      C_RawCoeff'46'constructor_75 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._._*_
d__'42'__30 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__30 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__302
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._._+_
d__'43'__32 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__32 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__300
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._._≈_
d__'8776'__34 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> ()
d__'8776'__34 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._._≉_
d__'8777'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> AgdaAny -> AgdaAny -> ()
d__'8777'__36 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.*-rawMagma
d_'42''45'rawMagma_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'42''45'rawMagma_38 ~v0 ~v1 v2 = du_'42''45'rawMagma_38 v2
du_'42''45'rawMagma_38 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'42''45'rawMagma_38 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_174
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.*-rawMonoid
d_'42''45'rawMonoid_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'42''45'rawMonoid_40 ~v0 ~v1 v2 = du_'42''45'rawMonoid_40 v2
du_'42''45'rawMonoid_40 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'42''45'rawMonoid_40 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.+-rawGroup
d_'43''45'rawGroup_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
d_'43''45'rawGroup_42 ~v0 ~v1 v2 = du_'43''45'rawGroup_42 v2
du_'43''45'rawGroup_42 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
du_'43''45'rawGroup_42 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_270
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.rawMagma
d_rawMagma_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_rawMagma_44 ~v0 ~v1 v2 = du_rawMagma_44 v2
du_rawMagma_44 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_rawMagma_44 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_92
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.+-rawMonoid
d_'43''45'rawMonoid_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'43''45'rawMonoid_46 ~v0 ~v1 v2 = du_'43''45'rawMonoid_46 v2
du_'43''45'rawMonoid_46 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'43''45'rawMonoid_46 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.-_
d_'45'__48 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny
d_'45'__48 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.0#
d_0'35'_50 :: T_RawCoeff_14 -> AgdaAny
d_0'35'_50 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.1#
d_1'35'_52 :: T_RawCoeff_14 -> AgdaAny
d_1'35'_52 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.Carrier
d_Carrier_54 :: T_RawCoeff_14 -> ()
d_Carrier_54 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.rawRingWithoutOne
d_rawRingWithoutOne_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
d_rawRingWithoutOne_56 ~v0 ~v1 v2 = du_rawRingWithoutOne_56 v2
du_rawRingWithoutOne_56 ::
  T_RawCoeff_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
du_rawRingWithoutOne_56 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.rawSemiring
d_rawSemiring_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_58 ~v0 ~v1 v2 = du_rawSemiring_58 v2
du_rawSemiring_58 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_58 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism
d_Homomorphism_68 a0 a1 a2 a3 = ()
data T_Homomorphism_68
  = C_Homomorphism'46'constructor_1721 T_RawCoeff_14
                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178
                                       MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__372
                                       (AgdaAny -> AgdaAny -> AgdaAny)
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._*_
d__'42'__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__84 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__84 v4
du__'42'__84 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__84 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__302
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._+_
d__'43'__86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__86 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'43'__86 v4
du__'43'__86 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__86 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__300
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._≈_
d__'8776'__88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__88 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._≉_
d__'8777'__90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__90 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.*-rawMagma
d_'42''45'rawMagma_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'42''45'rawMagma_92 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'42''45'rawMagma_92 v4
du_'42''45'rawMagma_92 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'42''45'rawMagma_92 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_174
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.*-rawMonoid
d_'42''45'rawMonoid_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'42''45'rawMonoid_94 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'42''45'rawMonoid_94 v4
du_'42''45'rawMonoid_94 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'42''45'rawMonoid_94 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.+-rawGroup
d_'43''45'rawGroup_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
d_'43''45'rawGroup_96 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'43''45'rawGroup_96 v4
du_'43''45'rawGroup_96 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
du_'43''45'rawGroup_96 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_270
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawMagma
d_rawMagma_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_rawMagma_98 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_rawMagma_98 v4
du_rawMagma_98 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_rawMagma_98 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_92
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.+-rawMonoid
d_'43''45'rawMonoid_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'43''45'rawMonoid_100 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'43''45'rawMonoid_100 v4
du_'43''45'rawMonoid_100 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'43''45'rawMonoid_100 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.-_
d_'45'__102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny
d_'45'__102 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__102 v4
du_'45'__102 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny
du_'45'__102 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.0#
d_0'35'_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny
d_0'35'_104 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_0'35'_104 v4
du_0'35'_104 :: T_RawCoeff_14 -> AgdaAny
du_0'35'_104 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.1#
d_1'35'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny
d_1'35'_106 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_106 v4
du_1'35'_106 :: T_RawCoeff_14 -> AgdaAny
du_1'35'_106 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.Carrier
d_Carrier_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  ()
d_Carrier_108 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.isZero
d_isZero_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  AgdaAny -> Bool
d_isZero_110 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_isZero_110 v4
du_isZero_110 :: T_RawCoeff_14 -> AgdaAny -> Bool
du_isZero_110 v0 = coe d_isZero_26 (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawRing
d_rawRing_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_112 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_rawRing_112 v4
du_rawRing_112 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_112 v0 = coe d_rawRing_24 (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawRingWithoutOne
d_rawRingWithoutOne_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
d_rawRingWithoutOne_114 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_rawRingWithoutOne_114 v4
du_rawRingWithoutOne_114 ::
  T_RawCoeff_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
du_rawRingWithoutOne_114 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawSemiring
d_rawSemiring_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_116 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_rawSemiring_116 v4
du_rawSemiring_116 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_116 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.from
d_from_284 :: T_Homomorphism_68 -> T_RawCoeff_14
d_from_284 v0
  = case coe v0 of
      C_Homomorphism'46'constructor_1721 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.to
d_to_286 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_178
d_to_286 v0
  = case coe v0 of
      C_Homomorphism'46'constructor_1721 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._*_
d__'42'__290 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__290 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__302
      (coe d_rawRing_24 (coe d_from_284 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._+_
d__'43'__292 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__292 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__300
      (coe d_rawRing_24 (coe d_from_284 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._≈_
d__'8776'__294 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> ()
d__'8776'__294 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._≉_
d__'8777'__296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> ()
d__'8777'__296 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.*-rawMagma
d_'42''45'rawMagma_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'42''45'rawMagma_298 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'rawMagma_298 v4
du_'42''45'rawMagma_298 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'42''45'rawMagma_298 v0
  = let v1 = d_from_284 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_174
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.*-rawMonoid
d_'42''45'rawMonoid_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'42''45'rawMonoid_300 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'rawMonoid_300 v4
du_'42''45'rawMonoid_300 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'42''45'rawMonoid_300 v0
  = let v1 = d_from_284 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.+-rawGroup
d_'43''45'rawGroup_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
d_'43''45'rawGroup_302 ~v0 ~v1 ~v2 ~v3 v4
  = du_'43''45'rawGroup_302 v4
du_'43''45'rawGroup_302 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
du_'43''45'rawGroup_302 v0
  = let v1 = d_from_284 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_270
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324
               (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawMagma
d_rawMagma_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_rawMagma_304 ~v0 ~v1 ~v2 ~v3 v4 = du_rawMagma_304 v4
du_rawMagma_304 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_rawMagma_304 v0
  = let v1 = d_from_284 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_92
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.+-rawMonoid
d_'43''45'rawMonoid_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'43''45'rawMonoid_306 ~v0 ~v1 ~v2 ~v3 v4
  = du_'43''45'rawMonoid_306 v4
du_'43''45'rawMonoid_306 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'43''45'rawMonoid_306 v0
  = let v1 = d_from_284 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.-_
d_'45'__308 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_'45'__308 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304
      (coe d_rawRing_24 (coe d_from_284 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.0#
d_0'35'_310 :: T_Homomorphism_68 -> AgdaAny
d_0'35'_310 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306
      (coe d_rawRing_24 (coe d_from_284 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.1#
d_1'35'_312 :: T_Homomorphism_68 -> AgdaAny
d_1'35'_312 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308
      (coe d_rawRing_24 (coe d_from_284 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.Carrier
d_Carrier_314 :: T_Homomorphism_68 -> ()
d_Carrier_314 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.isZero
d_isZero_316 :: T_Homomorphism_68 -> AgdaAny -> Bool
d_isZero_316 v0 = coe d_isZero_26 (coe d_from_284 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawRing
d_rawRing_318 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_318 v0 = coe d_rawRing_24 (coe d_from_284 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawRingWithoutOne
d_rawRingWithoutOne_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
d_rawRingWithoutOne_320 ~v0 ~v1 ~v2 ~v3 v4
  = du_rawRingWithoutOne_320 v4
du_rawRingWithoutOne_320 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
du_rawRingWithoutOne_320 v0
  = let v1 = d_from_284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324
         (coe d_rawRing_24 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawSemiring
d_rawSemiring_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_322 ~v0 ~v1 ~v2 ~v3 v4 = du_rawSemiring_322 v4
du_rawSemiring_322 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_322 v0
  = let v1 = d_from_284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310
         (coe d_rawRing_24 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._*_
d__'42'__326 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__326 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__210
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._+_
d__'43'__328 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__328 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__208
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._-_
d__'45'__330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__330 ~v0 ~v1 ~v2 ~v3 v4 = du__'45'__330 v4
du__'45'__330 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__330 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du__'45'__350
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._^_
d__'94'__332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> Integer -> AgdaAny
d__'94'__332 ~v0 ~v1 ~v2 ~v3 v4 = du__'94'__332 v4
du__'94'__332 :: T_Homomorphism_68 -> AgdaAny -> Integer -> AgdaAny
du__'94'__332 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du__'94'__348
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._≈_
d__'8776'__334 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> ()
d__'8776'__334 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-assoc
d_'42''45'assoc_336 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                  (coe d_to_286 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-comm
d_'42''45'comm_338 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
            (coe d_to_286 (coe v0))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-commutativeMonoid
d_'42''45'commutativeMonoid_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'commutativeMonoid_340 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'commutativeMonoid_340 v4
du_'42''45'commutativeMonoid_340 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'42''45'commutativeMonoid_340 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2642
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-cong
d_'42''45'cong_342 ::
  T_Homomorphism_68 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                  (coe d_to_286 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congʳ
d_'8729''45'cong'691'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_344 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'691'_344 v4
du_'8729''45'cong'691'_344 ::
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_344 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congˡ
d_'8729''45'cong'737'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_346 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'737'_346 v4
du_'8729''45'cong'737'_346 ::
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_346 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-identity
d_'42''45'identity_348 ::
  T_Homomorphism_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_348 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                  (coe d_to_286 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityʳ
d_identity'691'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_identity'691'_350 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'691'_350 v4
du_identity'691'_350 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
du_identity'691'_350 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                        (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityˡ
d_identity'737'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_identity'737'_352 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'737'_352 v4
du_identity'737'_352 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
du_identity'737'_352 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                        (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeMagma
d_isCommutativeMagma_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_354 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_354 v4
du_isCommutativeMagma_354 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_354 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_356 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_356 v4
du_'42''45'isCommutativeMonoid_356 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_356 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_358 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_358 v4
du_'42''45'isCommutativeSemigroup_358 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_358 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isMagma
d_'42''45'isMagma_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_360 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_360 v4
du_'42''45'isMagma_360 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_360 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isMonoid
d_'42''45'isMonoid_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_362 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_362 v4
du_'42''45'isMonoid_362 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_362 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isSemigroup
d_'42''45'isSemigroup_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_364 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_364 v4
du_'42''45'isSemigroup_364 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_364 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-monoid
d_'42''45'monoid_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'monoid_366 ~v0 ~v1 ~v2 ~v3 v4 = du_'42''45'monoid_366 v4
du_'42''45'monoid_366 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'42''45'monoid_366 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.semigroup
d_semigroup_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_368 ~v0 ~v1 ~v2 ~v3 v4 = du_semigroup_368 v4
du_semigroup_368 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_368 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_948
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288 (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.assoc
d_assoc_370 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_370 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
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
                           (coe d_to_286 (coe v0)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.comm
d_comm_372 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_372 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_748
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
                     (coe d_to_286 (coe v0)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.+-commutativeMonoid
d_'43''45'commutativeMonoid_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'commutativeMonoid_374 ~v0 ~v1 ~v2 ~v3 v4
  = du_'43''45'commutativeMonoid_374 v4
du_'43''45'commutativeMonoid_374 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'43''45'commutativeMonoid_374 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-cong
d_'8729''45'cong_376 ::
  T_Homomorphism_68 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_376 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
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
                              (coe d_to_286 (coe v0))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congʳ
d_'8729''45'cong'691'_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_378 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'691'_378 v4
du_'8729''45'cong'691'_378 ::
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_378 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congˡ
d_'8729''45'cong'737'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_380 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'737'_380 v4
du_'8729''45'cong'737'_380 ::
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_380 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identity
d_identity_382 ::
  T_Homomorphism_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
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
                        (coe d_to_286 (coe v0))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityʳ
d_identity'691'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_identity'691'_384 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'691'_384 v4
du_identity'691'_384 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
du_identity'691'_384 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityˡ
d_identity'737'_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_identity'737'_386 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'737'_386 v4
du_identity'737'_386 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
du_identity'737'_386 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeMagma
d_isCommutativeMagma_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_388 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_388 v4
du_isCommutativeMagma_388 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_388 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                           (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_390 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                  (coe d_to_286 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeSemigroup
d_isCommutativeSemigroup_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_392 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_392 v4
du_isCommutativeSemigroup_392 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_392 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                        (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isMagma
d_isMagma_394 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_394 v0
  = coe
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
                           (coe d_to_286 (coe v0)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isMonoid
d_isMonoid_396 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_396 v0
  = coe
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
                     (coe d_to_286 (coe v0)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemigroup
d_isSemigroup_398 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_398 v0
  = coe
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
                        (coe d_to_286 (coe v0))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isUnitalMagma
d_isUnitalMagma_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_400 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_400 v4
du_isUnitalMagma_400 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_400 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.monoid
d_monoid_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_402 ~v0 ~v1 ~v2 ~v3 v4 = du_monoid_402 v4
du_monoid_402 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_monoid_402 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_monoid_1036
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.semigroup
d_semigroup_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_404 ~v0 ~v1 ~v2 ~v3 v4 = du_semigroup_404 v4
du_semigroup_404 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_404 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_semigroup_948
                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-_
d_'45'__406 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_'45'__406 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__212
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_408 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_408 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''42''45'distrib'737'_70
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
         (coe d_to_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿+-comm
d_'45''8255''43''45'comm_410 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_410 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''43''45'comm_76
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
         (coe d_to_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿cong
d_'45''8255'cong_412 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_412 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
         (coe d_to_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.0#
d_0'35'_414 :: T_Homomorphism_68 -> AgdaAny
d_0'35'_414 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_214
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.0≟_
d_0'8799'__416 :: T_Homomorphism_68 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__416 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'8799'__218
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.1#
d_1'35'_418 :: T_Homomorphism_68 -> AgdaAny
d_1'35'_418 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'35'_220
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.Carrier
d_Carrier_420 :: T_Homomorphism_68 -> ()
d_Carrier_420 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.commutativeSemiring
d_commutativeSemiring_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_commutativeSemiring_422 ~v0 ~v1 ~v2 ~v3 v4
  = du_commutativeSemiring_422 v4
du_commutativeSemiring_422 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_commutativeSemiring_422 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.distrib
d_distrib_424 ::
  T_Homomorphism_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                  (coe d_to_286 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.distribʳ
d_distrib'691'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_426 ~v0 ~v1 ~v2 ~v3 v4 = du_distrib'691'_426 v4
du_distrib'691'_426 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_426 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.distribˡ
d_distrib'737'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_428 ~v0 ~v1 ~v2 ~v3 v4 = du_distrib'737'_428 v4
du_distrib'737'_428 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_428 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_430 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_430 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeSemiring
d_isCommutativeSemiring_432 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_432 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
         (coe d_to_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_434 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_434 v4
du_isCommutativeSemiringWithoutOne_434 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_434 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isEquivalence
d_isEquivalence_436 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
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
                              (coe d_to_286 (coe v0))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isNearSemiring
d_isNearSemiring_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_438 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_438 v4
du_isNearSemiring_438 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_438 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isPartialEquivalence
d_isPartialEquivalence_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_440 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_440 v4
du_isPartialEquivalence_440 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_440 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                    (coe v9)))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemiring
d_isSemiring_442 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
            (coe d_to_286 (coe v0))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_444 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
               (coe d_to_286 (coe v0)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemiringWithoutOne
d_isSemiringWithoutOne_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_446 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_446 v4
du_isSemiringWithoutOne_446 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_446 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.rawRing
d_rawRing_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_448 ~v0 ~v1 ~v2 ~v3 v4 = du_rawRing_448 v4
du_rawRing_448 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_448 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_346
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.rawSemiring
d_rawSemiring_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_450 ~v0 ~v1 ~v2 ~v3 v4 = du_rawSemiring_450 v4
du_rawSemiring_450 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_450 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.refl
d_refl_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_refl_452 ~v0 ~v1 ~v2 ~v3 v4 = du_refl_452 v4
du_refl_452 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
du_refl_452 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_358
      (coe d_to_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.reflexive
d_reflexive_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_454 ~v0 ~v1 ~v2 ~v3 v4 = du_reflexive_454 v4
du_reflexive_454 ::
  T_Homomorphism_68 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_454 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8) in
                            coe
                              (\ v10 v11 v12 ->
                                 coe
                                   MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v9))
                                   v10)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.semiring
d_semiring_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_semiring_456 ~v0 ~v1 ~v2 ~v3 v4 = du_semiring_456 v4
du_semiring_456 ::
  T_Homomorphism_68 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_semiring_456 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiring_2600
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_326
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.setoid
d_setoid_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_458 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_458 v4
du_setoid_458 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_458 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.sym
d_sym_460 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_460 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
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
                                 (coe d_to_286 (coe v0)))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.trans
d_trans_462 ::
  T_Homomorphism_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_462 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
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
                                 (coe d_to_286 (coe v0)))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.zero
d_zero_464 ::
  T_Homomorphism_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
               (coe d_to_286 (coe v0)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.zeroʳ
d_zero'691'_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_zero'691'_466 ~v0 ~v1 ~v2 ~v3 v4 = du_zero'691'_466 v4
du_zero'691'_466 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
du_zero'691'_466 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.zeroˡ
d_zero'737'_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_zero'737'_468 ~v0 ~v1 ~v2 ~v3 v4 = du_zero'737'_468 v4
du_zero'737'_468 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
du_zero'737'_468 v0
  = let v1 = d_to_286 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.morphism
d_morphism_470 ::
  T_Homomorphism_68 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__372
d_morphism_470 v0
  = case coe v0 of
      C_Homomorphism'46'constructor_1721 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-homo
d_'42''45'homo_474 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_474 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'42''45'homo_778
      (coe d_morphism_470 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.+-homo
d_'43''45'homo_476 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_476 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'43''45'homo_776
      (coe d_morphism_470 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿homo
d_'45''8255'homo_478 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_'45''8255'homo_478 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'homo_780
      (coe d_morphism_470 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.0-homo
d_0'45'homo_480 :: T_Homomorphism_68 -> AgdaAny
d_0'45'homo_480 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'45'homo_782
      (coe d_morphism_470 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.1-homo
d_1'45'homo_482 :: T_Homomorphism_68 -> AgdaAny
d_1'45'homo_482 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'45'homo_784
      (coe d_morphism_470 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.⟦_⟧
d_'10214'_'10215'_484 :: T_Homomorphism_68 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_484 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_774
      (coe d_morphism_470 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Zero-C⟶Zero-R
d_Zero'45'C'10230'Zero'45'R_488 ::
  T_Homomorphism_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_Zero'45'C'10230'Zero'45'R_488 v0
  = case coe v0 of
      C_Homomorphism'46'constructor_1721 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
