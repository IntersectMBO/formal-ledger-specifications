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

module MAlonzo.Code.Algebra.Apartness.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Apartness.Structures
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Apartness.Bundles.HeytingCommutativeRing
d_HeytingCommutativeRing_12 a0 a1 a2 = ()
data T_HeytingCommutativeRing_12
  = C_HeytingCommutativeRing'46'constructor_657 (AgdaAny ->
                                                 AgdaAny -> AgdaAny)
                                                (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                                AgdaAny AgdaAny
                                                MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingCommutativeRing_158
-- Algebra.Apartness.Bundles.HeytingCommutativeRing.Carrier
d_Carrier_38 :: T_HeytingCommutativeRing_12 -> ()
d_Carrier_38 = erased
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._≈_
d__'8776'__40 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> ()
d__'8776'__40 = erased
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._#_
d__'35'__42 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> ()
d__'35'__42 = erased
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._+_
d__'43'__44 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__44 v0
  = case coe v0 of
      C_HeytingCommutativeRing'46'constructor_657 v4 v5 v6 v7 v8 v9
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._*_
d__'42'__46 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__46 v0
  = case coe v0 of
      C_HeytingCommutativeRing'46'constructor_657 v4 v5 v6 v7 v8 v9
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingCommutativeRing.-_
d_'45'__48 :: T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_'45'__48 v0
  = case coe v0 of
      C_HeytingCommutativeRing'46'constructor_657 v4 v5 v6 v7 v8 v9
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingCommutativeRing.0#
d_0'35'_50 :: T_HeytingCommutativeRing_12 -> AgdaAny
d_0'35'_50 v0
  = case coe v0 of
      C_HeytingCommutativeRing'46'constructor_657 v4 v5 v6 v7 v8 v9
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingCommutativeRing.1#
d_1'35'_52 :: T_HeytingCommutativeRing_12 -> AgdaAny
d_1'35'_52 v0
  = case coe v0 of
      C_HeytingCommutativeRing'46'constructor_657 v4 v5 v6 v7 v8 v9
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingCommutativeRing.isHeytingCommutativeRing
d_isHeytingCommutativeRing_54 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingCommutativeRing_158
d_isHeytingCommutativeRing_54 v0
  = case coe v0 of
      C_HeytingCommutativeRing'46'constructor_657 v4 v5 v6 v7 v8 v9
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._._-_
d__'45'__58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__58 ~v0 ~v1 ~v2 v3 = du__'45'__58 v3
du__'45'__58 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__58 v0
  = let v1 = d__'43'__44 (coe v0) in
    coe
      (let v2 = d_'45'__48 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v1) (coe v2)))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._._¬#_
d__'172''35'__60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> ()
d__'172''35'__60 = erased
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.#⇒invertible
d_'35''8658'invertible_62 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'35''8658'invertible_62 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_'35''8658'invertible_448
      (coe d_isHeytingCommutativeRing_54 (coe v0))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-assoc
d_'42''45'assoc_64 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_64 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_54 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-comm
d_'42''45'comm_66 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_66 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2644
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
         (coe d_isHeytingCommutativeRing_54 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-cong
d_'42''45'cong_68 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_68 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2506
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_54 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_70 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'691'_70 v3
du_'8729''45'cong'691'_70 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_70 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_72 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'737'_72 v3
du_'8729''45'cong'737'_72 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_72 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-identity
d_'42''45'identity_74 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_74 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_54 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.identityʳ
d_identity'691'_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_identity'691'_76 ~v0 ~v1 ~v2 v3 = du_identity'691'_76 v3
du_identity'691'_76 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_identity'691'_76 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_646
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                  (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.identityˡ
d_identity'737'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_identity'737'_78 ~v0 ~v1 ~v2 v3 = du_identity'737'_78 v3
du_identity'737'_78 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_identity'737'_78 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'737'_644
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                  (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_80 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_80 v3
du_isCommutativeMagma_80 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_80 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_82 ~v0 ~v1 ~v2 v3
  = du_'42''45'isCommutativeMonoid_82 v3
du_'42''45'isCommutativeMonoid_82 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_82 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1636
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
               (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_84 ~v0 ~v1 ~v2 v3
  = du_'42''45'isCommutativeSemigroup_84 v3
du_'42''45'isCommutativeSemigroup_84 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_84 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                  (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-isMagma
d_'42''45'isMagma_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_86 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_86 v3
du_'42''45'isMagma_86 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'42''45'isMagma_86 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_88 ~v0 ~v1 ~v2 v3 = du_'42''45'isMonoid_88 v3
du_'42''45'isMonoid_88 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'42''45'isMonoid_88 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_90 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_90 v3
du_'42''45'isSemigroup_90 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'42''45'isSemigroup_90 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2584
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.assoc
d_assoc_92 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_92 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe
                        MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                        (coe d_isHeytingCommutativeRing_54 (coe v0))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.comm
d_comm_94 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_94 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_994
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
               (coe d_isHeytingCommutativeRing_54 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.∙-cong
d_'8729''45'cong_96 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_96 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe
                           MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                           (coe d_isHeytingCommutativeRing_54 (coe v0)))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_98 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'691'_98 v3
du_'8729''45'cong'691'_98 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_98 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7)))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_100 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'737'_100 v3
du_'8729''45'cong'737'_100 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_100 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7)))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.identity
d_identity_102 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_102 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe
                     MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                     (coe d_isHeytingCommutativeRing_54 (coe v0)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.identityʳ
d_identity'691'_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_identity'691'_104 ~v0 ~v1 ~v2 v3 = du_identity'691'_104 v3
du_identity'691'_104 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_identity'691'_104 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.identityˡ
d_identity'737'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_identity'737'_106 ~v0 ~v1 ~v2 v3 = du_identity'737'_106 v3
du_identity'737'_106 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_identity'737'_106 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_108 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_54 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_110 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_110 v3
du_isCommutativeMagma_110 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_110 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                        (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_112 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMonoid_112 v3
du_isCommutativeMonoid_112 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_112 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_114 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_114 v3
du_isCommutativeSemigroup_114 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_114 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isGroup
d_isGroup_116 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
               (coe d_isHeytingCommutativeRing_54 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isInvertibleMagma
d_isInvertibleMagma_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_118 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_118 v3
du_isInvertibleMagma_118 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_118 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_120 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_120 v3
du_isInvertibleUnitalMagma_120 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_120 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isMagma
d_isMagma_122 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe
                        MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                        (coe d_isHeytingCommutativeRing_54 (coe v0))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isMonoid
d_isMonoid_124 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                  (coe d_isHeytingCommutativeRing_54 (coe v0))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isSemigroup
d_isSemigroup_126 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe
                     MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                     (coe d_isHeytingCommutativeRing_54 (coe v0)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isUnitalMagma
d_isUnitalMagma_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_128 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_128 v3
du_isUnitalMagma_128 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_128 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.⁻¹-cong
d_'8315''185''45'cong_130 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                  (coe d_isHeytingCommutativeRing_54 (coe v0))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.inverse
d_inverse_132 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                  (coe d_isHeytingCommutativeRing_54 (coe v0))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.inverseʳ
d_inverse'691'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_inverse'691'_134 ~v0 ~v1 ~v2 v3 = du_inverse'691'_134 v3
du_inverse'691'_134 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_inverse'691'_134 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.inverseˡ
d_inverse'737'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_inverse'737'_136 ~v0 ~v1 ~v2 v3 = du_inverse'737'_136 v3
du_inverse'737'_136 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_inverse'737'_136 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.cotrans
d_cotrans_138 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_cotrans_670
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
         (coe d_isHeytingCommutativeRing_54 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.distrib
d_distrib_140 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_54 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.distribʳ
d_distrib'691'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_142 ~v0 ~v1 ~v2 v3 = du_distrib'691'_142 v3
du_distrib'691'_142 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_142 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'691'_1348
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.distribˡ
d_distrib'737'_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_144 ~v0 ~v1 ~v2 v3 = du_distrib'737'_144 v3
du_distrib'737'_144 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_144 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'737'_1346
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.invertible⇒#
d_invertible'8658''35'_146 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_invertible'8658''35'_146 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_invertible'8658''35'_454
      (coe d_isHeytingCommutativeRing_54 (coe v0))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.irrefl
d_irrefl_148 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_148 = erased
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isApartnessRelation
d_isApartnessRelation_150 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656
d_isApartnessRelation_150 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
      (coe d_isHeytingCommutativeRing_54 (coe v0))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isCommutativeRing
d_isCommutativeRing_152 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_isCommutativeRing_152 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
      (coe d_isHeytingCommutativeRing_54 (coe v0))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_154 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemiring_154 v3
du_isCommutativeSemiring_154 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_154 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe v1)))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_156 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemiringWithoutOne_156 v3
du_isCommutativeSemiringWithoutOne_156 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_156 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
               (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isEquivalence
d_isEquivalence_158 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_158 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe
                           MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                           (coe d_isHeytingCommutativeRing_54 (coe v0)))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isNearSemiring
d_isNearSemiring_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
d_isNearSemiring_160 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_160 v3
du_isNearSemiring_160 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
du_isNearSemiring_160 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1222
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_162 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_162 v3
du_isPartialEquivalence_162 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_162 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                 (coe v8))))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isRing
d_isRing_164 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_2642
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
         (coe d_isHeytingCommutativeRing_54 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isSemiring
d_isSemiring_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_166 ~v0 ~v1 ~v2 v3 = du_isSemiring_166 v3
du_isSemiring_166 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_isSemiring_166 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2604
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_168 ~v0 ~v1 ~v2 v3
  = du_isSemiringWithoutAnnihilatingZero_168 v3
du_isSemiringWithoutAnnihilatingZero_168 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_168 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2602
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_170 ~v0 ~v1 ~v2 v3
  = du_isSemiringWithoutOne_170 v3
du_isSemiringWithoutOne_170 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_170 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.refl
d_refl_172 :: T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_refl_172 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                              (coe d_isHeytingCommutativeRing_54 (coe v0))))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.reflexive
d_reflexive_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_174 ~v0 ~v1 ~v2 v3 = du_reflexive_174 v3
du_reflexive_174 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_174 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v8))
                                v9))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.setoid
d_setoid_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_176 ~v0 ~v1 ~v2 v3 = du_setoid_176 v3
du_setoid_176 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_176 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7)))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.sym
d_sym_178 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                              (coe d_isHeytingCommutativeRing_54 (coe v0))))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.sym
d_sym_180 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_668
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
         (coe d_isHeytingCommutativeRing_54 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.trans
d_trans_182 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                              (coe d_isHeytingCommutativeRing_54 (coe v0))))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_184 ~v0 ~v1 ~v2 v3
  = du_unique'691''45''8315''185'_184 v3
du_unique'691''45''8315''185'_184 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_184 v0
  = let v1 = d__'43'__44 (coe v0) in
    coe
      (let v2 = d_'45'__48 (coe v0) in
       coe
         (let v3 = d_0'35'_50 (coe v0) in
          coe
            (let v4 = d_isHeytingCommutativeRing_54 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                                (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
                           (coe v1) (coe v3) (coe v2)
                           (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v7)))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_186 ~v0 ~v1 ~v2 v3
  = du_unique'737''45''8315''185'_186 v3
du_unique'737''45''8315''185'_186 ::
  T_HeytingCommutativeRing_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_186 v0
  = let v1 = d__'43'__44 (coe v0) in
    coe
      (let v2 = d_'45'__48 (coe v0) in
       coe
         (let v3 = d_0'35'_50 (coe v0) in
          coe
            (let v4 = d_isHeytingCommutativeRing_54 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                                (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
                           (coe v1) (coe v3) (coe v2)
                           (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v7)))))))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.zero
d_zero_188 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_188 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_54 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.zeroʳ
d_zero'691'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_zero'691'_190 ~v0 ~v1 ~v2 v3 = du_zero'691'_190 v3
du_zero'691'_190 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_zero'691'_190 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'691'_2600
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.zeroˡ
d_zero'737'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
d_zero'737'_192 ~v0 ~v1 ~v2 v3 = du_zero'737'_192 v3
du_zero'737'_192 ::
  T_HeytingCommutativeRing_12 -> AgdaAny -> AgdaAny
du_zero'737'_192 v0
  = let v1 = d_isHeytingCommutativeRing_54 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'737'_2598
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing._.¬#-isEquivalence
d_'172''35''45'isEquivalence_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'172''35''45'isEquivalence_194 ~v0 ~v1 ~v2 ~v3
  = du_'172''35''45'isEquivalence_194
du_'172''35''45'isEquivalence_194 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'172''35''45'isEquivalence_194
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.du_'172''35''45'isEquivalence_456
-- Algebra.Apartness.Bundles.HeytingCommutativeRing.commutativeRing
d_commutativeRing_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
d_commutativeRing_196 ~v0 ~v1 ~v2 v3 = du_commutativeRing_196 v3
du_commutativeRing_196 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
du_commutativeRing_196 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_65699
      (d__'43'__44 (coe v0)) (d__'42'__46 (coe v0)) (d_'45'__48 (coe v0))
      (d_0'35'_50 (coe v0)) (d_1'35'_52 (coe v0))
      (MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
         (coe d_isHeytingCommutativeRing_54 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingCommutativeRing.apartnessRelation
d_apartnessRelation_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_ApartnessRelation_1248
d_apartnessRelation_198 ~v0 ~v1 ~v2 v3
  = du_apartnessRelation_198 v3
du_apartnessRelation_198 ::
  T_HeytingCommutativeRing_12 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_ApartnessRelation_1248
du_apartnessRelation_198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_ApartnessRelation'46'constructor_25199
      (MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
         (coe d_isHeytingCommutativeRing_54 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingField
d_HeytingField_206 a0 a1 a2 = ()
data T_HeytingField_206
  = C_HeytingField'46'constructor_4989 (AgdaAny ->
                                        AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                       AgdaAny
                                       MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingField_458
-- Algebra.Apartness.Bundles.HeytingField.Carrier
d_Carrier_232 :: T_HeytingField_206 -> ()
d_Carrier_232 = erased
-- Algebra.Apartness.Bundles.HeytingField._≈_
d__'8776'__234 :: T_HeytingField_206 -> AgdaAny -> AgdaAny -> ()
d__'8776'__234 = erased
-- Algebra.Apartness.Bundles.HeytingField._#_
d__'35'__236 :: T_HeytingField_206 -> AgdaAny -> AgdaAny -> ()
d__'35'__236 = erased
-- Algebra.Apartness.Bundles.HeytingField._+_
d__'43'__238 :: T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__238 v0
  = case coe v0 of
      C_HeytingField'46'constructor_4989 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingField._*_
d__'42'__240 :: T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__240 v0
  = case coe v0 of
      C_HeytingField'46'constructor_4989 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingField.-_
d_'45'__242 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
d_'45'__242 v0
  = case coe v0 of
      C_HeytingField'46'constructor_4989 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingField.0#
d_0'35'_244 :: T_HeytingField_206 -> AgdaAny
d_0'35'_244 v0
  = case coe v0 of
      C_HeytingField'46'constructor_4989 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingField.1#
d_1'35'_246 :: T_HeytingField_206 -> AgdaAny
d_1'35'_246 v0
  = case coe v0 of
      C_HeytingField'46'constructor_4989 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingField.isHeytingField
d_isHeytingField_248 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingField_458
d_isHeytingField_248 v0
  = case coe v0 of
      C_HeytingField'46'constructor_4989 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Bundles.HeytingField._._-_
d__'45'__252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__252 ~v0 ~v1 ~v2 v3 = du__'45'__252 v3
du__'45'__252 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__252 v0
  = let v1 = d__'43'__238 (coe v0) in
    coe
      (let v2 = d_'45'__242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v1) (coe v2)))
-- Algebra.Apartness.Bundles.HeytingField._._¬#_
d__'172''35'__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> ()
d__'172''35'__254 = erased
-- Algebra.Apartness.Bundles.HeytingField._.#⇒invertible
d_'35''8658'invertible_256 ::
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'35''8658'invertible_256 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_'35''8658'invertible_448
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
         (coe d_isHeytingField_248 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingField._.*-assoc
d_'42''45'assoc_258 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
               (coe d_isHeytingField_248 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingField._.*-comm
d_'42''45'comm_260 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2644
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
            (coe d_isHeytingField_248 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingField._.*-cong
d_'42''45'cong_262 ::
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2506
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
               (coe d_isHeytingField_248 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingField._.∙-congʳ
d_'8729''45'cong'691'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_264 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'691'_264 v3
du_'8729''45'cong'691'_264 ::
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_264 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Algebra.Apartness.Bundles.HeytingField._.∙-congˡ
d_'8729''45'cong'737'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_266 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'737'_266 v3
du_'8729''45'cong'737'_266 ::
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_266 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Algebra.Apartness.Bundles.HeytingField._.*-identity
d_'42''45'identity_268 ::
  T_HeytingField_206 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
               (coe d_isHeytingField_248 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingField._.identityʳ
d_identity'691'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_identity'691'_270 ~v0 ~v1 ~v2 v3 = du_identity'691'_270 v3
du_identity'691'_270 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_identity'691'_270 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingField._.identityˡ
d_identity'737'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_identity'737'_272 ~v0 ~v1 ~v2 v3 = du_identity'737'_272 v3
du_identity'737'_272 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_identity'737'_272 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingField._.isCommutativeMagma
d_isCommutativeMagma_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_274 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_274 v3
du_isCommutativeMagma_274 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_274 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
                        (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_276 ~v0 ~v1 ~v2 v3
  = du_'42''45'isCommutativeMonoid_276 v3
du_'42''45'isCommutativeMonoid_276 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_276 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1636
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                  (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_278 ~v0 ~v1 ~v2 v3
  = du_'42''45'isCommutativeSemigroup_278 v3
du_'42''45'isCommutativeSemigroup_278 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_278 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingField._.*-isMagma
d_'42''45'isMagma_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_280 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_280 v3
du_'42''45'isMagma_280 ::
  T_HeytingField_206 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'42''45'isMagma_280 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.*-isMonoid
d_'42''45'isMonoid_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_282 ~v0 ~v1 ~v2 v3 = du_'42''45'isMonoid_282 v3
du_'42''45'isMonoid_282 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'42''45'isMonoid_282 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.*-isSemigroup
d_'42''45'isSemigroup_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_284 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_284 v3
du_'42''45'isSemigroup_284 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'42''45'isSemigroup_284 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2584
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.assoc
d_assoc_286 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe
                        MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                        (coe
                           MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                           (coe d_isHeytingField_248 (coe v0)))))))))
-- Algebra.Apartness.Bundles.HeytingField._.comm
d_comm_288 :: T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_994
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                  (coe d_isHeytingField_248 (coe v0))))))
-- Algebra.Apartness.Bundles.HeytingField._.∙-cong
d_'8729''45'cong_290 ::
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe
                           MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                              (coe d_isHeytingField_248 (coe v0))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.∙-congʳ
d_'8729''45'cong'691'_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_292 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'691'_292 v3
du_'8729''45'cong'691'_292 ::
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_292 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.∙-congˡ
d_'8729''45'cong'737'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_294 ~v0 ~v1 ~v2 v3
  = du_'8729''45'cong'737'_294 v3
du_'8729''45'cong'737'_294 ::
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_294 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.identity
d_identity_296 ::
  T_HeytingField_206 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe
                     MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                     (coe
                        MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                        (coe d_isHeytingField_248 (coe v0))))))))
-- Algebra.Apartness.Bundles.HeytingField._.identityʳ
d_identity'691'_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_identity'691'_298 ~v0 ~v1 ~v2 v3 = du_identity'691'_298 v3
du_identity'691'_298 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_identity'691'_298 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6))))))))
-- Algebra.Apartness.Bundles.HeytingField._.identityˡ
d_identity'737'_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_identity'737'_300 ~v0 ~v1 ~v2 v3 = du_identity'737'_300 v3
du_identity'737'_300 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_identity'737'_300 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6))))))))
-- Algebra.Apartness.Bundles.HeytingField._.+-isAbelianGroup
d_'43''45'isAbelianGroup_302 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
               (coe d_isHeytingField_248 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingField._.isCommutativeMagma
d_isCommutativeMagma_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_304 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_304 v3
du_isCommutativeMagma_304 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_304 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                           (coe v6))))))))
-- Algebra.Apartness.Bundles.HeytingField._.isCommutativeMonoid
d_isCommutativeMonoid_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_306 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMonoid_306 v3
du_isCommutativeMonoid_306 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_306 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingField._.isCommutativeSemigroup
d_isCommutativeSemigroup_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_308 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_308 v3
du_isCommutativeSemigroup_308 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_308 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                        (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.isGroup
d_isGroup_310 ::
  T_HeytingField_206 -> MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_310 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                  (coe d_isHeytingField_248 (coe v0))))))
-- Algebra.Apartness.Bundles.HeytingField._.isInvertibleMagma
d_isInvertibleMagma_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_312 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_312 v3
du_isInvertibleMagma_312 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_312 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_314 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_314 v3
du_isInvertibleUnitalMagma_314 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_314 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.isMagma
d_isMagma_316 ::
  T_HeytingField_206 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe
                        MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                        (coe
                           MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                           (coe d_isHeytingField_248 (coe v0)))))))))
-- Algebra.Apartness.Bundles.HeytingField._.isMonoid
d_isMonoid_318 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                  (coe
                     MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                     (coe d_isHeytingField_248 (coe v0)))))))
-- Algebra.Apartness.Bundles.HeytingField._.isSemigroup
d_isSemigroup_320 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe
                     MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                     (coe
                        MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                        (coe d_isHeytingField_248 (coe v0))))))))
-- Algebra.Apartness.Bundles.HeytingField._.isUnitalMagma
d_isUnitalMagma_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_322 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_322 v3
du_isUnitalMagma_322 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_322 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
                        (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6))))))))
-- Algebra.Apartness.Bundles.HeytingField._.⁻¹-cong
d_'8315''185''45'cong_324 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                  (coe
                     MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                     (coe d_isHeytingField_248 (coe v0)))))))
-- Algebra.Apartness.Bundles.HeytingField._.inverse
d_inverse_326 ::
  T_HeytingField_206 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                  (coe
                     MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                     (coe d_isHeytingField_248 (coe v0)))))))
-- Algebra.Apartness.Bundles.HeytingField._.inverseʳ
d_inverse'691'_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_inverse'691'_328 ~v0 ~v1 ~v2 v3 = du_inverse'691'_328 v3
du_inverse'691'_328 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_inverse'691'_328 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.inverseˡ
d_inverse'737'_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_inverse'737'_330 ~v0 ~v1 ~v2 v3 = du_inverse'737'_330 v3
du_inverse'737'_330 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_inverse'737'_330 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.cotrans
d_cotrans_332 ::
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_332 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_cotrans_670
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
            (coe d_isHeytingField_248 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingField._.distrib
d_distrib_334 ::
  T_HeytingField_206 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
               (coe d_isHeytingField_248 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingField._.distribʳ
d_distrib'691'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_336 ~v0 ~v1 ~v2 v3 = du_distrib'691'_336 v3
du_distrib'691'_336 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_336 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_distrib'691'_1348
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                        (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.distribˡ
d_distrib'737'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_338 ~v0 ~v1 ~v2 v3 = du_distrib'737'_338 v3
du_distrib'737'_338 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_338 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_distrib'737'_1346
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                        (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.invertible⇒#
d_invertible'8658''35'_340 ::
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_invertible'8658''35'_340 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_invertible'8658''35'_454
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
         (coe d_isHeytingField_248 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingField._.irrefl
d_irrefl_342 ::
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_342 = erased
-- Algebra.Apartness.Bundles.HeytingField._.isApartnessRelation
d_isApartnessRelation_344 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656
d_isApartnessRelation_344 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
         (coe d_isHeytingField_248 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingField._.isCommutativeRing
d_isCommutativeRing_346 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_isCommutativeRing_346 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
         (coe d_isHeytingField_248 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingField._.isCommutativeSemiring
d_isCommutativeSemiring_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_348 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemiring_348 v3
du_isCommutativeSemiring_348 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_348 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
               (coe v2))))
-- Algebra.Apartness.Bundles.HeytingField._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_350 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemiringWithoutOne_350 v3
du_isCommutativeSemiringWithoutOne_350 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_350 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                  (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.isEquivalence
d_isEquivalence_352 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe
                           MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                              (coe d_isHeytingField_248 (coe v0))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.isHeytingCommutativeRing
d_isHeytingCommutativeRing_354 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingCommutativeRing_158
d_isHeytingCommutativeRing_354 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
      (coe d_isHeytingField_248 (coe v0))
-- Algebra.Apartness.Bundles.HeytingField._.isNearSemiring
d_isNearSemiring_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
d_isNearSemiring_356 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_356 v3
du_isNearSemiring_356 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
du_isNearSemiring_356 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1222
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                        (coe v5)))))))
-- Algebra.Apartness.Bundles.HeytingField._.isPartialEquivalence
d_isPartialEquivalence_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_358 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_358 v3
du_isPartialEquivalence_358 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_358 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                    (coe v9)))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.isRing
d_isRing_360 ::
  T_HeytingField_206 -> MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_2642
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
            (coe d_isHeytingField_248 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingField._.isSemiring
d_isSemiring_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_362 ~v0 ~v1 ~v2 v3 = du_isSemiring_362 v3
du_isSemiring_362 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_isSemiring_362 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiring_2604
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_364 ~v0 ~v1 ~v2 v3
  = du_isSemiringWithoutAnnihilatingZero_364 v3
du_isSemiringWithoutAnnihilatingZero_364 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_364 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2602
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.isSemiringWithoutOne
d_isSemiringWithoutOne_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_366 ~v0 ~v1 ~v2 v3
  = du_isSemiringWithoutOne_366 v3
du_isSemiringWithoutOne_366 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_366 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v4))))))
-- Algebra.Apartness.Bundles.HeytingField._.refl
d_refl_368 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
d_refl_368 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                              (coe
                                 MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                                 (coe d_isHeytingField_248 (coe v0)))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.reflexive
d_reflexive_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_370 ~v0 ~v1 ~v2 v3 = du_reflexive_370 v3
du_reflexive_370 ::
  T_HeytingField_206 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_370 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8) in
                            coe
                              (\ v10 v11 v12 ->
                                 coe
                                   MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v9))
                                   v10)))))))))
-- Algebra.Apartness.Bundles.HeytingField._.setoid
d_setoid_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_372 ~v0 ~v1 ~v2 v3 = du_setoid_372 v3
du_setoid_372 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_372 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                          (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.sym
d_sym_374 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_374 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                              (coe
                                 MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                                 (coe d_isHeytingField_248 (coe v0)))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.sym
d_sym_376 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_376 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_668
      (coe
         MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
            (coe d_isHeytingField_248 (coe v0))))
-- Algebra.Apartness.Bundles.HeytingField._.tight
d_tight_378 ::
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_tight_378 v0
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.d_tight_466
      (coe d_isHeytingField_248 (coe v0))
-- Algebra.Apartness.Bundles.HeytingField._.trans
d_trans_380 ::
  T_HeytingField_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_380 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                              (coe
                                 MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                                 (coe d_isHeytingField_248 (coe v0)))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_382 ~v0 ~v1 ~v2 v3
  = du_unique'691''45''8315''185'_382 v3
du_unique'691''45''8315''185'_382 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_382 v0
  = let v1 = d__'43'__238 (coe v0) in
    coe
      (let v2 = d_'45'__242 (coe v0) in
       coe
         (let v3 = d_0'35'_244 (coe v0) in
          coe
            (let v4 = d_isHeytingField_248 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                             (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                                   (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
                              (coe v1) (coe v3) (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v8))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_384 ~v0 ~v1 ~v2 v3
  = du_unique'737''45''8315''185'_384 v3
du_unique'737''45''8315''185'_384 ::
  T_HeytingField_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_384 v0
  = let v1 = d__'43'__238 (coe v0) in
    coe
      (let v2 = d_'45'__242 (coe v0) in
       coe
         (let v3 = d_0'35'_244 (coe v0) in
          coe
            (let v4 = d_isHeytingField_248 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                             (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                                   (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
                              (coe v1) (coe v3) (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v8))))))))))
-- Algebra.Apartness.Bundles.HeytingField._.zero
d_zero_386 ::
  T_HeytingField_206 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_386 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
            (coe
               MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
               (coe d_isHeytingField_248 (coe v0)))))
-- Algebra.Apartness.Bundles.HeytingField._.zeroʳ
d_zero'691'_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_zero'691'_388 ~v0 ~v1 ~v2 v3 = du_zero'691'_388 v3
du_zero'691'_388 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_zero'691'_388 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_2600
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.zeroˡ
d_zero'737'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> AgdaAny -> AgdaAny
d_zero'737'_390 ~v0 ~v1 ~v2 v3 = du_zero'737'_390 v3
du_zero'737'_390 :: T_HeytingField_206 -> AgdaAny -> AgdaAny
du_zero'737'_390 v0
  = let v1 = d_isHeytingField_248 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Apartness.Structures.d_isCommutativeRing_308
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_2598
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3)))))
-- Algebra.Apartness.Bundles.HeytingField._.¬#-isEquivalence
d_'172''35''45'isEquivalence_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'172''35''45'isEquivalence_392 ~v0 ~v1 ~v2 ~v3
  = du_'172''35''45'isEquivalence_392
du_'172''35''45'isEquivalence_392 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'172''35''45'isEquivalence_392
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.du_'172''35''45'isEquivalence_456
-- Algebra.Apartness.Bundles.HeytingField.heytingCommutativeRing
d_heytingCommutativeRing_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 -> T_HeytingCommutativeRing_12
d_heytingCommutativeRing_394 ~v0 ~v1 ~v2 v3
  = du_heytingCommutativeRing_394 v3
du_heytingCommutativeRing_394 ::
  T_HeytingField_206 -> T_HeytingCommutativeRing_12
du_heytingCommutativeRing_394 v0
  = coe
      C_HeytingCommutativeRing'46'constructor_657 (d__'43'__238 (coe v0))
      (d__'42'__240 (coe v0)) (d_'45'__242 (coe v0))
      (d_0'35'_244 (coe v0)) (d_1'35'_246 (coe v0))
      (MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
         (coe d_isHeytingField_248 (coe v0)))
-- Algebra.Apartness.Bundles.HeytingField.apartnessRelation
d_apartnessRelation_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_ApartnessRelation_1248
d_apartnessRelation_396 ~v0 ~v1 ~v2 v3
  = du_apartnessRelation_396 v3
du_apartnessRelation_396 ::
  T_HeytingField_206 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_ApartnessRelation_1248
du_apartnessRelation_396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_ApartnessRelation'46'constructor_25199
      (MAlonzo.Code.Algebra.Apartness.Structures.d_isApartnessRelation_310
         (coe
            MAlonzo.Code.Algebra.Apartness.Structures.d_isHeytingCommutativeRing_464
            (coe d_isHeytingField_248 (coe v0))))
