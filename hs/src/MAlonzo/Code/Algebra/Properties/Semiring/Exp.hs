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

module MAlonzo.Code.Algebra.Properties.Semiring.Exp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Definitions.RawSemiring
import qualified MAlonzo.Code.Algebra.Properties.Monoid.Mult
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Semiring.Exp._._^_
d__'94'__214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> AgdaAny
d__'94'__214 ~v0 ~v1 v2 = du__'94'__214 v2
du__'94'__214 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> AgdaAny
du__'94'__214 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.^-congˡ
d_'94''45'cong'737'_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'94''45'cong'737'_220 ~v0 ~v1 v2 = du_'94''45'cong'737'_220 v2
du_'94''45'cong'737'_220 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'94''45'cong'737'_220 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong'691'_250
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.^-cong
d_'94''45'cong_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'94''45'cong_222 ~v0 ~v1 v2 v3 v4 v5 ~v6 v7 ~v8
  = du_'94''45'cong_222 v2 v3 v4 v5 v7
du_'94''45'cong_222 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny -> AgdaAny
du_'94''45'cong_222 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong_258
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
      (coe v3) (coe v1) (coe v2) (coe v4)
-- Algebra.Properties.Semiring.Exp.^-congʳ
d_'94''45'cong'691'_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'94''45'cong'691'_232 ~v0 ~v1 v2 v3 v4 ~v5
  = du_'94''45'cong'691'_232 v2 v3 v4
du_'94''45'cong'691'_232 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_'94''45'cong'691'_232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong'737'_268
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
      (coe v1) (coe v2)
-- Algebra.Properties.Semiring.Exp.^-homo-*
d_'94''45'homo'45''42'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'homo'45''42'_242 ~v0 ~v1 v2
  = du_'94''45'homo'45''42'_242 v2
du_'94''45'homo'45''42'_242 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'homo'45''42'_242 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45''43'_288
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.^-assocʳ
d_'94''45'assoc'691'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'assoc'691'_250 ~v0 ~v1 v2 v3 v4 v5
  = du_'94''45'assoc'691'_250 v2 v3 v4 v5
du_'94''45'assoc'691'_250 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'assoc'691'_250 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'assoc'737'_324
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
      (coe v1) (coe v3) (coe v2)
-- Algebra.Properties.Semiring.Exp.y*x^m*y^n≈x^m*y^[n+1]
d_y'42'x'94'm'42'y'94'n'8776'x'94'm'42'y'94''91'n'43'1'93'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> Integer -> AgdaAny
d_y'42'x'94'm'42'y'94'n'8776'x'94'm'42'y'94''91'n'43'1'93'_272 ~v0
                                                               ~v1 v2 v3 v4 v5
  = du_y'42'x'94'm'42'y'94'n'8776'x'94'm'42'y'94''91'n'43'1'93'_272
      v2 v3 v4 v5
du_y'42'x'94'm'42'y'94'n'8776'x'94'm'42'y'94''91'n'43'1'93'_272 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> Integer -> AgdaAny
du_y'42'x'94'm'42'y'94'n'8776'x'94'm'42'y'94''91'n'43'1'93'_272 v0
                                                                v1 v2 v3
  = coe du_helper_288 (coe v0) (coe v1) (coe v2) (coe v3)
-- Algebra.Properties.Semiring.Exp._.helper
d_helper_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> Integer -> AgdaAny
d_helper_288 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_helper_288 v2 v3 v4 v5 v6 v7
du_helper_288 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> Integer -> AgdaAny
du_helper_288 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v6 v7 v8 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v1) (coe (0 :: Integer)))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v2) (coe v5))))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                         (coe v0)))
                   (coe v1) (coe (0 :: Integer)))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                         (coe v0)))
                   (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
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
                                           MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                           (coe v0))))))))))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2386 (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe v5))))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v2) (coe v5)))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v1) (coe (0 :: Integer)))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
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
                                              MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                              (coe v0))))))))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                           MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                           (coe v0)))))))))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5)))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2386 (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v1) (coe (0 :: Integer)))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
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
                                                 MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                 (coe v0))))))))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v1) (coe (0 :: Integer)))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5)))))
                   (coe
                      MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                      (coe
                         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                            (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5)))))
                (coe
                   MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                   (MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                         (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
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
                                           MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                           (coe v0)))))))))
                   v2
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2386 (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe v5)))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v2) (coe v5))
                   (coe
                      MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                      (coe
                         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                            (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe v5)))))
      _ -> let v6 = subInt (coe v4) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v7 v8 v9 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v1) (coe v4))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe v5))))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v1) (coe v4))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                            (coe v0)))
                      (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
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
                                              MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                              (coe v0))))))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v1) (coe v6)))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v2) (coe v5))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v1) (coe v6))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v2) (coe v5)))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v1) (coe v4))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                               (coe v0)))
                         (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
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
                                                 MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                 (coe v0))))))))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                              MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                              (coe v0)))))))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v1) (coe v6))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v2) (coe v5)))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                         (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2 v1)
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v1) (coe v6))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v2) (coe v5))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v1) (coe v4))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
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
                                                    MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                    (coe v0))))))))))
                         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                                 MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                 (coe v0)))))))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2 v1)
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v1) (coe v6))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v2) (coe v5))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1 v2)
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v1) (coe v6))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v2) (coe v5))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v1) (coe v4))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
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
                                                       MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                       (coe v0))))))))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1 v2)
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                           (coe v0)))
                                     (coe v1) (coe v6))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                           (coe v0)))
                                     (coe v2) (coe v5))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v1) (coe v6))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v2) (coe v5)))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v1) (coe v4))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
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
                                                          MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                          (coe v0))))))))))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v1) (coe v6))
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v2) (coe v5)))))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v1) (coe v6))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5)))))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                           (coe v0)))
                                     (coe v1) (coe v4))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                           (coe v0)))
                                     (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
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
                                                             MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                             (coe v0))))))))))
                                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                                                          MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                          (coe v0)))))))))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v1) (coe v6))
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v1) (coe v6)))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v1) (coe v4))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
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
                                                                MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                                (coe v0))))))))))
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v1) (coe v4))
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
                                     (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                                     v1
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v1) (coe v6))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5)))))
                               (coe
                                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                  (MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                           (coe v0))))
                                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
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
                                                          MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                          (coe v0)))))))))
                                  v1
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v1) (coe v6))
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                                 (coe v0)))
                                           (coe v2) (coe v5))))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v1) (coe v6))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                              (coe v0)))
                                        (coe v2) (coe addInt (coe (1 :: Integer)) (coe v5))))
                                  (coe
                                     du_helper_288 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6)
                                     (coe v5))))
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
                               (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                  (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                               v1 v2
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                           (coe v0)))
                                     (coe v1) (coe v6))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                           (coe v0)))
                                     (coe v2) (coe v5)))))
                         (coe
                            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                            (MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                  (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0))))
                            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
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
                                                    MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                                    (coe v0)))))))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v1) (coe v6))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                        (coe v0)))
                                  (coe v2) (coe v5)))
                            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1 v2)
                            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v2 v1) v3))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
                         (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                            (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                         v2 v1
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v1) (coe v6))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v2) (coe v5)))))
                   (coe
                      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                      (MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                            (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
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
                                              MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                                              (coe v0)))))))))
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v1) (coe v6)))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v2) (coe v5)))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0 v1
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'42'__2382 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v1) (coe v6))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                     (coe v0)))
                               (coe v2) (coe v5))))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
                         (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                            (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                         v1
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v1) (coe v6))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__94
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                                  (coe v0)))
                            (coe v2) (coe v5))))))
