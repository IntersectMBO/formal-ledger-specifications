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
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing

-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff
d_RawCoeff_14 a0 a1 = ()
data T_RawCoeff_14
  = C_constructor_60 MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
                     (AgdaAny -> Bool)
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff.rawRing
d_rawRing_24 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_24 v0
  = case coe v0 of
      C_constructor_60 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff.isZero
d_isZero_26 :: T_RawCoeff_14 -> AgdaAny -> Bool
d_isZero_26 v0
  = case coe v0 of
      C_constructor_60 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._._*_
d__'42'__30 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__30 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._._+_
d__'43'__32 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__32 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314
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
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_38 ~v0 ~v1 v2 = du_'42''45'rawMagma_38 v2
du_'42''45'rawMagma_38 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'42''45'rawMagma_38 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_182
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.*-rawMonoid
d_'42''45'rawMonoid_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'rawMonoid_40 ~v0 ~v1 v2 = du_'42''45'rawMonoid_40 v2
du_'42''45'rawMonoid_40 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'42''45'rawMonoid_40 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.+-rawGroup
d_'43''45'rawGroup_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'rawGroup_42 ~v0 ~v1 v2 = du_'43''45'rawGroup_42 v2
du_'43''45'rawGroup_42 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
du_'43''45'rawGroup_42 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_282
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.rawMagma
d_rawMagma_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_rawMagma_44 ~v0 ~v1 v2 = du_rawMagma_44 v2
du_rawMagma_44 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_rawMagma_44 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.+-rawMonoid
d_'43''45'rawMonoid_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'rawMonoid_46 ~v0 ~v1 v2 = du_'43''45'rawMonoid_46 v2
du_'43''45'rawMonoid_46 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'43''45'rawMonoid_46 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.-_
d_'45'__48 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny
d_'45'__48 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.0#
d_0'35'_50 :: T_RawCoeff_14 -> AgdaAny
d_0'35'_50 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.1#
d_1'35'_52 :: T_RawCoeff_14 -> AgdaAny
d_1'35'_52 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.Carrier
d_Carrier_54 :: T_RawCoeff_14 -> ()
d_Carrier_54 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.rawRingWithoutOne
d_rawRingWithoutOne_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
d_rawRingWithoutOne_56 ~v0 ~v1 v2 = du_rawRingWithoutOne_56 v2
du_rawRingWithoutOne_56 ::
  T_RawCoeff_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
du_rawRingWithoutOne_56 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.RawCoeff._.rawSemiring
d_rawSemiring_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_58 ~v0 ~v1 v2 = du_rawSemiring_58 v2
du_rawSemiring_58 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_58 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism
d_Homomorphism_70 a0 a1 a2 a3 = ()
data T_Homomorphism_70
  = C_constructor_492 T_RawCoeff_14
                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180
                      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__376
                      (AgdaAny -> AgdaAny -> AgdaAny)
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._*_
d__'42'__86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__86 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__86 v4
du__'42'__86 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__86 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._+_
d__'43'__88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__88 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'43'__88 v4
du__'43'__88 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__88 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._≈_
d__'8776'__90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__90 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw._≉_
d__'8777'__92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__92 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.*-rawMagma
d_'42''45'rawMagma_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_94 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'42''45'rawMagma_94 v4
du_'42''45'rawMagma_94 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'42''45'rawMagma_94 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_182
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.*-rawMonoid
d_'42''45'rawMonoid_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'rawMonoid_96 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'42''45'rawMonoid_96 v4
du_'42''45'rawMonoid_96 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'42''45'rawMonoid_96 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.+-rawGroup
d_'43''45'rawGroup_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'rawGroup_98 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'43''45'rawGroup_98 v4
du_'43''45'rawGroup_98 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
du_'43''45'rawGroup_98 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_282
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawMagma
d_rawMagma_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_rawMagma_100 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_rawMagma_100 v4
du_rawMagma_100 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_rawMagma_100 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.+-rawMonoid
d_'43''45'rawMonoid_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'rawMonoid_102 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'43''45'rawMonoid_102 v4
du_'43''45'rawMonoid_102 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'43''45'rawMonoid_102 v0
  = let v1 = d_rawRing_24 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.-_
d_'45'__104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny
d_'45'__104 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__104 v4
du_'45'__104 :: T_RawCoeff_14 -> AgdaAny -> AgdaAny
du_'45'__104 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.0#
d_0'35'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny
d_0'35'_106 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_0'35'_106 v4
du_0'35'_106 :: T_RawCoeff_14 -> AgdaAny
du_0'35'_106 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.1#
d_1'35'_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny
d_1'35'_108 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_108 v4
du_1'35'_108 :: T_RawCoeff_14 -> AgdaAny
du_1'35'_108 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.Carrier
d_Carrier_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  ()
d_Carrier_110 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.isZero
d_isZero_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> Bool
d_isZero_112 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_isZero_112 v4
du_isZero_112 :: T_RawCoeff_14 -> AgdaAny -> Bool
du_isZero_112 v0 = coe d_isZero_26 (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawRing
d_rawRing_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_114 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_rawRing_114 v4
du_rawRing_114 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_114 v0 = coe d_rawRing_24 (coe v0)
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawRingWithoutOne
d_rawRingWithoutOne_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
d_rawRingWithoutOne_116 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_rawRingWithoutOne_116 v4
du_rawRingWithoutOne_116 ::
  T_RawCoeff_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
du_rawRingWithoutOne_116 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Raw.rawSemiring
d_rawSemiring_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawCoeff_14 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_118 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_rawSemiring_118 v4
du_rawSemiring_118 ::
  T_RawCoeff_14 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_118 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324
      (coe d_rawRing_24 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.from
d_from_286 :: T_Homomorphism_70 -> T_RawCoeff_14
d_from_286 v0
  = case coe v0 of
      C_constructor_492 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.to
d_to_288 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180
d_to_288 v0
  = case coe v0 of
      C_constructor_492 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._*_
d__'42'__292 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__292 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316
      (coe d_rawRing_24 (coe d_from_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._+_
d__'43'__294 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__294 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314
      (coe d_rawRing_24 (coe d_from_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._≈_
d__'8776'__296 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> ()
d__'8776'__296 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw._≉_
d__'8777'__298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> ()
d__'8777'__298 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.*-rawMagma
d_'42''45'rawMagma_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_300 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'rawMagma_300 v4
du_'42''45'rawMagma_300 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'42''45'rawMagma_300 v0
  = let v1 = d_from_286 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_182
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.*-rawMonoid
d_'42''45'rawMonoid_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'rawMonoid_302 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'rawMonoid_302 v4
du_'42''45'rawMonoid_302 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'42''45'rawMonoid_302 v0
  = let v1 = d_from_286 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.+-rawGroup
d_'43''45'rawGroup_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'rawGroup_304 ~v0 ~v1 ~v2 ~v3 v4
  = du_'43''45'rawGroup_304 v4
du_'43''45'rawGroup_304 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
du_'43''45'rawGroup_304 v0
  = let v1 = d_from_286 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_282
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338
               (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawMagma
d_rawMagma_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_rawMagma_306 ~v0 ~v1 ~v2 ~v3 v4 = du_rawMagma_306 v4
du_rawMagma_306 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_rawMagma_306 v0
  = let v1 = d_from_286 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.+-rawMonoid
d_'43''45'rawMonoid_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'rawMonoid_308 ~v0 ~v1 ~v2 ~v3 v4
  = du_'43''45'rawMonoid_308 v4
du_'43''45'rawMonoid_308 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'43''45'rawMonoid_308 v0
  = let v1 = d_from_286 (coe v0) in
    coe
      (let v2 = d_rawRing_24 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.-_
d_'45'__310 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_'45'__310 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318
      (coe d_rawRing_24 (coe d_from_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.0#
d_0'35'_312 :: T_Homomorphism_70 -> AgdaAny
d_0'35'_312 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320
      (coe d_rawRing_24 (coe d_from_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.1#
d_1'35'_314 :: T_Homomorphism_70 -> AgdaAny
d_1'35'_314 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322
      (coe d_rawRing_24 (coe d_from_286 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.Carrier
d_Carrier_316 :: T_Homomorphism_70 -> ()
d_Carrier_316 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.isZero
d_isZero_318 :: T_Homomorphism_70 -> AgdaAny -> Bool
d_isZero_318 v0 = coe d_isZero_26 (coe d_from_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawRing
d_rawRing_320 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_320 v0 = coe d_rawRing_24 (coe d_from_286 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawRingWithoutOne
d_rawRingWithoutOne_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
d_rawRingWithoutOne_322 ~v0 ~v1 ~v2 ~v3 v4
  = du_rawRingWithoutOne_322 v4
du_rawRingWithoutOne_322 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
du_rawRingWithoutOne_322 v0
  = let v1 = d_from_286 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338
         (coe d_rawRing_24 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Raw.rawSemiring
d_rawSemiring_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_324 ~v0 ~v1 ~v2 ~v3 v4 = du_rawSemiring_324 v4
du_rawSemiring_324 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_324 v0
  = let v1 = d_from_286 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324
         (coe d_rawRing_24 (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._*_
d__'42'__328 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__328 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'42'__212
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._+_
d__'43'__330 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__330 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d__'43'__210
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._-_
d__'45'__332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__332 ~v0 ~v1 ~v2 ~v3 v4 = du__'45'__332 v4
du__'45'__332 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__332 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du__'45'__352
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._^_
d__'94'__334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> Integer -> AgdaAny
d__'94'__334 ~v0 ~v1 ~v2 ~v3 v4 = du__'94'__334 v4
du__'94'__334 :: T_Homomorphism_70 -> AgdaAny -> Integer -> AgdaAny
du__'94'__334 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du__'94'__350
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._._≈_
d__'8776'__336 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> ()
d__'8776'__336 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-assoc
d_'42''45'assoc_338 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                  (coe d_to_288 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-comm
d_'42''45'comm_340 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
            (coe d_to_288 (coe v0))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-commutativeMonoid
d_'42''45'commutativeMonoid_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_342 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'commutativeMonoid_342 v4
du_'42''45'commutativeMonoid_342 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_342 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-cong
d_'42''45'cong_344 ::
  T_Homomorphism_70 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                  (coe d_to_288 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congʳ
d_'8729''45'cong'691'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_346 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'691'_346 v4
du_'8729''45'cong'691'_346 ::
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_346 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7) in
                         coe
                           (let v9
                                  = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                            coe
                              (let v10
                                     = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                    (coe v10)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                          (coe v9)))))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congˡ
d_'8729''45'cong'737'_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_348 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'737'_348 v4
du_'8729''45'cong'737'_348 ::
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_348 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7) in
                         coe
                           (let v9
                                  = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                            coe
                              (let v10
                                     = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                    (coe v10)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                          (coe v9)))))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-identity
d_'42''45'identity_350 ::
  T_Homomorphism_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_350 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                  (coe d_to_288 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityʳ
d_identity'691'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_identity'691'_352 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'691'_352 v4
du_identity'691'_352 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
du_identity'691'_352 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                        (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityˡ
d_identity'737'_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_identity'737'_354 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'737'_354 v4
du_identity'737'_354 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
du_identity'737'_354 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                        (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeMagma
d_isCommutativeMagma_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_356 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_356 v4
du_isCommutativeMagma_356 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_356 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_358 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_358 v4
du_'42''45'isCommutativeMonoid_358 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_358 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_360 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_360 v4
du_'42''45'isCommutativeSemigroup_360 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_360 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isMagma
d_'42''45'isMagma_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_362 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_362 v4
du_'42''45'isMagma_362 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_362 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1614
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isMonoid
d_'42''45'isMonoid_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_364 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_364 v4
du_'42''45'isMonoid_364 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_364 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-isSemigroup
d_'42''45'isSemigroup_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_366 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_366 v4
du_'42''45'isSemigroup_366 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_366 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1616
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-monoid
d_'42''45'monoid_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_368 ~v0 ~v1 ~v2 ~v3 v4 = du_'42''45'monoid_368 v4
du_'42''45'monoid_368 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_368 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.semigroup
d_semigroup_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_370 ~v0 ~v1 ~v2 ~v3 v4 = du_semigroup_370 v4
du_semigroup_370 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_370 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_976
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.assoc
d_assoc_372 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_372 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_498
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
                           (coe d_to_288 (coe v0)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.comm
d_comm_374 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_776
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
                     (coe d_to_288 (coe v0)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.+-commutativeMonoid
d_'43''45'commutativeMonoid_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_376 ~v0 ~v1 ~v2 ~v3 v4
  = du_'43''45'commutativeMonoid_376 v4
du_'43''45'commutativeMonoid_376 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_376 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-cong
d_'8729''45'cong_378 ::
  T_Homomorphism_70 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_378 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
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
                              (coe d_to_288 (coe v0))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congʳ
d_'8729''45'cong'691'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_380 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'691'_380 v4
du_'8729''45'cong'691'_380 ::
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_380 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (let v10
                                     = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v9) in
                               coe
                                 (let v11
                                        = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                            (coe v9) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                       (coe v11)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                             (coe v10))))))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.∙-congˡ
d_'8729''45'cong'737'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_382 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8729''45'cong'737'_382 v4
du_'8729''45'cong'737'_382 ::
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_382 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (let v10
                                     = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v9) in
                               coe
                                 (let v11
                                        = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                            (coe v9) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                       (coe v11)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                             (coe v10))))))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identity
d_identity_384 ::
  T_Homomorphism_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_384 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_724
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
                        (coe d_to_288 (coe v0))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityʳ
d_identity'691'_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_identity'691'_386 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'691'_386 v4
du_identity'691'_386 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
du_identity'691'_386 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.identityˡ
d_identity'737'_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_identity'737'_388 ~v0 ~v1 ~v2 ~v3 v4 = du_identity'737'_388 v4
du_identity'737'_388 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
du_identity'737'_388 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeMagma
d_isCommutativeMagma_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_390 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_390 v4
du_isCommutativeMagma_390 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_390 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                           (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_392 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                  (coe d_to_288 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeSemigroup
d_isCommutativeSemigroup_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_394 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_394 v4
du_isCommutativeSemigroup_394 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_394 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                        (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isMagma
d_isMagma_396 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_396 v0
  = coe
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
                           (coe d_to_288 (coe v0)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isMonoid
d_isMonoid_398 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_398 v0
  = coe
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
                     (coe d_to_288 (coe v0)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemigroup
d_isSemigroup_400 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_400 v0
  = coe
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
                        (coe d_to_288 (coe v0))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isUnitalMagma
d_isUnitalMagma_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_402 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_402 v4
du_isUnitalMagma_402 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_402 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.monoid
d_monoid_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_404 ~v0 ~v1 ~v2 ~v3 v4 = du_monoid_404 v4
du_monoid_404 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_404 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_monoid_1066
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.semigroup
d_semigroup_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_406 ~v0 ~v1 ~v2 ~v3 v4 = du_semigroup_406 v4
du_semigroup_406 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_406 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_semigroup_976
                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v5)))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-_
d_'45'__408 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_'45'__408 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45'__214
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_410 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_410 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''42''45'distrib'737'_70
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
         (coe d_to_288 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿+-comm
d_'45''8255''43''45'comm_412 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_412 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255''43''45'comm_76
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
         (coe d_to_288 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿cong
d_'45''8255'cong_414 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_414 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'cong_64
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
         (coe d_to_288 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.0#
d_0'35'_416 :: T_Homomorphism_70 -> AgdaAny
d_0'35'_416 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'35'_216
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.0≟_
d_0'8799'__418 :: T_Homomorphism_70 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__418 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'8799'__220
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.1#
d_1'35'_420 :: T_Homomorphism_70 -> AgdaAny
d_1'35'_420 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'35'_222
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.Carrier
d_Carrier_422 :: T_Homomorphism_70 -> ()
d_Carrier_422 = erased
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.commutativeSemiring
d_commutativeSemiring_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_424 ~v0 ~v1 ~v2 ~v3 v4
  = du_commutativeSemiring_424 v4
du_commutativeSemiring_424 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_424 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.distrib
d_distrib_426 ::
  T_Homomorphism_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                  (coe d_to_288 (coe v0))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.distribʳ
d_distrib'691'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_428 ~v0 ~v1 ~v2 ~v3 v4 = du_distrib'691'_428 v4
du_distrib'691'_428 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_428 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.distribˡ
d_distrib'737'_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_430 ~v0 ~v1 ~v2 ~v3 v4 = du_distrib'737'_430 v4
du_distrib'737'_430 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_430 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_432 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_432 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeSemiring
d_isCommutativeSemiring_434 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_434 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
         (coe d_to_288 (coe v0)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_436 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_436 v4
du_isCommutativeSemiringWithoutOne_436 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_436 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isEquivalence
d_isEquivalence_438 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_438 v0
  = coe
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
                              (coe d_to_288 (coe v0))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isNearSemiring
d_isNearSemiring_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_440 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_440 v4
du_isNearSemiring_440 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_440 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1428
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isPartialEquivalence
d_isPartialEquivalence_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_442 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_442 v4
du_isPartialEquivalence_442 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_442 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                    (coe v9)))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemiring
d_isSemiring_444 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
            (coe d_to_288 (coe v0))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_446 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
               (coe d_to_288 (coe v0)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.isSemiringWithoutOne
d_isSemiringWithoutOne_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_448 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_448 v4
du_isSemiringWithoutOne_448 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_448 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.rawRing
d_rawRing_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_450 ~v0 ~v1 ~v2 ~v3 v4 = du_rawRing_450 v4
du_rawRing_450 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_450 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_rawRing_348
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.rawSemiring
d_rawSemiring_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_452 ~v0 ~v1 ~v2 ~v3 v4 = du_rawSemiring_452 v4
du_rawSemiring_452 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_452 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                  (coe v3)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.refl
d_refl_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_refl_454 ~v0 ~v1 ~v2 ~v3 v4 = du_refl_454 v4
du_refl_454 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
du_refl_454 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_360
      (coe d_to_288 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.reflexive
d_reflexive_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_456 ~v0 ~v1 ~v2 ~v3 v4 = du_reflexive_456 v4
du_reflexive_456 ::
  T_Homomorphism_70 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_456 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (\ v10 v11 v12 ->
                                 coe
                                   MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v9))
                                   v10)))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.semiring
d_semiring_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_458 ~v0 ~v1 ~v2 ~v3 v4 = du_semiring_458 v4
du_semiring_458 ::
  T_Homomorphism_70 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_458 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiring_2654
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_commutativeSemiring_328
            (coe v1)))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.setoid
d_setoid_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_460 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_460 v4
du_setoid_460 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_460 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_202
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.sym
d_sym_462 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_462 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                 (coe d_to_288 (coe v0)))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.trans
d_trans_464 ::
  T_Homomorphism_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_464 v0
  = coe
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
                                 (coe d_to_288 (coe v0)))))))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.zero
d_zero_466 ::
  T_Homomorphism_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
               (coe d_to_288 (coe v0)))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.zeroʳ
d_zero'691'_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_zero'691'_468 ~v0 ~v1 ~v2 ~v3 v4 = du_zero'691'_468 v4
du_zero'691'_468 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
du_zero'691'_468 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.zeroˡ
d_zero'737'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_zero'737'_470 ~v0 ~v1 ~v2 ~v3 v4 = du_zero'737'_470 v4
du_zero'737'_470 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
du_zero'737'_470 v0
  = let v1 = d_to_288 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                     (coe v4))))))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.morphism
d_morphism_472 ::
  T_Homomorphism_70 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__376
d_morphism_472 v0
  = case coe v0 of
      C_constructor_492 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.*-homo
d_'42''45'homo_476 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_476 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'42''45'homo_782
      (coe d_morphism_472 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.+-homo
d_'43''45'homo_478 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_478 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'43''45'homo_780
      (coe d_morphism_472 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.-‿homo
d_'45''8255'homo_480 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_'45''8255'homo_480 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'45''8255'homo_784
      (coe d_morphism_472 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.0-homo
d_0'45'homo_482 :: T_Homomorphism_70 -> AgdaAny
d_0'45'homo_482 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_0'45'homo_786
      (coe d_morphism_472 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.1-homo
d_1'45'homo_484 :: T_Homomorphism_70 -> AgdaAny
d_1'45'homo_484 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_1'45'homo_788
      (coe d_morphism_472 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism._.⟦_⟧
d_'10214'_'10215'_486 :: T_Homomorphism_70 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_486 v0
  = coe
      MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_'10214'_'10215'_778
      (coe d_morphism_472 (coe v0))
-- Tactic.RingSolver.Core.Polynomial.Parameters.Homomorphism.Zero-C⟶Zero-R
d_Zero'45'C'10230'Zero'45'R_490 ::
  T_Homomorphism_70 -> AgdaAny -> AgdaAny -> AgdaAny
d_Zero'45'C'10230'Zero'45'R_490 v0
  = case coe v0 of
      C_constructor_492 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
